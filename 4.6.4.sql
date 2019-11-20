CREATE OR REPLACE PACKAGE PRINT_STU_AND_MIN_SCORE_PKG AS 

 FUNCTION print_stu_name( 
    p_stu_id student.id%TYPE) 
  RETURN student.first_name%TYPE;  

    FUNCTION print_min_score 
  RETURN score.score%TYPE;  

END PRINT_STU_AND_MIN_SCORE_PKG;
/


CREATE OR REPLACE PACKAGE BODY print_stu_and_min_score_pkg 
AS 
  FUNCTION Print_stu_name(p_stu_id student.id%TYPE) 
  RETURN student.first_name%TYPE 
  AS 
    full_name student.first_name%TYPE; 
  BEGIN 
      SELECT first_name 
             || ' ' 
             || last_name 
      INTO   full_name 
      FROM   student 
      WHERE  id = p_stu_id; 

      dbms_output.Put_line('Fullname: ' 
                           || full_name); 

      RETURN full_name; 
  EXCEPTION 
    WHEN no_data_found THEN 
               dbms_output.Put_line('Not found'); 

               RETURN ''; 
  END print_stu_name; 
  FUNCTION Print_min_score 
  RETURN score.score%TYPE 
  AS 
    min_score score.score%TYPE; 
  BEGIN 
      SELECT Min(score) 
      INTO   min_score 
      FROM   score; 

      dbms_output.Put_line('Min score: ' 
                           || min_score); 

      RETURN min_score; 
  END print_min_score; 
END print_stu_and_min_score_pkg;
/
