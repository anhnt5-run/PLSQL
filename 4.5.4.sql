--------------------------------------------------------
--  File created - Wednesday-November-20-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TRIG_AVG_SCORE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RUNSYSTEM"."TRIG_AVG_SCORE" 
  FOR DELETE OR INSERT OR UPDATE ON score COMPOUND TRIGGER AFTER EACH ROW IS 
BEGIN dbms_output.Put_line('Do something...'); END AFTER EACH ROW; END 
trig_avg_score;
/
ALTER TRIGGER "RUNSYSTEM"."TRIG_AVG_SCORE" ENABLE;
