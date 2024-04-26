--게시판 tblBoard
insert into tblBoard (seq, seqCategory) values (1, 1);
insert into tblBoard (seq, seqCategory) values (2, 2);
insert into tblBoard (seq, seqCategory) values (3, 3);
insert into tblBoard (seq, seqCategory) values (4, 4);

--뉴스 카테고리 목록 tblNewsCategoryList
INSERT INTO tblNewsCategoryList(seq,seqnews,seqAccCategory) VALUES (1,1,35);
INSERT INTO tblNewsCategoryList(seq,seqnews,seqAccCategory) VALUES (2,2,35);
INSERT INTO tblNewsCategoryList(seq,seqnews,seqAccCategory) VALUES (3,3,35);
INSERT INTO tblNewsCategoryList(seq,seqnews,seqAccCategory) VALUES (4,4,35);
INSERT INTO tblNewsCategoryList(seq,seqnews,seqAccCategory) VALUES (5,5,35);
INSERT INTO tblNewsCategoryList(seq,seqnews,seqAccCategory) VALUES (6,6,5);
INSERT INTO tblNewsCategoryList(seq,seqnews,seqAccCategory) VALUES (7,7,5);
INSERT INTO tblNewsCategoryList(seq,seqnews,seqAccCategory) VALUES (8,8,5);
INSERT INTO tblNewsCategoryList(seq,seqnews,seqAccCategory) VALUES (9,9,5);
INSERT INTO tblNewsCategoryList(seq,seqnews,seqAccCategory) VALUES (10,10,5);
INSERT INTO tblNewsCategoryList(seq,seqnews,seqAccCategory) VALUES (11,11,33);
INSERT INTO tblNewsCategoryList(seq,seqnews,seqAccCategory) VALUES (12,12,33);
INSERT INTO tblNewsCategoryList(seq,seqnews,seqAccCategory) VALUES (13,13,33);
INSERT INTO tblNewsCategoryList(seq,seqnews,seqAccCategory) VALUES (14,14,33);
INSERT INTO tblNewsCategoryList(seq,seqnews,seqAccCategory) VALUES (15,15,33);

--키워드 tblKeyword
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (1,'주유',5);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (2,'통행료',5);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (3,'대중교통',5);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (4,'택시',5);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (5,'렌터카',5);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (6,'고속도로',5);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (7,'지하철',5);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (8,'버스',5);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (9,'기차',5);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (10,'비행기',5);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (11,'자전거',5);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (12,'치킨',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (13,'굽네',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (14,'굽네치킨',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (15,'BBQ',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (16,'비비큐',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (17,'맘스터치',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (18,'Mom''s Touch',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (19,'교촌치킨',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (20,'피자',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (21,'도미노피자',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (22,'도미노',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (23,'피자스쿨',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (24,'피자헛',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (25,'햄버거',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (26,'버거킹',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (27,'맥도날드',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (28,'롯데리아',33);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (29,'정기점검',35);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (30,'정기검사',35);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (31,'배터리',35);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (32,'타이어',35);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (33,'오일',35);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (34,'자동차 부품',35);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (35,'세차',35);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (36,'주차',35);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (37,'자동차 보험',35);
INSERT INTO tblKeyword(seq,content,seqAccCategoryNumber) VALUES (38,'유지보수',35);

--고정 입출금 여부 tblFixedDepositWithdrawalCheck
insert into tblFixedDepositWithdrawalCheck (seq, content, seqFixedFluctuationPeriod) values (1, '월세', 1);
insert into tblFixedDepositWithdrawalCheck (seq, content, seqFixedFluctuationPeriod) values (2, '헬스장 할부', 2);
insert into tblFixedDepositWithdrawalCheck (seq, content, seqFixedFluctuationPeriod) values (3, '자동차 할부', 3);

--관리자 권한 목록 tblAdminPriv
insert into tblAdminPriv (seq, seqPriv, idAdmin) values (1, 3, 'admin1');
insert into tblAdminPriv (seq, seqPriv, idAdmin) values (2, 3, 'admin2');
insert into tblAdminPriv (seq, seqPriv, idAdmin) values (3, 3, 'admin3');
insert into tblAdminPriv (seq, seqPriv, idAdmin) values (4, 3, 'admin4');
insert into tblAdminPriv (seq, seqPriv, idAdmin) values (5, 3, 'admin5');

--카드/가계부 카테고리 연결 tblCardAndAcc

--카드 정보 tblCardInformation

--설문조사 tblSurvey
