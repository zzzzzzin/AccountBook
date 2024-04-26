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

-- 입출금 상태 tblDepositWithdrawalStatus
insert into tblDepositWithdrawalStatus (seq, status) values (1, '입금');
insert into tblDepositWithdrawalStatus (seq, status) values (2, '출금');

-- 변동사유 목록 
INSERT INTO tblReasonsChangeList (seq, content) VALUES ( 1, "계좌이체" );
INSERT INTO tblReasonsChangeList (seq, content) VALUES ( 2, "신용 카드' );
INSERT INTO tblReasonsChangeList (seq, content) VALUES ( 3, '카드 이체' );
INSERT INTO tblReasonsChangeList (seq, content) VALUES ( 4, '현금' );
INSERT INTO tblReasonsChangeList (seq, content) VALUES ( 5, '계좌이체' );
INSERT INTO tblReasonsChangeList (seq, content) VALUES ( 6, '신용 카드' );
INSERT INTO tblReasonsChangeList (seq, content) VALUES ( 7, '카드 이체' );
INSERT INTO tblReasonsChangeList (seq, content) VALUES ( 8, '현금' );
INSERT INTO tblReasonsChangeList (seq, content) VALUES ( 9, '계좌이체' );
INSERT INTO tblReasonsChangeList (seq, content) VALUES ( 10, '신용 카드' );

-- 권한
INSERT INTO tblPriv (id, pw) VALUES ( 1, '비회원' );
INSERT INTO tblPriv (id, pw) VALUES ( 2, '회원' );
INSERT INTO tblPriv (id, pw) VALUES ( 3, '관리자' );
INSERT INTO tblPriv (id, pw) VALUES ( 4, '탈퇴' );

-- 관리자
INSERT INTO tblAdmin (id, pw, nickname) VALUES ( 'admin1', 'java1234', 'admin1' );
INSERT INTO tblAdmin (id, pw, nickname) VALUES ( 'admin2', 'java1234', 'admin2' );
INSERT INTO tblAdmin (id, pw, nickname) VALUES ( 'admin3', 'java1234', 'admin3' );
INSERT INTO tblAdmin (id, pw, nickname) VALUES ( 'admin4', 'java1234', 'admin4' );
INSERT INTO tblAdmin (id, pw, nickname) VALUES ( 'admin5', 'java1234', 'admin5' );

-- 카드 타입
INSERT INTO tblCardType (seq, type) VALUES ( 1, '신용카드' );
INSERT INTO tblCardType (seq, type) VALUES ( 2, '체크카드' );



