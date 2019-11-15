--------------------------------------------------------
--  File created - Friday-November-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure PRINT_SNAME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."PRINT_SNAME" (i_s_id    IN student.id%TYPE, 
                                        full_name OUT NVARCHAR2) 
AS 
BEGIN 
    SELECT first_name 
           || ' ' 
           || last_name 
    INTO   full_name 
    FROM   student 
    WHERE  id = i_s_id; 

    dbms_output.Put_line('Full Name: ' 
                         || full_name); 
EXCEPTION 
  WHEN no_data_found THEN 
             dbms_output.Put_line('Not found'); 
END print_sname;

/
