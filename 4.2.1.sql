--------------------------------------------------------
--  File created - Friday-November-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure FIND_STUDENT_BY_FACULTY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."FIND_STUDENT_BY_FACULTY" (i_faculty_id in faculty.id%type) AS 
CURSOR STUDENT_CUR IS
select first_name, last_name from student where faculty_id = i_faculty_id;
v_student STUDENT_CUR%Rowtype;
BEGIN
  OPEN STUDENT_CUR;
  Loop 
  FETCH STUDENT_CUR INTO v_student;
  exit when STUDENT_CUR%Notfound;
  DBMS_OUTPUT.PUT_LINE(STUDENT_CUR%rowcount || ' Full name: ' || v_student.first_name || ' ' || v_student.last_name);
  end loop;
  Close STUDENT_CUR;
END FIND_STUDENT_BY_FACULTY;

/
