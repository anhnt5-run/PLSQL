--------------------------------------------------------
--  File created - Friday-November-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FACTORIAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "RUNSYSTEM"."FACTORIAL" (n NUMBER) 
RETURN NUMBER 
AS 
BEGIN 
    IF n = 1 THEN 
      RETURN 1; 
    ELSE 
      RETURN n * Factorial(n - 1); 
    END IF; 
END factorial;

/
