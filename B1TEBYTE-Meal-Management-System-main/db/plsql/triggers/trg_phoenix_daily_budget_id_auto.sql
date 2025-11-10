------------------------------------------------------------
-- Trigger: TRG_PHOENIX_DAILY_BUDGET_ID_AUTO
-- Purpose:
--   Auto-generate TRACK_ID using TRACK_SEQ
------------------------------------------------------------

CREATE OR REPLACE TRIGGER TRG_PHOENIX_DAILY_BUDGET_ID_AUTO
BEFORE INSERT ON PHOENIX_DAILY_BUDGET_TRACKER
FOR EACH ROW
BEGIN
  IF :NEW.TRACK_ID IS NULL THEN
    :NEW.TRACK_ID := 'TRK-' || LPAD(TRACK_SEQ.NEXTVAL, 6, '0');
  END IF;
END;
/
ALTER TRIGGER TRG_PHOENIX_DAILY_BUDGET_ID_AUTO ENABLE;
