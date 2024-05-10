CREATE OR REPLACE FUNCTION update_member_report_count(p_id_member VARCHAR2)
RETURN NUMBER
IS
  v_report_count NUMBER;
BEGIN
  SELECT COALESCE(SUM(p.reportCount), 0) + COALESCE(SUM(c.reportCount), 0)
  INTO v_report_count
  FROM tblMember m
  LEFT JOIN tblUser u ON m.id = u.idMember
  LEFT JOIN tblPost p ON u.seq = p.seqUser
  LEFT JOIN tblComments c ON u.seq = c.seqUser
  WHERE m.id = p_id_member
  GROUP BY m.id;

  UPDATE tblMember SET reportCount = v_report_count WHERE id = p_id_member;
  
  RETURN v_report_count;
END;
/