--------------------------------------------------------
--  File created - Friday-November-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure RECTANGLE_P2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."RECTANGLE_P2" (a IN NUMBER, 
                                         b IN NUMBER, 
                                         c IN NUMBER) 
AS 
  f VARCHAR(10); 
BEGIN 
    IF a + b > c 
       AND a + c > b 
       AND b + c > a THEN 
      IF a = b 
         AND a = c 
         AND b = c THEN 
        f := 'TGD'; 
      ELSIF a = b 
             OR a = c 
             OR b = c THEN 
        f := 'TGC'; 
      ELSIF a ** 2 = b ** 2 + c ** 2 
             OR b ** 2 = a ** 2 + c ** 2 
             OR c ** 2 = b ** 2 + a ** 2 THEN 
        f := 'TGV'; 
      ELSIF ( a ** 2 = b ** 2 + c ** 2 
               OR b ** 2 = a ** 2 + c ** 2 
               OR c ** 2 = b ** 2 + a ** 2 ) 
            AND ( a = b 
                   OR a = c 
                   OR b = c ) THEN 
        f := 'TGVC'; 
      ELSE 
        f := 'TGT'; 
      END IF; 
    ELSE 
      f := 'KPTG'; 
    END IF; 

    CASE f 
      WHEN 'TGD' THEN 
        dbms_output.Put_line('TAM GIÁC ??U'); 
      WHEN 'TGC' THEN 
        dbms_output.Put_line('TAM GIÁC CÂN'); 
      WHEN 'TGV' THEN 
        dbms_output.Put_line('TAM GIÁC VUÔNG'); 
      WHEN 'TGVC' THEN 
        dbms_output.Put_line('TAM GIÁC VUÔNG CÂN'); 
      WHEN 'TGT' THEN 
        dbms_output.Put_line('TAM GIÁC TH??NG'); 
      WHEN 'KPTG' THEN 
        dbms_output.Put_line('KHÔNG PH?I LÀ C?NH C?A 1 TAM GIÁC'); 
    END CASE; 
END rectangle_p2;

/
