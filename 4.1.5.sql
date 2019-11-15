--------------------------------------------------------
--  File created - Friday-November-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure RECTANGLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."RECTANGLE" (a IN NUMBER, 
                                      b IN NUMBER, 
                                      c IN NUMBER) 
AS 
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
      dbms_output.Put_line('KHÔNG PH?I LÀ C?NH C?A 1 TAM GIÁC'); 
    END IF; 
END rectangle;

/
