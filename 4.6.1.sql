CREATE OR REPLACE PACKAGE FIND_STU_PKG AS 

Function Find_student_name(i_s_id       IN student.id%TYPE, 
                                              o_full_name OUT 
student.first_name%TYPE, 
                                              o_last_name  OUT 
student.last_name%TYPE)
Return student.first_name%TYPE;

END FIND_STU_PKG;
/


CREATE OR REPLACE PACKAGE BODY FIND_STU_PKG AS

  Function Find_student_name(i_s_id       IN student.id%TYPE, 
                                              o_full_name OUT 
student.first_name%TYPE, 
                                              o_last_name  OUT 
student.last_name%TYPE)
Return student.first_name%TYPE AS full_name student.first_name%TYPE; 
  BEGIN
    SELECT first_name || ' ' || last_name 
      INTO   full_name 
      FROM   student 
      WHERE  id = i_s_id; 

      dbms_output.Put_line('Fullname: ' 
                           || full_name); 

      RETURN full_name; 
  EXCEPTION 
    WHEN no_data_found THEN 
               dbms_output.Put_line('Not found'); 

               RETURN ''; 
  END Find_student_name;

END FIND_STU_PKG;
/
