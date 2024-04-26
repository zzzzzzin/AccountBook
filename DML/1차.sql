--프로필 이미지 tblProfileimg
insert into tblProfileimg (seq, fileName, fileLink) values (1, 'default', 'default');

--게시판 카테고리 tblCategory
insert into tblCategory (seq, name) values (1, '공지사항');
insert into tblCategory (seq, name) values (2, '자유게시판');
insert into tblCategory (seq, name) values (3, '건의사항');
insert into tblCategory (seq, name) values (4, '출석 게시판');

-- 금지어 tblBanWord
INSERT INTO tblBanWord (seq, content) VALUES (1, '2중대');
INSERT INTO tblBanWord (seq, content) VALUES (2, '3일한');
INSERT INTO tblBanWord (seq, content) VALUES (3, 'SUCKSEX');
INSERT INTO tblBanWord (seq, content) VALUES (4, '가카');
INSERT INTO tblBanWord (seq, content) VALUES (5, '간민정음');
INSERT INTO tblBanWord (seq, content) VALUES (6, '간철수');
INSERT INTO tblBanWord (seq, content) VALUES (7, '갓치');
INSERT INTO tblBanWord (seq, content) VALUES (8, '갓카');
INSERT INTO tblBanWord (seq, content) VALUES (9, '강된장남');
INSERT INTO tblBanWord (seq, content) VALUES (10, '개독교');

--배너 이미지 tblBannerImage

--로그 tblLog

-- 압박 강도 tblCompressionIntensity
INSERT INTO tblCompressionintensity (seq, intensity) VALUES (1, '하');
INSERT INTO tblCompressionintensity (seq, intensity) VALUES (2, '중');
INSERT INTO tblCompressionintensity (seq, intensity) VALUES (3, '상');

-- 저축 기간 tblSavingsPeriod
insert into tblSavingsPeriod (seq, period) values (1, 1);
insert into tblSavingsPeriod (seq, period) values (2, 2);
insert into tblSavingsPeriod (seq, period) values (3, 3);
insert into tblSavingsPeriod (seq, period) values (4, 4);
insert into tblSavingsPeriod (seq, period) values (5, 5);
insert into tblSavingsPeriod (seq, period) values (6, 6);
insert into tblSavingsPeriod (seq, period) values (7, 7);
insert into tblSavingsPeriod (seq, period) values (8, 8);
insert into tblSavingsPeriod (seq, period) values (9, 9);
insert into tblSavingsPeriod (seq, period) values (10, 10);
insert into tblSavingsPeriod (seq, period) values (11, 11);
insert into tblSavingsPeriod (seq, period) values (12, 12);

-- 부채 tblDebt
insert into tblDebt (seq, cash) values (1, 100000);
insert into tblDebt (seq, cash) values (2, 200000);
insert into tblDebt (seq, cash) values (3, 300000);
insert into tblDebt (seq, cash) values (4, 400000);
insert into tblDebt (seq, cash) values (5, 500000);
insert into tblDebt (seq, cash) values (6, 600000);
insert into tblDebt (seq, cash) values (7, 700000);
insert into tblDebt (seq, cash) values (8, 800000);
insert into tblDebt (seq, cash) values (9, 900000);
insert into tblDebt (seq, cash) values (10, 1000000);

-- 자산 tblProperty
insert into tblProperty (seq, cash) values (1, 100000);
insert into tblProperty (seq, cash) values (2, 200000);
insert into tblProperty (seq, cash) values (3, 300000);
insert into tblProperty (seq, cash) values (4, 400000);
insert into tblProperty (seq, cash) values (5, 500000);
insert into tblProperty (seq, cash) values (6, 600000);
insert into tblProperty (seq, cash) values (7, 700000);
insert into tblProperty (seq, cash) values (8, 800000);
insert into tblProperty (seq, cash) values (9, 900000);
insert into tblProperty (seq, cash) values (10, 1000000);

--API tblAPI

-- 입출금 상태 tblDepositWithdrawalStatus
insert into tblDepositWithdrawalStatus (seq, status) values (1, '입금');
insert into tblDepositWithdrawalStatus (seq, status) values (2, '출금');

--카드 카테고리 tblCardCategory

--가계부 카테고리  tblAccCategory

--뉴스 tblNews

--고정 변동 기간 tblFixedFluctuationPeriod

-- 변동사유 목록 tblReasonsChangeList
INSERT INTO tblReasonsChangeList (seq, content) VALUES ( 1, '계좌이체');
INSERT INTO tblReasonsChangeList (seq, content) VALUES ( 2, '신용 카드');
INSERT INTO tblReasonsChangeList (seq, content) VALUES ( 3, '카드 이체');
INSERT INTO tblReasonsChangeList (seq, content) VALUES ( 4, '현금');


-- 권한 tblPriv
INSERT INTO tblPriv (seq, name) VALUES ( 1, '비회원');
INSERT INTO tblPriv (seq, name) VALUES ( 2, '회원');
INSERT INTO tblPriv (seq, name) VALUES ( 3, '관리자');
INSERT INTO tblPriv (seq, name) VALUES ( 4, '탈퇴');

-- 관리자 tblAdmin
INSERT INTO tblAdmin (id, pw, nickname) VALUES ( 'admin1', 'java1234', 'admin1' );
INSERT INTO tblAdmin (id, pw, nickname) VALUES ( 'admin2', 'java1234', 'admin2' );
INSERT INTO tblAdmin (id, pw, nickname) VALUES ( 'admin3', 'java1234', 'admin3' );
INSERT INTO tblAdmin (id, pw, nickname) VALUES ( 'admin4', 'java1234', 'admin4' );
INSERT INTO tblAdmin (id, pw, nickname) VALUES ( 'admin5', 'java1234', 'admin5' );

--카드 타입 tblCardType
INSERT INTO tblCardType (seq, type) VALUES ( 1, '신용');
INSERT INTO tblCardType (seq, type) VALUES ( 2, '체크');


