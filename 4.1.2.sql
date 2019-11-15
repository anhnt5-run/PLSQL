--------------------------------------------------------
--  File created - Friday-November-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure MULTIPLICATION_TABLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."MULTIPLICATION_TABLE" (n IN NUMBER) 
AS 
BEGIN 
    FOR i IN 1 .. 9 LOOP 
        dbms_output.Put_line(i 
                             || 'x' 
                             || n 
                             || '=' 
                             || i * n); 
    END LOOP; 
END multiplication_table;

/
