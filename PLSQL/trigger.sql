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