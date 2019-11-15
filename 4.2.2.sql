--------------------------------------------------------
--  File created - Friday-November-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure LIST_STUDENT_SUBJECT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."LIST_STUDENT_SUBJECT" 
AS 
  CURSOR student_cur IS 
    SELECT stu.id, 
           stu.first_name, 
           stu.last_name 
    FROM   student stu; 
  CURSOR subject_cur( 
    student_id student.id%TYPE) IS 
    SELECT sub.name 
    FROM   subjects sub 
           inner join score sc 
                   ON sub.id = sc.subjects_id 
    WHERE  sc.student_id = student_id 
    GROUP  BY sub.name; 
  v_student student_cur%ROWTYPE; 
  v_subject subject_cur%ROWTYPE; 
BEGIN 
    OPEN student_cur; 

    LOOP 
        FETCH student_cur INTO v_student; 

        EXIT WHEN student_cur%NOTFOUND; 

        dbms_output.Put_line('Student: ' 
                             || v_student.first_name 
                             || ' ' 
                             || v_student.last_name); 

        OPEN subject_cur(v_student.id); 

        LOOP 
            FETCH subject_cur INTO v_subject; 

            EXIT WHEN subject_cur%NOTFOUND; 

            dbms_output.Put_line(' ' 
                                 || v_subject.name); 
        END LOOP; 

        CLOSE subject_cur; 
    END LOOP; 

    CLOSE student_cur; 
END list_student_subject;

/
