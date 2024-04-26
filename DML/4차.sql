--사용자 tblUser
--관리자
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(1,'','admin1');
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(2,'','admin2');
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(3,'','admin3');
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(4,'','admin4');
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(5,'','admin5');
--회원
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(6,'abc001@naver.com','');
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(7,'abc002@naver.com','');
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(8,'abc003@naver.com','');
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(9,'abc004@naver.com','');


--회원 금융 정보 tblMemberFinance

--나의 카드 tblMyCard

--가계부 tblAcc
insert into tblAcc (seq, seqMember) values (1, 'abc001@naver.com');
insert into tblAcc (seq, seqMember) values (2, 'abc002@naver.com');
insert into tblAcc (seq, seqMember) values (3, 'abc003@naver.com');
insert into tblAcc (seq, seqMember) values (4, 'abc004@naver.com');

--회원 권한 목록 tblMemberPriv
INSERT INTO tblMemberFinance(seq,seqMember,seqProperty,seqDebt) VALUES (1,'abc001@naver.com',9,2);
INSERT INTO tblMemberFinance(seq,seqMember,seqProperty,seqDebt) VALUES (2,'abc002@naver.com',5,4);
INSERT INTO tblMemberFinance(seq,seqMember,seqProperty,seqDebt) VALUES (3,'abc003@naver.com',3,7);
INSERT INTO tblMemberFinance(seq,seqMember,seqProperty,seqDebt) VALUES (4,'abc004@naver.com',0,0);
