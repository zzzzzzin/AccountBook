--게시판 tblBoard
insert into tblBoard (seq, seqCategory) values (1, 1);
insert into tblBoard (seq, seqCategory) values (2, 2);
insert into tblBoard (seq, seqCategory) values (3, 3);
insert into tblBoard (seq, seqCategory) values (4, 4);

--뉴스 카테고리 목록 tblNewsCategoryList

--키워드 tblKeyword

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
