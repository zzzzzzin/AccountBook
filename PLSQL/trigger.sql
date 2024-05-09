CREATE OR REPLACE TRIGGER trgBlindCheck
BEFORE UPDATE ON tblPost
FOR EACH ROW
BEGIN
    IF :NEW.reportCount >= 10 THEN
        :NEW.blindCheck := 1;
    END IF;
END;
/



commit;