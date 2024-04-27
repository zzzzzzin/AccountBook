--카드 혜택 목록 tblListCardBenefits
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (1, 23, 1);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (2, 8, 2);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (3, 18, 2);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (4, 23, 2);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (5, 4, 3);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (6, 7, 3);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (7, 17, 3);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (8, 8, 4);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (9, 17, 4);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (10, 18, 4);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (11, 2, 5);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (12, 5, 5);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (13, 17, 5);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (14, 3, 6);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (15, 5, 6);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (16, 12, 6);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (17, 4, 7);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (18, 7, 7);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (19, 18, 7);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (20, 6, 8);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (21, 8, 8);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (22, 18, 8);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (23, 1, 9);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (24, 3, 9);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (25, 2, 10);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (26, 4, 10);
insert into tblListCardBenefits (seq, seqCardCategory, seqCardInformation) values (27, 17, 10);


--회원 tblMember
INSERT INTO tblMember(id,pw,name,nickname,phoneNumber,nss,gender,reportCount,seqSurvey,seqProfileimg) VALUES ('abc001@naver.com',1234,'홍길동','호랑이','010-1234-0001','9901011234567','남',0,3,1);
INSERT INTO tblMember(id,pw,name,nickname,phoneNumber,nss,gender,reportCount,seqSurvey,seqProfileimg) VALUES ('abc002@naver.com',1234,'홍길순','토끼','010-1234-0002','9801012234567','여',0,2,1);
INSERT INTO tblMember(id,pw,name,nickname,phoneNumber,nss,gender,reportCount,seqSurvey,seqProfileimg) VALUES ('abc003@naver.com',1234,'옹길동','강아지','010-1234-0003','0101013234567','남',1,1,1);
INSERT INTO tblMember(id,pw,name,nickname,phoneNumber,nss,gender,reportCount,seqSurvey,seqProfileimg) VALUES ('abc004@naver.com',1234,'옹길순','고양이','010-1234-0004','0201014234567','여',2,11,1); --설문조사(null)
commit;