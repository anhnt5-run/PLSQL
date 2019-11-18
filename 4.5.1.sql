--------------------------------------------------------
--  File created - Monday-November-18-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TRIG_AFTER_INSERT_STUDENT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RUNSYSTEM"."TRIG_AFTER_INSERT_STUDENT" 
  AFTER INSERT ON student 
  FOR EACH ROW 
BEGIN 
    dbms_output.Put_line('New Student: ' 
                         || :NEW.first_name 
                         || ' ' 
                         || :NEW.last_name); 
END;
/
ALTER TRIGGER "RUNSYSTEM"."TRIG_AFTER_INSERT_STUDENT" ENABLE;
