--카드 혜택 목록 tblListCardBenefits
select * from tblCardCategory;
select * from tblCardInformation;
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (1, 23, '면제', 1);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (2, 8, '5%', 2);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (3, 18, '5%', 2);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (4, 23, '5%', 2);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (5, 4, '2500원', 3);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (6, 7, '20%', 3);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (7, 17, '35%', 3);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (8, 8, '10%', 4);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (9, 17, '10%', 4);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (10, 18, '2%', 4);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (11, 2, '10%', 5);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (12, 5, '2%', 5);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (13, 17, '2000원', 5);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (14, 3, '10%', 6);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (15, 5, '10%', 6);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (16, 12, '10%', 6);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (17, 4, '10%', 7);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (18, 7, '10%', 7);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (19, 18, '10%', 7);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (20, 6, '5%', 8);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (21, 8, '50%', 8);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (22, 18, '1000원', 8);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (23, 1, '0.7%', 9);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (24, 3, '80원', 9);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (25, 2, '10%', 10);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (26, 4, '10%', 10);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (27, 17, '5000원', 10);


--회원 tblMember
INSERT INTO tblMember(id,pw,name,nickname,phoneNumber,nss,gender,reportCount,joinDate, seqSurvey,seqProfileimg) VALUES ('abc001@naver.com',1234,'홍길동','호랑이','010-1234-0001','9901011234567','남',0,'2022-05-03', 3,1);
INSERT INTO tblMember(id,pw,name,nickname,phoneNumber,nss,gender,reportCount,joinDate, seqSurvey,seqProfileimg) VALUES ('abc002@naver.com',1234,'홍길순','토끼','010-1234-0002','9801012234567','여',0,'2023-01-10',2,1);
INSERT INTO tblMember(id,pw,name,nickname,phoneNumber,nss,gender,reportCount,joinDate, seqSurvey,seqProfileimg) VALUES ('abc003@naver.com',1234,'옹길동','강아지','010-1234-0003','0101013234567','남',1,'2024-02-23',1,1);
INSERT INTO tblMember(id,pw,name,nickname,phoneNumber,nss,gender,reportCount,joinDate, seqSurvey,seqProfileimg) VALUES ('abc004@naver.com',1234,'옹길순','고양이','010-1234-0004','0201014234567','여',2,'2023-02-18',5,1);
commit;