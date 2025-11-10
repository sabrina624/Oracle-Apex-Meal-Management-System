------------------------------------------------------------
-- Trigger: TRG_PHOENIX_GUEST_COST_AUTO
-- Purpose:
--   Automatically calculate guest meal cost based
--   on daily meal rate from PHOENIX_DAILY_BUDGET_TRACKER
------------------------------------------------------------

CREATE OR REPLACE TRIGGER TRG_PHOENIX_GUEST_COST_AUTO
BEFORE INSERT OR UPDATE ON PHOENIX_GUEST_MEAL_TRACKER
FOR EACH ROW
DECLARE
  v_meal_cost NUMBER := 0;
BEGIN
  -- Fetch daily meal cost for that date
  SELECT NVL(DAILY_MEAL_COST, 0)
    INTO v_meal_cost
    FROM PHOENIX_DAILY_BUDGET_TRACKER
   WHERE TRUNC(MEAL_DATE) = TRUNC(:NEW.GUEST_DATE)
   FETCH FIRST 1 ROWS ONLY;

  -- Assign default per-meal cost if not provided
  :NEW.PER_MEAL_COST := NVL(:NEW.PER_MEAL_COST, v_meal_cost);

  -- Calculate total cost
  :NEW.TOTAL_GUEST_MEAL_COST := NVL(:NEW.GUEST_COUNT, 0) * :NEW.PER_MEAL_COST;
END;
/
ALTER TRIGGER TRG_PHOENIX_GUEST_COST_AUTO ENABLE;
