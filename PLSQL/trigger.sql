CREATE OR REPLACE TRIGGER trgBlindCheck
BEFORE UPDATE ON tblPost
FOR EACH ROW
BEGIN
    IF :NEW.reportCount >= 10 THEN
        :NEW.blindCheck := 1;
    END IF;
END;
/



CREATE OR REPLACE TRIGGER trgReplaceBannedWords
BEFORE INSERT OR UPDATE ON tblPost
FOR EACH ROW
DECLARE
    v_banned_word VARCHAR2(100);
BEGIN
    FOR banned_word IN (SELECT content FROM tblBanWord)
    LOOP
        v_banned_word := banned_word.content;
        IF INSTR(:NEW.title, v_banned_word) > 0 THEN
            :NEW.title := REPLACE(:NEW.title, v_banned_word, '@@');
        END IF;
    END LOOP;
END;
/

CREATE OR REPLACE TRIGGER trg_update_member_priv
AFTER UPDATE OF reportCount ON tblMember
FOR EACH ROW
WHEN (NEW.reportCount >= 30)
DECLARE
  v_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_count FROM tblMemberPriv WHERE idMember = :NEW.id;
  
  IF v_count > 0 THEN
    UPDATE tblMemberPriv SET seqPriv = 4 WHERE idMember = :NEW.id;
  ELSE
    INSERT INTO tblMemberPriv (seq, idMember, seqPriv)
    VALUES (seqMemberPriv.NEXTVAL, :NEW.id, 4);
  END IF;
END;
/


commit;