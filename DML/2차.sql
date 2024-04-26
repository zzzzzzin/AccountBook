--게시판 tblBoard

--뉴스 카테고리 목록 tblNewsCategoryList

--키워드 tblKeyword

--고정 입출금 여부 tblFixedDepositWithdrawalCheck

--관리자 권한 목록 tblAdminPriv

--카드/가계부 카테고리 연결 tblCardAndAcc
--5, 33, 35
select * from tblCardCategory order by seq;
select * from tblAccCategory order by seq;
-- 건강
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (1, 5, 2);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (2, 6, 2);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (3, 7, 2);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (4, 9, 2);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (5, 12, 2);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (6, 18, 2);
-- 교육
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (7, 14, 4);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (8, 18, 4);
-- 교통
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (9, 2, 5);
--구독료
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (10, 17, 6);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (11, 18, 13);
--문화생활
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (12, 16, 13);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (13, 17, 13);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (14, 18, 13);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (15, 1, 13);
--미용
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (16, 9, 14);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (17, 18, 14);
--생활용품
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (18, 5, 21);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (19, 6, 21);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (20, 18, 21);
--쇼핑
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (21, 5, 23);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (22, 6, 23);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (23, 18, 23);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (24, 1, 23);
--숙박
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (25, 22, 25);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (26, 1, 25);
--여가
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (27, 1, 28);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (28, 9, 28);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (29, 16, 28);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (30, 17, 28);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (31, 22, 28);
--여행
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (32, 22, 29);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (33, 20, 29);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (34, 21, 29);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (35, 23, 29);
--유흥
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (36, 7, 31);
--육아
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (37, 14, 32);
--음식
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (38, 5, 33);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (39, 7, 33);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (40, 8, 33);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (41, 18, 33);
--자동차
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (42, 3, 35);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (43, 11, 35);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (44, 15, 35);
--주거
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (45, 11, 38);
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (46, 22, 38);
--카페
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (47, 8, 39);
--통신
insert into tblCardAndAcc (seq, seqCardCategory, seqAccCategory) 
    values (48, 4, 40);
    
--카드 정보 tblCardInformation
-- overseasUse(해외겸용: 가능, 없음)
-- seqCardType(1: 신용, 2: 체크)
-- 체크카드
insert into tblCardInformation (seq, name, explanation, annualFee, overseasUse, cardCompany, fileLink, seqCardType) 
    values (1, '토스뱅크카드', '나에게 맞게 언제든지 혜택, 내가 선택.', 0, '없음', '토스뱅크', '1111', 2);
insert into tblCardInformation (seq, name, explanation, annualFee, overseasUse, cardCompany, fileLink, seqCardType) 
    values (2, '카드의정석 오하CHECK', '실적/한도 조건 없는 카드의정석 EVERY1', 0, '없음', '우리카드', '1111', 2);
insert into tblCardInformation (seq, name, explanation, annualFee, overseasUse, cardCompany, fileLink, seqCardType) 
    values (3, '노리체크카드', '교통/통신 할인부터 커피숍과 영화관까지. 당신이 가는 곳곳마다 놀라운 할인 혜택!', 0, '없음', 'KB국민카드', '1111', 2);
insert into tblCardInformation (seq, name, explanation, annualFee, overseasUse, cardCompany, fileLink, seqCardType) 
    values (4, '노리2 체크카드(KB Pay)', '국민 대표 체크카드 nori 시즌2 개막', 0, '없음', 'KB국민카드', '1111', 2);
insert into tblCardInformation (seq, name, explanation, annualFee, overseasUse, cardCompany, fileLink, seqCardType) 
    values (5, '알뜰교통카드 S20 체크', '가볍고 편해지는 발걸음~ 대중교통 요금 10% 할인', 0, '없음', '신한카드', '1111', 2); 
-- 신용
insert into tblCardInformation (seq, name, explanation, annualFee, overseasUse, cardCompany, fileLink, seqCardType) 
    values (6, '신한카드 Mr.Life', 'Essential For Every Lifestyle', 15000, '가능', '신한카드', '1111', 1);
select * from tblCardType;
insert into tblCardInformation (seq, name, explanation, annualFee, overseasUse, cardCompany, fileLink, seqCardType) 
    values (7, 'KB국민 My WE:SH 카드', '''나''의 행복을 위한 필수 혜택 카드', 15000, '가능', 'KB국민카드', '1111', 1);
insert into tblCardInformation (seq, name, explanation, annualFee, overseasUse, cardCompany, fileLink, seqCardType) 
    values (8, '올바른 FLEX 카드', '일상의 FLEX, 혜택을 FLEX!', 12000, '가능', 'NH농협카드', '1111', 1);
insert into tblCardInformation (seq, name, explanation, annualFee, overseasUse, cardCompany, fileLink, seqCardType) 
    values (9, '신한카드 Deep Dream', '속 깊은 디지털 라이프', 8000, '가능', '신한카드', '1111', 1);
insert into tblCardInformation (seq, name, explanation, annualFee, overseasUse, cardCompany, fileLink, seqCardType) 
    values (10, '삼성카드 taptap O', '직접 선택하는 혜택, 탭탭 옵션형!', 10000, '가능', '삼성카드', '1111', 1);
    
--설문조사 tblSurvey
--압박강도(1:하, 2:중, 3:상)
--저축기간(1~80)
insert into tblSurvey (seq, monthlyPaycheck, savingsGoals, seqCompressionIntensity, seqSavingsPeriod) 
    values (1, 3000000, 50000000, 2, 45);
insert into tblSurvey (seq, monthlyPaycheck, savingsGoals, seqCompressionIntensity, seqSavingsPeriod) 
    values (2, 2500000, 40000000, 1, 44);
insert into tblSurvey (seq, monthlyPaycheck, savingsGoals, seqCompressionIntensity, seqSavingsPeriod) 
    values (3, 2800000, 45000000, 3, 40);
insert into tblSurvey (seq, monthlyPaycheck, savingsGoals, seqCompressionIntensity, seqSavingsPeriod) 
    values (4, 3200000, 45000000, 1, 60);
insert into tblSurvey (seq, monthlyPaycheck, savingsGoals, seqCompressionIntensity, seqSavingsPeriod) 
    values (5, 2500000, 30000000, 3, 48);
insert into tblSurvey (seq, monthlyPaycheck, savingsGoals, seqCompressionIntensity, seqSavingsPeriod) 
    values (6, 3000000, 80000000, 3, 80);
insert into tblSurvey (seq, monthlyPaycheck, savingsGoals, seqCompressionIntensity, seqSavingsPeriod) 
    values (7, 2500000, 45000000, 2, 60);
insert into tblSurvey (seq, monthlyPaycheck, savingsGoals, seqCompressionIntensity, seqSavingsPeriod) 
    values (8, 3500000, 50000000, 1, 36);
insert into tblSurvey (seq, monthlyPaycheck, savingsGoals, seqCompressionIntensity, seqSavingsPeriod) 
    values (9, 3600000, 5400000, 1, 36);
insert into tblSurvey (seq, monthlyPaycheck, savingsGoals, seqCompressionIntensity, seqSavingsPeriod) 
    values (10, 2800000, 5000000, 2, 50);