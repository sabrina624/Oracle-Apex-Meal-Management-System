------------------------------------------------------------
-- 03_indexes.sql
-- Explicit Index Definitions
------------------------------------------------------------

-- Calendar Master PK Index
CREATE UNIQUE INDEX PK_PHOENIX_CALENDAR_MASTER
ON PHOENIX_CALENDAR_MASTER (CAL_DATE);

-- HR Employee Master PK Index
CREATE UNIQUE INDEX PK_PHOENIX_HR_EMP_MASTER
ON PHOENIX_HR_EMP_MASTER (EMP_CODE);
