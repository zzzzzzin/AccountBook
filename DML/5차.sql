--게시글 tblPost

--구매 위시 목록 tblPurchaseWishList

--변동 사유 카테고리 tblReasonChangeCategory
select * from tblReasonsChangeList;
-- 사유 목록(1: 계좌이체, 2: 신용 카드, 3: 체크 카드, 현금)
select * from tblMyCard order by seq;
select * from tblCardInformation;
--(1: 신용, 2:체크) 1~5 체크 6~10 신용
--계좌이체
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (1, 1, null);   
--신용 or 체크
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (2, 2, 1);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (3, 1, 2);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (4, 2, 3);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (5, 2, 4);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (6, 2, 5);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (7, 2, 6);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (8, 2, 7);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (9, 1, 8);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (10, 1, 9);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (11, 1, 10);
--현금
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (12, 4, null);