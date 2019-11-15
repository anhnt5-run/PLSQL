--------------------------------------------------------
--  File created - Friday-November-15-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure BONUS_SCORE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "RUNSYSTEM"."BONUS_SCORE" 
AS 
  CURSOR score_cur IS 
    SELECT subjects_id 
    FROM   score 
    WHERE  subjects_id = 2; 
  v_score score_cur%ROWTYPE; 
BEGIN 
    OPEN score_cur; 

    LOOP 
        FETCH score_cur INTO v_score; 

        exit WHEN score_cur%NOTFOUND; 

        UPDATE score 
        SET    score = score + 2 
        WHERE  subjects_id = v_score.subjects_id; 
    END LOOP; 

    CLOSE score_cur; 
END bonus_score;

/
