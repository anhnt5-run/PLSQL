--------------------------------------------------------
--  File created - Thursday-November-21-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TRIG_AVG_SCORE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RUNSYSTEM"."TRIG_AVG_SCORE" 
FOR DELETE OR INSERT OR UPDATE ON score 
COMPOUND TRIGGER 
CURSOR score_sub_cur(p_student_id student.id%TYPE) 
IS SELECT sc.score, sub.credit_num FROM score sc 
INNER JOIN subjects sub ON sub.id = sc.subjects_id WHERE sc.student_id = p_student_id; 
v_score_sub_cur score_sub_cur%ROWTYPE; 
v_student_id student.id%TYPE; 
v_sum_score_by_credit_num score.score%TYPE := 0; 
v_sum_credit_num subjects.credit_num%TYPE := 0; 

    AFTER EACH ROW IS 
    BEGIN 
        IF UPDATING THEN v_student_id := :NEW.student_id; END IF; 
        IF INSERTING THEN v_student_id := :NEW.student_id; END IF; 
        IF DELETING THEN v_student_id := :OLD.student_id; END IF; 
    END AFTER EACH ROW; 
    
    AFTER STATEMENT IS 
    BEGIN 
        OPEN score_sub_cur(v_student_id); 
        LOOP 
        FETCH score_sub_cur INTO v_score_sub_cur; 
        EXIT WHEN score_sub_cur%NOTFOUND; 
        v_sum_score_by_credit_num :=  v_sum_score_by_credit_num + (v_score_sub_cur.score * v_score_sub_cur.credit_num); 
        v_sum_credit_num := v_sum_credit_num + v_score_sub_cur.credit_num; 
        END LOOP; 
        CLOSE score_sub_cur;         
        dbms_output.PUT_LINE('Result = '|| v_sum_score_by_credit_num / v_sum_credit_num); 
    END AFTER STATEMENT; 
END trig_avg_score;
/
ALTER TRIGGER "RUNSYSTEM"."TRIG_AVG_SCORE" ENABLE;
