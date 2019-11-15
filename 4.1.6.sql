--------------------------------------------------------
--  File created - Friday-November-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure CHECKING_DATETIME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."CHECKING_DATETIME" (day   IN NUMBER, 
                                              month IN NUMBER, 
                                              year  IN NUMBER) AS date_varchar VARCHAR2(20); 
  d_date                                                                       DATE; 
  BEGIN 
    date_varchar := to_char(day) 
    || '/' 
    || to_char(month) 
    || '/' 
    || to_char(year); 
    d_date := to_date(date_varchar, 'DD/MM/YYYY'); 
    dbms_output.put_line('NGÀY THÁNG N?M H?P L?'); 
  EXCEPTION 
  WHEN OTHERS THEN 
    dbms_output.put_line('NGÀY THÁNG N?M KHÔNG H?P L?'); 
  END checking_datetime;

/
