--------------------------------------------------------
--  File created - Monday-November-18-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TRIG_UPDATE_FACULTY_AFTER_INS_STUDENT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RUNSYSTEM"."TRIG_UPDATE_FACULTY_AFTER_INS_STUDENT" 
  AFTER INSERT ON student 
  FOR EACH ROW 
BEGIN 
    UPDATE faculty 
    SET    quality = quality + 1 
    WHERE  id = :NEW.faculty_id; 
END;
/
ALTER TRIGGER "RUNSYSTEM"."TRIG_UPDATE_FACULTY_AFTER_INS_STUDENT" ENABLE;
