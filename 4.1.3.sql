--------------------------------------------------------
--  File created - Friday-November-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure FIRST_DEGREE_EQUATION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."FIRST_DEGREE_EQUATION" (a IN NUMBER, 
                                                  b IN NUMBER) 
AS 
BEGIN 
    IF a != 0 THEN 
      dbms_output.Put_line('x = ' 
                           || -b / a); 
    ELSIF ( a = 0 
            AND b = 0 ) THEN 
      dbms_output.Put_line('Ph??ng trình có vô s? nghi?m'); 
    ELSIF ( a = 0 
            AND b != 0 ) THEN 
      dbms_output.Put_line('Ph??ng trình vô nghi?m'); 
    END IF; 
END first_degree_equation;

/
