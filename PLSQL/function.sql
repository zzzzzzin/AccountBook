CREATE OR REPLACE FUNCTION update_member_priv_func(p_id_member VARCHAR2) RETURN VARCHAR2
IS
  v_result VARCHAR2(100) := 'Success';
  v_blind_post_count NUMBER;
  v_seq_priv NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_blind_post_count
  FROM tblPost p
  JOIN tblUser u ON p.seqUser = u.seq
  WHERE u.idMember = p_id_member AND p.blindCheck = 1;
  
  IF v_blind_post_count >= 3 THEN
    SELECT seqPriv INTO v_seq_priv
    FROM tblMemberPriv
    WHERE idMember = p_id_member;
    
    IF v_seq_priv IS NULL THEN
      INSERT INTO tblMemberPriv (seq, idMember, seqPriv)
      VALUES (seqMemberPriv.NEXTVAL, p_id_member, 4);
    ELSE
      UPDATE tblMemberPriv
      SET seqPriv = 4
      WHERE idMember = p_id_member;
    END IF;
  END IF;
  
  RETURN v_result;
EXCEPTION
  WHEN OTHERS THEN
    v_result := 'Error: ' || SQLERRM;
    RETURN v_result;
END;
/