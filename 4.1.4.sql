--------------------------------------------------------
--  File created - Friday-November-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure QUARATIC_EQUATION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."QUARATIC_EQUATION" (a IN NUMBER, 
                                              b IN NUMBER, 
                                              c IN NUMBER) 
AS 
  DELTA NUMBER; 
BEGIN 
    IF ( a = 0 
         AND b = 0 
         AND c = 0 ) THEN 
      dbms_output.Put_line('Ph??ng trình có vô s? nghi?m'); 
    ELSIF ( a = 0 
            AND b = 0 
            AND c != 0 ) THEN 
      dbms_output.Put_line('Ph??ng trình vô nghi?m'); 
    ELSIF ( a = 0 
            AND b != 0 ) THEN 
      dbms_output.Put_line('Ph??ng trình có 1 nghi?m duy nh?t: x = ' 
                           || -c / b); 
    ELSIF ( a != 0 
            AND a + b + c = 0 ) THEN 
      dbms_output.Put_line('Ph??ng trình có nghi?m: x1 = 1, x2 = ' 
                           || c / a); 
    ELSIF ( a != 0 
            AND a - b + c = 0 ) THEN 
      dbms_output.Put_line('Ph??ng trình có nghi?m: x1 = -1, x2 = ' 
                           || -c / a); 
    ELSIF ( a != 0 ) THEN 
      DELTA := b ** 2 - 4 * a * c; 

      IF DELTA < 0 THEN 
        dbms_output.Put_line('Ph??ng trình vô nghi?m'); 
      ELSIF DELTA = 0 THEN 
        dbms_output.Put_line('Ph??ng trình có nghi?m kép: x1 = x2 = ' - b 
                             / 2 
                             * 
                             a 
        ); 
      ELSE 
        dbms_output.Put_line('Ph??ng trình có 2 nghi?m: x1 = ' 
                             || ( -b + Sqrt(DELTA) ) / 2 * a 
                             || ' x2 = ' 
                             || ( -b - Sqrt(DELTA) ) / 2 * a); 
      END IF; 
    END IF; 
END quaratic_equation;

/
