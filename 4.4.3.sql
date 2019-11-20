--------------------------------------------------------
--  File created - Wednesday-November-20-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure EX_COUNT_STUDENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."EX_COUNT_STUDENT" 
AS 
  students NUMBER; 
  ex EXCEPTION; 
BEGIN 
    SELECT COUNT(*) 
    INTO   students 
    FROM   student; 

    IF students > 0 THEN 
      RAISE ex; 
    END IF; 
EXCEPTION 
  WHEN ex THEN 
             dbms_output.Put_line('Error due to total students > 10'); 
END ex_count_student;

/
