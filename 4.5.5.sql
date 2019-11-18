--------------------------------------------------------
--  File created - Monday-November-18-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TRIG_INSERT_SCORE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RUNSYSTEM"."TRIG_INSERT_SCORE" 
  BEFORE INSERT ON score 
  FOR EACH ROW 
DECLARE 
    num_subject_studied NUMBER := 0; 
BEGIN 
    SELECT Count(DISTINCT subjects_id) 
    INTO   num_subject_studied 
    FROM   score 
    WHERE  student_id = :new.student_id; 

    IF num_subject_studied >= 5 THEN 
      Raise_application_error (-20102, 'Error!! Cannot study over 5 subjects'); 
    END IF; 
END;
/
ALTER TRIGGER "RUNSYSTEM"."TRIG_INSERT_SCORE" ENABLE;
