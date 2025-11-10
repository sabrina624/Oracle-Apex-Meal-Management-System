------------------------------------------------------------
-- Trigger: TRG_PHOENIX_DAILY_BUDGET_FILL
-- Purpose:
--   1) Calculate total meals (Lunch + Dinner)
--   2) Derive daily meal cost per employee
--   3) Bring forward previous day's/month's remaining budget
--   4) Compute remaining budget or extra cost
--   5) Maintain MONTH and YEAR columns
------------------------------------------------------------

CREATE OR REPLACE TRIGGER TRG_PHOENIX_DAILY_BUDGET_FILL
BEFORE INSERT ON PHOENIX_DAILY_BUDGET_TRACKER
FOR EACH ROW
DECLARE
  v_lunch_count     NUMBER := 0;
  v_dinner_count    NUMBER := 0;
  v_total_employees NUMBER := 0;
  v_total_meals     NUMBER := 0;

  v_total_cost      NUMBER := 0;
  v_daily_meal_cost NUMBER := 0;

  v_emp_contri      NUMBER := 0;
  v_comp_contri     NUMBER := 0;
  v_emp_count       NUMBER := 0;

  v_prev_remaining  NUMBER := 0;
  v_prev_date       DATE;
  v_daily_total     NUMBER := 0;

  v_prev_month_remaining NUMBER := 0;
BEGIN
  -- Count meals and active employees
  SELECT 
      NVL(SUM(CASE WHEN IS_TAKING_LUNCH = 'Y' THEN 1 ELSE 0 END), 0),
      NVL(SUM(CASE WHEN IS_TAKING_DINNER = 'Y' THEN 1 ELSE 0 END), 0),
      COUNT(*)
  INTO 
      v_lunch_count, v_dinner_count, v_total_employees
  FROM PHOENIX_DAILY_ATTENDANCE
  WHERE ATTENDANCE_DATE = :NEW.MEAL_DATE;

  v_total_meals := v_lunch_count + v_dinner_count;

  :NEW.TOTAL_LUNCH_COUNT  := v_lunch_count;
  :NEW.TOTAL_DINNER_COUNT := v_dinner_count;
  :NEW.TOTAL_MEALS        := v_total_meals;

  -- Total daily cost of food
  SELECT NVL(SUM(TOTAL_COST), 0)
    INTO v_total_cost
    FROM PHOENIX_DAILY_MEAL_ITEM
   WHERE MEAL_DATE = :NEW.MEAL_DATE;

  IF v_total_employees > 0 THEN
    v_daily_meal_cost := ROUND(v_total_cost / v_total_employees, 2);
  ELSE
    v_daily_meal_cost := 0;
  END IF;

  :NEW.DAILY_MEAL_COST := v_daily_meal_cost;

  -- Contribution settings from meal manager
  SELECT 
      NVL(SUM(EMPLOYEE_CONTRIBUTION), 0),
      NVL(SUM(COMPANY_CONTRIBUTION), 0),
      COUNT(*)
  INTO 
      v_emp_contri, v_comp_contri, v_emp_count
  FROM PHOENIX_MEAL_MANAGER
  WHERE MONTH = TO_NUMBER(TO_CHAR(:NEW.MEAL_DATE, 'MM'))
    AND YEAR  = TO_NUMBER(TO_CHAR(:NEW.MEAL_DATE, 'YYYY'));

  v_emp_contri := v_emp_contri * v_total_employees;

  -- Last remaining from previous month
  BEGIN
    SELECT remaining_budget
      INTO v_prev_month_remaining
      FROM (
        SELECT remaining_budget
          FROM PHOENIX_DAILY_BUDGET_TRACKER
         WHERE meal_date < TRUNC(:NEW.MEAL_DATE, 'MM')
         ORDER BY meal_date DESC
      )
     WHERE ROWNUM = 1;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      v_prev_month_remaining := 0;
  END;

  -- Previous day's remaining budget within the same month
  BEGIN
    SELECT REMAINING_BUDGET, MEAL_DATE
      INTO v_prev_remaining, v_prev_date
      FROM (
        SELECT REMAINING_BUDGET, MEAL_DATE
          FROM PHOENIX_DAILY_BUDGET_TRACKER
         WHERE MEAL_DATE < :NEW.MEAL_DATE
           AND TO_CHAR(MEAL_DATE, 'MMYYYY') = TO_CHAR(:NEW.MEAL_DATE, 'MMYYYY')
         ORDER BY MEAL_DATE DESC
      )
     WHERE ROWNUM = 1;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      v_prev_remaining := 0;
      v_prev_date := NULL;
  END;

  -- Monthly carry-forward & daily continuation
  IF v_prev_date IS NULL THEN
    :NEW.AVAILABLE_BUDGET := v_emp_contri + v_comp_contri + NVL(v_prev_month_remaining,0);
  ELSE
    :NEW.AVAILABLE_BUDGET := GREATEST(v_prev_remaining, 0);
  END IF;

  v_daily_total := v_daily_meal_cost * v_total_meals;

  IF :NEW.AVAILABLE_BUDGET > v_daily_total THEN
    :NEW.REMAINING_BUDGET := :NEW.AVAILABLE_BUDGET - v_daily_total;
    :NEW.EXTRA_COST := 0;
  ELSIF :NEW.AVAILABLE_BUDGET <= 0 THEN
    :NEW.REMAINING_BUDGET := 0;
    :NEW.EXTRA_COST := v_daily_total;
  ELSE
    :NEW.REMAINING_BUDGET := 0;
    :NEW.EXTRA_COST := v_daily_total - :NEW.AVAILABLE_BUDGET;
  END IF;

  :NEW.REMAINING_BUDGET := GREATEST(:NEW.REMAINING_BUDGET, 0);
  :NEW.AVAILABLE_BUDGET := GREATEST(:NEW.AVAILABLE_BUDGET, 0);
  :NEW.EXTRA_COST       := GREATEST(:NEW.EXTRA_COST, 0);

  :NEW.COMPANY_SHARE  := v_comp_contri;
  :NEW.EMPLOYEE_SHARE := v_emp_contri;

  :NEW.MONTH := TO_NUMBER(TO_CHAR(:NEW.MEAL_DATE, 'MM'));
  :NEW.YEAR  := TO_NUMBER(TO_CHAR(:NEW.MEAL_DATE, 'YYYY'));

EXCEPTION
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20001, 'Error in TRG_PHOENIX_DAILY_BUDGET_FILL: ' || SQLERRM);
END;
/
ALTER TRIGGER TRG_PHOENIX_DAILY_BUDGET_FILL ENABLE;
