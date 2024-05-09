CREATE OR REPLACE TRIGGER trgBlindCheck
BEFORE UPDATE ON tblPost
FOR EACH ROW
BEGIN
    IF :NEW.reportCount >= 10 THEN
        :NEW.blindCheck := 1;
    END IF;
END;
/



CREATE OR REPLACE TRIGGER trgUpdateMemberPriv
AFTER UPDATE ON tblPost
FOR EACH ROW
DECLARE
    v_total_report_count NUMBER;
    v_member_seq NUMBER;
BEGIN
    SELECT idMember INTO v_member_seq FROM tblUser WHERE seq = :NEW.seqUser;
    
    SELECT SUM(p.reportCount) + SUM(c.reportCount) + SUM(r.reportCount)
    INTO v_total_report_count
    FROM tblPost p
    JOIN tblUser u ON p.seqUser = u.seq
    LEFT JOIN tblComments c ON p.seq = c.seqPost AND c.seqUser = u.seq
    LEFT JOIN tblReplyComments r ON c.seq = r.seqComments AND r.seqUser = u.seq
    WHERE u.idMember = v_member_seq;
    
    IF v_total_report_count > 30 THEN
        UPDATE tblMemberPriv
        SET seqPriv = 4
        WHERE idMember = v_member_seq;
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


commit;