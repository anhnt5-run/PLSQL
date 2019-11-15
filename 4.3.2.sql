--------------------------------------------------------
--  File created - Friday-November-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure FIND_STUDENT_NAME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."FIND_STUDENT_NAME" (i_s_id       IN student.id%TYPE, 
                                              o_first_name OUT 
student.first_name%TYPE, 
                                              o_last_name  OUT 
student.last_name%TYPE) 
AS 
BEGIN 
    SELECT first_name, 
           last_name 
    INTO   o_first_name, o_last_name 
    FROM   student 
    WHERE  i_s_id = id; 

    dbms_output.Put_line('First Name: ' 
                         || o_first_name 
                         || ', Last Name: ' 
                         || o_last_name); 
EXCEPTION 
  WHEN no_data_found THEN 
             dbms_output.Put_line('Not found'); 
END find_student_name;

/
