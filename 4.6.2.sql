--------------------------------------------------------
--  File created - Tuesday-November-19-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package PRINT_STUDENT_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "RUNSYSTEM"."PRINT_STUDENT_PKG" 
AS 
PROCEDURE print_student_name( 
    p_stu_id student.id%TYPE); 
  FUNCTION Find_student_name( 
    p_stu_id student.id%TYPE) 
  RETURN student.first_name%TYPE;   
END print_student_pkg;

/
