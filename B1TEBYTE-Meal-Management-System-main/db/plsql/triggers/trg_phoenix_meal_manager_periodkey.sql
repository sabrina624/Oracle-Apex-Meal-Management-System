------------------------------------------------------------
-- Trigger: TRG_PHOENIX_MEAL_MANAGER_PERIODKEY
-- Purpose:
--   Automatically generate PERIOD_KEY = YYYYMM
------------------------------------------------------------

CREATE OR REPLACE TRIGGER TRG_PHOENIX_MEAL_MANAGER_PERIODKEY
BEFORE INSERT ON PHOENIX_MEAL_MANAGER
FOR EACH ROW
BEGIN
  :NEW.PERIOD_KEY := TO_CHAR(:NEW.YEAR, 'FM0000') || LPAD(:NEW.MONTH, 2, '0');
END;
/
ALTER TRIGGER TRG_PHOENIX_MEAL_MANAGER_PERIODKEY ENABLE;
