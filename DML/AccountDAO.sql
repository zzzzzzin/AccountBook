--가계부 작성(add)

   select * from tblAccCategory;                           
-- 가계부 분석
--analysis
select
sum(ai.price) totalPrice,
ac.name acName, --카테고리
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
                                    where mc.idMember = 'abc002@naver.com'
                                        and ai.accInfoDate 
                                            between to_date(sysdate, 'YY/MM/DD') 
                                                - interval '1' month and to_date(sysdate, 'YY/MM/DD')
                                                    and ai.seqDepositWithdrawalStatus = 2 --입출금 상태
                                                        group by ac.name, mc.idMember;
                                                     
select
sum(ai.price) totalPrice,
ac.name acName, --카테고리
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
                                    where mc.idMember = 'abc002@naver.com'
                                        and ai.accInfoDate 
                                            between to_date(sysdate, 'YY/MM/DD') 
                                                - interval '2' month and to_date(sysdate, 'YY/MM/DD')
                                                    - interval '1' month
                                                        and ai.seqDepositWithdrawalStatus = 2 --입출금 상태
                                                            group by ac.name, mc.idMember;

                    

-- 이번주 쿼리
select
    sum(ai.price) totalPrice,
    ac.name acName, --카테고리
    mc.idMember idMember
from 
    tblAccInfo ai
    inner join tblAccCategoryList acl on acl.seqAccInfo = ai.seq
    inner join tblAccCategory ac on ac.seq = acl.seqAccCategory
    inner join tblReasonChangeCategory rcc on rcc.seq = ai.seqReasonChangeCategory
    inner join tblMyCard mc on mc.seq = rcc.seqMyCard
where 
    mc.idMember = 'abc001@naver.com'
    and ai.accInfoDate >= trunc(sysdate, 'IW') -- 이번주 시작 날짜
    and ai.accInfoDate < trunc(sysdate) + 1 -- 이번주 종료 날짜
    and ai.seqDepositWithdrawalStatus = 2 --입출금 상태
group by 
    ac.name, mc.idMember;
    
-- 저번주 쿼리
select
    sum(ai.price) totalPrice,
    ac.name acName, --카테고리
    mc.idMember idMember
from 
    tblAccInfo ai
    inner join tblAccCategoryList acl on acl.seqAccInfo = ai.seq
    inner join tblAccCategory ac on ac.seq = acl.seqAccCategory
    inner join tblReasonChangeCategory rcc on rcc.seq = ai.seqReasonChangeCategory
    inner join tblMyCard mc on mc.seq = rcc.seqMyCard
where 
    mc.idMember = 'abc001@naver.com'
    and ai.accInfoDate >= trunc(sysdate, 'IW') - 7 -- 저번주 시작 날짜
    and ai.accInfoDate < trunc(sysdate, 'IW') -- 저번주 종료 날짜
    and ai.seqDepositWithdrawalStatus = 2 --입출금 상태
group by 
    ac.name, mc.idMember;
    
    

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
                                                                order by ai.accInfoDate desc;


