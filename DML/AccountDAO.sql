--가계부 작성(add)
select * from tblMember;
select * from tblMemberPriv;


select * from tblAccInfo;

--가계부 목록
select  
ai.seq as accinfonum,
ai.content as aicontent,
ai.SEQACC as seqacc,
ai.SEQREASONCHANGECATEGORY as seqrcc,
ai.SEQFIXEDFLUCTUATIONCHECK as seqffc,
acl.SEQACCCATEGORY,
accinfodate,
price,
location,
me.ID as idMember,
acate.NAME as acName,
seqfixedfluctuationcheck,
PERIOD,
ai.SEQDEPOSITWITHDRAWALSTATUS as spendstatus,
rcl.CONTENT as paymentmethod,
mc.ALIAS as name,
mc.CARDNUMBER as cardnumber
from TBLACCINFO ai
    inner join TBLACC ac on ai.SEQACC = ac.SEQ
        inner join TBLMEMBER me on ac.IDMEMBER = me.ID
            inner join TBLACCCATEGORYLIST acl on ai.SEQ = acl.SEQACCINFO
                inner join TBLACCCATEGORY acate on acl.SEQACCCATEGORY = acate.SEQ
                    inner join TBLDEPOSITWITHDRAWALSTATUS dws on ai.SEQDEPOSITWITHDRAWALSTATUS = dws.SEQ
                        inner join TBLREASONCHANGECATEGORY rc on ai.SEQREASONCHANGECATEGORY = rc.SEQ
                            inner join TBLREASONSCHANGELIST rcl on rc.SEQREASONSCHANGELIST = rcl.SEQ
                                inner join TBLMYCARD mc on rc.SEQMYCARD = mc.SEQ
                                    inner join TBLFIXEDDEPOSITWITHDRAWALCHECK fdw on ai.SEQFIXEDFLUCTUATIONCHECK = fdw.SEQ
                                        inner join TBLFIXEDFLUCTUATIONPERIOD ffp on fdw.SEQFIXEDFLUCTUATIONPERIOD = ffp.SEQ
                                            where me.ID = 'abc001@naver.com'
                                                and ai.content like '%스타%'
                                                or location like '%스타%'
                                                    order by accinfodate desc;

select
    ACCINFODATE,
    price,
    ac.NAME,
    ai.SEQDEPOSITWITHDRAWALSTATUS
from tblaccinfo ai
    inner join TBLACCCATEGORYLIST acl on ai.SEQ = acl.SEQACCINFO
    inner join TBLACCCATEGORY ac on acl.SEQACCCATEGORY = ac.SEQ
    inner join TBLACC a on ai.SEQACC = a.SEQ
    inner join TBLMEMBER me on a.IDMEMBER = me.ID
    where IDMEMBER = 'abc003@naver.com'
    order by ACCINFODATE;


-- 가계부 분석
-- 입급 - 출금
select
    sum(case when ai.seqdepositwithdrawalstatus = 1 then ai.price else -ai.price end) as totalsaving,
    acc.idmember as idmember
from
    tblaccinfo ai
    inner join tblacc acc on acc.seq = ai.seqacc
where
    acc.idmember = 'abc001@naver.com'
    and ai.seqdepositwithdrawalstatus in (1, 2) -- 입금 및 출금
group by
    acc.idmember;

-- 총 입금
select
sum(ai.price) totalSaving,
acc.idMember idMember
from tblAccInfo ai
    inner join tblAcc acc
        on acc.seq = ai.seqAcc
            where acc.idMember = 'abc001@naver.com'
                and ai.seqDepositWithdrawalStatus = 1 --입급
                    group by acc.idMember;
-- 총 지출                    
select
sum(ai.price) totalExpenditure,
acc.idMember idMember
from tblAccInfo ai
    inner join tblAcc acc
        on acc.seq = ai.seqAcc
            where acc.idMember = 'abc001@naver.com'
                and ai.seqDepositWithdrawalStatus = 2 --출금
                    group by acc.idMember;


-- 이번달 총 지출 + 수입
select
    sum(case when ai.seqdepositwithdrawalstatus = 1 then ai.price else -ai.price end) as totalsaving,
    acc.idmember as idmember
from
    tblaccinfo ai
    inner join tblacc acc on acc.seq = ai.seqacc
where
    acc.idmember = 'abc001@naver.com'
    and ai.seqdepositwithdrawalstatus in (1, 2) -- 입금 및 출금
    and ai.accInfoDate 
        between to_date(sysdate, 'YY/MM/DD') 
            - interval '1' month and to_date(sysdate, 'YY/MM/DD')
group by
    acc.idmember;
    
select
sum(ai.price) monthSaving,
acc.idMember idMember
from tblAccInfo ai
    inner join tblAcc acc
        on acc.seq = ai.seqAcc
            where acc.idMember = 'abc003@naver.com'
                and ai.seqDepositWithdrawalStatus = 1 -- 입금
                    and ai.accInfoDate 
                        between to_date(sysdate, 'YY/MM/DD') 
                            - interval '1' month and to_date(sysdate, 'YY/MM/DD')
                                group by acc.idMember;


--고정 지출 찾기
select * from tblFixedFluctuationPeriod; --0, 1, 3, 12
--select 
--ai.accInfoDate accInfoDate,
--ai.price price,
--ffp.period period
--from tblAccInfo ai
--    inner join tblFixedDepositWithdrawalCheck fdw
--        on fdw.seq = ai.seqFixedFluctuationCheck
--            inner join tblAcc acc
--                on acc.seq = ai.seqAcc
--                    inner join tblFixedFluctuationPeriod ffp
--                        on ffp.seq = fdw.seqFixedFluctuationPeriod
--                            where fdw.seqFixedFluctuationPeriod != 0
--                                and acc.idMember = 'abc001@naver.com';


select 
    ai.accinfodate as accinfodate,
    ai.price as price,
    ffp.period as period
from 
    tblaccinfo ai
    inner join tblfixeddepositwithdrawalcheck fdw on fdw.seq = ai.seqfixedfluctuationcheck
    inner join tblacc acc on acc.seq = ai.seqacc
    inner join tblfixedfluctuationperiod ffp on ffp.seq = fdw.seqfixedfluctuationperiod
where 
    fdw.seqfixedfluctuationperiod != 0
    and acc.idmember = 'abc001@naver.com'
    and to_date(ai.accinfodate, 'yy/mm/dd') + interval '1' month * ffp.period > current_date;


select * from tblCompressionIntensity; --하, 중, 상
--챌린지 정보 불러오기
select 
su.monthlyPaycheck monthlyPaycheck, --월급
su.savingsGoals savingsGoals, --저축 목표 금액
seqCompressionIntensity seqCompressionIntensity,
sp.period period,
me.joinDate joinDate,
trunc(months_between(sysdate, me.joindate)) monthsSinceJoin
from tblSurvey su
    inner join tblMember me
        on su.seq = me.seqSurvey
            inner join tblSavingsPeriod sp
                on sp.seq = su.seqSavingsPeriod
                    where me.id = 'abc001@naver.com';





--analysis
WITH max_category AS (
    SELECT 
        ac.name AS acName,
        SUM(ai.price) AS totalPrice
    FROM 
        tblaccinfo ai
        INNER JOIN TBLACCCATEGORYLIST acl ON ai.SEQ = acl.SEQACCINFO
        INNER JOIN TBLACCCATEGORY ac ON acl.SEQACCCATEGORY = ac.SEQ
        INNER JOIN TBLACC a ON ai.SEQACC = a.SEQ
        INNER JOIN TBLMEMBER me ON a.IDMEMBER = me.ID
    WHERE 
        me.ID = 'abc003@naver.com'
        AND ai.accInfoDate BETWEEN to_date(sysdate, 'YY/MM/DD') - interval '2' month AND to_date(sysdate, 'YY/MM/DD') - interval '1' month -- 2달 전부터 1달 전까지
        AND ai.seqDepositWithdrawalStatus = 2
    GROUP BY 
        ac.name
    ORDER BY 
        totalPrice DESC
    FETCH FIRST 1 ROW ONLY
)
SELECT 
    mc.acName AS acName,
    MAX(totalPrice) AS beforeAcUsage,
    SUM(CASE WHEN ai.accInfoDate BETWEEN TRUNC(SYSDATE, 'MM') - INTERVAL '1' MONTH AND TRUNC(SYSDATE, 'MM') THEN ai.price ELSE 0 END) AS nowAcUsage
FROM 
    tblaccinfo ai
    INNER JOIN TBLACCCATEGORYLIST acl ON ai.SEQ = acl.SEQACCINFO
    INNER JOIN TBLACCCATEGORY ac ON acl.SEQACCCATEGORY = ac.SEQ
    INNER JOIN TBLACC a ON ai.SEQACC = a.SEQ
    inner join max_category mc on mc.acName = ac.name
    INNER JOIN TBLMEMBER me ON a.IDMEMBER = me.ID
WHERE 
    me.ID = 'abc003@naver.com'
    AND ai.seqDepositWithdrawalStatus = 2
GROUP BY 
    mc.acName;

    
    

select * from tblReasonsChangeList;
select * from tblReasonChangeCategory;
select * from tblAccInfo;
WITH max_category AS (
    SELECT 
        ac.name AS acName,
        SUM(ai.price) AS totalPrice
    FROM 
        tblAccInfo ai
    INNER JOIN 
        tblAccCategoryList acl ON acl.seqAccInfo = ai.seq
    INNER JOIN 
        tblAccCategory ac ON ac.seq = acl.seqAccCategory
    INNER JOIN 
        tblReasonChangeCategory rcc ON rcc.seq = ai.seqReasonChangeCategory
    INNER JOIN 
        tblMyCard mc ON mc.seq = rcc.seqMyCard
    WHERE 
        mc.idMember = 'abc001@naver.com'
        AND ai.accInfoDate BETWEEN to_date(sysdate, 'YY/MM/DD') - interval '2' month AND to_date(sysdate, 'YY/MM/DD') - interval '1' month -- 2달 전부터 1달 전까지
        AND ai.seqDepositWithdrawalStatus = 2 -- 입출금 상태
    GROUP BY 
        ac.name
)
SELECT 
    max_category.acName acName,
    MAX(totalPrice) AS beforeAcUsage,
    SUM(CASE WHEN ai.accInfoDate BETWEEN to_date(sysdate, 'YY/MM/DD') - interval '1' month AND to_date(sysdate, 'YY/MM/DD') THEN ai.price ELSE 0 END) AS nowAcUsage
FROM 
    tblAccInfo ai
INNER JOIN 
    tblAccCategoryList acl ON acl.seqAccInfo = ai.seq
INNER JOIN 
    tblAccCategory ac ON ac.seq = acl.seqAccCategory
INNER JOIN 
    tblReasonChangeCategory rcc ON rcc.seq = ai.seqReasonChangeCategory
INNER JOIN 
    tblMyCard mc ON mc.seq = rcc.seqMyCard
INNER JOIN 
    max_category ON max_category.acName = ac.name
WHERE 
    mc.idMember = 'abc001@naver.com'
    AND ai.seqDepositWithdrawalStatus = 2 -- 입출금 상태
GROUP BY 
    max_category.acName
ORDER BY 
        totalPrice DESC
    FETCH FIRST 1 ROW ONLY;






--기간별 총 사용 금액
SELECT 
    COALESCE(sub1.totalPrice, 0) beforeMonthUsage,
    COALESCE(sub2.totalPrice, 0) nowAcUsage,
    COALESCE(sub1.idMember, sub2.idMember) idMember
FROM (
    -- 2달 전부터 1달 전까지의 사용 금액
    SELECT 
        SUM(ai.price) AS totalPrice,
        me.ID AS idMember
    from tblaccinfo ai
    inner join TBLACCCATEGORYLIST acl on ai.SEQ = acl.SEQACCINFO
    inner join TBLACCCATEGORY ac on acl.SEQACCCATEGORY = ac.SEQ
    inner join TBLACC a on ai.SEQACC = a.SEQ
    inner join TBLMEMBER me on a.IDMEMBER = me.ID
    WHERE 
        me.ID = 'abc003@naver.com'
        AND ai.accInfoDate BETWEEN to_date(sysdate, 'YY/MM/DD') - interval '2' month AND to_date(sysdate, 'YY/MM/DD') - interval '1' month -- 2달 전부터 1달 전까지
        AND ai.seqDepositWithdrawalStatus = 2 -- 입출금 상태
    GROUP BY 
        me.ID
) sub1
FULL OUTER JOIN (
    -- 1달 전부터 현재까지의 사용 금액
    SELECT 
        SUM(ai.price) AS totalPrice,
        me.ID AS idMember
    from tblaccinfo ai
    inner join TBLACCCATEGORYLIST acl on ai.SEQ = acl.SEQACCINFO
    inner join TBLACCCATEGORY ac on acl.SEQACCCATEGORY = ac.SEQ
    inner join TBLACC a on ai.SEQACC = a.SEQ
    inner join TBLMEMBER me on a.IDMEMBER = me.ID
    WHERE 
        me.ID = 'abc003@naver.com'
        AND ai.accInfoDate BETWEEN to_date(sysdate, 'YY/MM/DD') - interval '1' month AND to_date(sysdate, 'YY/MM/DD') -- 1달 전부터 현재까지
        AND ai.seqDepositWithdrawalStatus = 2 -- 입출금 상태
    GROUP BY 
        me.ID
) sub2 ON sub1.idMember = sub2.idMember;


-- 지난 기간 동안 가장 지출 많은 카테고리 비용
SELECT 
        SUM(ai.price) AS totalPrice,
        ac.name AS acName,
        mc.idMember AS idMember
    FROM 
        tblAccInfo ai
    INNER JOIN 
        tblAccCategoryList acl ON acl.seqAccInfo = ai.seq
    INNER JOIN 
        tblAccCategory ac ON ac.seq = acl.seqAccCategory
    INNER JOIN 
        tblReasonChangeCategory rcc ON rcc.seq = ai.seqReasonChangeCategory
    INNER JOIN 
        tblMyCard mc ON mc.seq = rcc.seqMyCard
    WHERE 
        mc.idMember = 'abc001@naver.com'
        AND ai.accInfoDate BETWEEN to_date(sysdate, 'YY/MM/DD') - interval '2' month AND to_date(sysdate, 'YY/MM/DD') - interval '1' month -- 2달 전부터 1달 전까지
        AND ai.seqDepositWithdrawalStatus = 2 -- 입출금 상태
    GROUP BY 
        ac.name, mc.idMember
    ORDER BY 
        totalPrice DESC
    FETCH FIRST 1 ROW ONLY;
 
 
   

--2 기간 사이 가격 비교
SELECT 
    COALESCE(sub1.totalPrice, 0) beforeAcUsage,
    COALESCE(sub2.totalPrice, 0) nowAcUsage,
    COALESCE(sub1.acName, sub2.acName) acName,
    COALESCE(sub1.idMember, sub2.idMember) idMember
FROM (
    -- 2달 전부터 1달 전까지의 사용 금액
    SELECT 
        SUM(ai.price) AS totalPrice,
        ac.name AS acName,
        mc.idMember AS idMember
    FROM 
        tblAccInfo ai
    INNER JOIN 
        tblAccCategoryList acl ON acl.seqAccInfo = ai.seq
    INNER JOIN 
        tblAccCategory ac ON ac.seq = acl.seqAccCategory
    INNER JOIN 
        tblReasonChangeCategory rcc ON rcc.seq = ai.seqReasonChangeCategory
    INNER JOIN 
        tblMyCard mc ON mc.seq = rcc.seqMyCard
    WHERE 
        mc.idMember = 'abc001@naver.com'
        AND ai.accInfoDate BETWEEN to_date(sysdate, 'YY/MM/DD') - interval '2' month AND to_date(sysdate, 'YY/MM/DD') - interval '1' month -- 2달 전부터 1달 전까지
        AND ai.seqDepositWithdrawalStatus = 2 -- 입출금 상태
    GROUP BY 
        ac.name, mc.idMember
) sub1
FULL OUTER JOIN (
    -- 1달 전부터 현재까지의 사용 금액
    SELECT 
        SUM(ai.price) AS totalPrice,
        ac.name AS acName,
        mc.idMember AS idMember
    FROM 
        tblAccInfo ai
    INNER JOIN 
        tblAccCategoryList acl ON acl.seqAccInfo = ai.seq
    INNER JOIN 
        tblAccCategory ac ON ac.seq = acl.seqAccCategory
    INNER JOIN 
        tblReasonChangeCategory rcc ON rcc.seq = ai.seqReasonChangeCategory
    INNER JOIN 
        tblMyCard mc ON mc.seq = rcc.seqMyCard
    WHERE 
        mc.idMember = 'abc001@naver.com'
        AND ai.accInfoDate BETWEEN to_date(sysdate, 'YY/MM/DD') - interval '1' month AND to_date(sysdate, 'YY/MM/DD') -- 1달 전부터 현재까지
        AND ai.seqDepositWithdrawalStatus = 2 -- 입출금 상태
    GROUP BY 
        ac.name, mc.idMember
) sub2 ON sub1.acName = sub2.acName AND sub1.idMember = sub2.idMember;


select
    ACCINFODATE,
    price,
    ac.NAME,
    ai.SEQDEPOSITWITHDRAWALSTATUS
from tblaccinfo ai
    inner join TBLACCCATEGORYLIST acl on ai.SEQ = acl.SEQACCINFO
    inner join TBLACCCATEGORY ac on acl.SEQACCCATEGORY = ac.SEQ
    inner join TBLACC a on ai.SEQACC = a.SEQ
    inner join TBLMEMBER me on a.IDMEMBER = me.ID
    where IDMEMBER = 'abc002@naver.com'
    order by ACCINFODATE;


select
sum(ai.price) totalPrice,
ac.name acName, --카테고리
mc.idMember idMember
from tblAccInfo ai
    inner join tblAccCategoryList acl
        on acl.seqAccInfo = ai.seq
            inner join tblAccCategory ac
                on ac.seq = acl.seqAccCategory
                    left outer join tblReasonChangeCategory rcc 
                        on rcc.seq = ai.seqReasonChangeCategory
                            left outer join tblMyCard mc
                                on mc.seq = rcc.seqMyCard
                                    where mc.idMember = 'abc002@naver.com'
                                        and ai.accInfoDate 
                                            between to_date(sysdate, 'YY/MM/DD') 
                                                - interval '1' month and to_date(sysdate, 'YY/MM/DD')
                                                    and ai.seqDepositWithdrawalStatus = 2 --입출금 상태
                                                        group by ac.name, mc.idMember;
select
    sum(price) totalPrice,
    ac.NAME acName
from tblaccinfo ai
    inner join TBLACCCATEGORYLIST acl on ai.SEQ = acl.SEQACCINFO
    inner join TBLACCCATEGORY ac on acl.SEQACCCATEGORY = ac.SEQ
    inner join TBLACC a on ai.SEQACC = a.SEQ
    inner join TBLMEMBER me on a.IDMEMBER = me.ID
    where IDMEMBER = 'abc002@naver.com'
    and ai.accInfoDate 
    between to_date(sysdate, 'YY/MM/DD') 
    - interval '1' month and to_date(sysdate, 'YY/MM/DD')
    and ai.SEQDEPOSITWITHDRAWALSTATUS = 2
    group by ac.NAME;
    
--지난 달  
select
    sum(price) totalPrice,
    ac.NAME acName
from tblaccinfo ai
    inner join TBLACCCATEGORYLIST acl on ai.SEQ = acl.SEQACCINFO
    inner join TBLACCCATEGORY ac on acl.SEQACCCATEGORY = ac.SEQ
    inner join TBLACC a on ai.SEQACC = a.SEQ
    inner join TBLMEMBER me on a.IDMEMBER = me.ID
    where IDMEMBER = 'abc002@naver.com'
    and ai.accInfoDate 
    between to_date(sysdate, 'YY/MM/DD') - interval '2' month 
    and to_date(sysdate, 'YY/MM/DD') - interval '1' month
    and ai.SEQDEPOSITWITHDRAWALSTATUS = 2
    group by ac.NAME;                                                   


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


