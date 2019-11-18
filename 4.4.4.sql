--------------------------------------------------------
--  File created - Monday-November-18-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure EX_MIN_SCORE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."EX_MIN_SCORE" 
AS 
  min_score NUMBER; 
  ex EXCEPTION; 
BEGIN 
    SELECT Min(score) 
    INTO   min_score 
    FROM   score; 

    IF min_score < 5 THEN 
      RAISE ex; 
    END IF; 
EXCEPTION 
  WHEN ex THEN 
             dbms_output.Put_line('Error due to min score < 5'); 
END ex_min_score;

/
