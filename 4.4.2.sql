--------------------------------------------------------
--  File created - Monday-November-18-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure EX_OVER_LIMIT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."EX_OVER_LIMIT" (n IN NUMBER) 
AS 
  min NUMBER := 1; 
  max NUMBER := 15; 
  ex EXCEPTION; 
BEGIN 
    IF n < 1 
        OR n > 15 THEN 
      RAISE ex; 
    END IF; 
EXCEPTION 
  WHEN ex THEN 
             dbms_output.Put_line('Number ' 
                                  || n 
                                  || ' is over limit'); 
END ex_over_limit;

/
