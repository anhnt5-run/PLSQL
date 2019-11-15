--------------------------------------------------------
--  File created - Friday-November-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure DELETE_STUDENT_SCORE_BY_FACULTY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."DELETE_STUDENT_SCORE_BY_FACULTY" (i_faculty IN 
faculty.id%TYPE) 
AS 
  CURSOR student_cur IS 
    SELECT id 
    FROM   student 
    WHERE  faculty_id = i_faculty; 
  v_student student_cur%ROWTYPE; 
BEGIN 
    OPEN student_cur; 

    LOOP 
        FETCH student_cur INTO v_student; 

        Exit WHEN student_cur%NOTFOUND; 

        dbms_output.Put_line('id=' 
                             || v_student.id); 

        DELETE FROM score 
        WHERE  student_id = v_student.id; 

        DELETE FROM student 
        WHERE  id = v_student.id; 
    END LOOP; 

    CLOSE student_cur; 
END delete_student_score_by_faculty;

/
