--사용자 tblUser
--관리자
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(1, NULL ,'admin1');
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(2,'','admin2');
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(3,'','admin3');
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(4,'','admin4');
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(5,'','admin5');
--회원
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(6,'abc001@naver.com','');
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(7,'abc002@naver.com','');
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(8,'abc003@naver.com','');
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(9,'abc004@naver.com','');

--테스트
INSERT INTO tblUser(seq, idMember, idAdmin) VALUES(10,'j26725053@naver.com','');

--나의 카드 tblMyCard
select * from tblMember;
select * from tblCardInformation;
insert into tblMyCard (seq, cardNumber, alias, validity, idMember, seqCardInformation) 
    values (1, '4005550000000001', '토뱅', '2026-05-03', 'abc001@naver.com', 1);
insert into tblMyCard (seq, cardNumber, alias, validity, idMember, seqCardInformation) 
    values (2, '4012888888881881', '신한 드림', '2030-03-20', 'abc001@naver.com', 9);
insert into tblMyCard (seq, cardNumber, alias, validity, idMember, seqCardInformation) 
    values (3, '4111111111111111', '국민 알뜰', '2028-05-26', 'abc002@naver.com', 5);
insert into tblMyCard (seq, cardNumber, alias, validity, idMember, seqCardInformation) 
    values (4, '4444333322221111', '노리 체크', '2032-08-20', 'abc002@naver.com', 3);
insert into tblMyCard (seq, cardNumber, alias, validity, idMember, seqCardInformation) 
    values (5, '4444333322220000', '노리 체크', '2032-08-20', 'abc003@naver.com', 3);
insert into tblMyCard (seq, cardNumber, alias, validity, idMember, seqCardInformation) 
    values (6, '4555400000555123', '오하쳌', '2026-10-10', 'abc002@naver.com', 2);
insert into tblMyCard (seq, cardNumber, alias, validity, idMember, seqCardInformation) 
    values (7, '4564456445644564', '오하쳌', '2030-05-12', 'abc004@naver.com', 2);
insert into tblMyCard (seq, cardNumber, alias, validity, idMember, seqCardInformation) 
    values (8, '4716914706534228', '국민 토심이', '2030-05-12', 'abc004@naver.com', 7);
insert into tblMyCard (seq, cardNumber, alias, validity, idMember, seqCardInformation) 
    values (9, '4916541713757159', '신한 라이프', '2027-01-12', 'abc001@naver.com', 6);
insert into tblMyCard (seq, cardNumber, alias, validity, idMember, seqCardInformation) 
    values (10, '4916615639346972', '농협 flex', '2034-01-10', 'abc004@naver.com', 8);

--가계부 tblAcc
insert into tblAcc (seq, idMember) values (1, 'abc001@naver.com');
insert into tblAcc (seq, idMember) values (2, 'abc002@naver.com');
insert into tblAcc (seq, idMember) values (3, 'abc003@naver.com');
insert into tblAcc (seq, idMember) values (4, 'abc004@naver.com');

--테스트
insert into tblAcc (seq, idMember) values (5, 'j26725053@naver.com');


--회원 권한 목록 tblMemberPriv
--권한(1: 비회원, 2:회원, 3:관리자, 4:탈퇴)
insert into tblMemberPriv (seq, seqPriv, idMember) 
    values (1, 1, 'abc001@naver.com');
insert into tblMemberPriv (seq, seqPriv, idMember) 
    values (2, 2, 'abc002@naver.com');
insert into tblMemberPriv (seq, seqPriv, idMember) 
    values (3, 2, 'abc003@naver.com');
insert into tblMemberPriv (seq, seqPriv, idMember) 
    values (4, 4,'abc004@naver.com');
insert into tblMemberPriv (seq, seqPriv, idMember) 
    values (5, 2,'j26725053@naver.com');
    
update  tblMemberPriv set seqPriv = '2' where idMember = 'abc001@naver.com';

commit;
