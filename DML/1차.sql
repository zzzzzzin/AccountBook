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

--카드 혜택 카테고리 tblCardCategory
insert into tblCardCategory (seq, name) values (1, '모든가맹점');
insert into tblCardCategory (seq, name) values (2, '교통');
insert into tblCardCategory (seq, name) values (3, '주유');
insert into tblCardCategory (seq, name) values (4, '통신');
insert into tblCardCategory (seq, name) values (5, '마트/편의점');
insert into tblCardCategory (seq, name) values (6, '쇼핑');
insert into tblCardCategory (seq, name) values (7, '푸드');
insert into tblCardCategory (seq, name) values (8, '카페/디저트');
insert into tblCardCategory (seq, name) values (9, '뷰티/피트니스');
insert into tblCardCategory (seq, name) values (10, '무실적');
insert into tblCardCategory (seq, name) values (11, '공과금/렌탈');
insert into tblCardCategory (seq, name) values (12, '병원/약국');
insert into tblCardCategory (seq, name) values (13, '애완동물');
insert into tblCardCategory (seq, name) values (14, '교육/육아');
insert into tblCardCategory (seq, name) values (15, '자동차/하이패스');
insert into tblCardCategory (seq, name) values (16, '레저/스포츠');
insert into tblCardCategory (seq, name) values (17, '영화/문화');
insert into tblCardCategory (seq, name) values (18, '간편결제');
insert into tblCardCategory (seq, name) values (19, '항공마일리지');
insert into tblCardCategory (seq, name) values (20, '공항라운지/PP');
insert into tblCardCategory (seq, name) values (21, '프리미엄');
insert into tblCardCategory (seq, name) values (22, '여행/숙박');
insert into tblCardCategory (seq, name) values (23, '해외');
insert into tblCardCategory (seq, name) values (24, '비즈니스');

--가계부 카테고리  tblAccCategory

--뉴스 tblNews

--고정 변동 기간 tblFixedFluctuationPeriod
insert into tblFixedFluctuationPeriod (seq, period) values (1, 1);
insert into tblFixedFluctuationPeriod (seq, period) values (2, 3);
insert into tblFixedFluctuationPeriod (seq, period) values (3, 12);

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
INSERT INTO tblAdmin (id, pw, nickname) VALUES ( 'admin1', 'java1234', 'admin1');
INSERT INTO tblAdmin (id, pw, nickname) VALUES ( 'admin2', 'java1234', 'admin2');
INSERT INTO tblAdmin (id, pw, nickname) VALUES ( 'admin3', 'java1234', 'admin3');
INSERT INTO tblAdmin (id, pw, nickname) VALUES ( 'admin4', 'java1234', 'admin4');
INSERT INTO tblAdmin (id, pw, nickname) VALUES ( 'admin5', 'java1234', 'admin5');

--카드 타입 tblCardType
INSERT INTO tblCardType (seq, type) VALUES ( 1, '신용');
INSERT INTO tblCardType (seq, type) VALUES ( 2, '체크');


commit;
