--------------------------------------------------------
--  File created - Monday-November-18-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TRIG_AVG_SCORE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RUNSYSTEM"."TRIG_AVG_SCORE" 
  AFTER DELETE OR INSERT OR UPDATE ON score 
  FOR EACH ROW 
DECLARE 
    CURSOR score_by_stu_cur IS 
      SELECT sc.subjects_id, 
             sub.name, 
             sc.score 
      FROM   score sc 
             inner join subjects sub 
                     ON sc.subjects_id = sub.id 
      WHERE  student_id = :NEW.student_id; 
    v_score_by_student score_by_stu_cur%ROWTYPE; 
    avgscorebysub      score.score%TYPE; 
BEGIN 
    OPEN score_by_stu_cur; 

    LOOP 
        FETCH score_by_stu_cur INTO v_score_by_student; 

        exit WHEN score_by_stu_cur%NOTFOUND; 

        SELECT SUM(v_score_by_student.score) / Count( 
               v_score_by_student.subjects_id) 
        INTO   avgscorebysub 
        FROM   score 
        WHERE  student_id = :NEW.student_id 
               AND subjects_id = v_score_by_student.subjects_id; 

        dbms_output.Put_line('Avg Score By Subject: ' 
                             ||v_score_by_student.name 
                             || ' = ' 
                             || avgscorebysub); 
    END LOOP; 

    CLOSE score_by_stu_cur; 
END;
/
ALTER TRIGGER "RUNSYSTEM"."TRIG_AVG_SCORE" ENABLE;
