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






commit;