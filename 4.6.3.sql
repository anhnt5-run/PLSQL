--------------------------------------------------------
--  File created - Tuesday-November-19-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package PRINT_STU_AND_MAX_SCORE_PKG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "RUNSYSTEM"."PRINT_STU_AND_MAX_SCORE_PKG" AS 

 FUNCTION print_stu_name( 
    p_stu_id student.id%TYPE) 
  RETURN student.first_name%TYPE;  

    FUNCTION print_max_score 
  RETURN score.score%TYPE;  
END PRINT_STU_AND_MAX_SCORE_PKG;

/
