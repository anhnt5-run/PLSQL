--------------------------------------------------------
--  File created - Monday-November-18-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TRIG_DEL_SCORE_BEFORE_DEL_STUDENT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RUNSYSTEM"."TRIG_DEL_SCORE_BEFORE_DEL_STUDENT" 
  BEFORE DELETE ON student 
  FOR EACH ROW 
BEGIN 
    DELETE FROM score 
    WHERE  student_id = :OLD.id; 
END;
/
ALTER TRIGGER "RUNSYSTEM"."TRIG_DEL_SCORE_BEFORE_DEL_STUDENT" ENABLE;
