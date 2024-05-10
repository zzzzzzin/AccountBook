--카드 혜택 목록 tblListCardBenefits
select * from tblCardCategory;
select * from tblCardInformation;
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (1, 23, '1', 1);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (2, 8, '2', 2);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (3, 18, '3', 2);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (4, 23, '4', 2);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (5, 4, '5', 3);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (6, 7, '2', 3);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (7, 17, '3', 3);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (8, 8, '1', 4);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (9, 17, '8', 4);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (10, 18, '9', 4);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (11, 2, '1', 5);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (12, 5, '2', 5);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (13, 17, '2', 5);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (14, 3, '3', 6);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (15, 5, '4', 6);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (16, 12, '5', 6);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (17, 4, '6', 7);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (18, 7, '7', 7);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (19, 18, '7', 7);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (20, 6, '1', 8);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (21, 8, '1', 8);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (22, 18, '2', 8);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (23, 1, '3', 9);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (24, 3, '4', 9);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (25, 2, '5', 10);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (26, 4, '6', 10);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (27, 17, '5', 10);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (28, 15, '10', 11);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (29, 15, '2', 12);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (30, 15, '8', 13);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (31, 15, '12', 14);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (32, 15, '1', 15);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (33, 15, '5', 16);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (34, 15, '7', 17);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (35, 15, '10', 18);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (36, 15, '5', 19);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (37, 15, '15', 20);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (38, 15, '15', 20);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (39, 15, '15', 20);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (40, 15, '15', 20);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (41, 15, '15', 20);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (42, 15, '15', 20);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (43, 15, '15', 20);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (44, 15, '15', 20);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (45, 15, '15', 20);
insert into tblListCardBenefits (seq, seqCardCategory, content, seqCardInformation) values (46, 15, '15', 20);


--회원 tblMember
INSERT INTO tblMember(id,pw,name,nickname,phoneNumber,ssn,gender,reportCount,joinDate, seqSurvey,seqProfileimg) VALUES ('abc001@naver.com',1234,'홍길동','호랑이','010-1234-0001','9901011234567','남',0,'2022-05-03', 3,1);
INSERT INTO tblMember(id,pw,name,nickname,phoneNumber,ssn,gender,reportCount,joinDate, seqSurvey,seqProfileimg) VALUES ('abc002@naver.com',1234,'홍길순','토끼','010-1234-0002','9801012234567','여',0,'2023-01-10',2,1);
INSERT INTO tblMember(id,pw,name,nickname,phoneNumber,ssn,gender,reportCount,joinDate, seqSurvey,seqProfileimg) VALUES ('abc003@naver.com',1234,'옹길동','강아지','010-1234-0003','0101013234567','남',1,'2024-02-23',1,1);
INSERT INTO tblMember(id,pw,name,nickname,phoneNumber,ssn,gender,reportCount,joinDate, seqSurvey,seqProfileimg) VALUES ('abc004@naver.com',1234,'옹길순','고양이','010-1234-0004','0201014234567','여',2,'2023-02-18',5,1);
INSERT INTO tblMember(id,pw,name,nickname,phoneNumber,ssn,gender,reportCount,joinDate, seqSurvey,seqProfileimg) VALUES ('abc005@naver.com',1234,'옹길순미','고양이','010-1234-0001','0201014234567','여',3,'2023-02-18',8,1);
INSERT INTO tblMember(id,pw,name,nickname,phoneNumber,ssn,gender,reportCount,joinDate, seqSurvey,seqProfileimg) VALUES ('abc0000@naver.com',1234,'옹길','고아','010-1234-7531','020101412567','여',2,'2023-02-18',2,1);

--테스트
INSERT INTO tblMember(id,pw,name,nickname,phoneNumber,ssn,gender,reportCount,joinDate, seqSurvey,seqProfileimg) 
VALUES ('j26725053@naver.com',1234,'정혜정','vvjd','010-1234-5678','0009824099282','여',0,'2024-05-04',null,1);

commit;