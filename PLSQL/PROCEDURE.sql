
CREATE OR REPLACE PROCEDURE update_member_priv
IS
BEGIN
  FOR r_member IN (
    SELECT DISTINCT m.id
    FROM tblMember m
    JOIN tblUser u ON m.id = u.idMember
    JOIN tblPost p ON u.seq = p.seqUser
    WHERE p.blindCheck = 1
  )
  LOOP
    DECLARE
      v_result VARCHAR2(100);
    BEGIN
      v_result := update_member_priv_func(r_member.id);
      DBMS_OUTPUT.PUT_LINE('Member ID: ' || r_member.id || ', Result: ' || v_result);
    END;
  END LOOP;
END;
/

BEGIN
  DBMS_SCHEDULER.CREATE_JOB(
    job_name        => 'update_member_priv_job',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN update_member_priv; END;',
    start_date      => TRUNC(SYSDATE) + 1/24, -- 다음날 오전 9시
    repeat_interval => 'FREQ=MINUTELY;INTERVAL=1',
    enabled         => TRUE,
    comments        => 'Update member privileges every minute'
  );
END;
/