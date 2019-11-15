--------------------------------------------------------
--  File created - Friday-November-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure UPDATE_STUDEN_SCORE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."UPDATE_STUDEN_SCORE" (i_address IN 
student.address%TYPE, 
                                                i_sex     IN student.sex%TYPE, 
                                                i_faculty IN 
student.faculty_id%TYPE) 
AS 
BEGIN 
    UPDATE score 
    SET    score = score + 1 
    WHERE  student_id IN (SELECT id 
                          FROM   student 
                          WHERE  address = i_address 
                                 AND sex = i_sex 
                                 AND faculty_id = i_faculty); 
END update_studen_score;

/
