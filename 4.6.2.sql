CREATE OR REPLACE PACKAGE print_student_pkg 
AS 
PROCEDURE print_student_name( 
    p_stu_id student.id%TYPE); 
  FUNCTION Find_student_name( 
    p_stu_id student.id%TYPE) 
  RETURN student.first_name%TYPE;   
END print_student_pkg;
/


CREATE OR REPLACE PACKAGE BODY print_student_pkg 
AS 
  full_name student.first_name%TYPE; 
  PROCEDURE Print_student_name(p_stu_id IN student.id%TYPE) 
  AS 
  BEGIN 
      full_name := Find_student_name(p_stu_id); 

      dbms_output.Put_line('Fullname: ' 
                           || full_name); 
  END print_student_name; 
  FUNCTION Find_student_name(p_stu_id student.id%TYPE) 
  RETURN student.first_name%TYPE 
  AS 
    asd student.first_name%TYPE; 
  BEGIN 
      SELECT first_name 
             || ' ' 
             || last_name 
      INTO   full_name 
      FROM   student 
      WHERE  id = p_stu_id; 

      RETURN full_name; 
  EXCEPTION 
    WHEN no_data_found THEN 
               dbms_output.Put_line('Not found'); 

               RETURN ''; 
  END; 
END print_student_pkg;
/
