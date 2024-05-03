--가계부 작성(add)

                              

--카드 사용    
--getCardUsage                       
select 
sum(ai.price) totalPrice,
mc.alias alias, --카드 별칭
cf.name cfName, -- 카드명
cf.fileLink fileLink, --카드 이미지
mc.seq seqMyCard, --카드 번호
mc.idMember idMember
from tblAccInfo ai
    inner join tblReasonChangeCategory rcc 
        on rcc.seq = ai.seqReasonChangeCategory
            inner join tblMyCard mc 
                on mc.seq = rcc.seqMyCard
                    inner join tblCardInformation cf 
                        on cf.seq = mc.seqCardInformation
                            where mc.idMember = 'abc001@naver.com'
                                and ai.accInfoDate 
                                    between to_date('24/02/01', 'YY/MM/DD') 
                                        and to_date('24/04/10', 'YY/MM/DD') -- 기간 지정
                                            group by mc.alias, cf.name, cf.fileLink, mc.seq, mc.idMember;

--특정 카드 사용
--getCardUsageDetails
select 
ai.accInfoDate accInfoDate, --날짜
ai.price price, --금액
ac.name acName, --카테고리
ai.location location, --사용처
ai.seqDepositWithdrawalStatus seqDepositWithdrawalStatus, --입출금 상태
mc.alias alias, --카드 별칭
cf.name cfName, -- 카드명
cf.fileLink fileLink, --카드 이미지
mc.seq seqMyCard, --카드 번호
mc.idMember idMember
from tblAccInfo ai
    inner join tblAccCategoryList acl
        on acl.seqAccInfo = ai.seq
            inner join tblAccCategory ac
                on ac.seq = acl.seqAccCategory
                    inner join tblReasonChangeCategory rcc 
                        on rcc.seq = ai.seqReasonChangeCategory
                            inner join tblMyCard mc 
                                on mc.seq = rcc.seqMyCard
                                    inner join tblCardInformation cf 
                                        on cf.seq = mc.seqCardInformation
                                            where mc.idMember = 'abc001@naver.com'
                                                and ai.accInfoDate 
                                                    between to_date('24/02/01', 'YY/MM/DD') 
                                                        and to_date('24/04/10', 'YY/MM/DD') -- 기간 지정
                                                            and mc.seq = 1 -- 카드 지정
                                                                order by ai.accInfoDate;


