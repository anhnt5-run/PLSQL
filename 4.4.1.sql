--------------------------------------------------------
--  File created - Monday-November-18-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure EX_DEVIDE_BY_ZERO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."EX_DEVIDE_BY_ZERO" (so_chia    IN NUMBER, 
                                              so_bi_chia IN NUMBER) 
AS 
  ex_error EXCEPTION; 
BEGIN 
    IF so_bi_chia = 0 THEN 
      RAISE ex_error; 
    ELSE 
      dbms_output.Put_line (so_chia / so_bi_chia); 
    END IF; 
EXCEPTION 
  WHEN ex_error THEN 
             dbms_output.Put_line('Cannot devide by zero'); 
END ex_devide_by_zero;

/
