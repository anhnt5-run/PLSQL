--------------------------------------------------------
--  File created - Tuesday-November-19-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package FIND_STU_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "RUNSYSTEM"."FIND_STU_PKG" AS 

PROCEDURE Find_student_name(i_s_id       IN student.id%TYPE, 
                                              o_first_name OUT 
student.first_name%TYPE, 
                                              o_last_name  OUT 
student.last_name%TYPE);

END FIND_STU_PKG;

/
