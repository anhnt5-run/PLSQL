--------------------------------------------------------
--  File created - Wednesday-November-20-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TRIG_AVG_SCORE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RUNSYSTEM"."TRIG_AVG_SCORE" 
  FOR DELETE OR INSERT OR UPDATE ON score COMPOUND TRIGGER avg_score 
score.score%TYPE; avg_score_by_credit_num score.score%TYPE; AFTER EACH ROW IS BEGIN 
SELECT avg(score) INTO avg_score FROM score WHERE student_id = :NEW.student_id 
GROUP BY subjects_id; SELECT (SUM(sc.score * sub.credit_num) / 
SUM(sub.credit_num)) INTO avg_score_by_credit_num FROM score sc inner join subjects sub ON 
sc.subjects_id = sub.id WHERE sc.student_id = :NEW.student_id; END AFTER EACH ROW; END 
trig_avg_score;
/
ALTER TRIGGER "RUNSYSTEM"."TRIG_AVG_SCORE" ENABLE;
