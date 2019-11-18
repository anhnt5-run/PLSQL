--------------------------------------------------------
--  File created - Monday-November-18-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure EX_RECTANGLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."EX_RECTANGLE" (a IN NUMBER, 
                                         b IN NUMBER, 
                                         c IN NUMBER) 
AS 
  ex EXCEPTION; 
BEGIN 
    IF a + b > c 
       AND a + c > b 
       AND b + c > a THEN 
      IF a = b 
         AND a = c 
         AND b = c THEN 
        dbms_output.Put_line('TAM GIÁC ??U'); 
      ELSIF a = b 
             OR a = c 
             OR b = c THEN 
        dbms_output.Put_line('TAM GIÁC CÂN'); 
      ELSIF a ** 2 = b ** 2 + c ** 2 
             OR b ** 2 = a ** 2 + c ** 2 
             OR c ** 2 = b ** 2 + a ** 2 THEN 
        dbms_output.Put_line('TAM GIÁC VUÔNG'); 
      ELSIF ( a ** 2 = b ** 2 + c ** 2 
               OR b ** 2 = a ** 2 + c ** 2 
               OR c ** 2 = b ** 2 + a ** 2 ) 
            AND ( a = b 
                   OR a = c 
                   OR b = c ) THEN 
        dbms_output.Put_line('TAM GIÁC VUÔNG CÂN'); 
      ELSE 
        dbms_output.Put_line('TAM GIÁC TH??NG'); 
      END IF; 
    ELSE 
      RAISE ex; 
    END IF; 
EXCEPTION 
  WHEN ex THEN 
dbms_output.Put_line('L?i !! ?ÂY KHÔNG PH?I LÀ C?NH C?A 1 TAM GIÁC'); 
END ex_rectangle;

/
