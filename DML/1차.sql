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
INSERT INTO tblAccCategory (seq, name ) VALUES (1, 'SNS수입');
INSERT INTO tblAccCategory (seq, name ) VALUES (2, '건강');
INSERT INTO tblAccCategory (seq, name ) VALUES (3, '경조사');
INSERT INTO tblAccCategory (seq, name ) VALUES (4, '교육');
INSERT INTO tblAccCategory (seq, name ) VALUES (5, '교통');
INSERT INTO tblAccCategory (seq, name ) VALUES (6, '구독료');
INSERT INTO tblAccCategory (seq, name ) VALUES (7, '금융수입');
INSERT INTO tblAccCategory (seq, name ) VALUES (8, '급여');
INSERT INTO tblAccCategory (seq, name ) VALUES (9, '기부금');
INSERT INTO tblAccCategory (seq, name ) VALUES (10, '기타');
INSERT INTO tblAccCategory (seq, name ) VALUES (11, '더치페이');
INSERT INTO tblAccCategory (seq, name ) VALUES (12, '로열티');
INSERT INTO tblAccCategory (seq, name ) VALUES (13, '문화생활');
INSERT INTO tblAccCategory (seq, name ) VALUES (14, '미용');
INSERT INTO tblAccCategory (seq, name ) VALUES (15, '보험금');
INSERT INTO tblAccCategory (seq, name ) VALUES (16, '부동산수입');
INSERT INTO tblAccCategory (seq, name ) VALUES (17, '부업');
INSERT INTO tblAccCategory (seq, name ) VALUES (18, '사업수입');
INSERT INTO tblAccCategory (seq, name ) VALUES (19, '상속');
INSERT INTO tblAccCategory (seq, name ) VALUES (20, '상여금');
INSERT INTO tblAccCategory (seq, name ) VALUES (21, '생활용품');
INSERT INTO tblAccCategory (seq, name ) VALUES (22, '세금');
INSERT INTO tblAccCategory (seq, name ) VALUES (23, '쇼핑');
INSERT INTO tblAccCategory (seq, name ) VALUES (24, '수수료');
INSERT INTO tblAccCategory (seq, name ) VALUES (25, '숙박');
INSERT INTO tblAccCategory (seq, name ) VALUES (26, '아르바이트');
INSERT INTO tblAccCategory (seq, name ) VALUES (27, '앱테크');
INSERT INTO tblAccCategory (seq, name ) VALUES (28, '여가');
INSERT INTO tblAccCategory (seq, name ) VALUES (29, '여행');
INSERT INTO tblAccCategory (seq, name ) VALUES (30, '용돈');
INSERT INTO tblAccCategory (seq, name ) VALUES (31, '유흥');
INSERT INTO tblAccCategory (seq, name ) VALUES (32, '육아');
INSERT INTO tblAccCategory (seq, name ) VALUES (33, '음식');
INSERT INTO tblAccCategory (seq, name ) VALUES (34, '이자');
INSERT INTO tblAccCategory (seq, name ) VALUES (35, '자동차');
INSERT INTO tblAccCategory (seq, name ) VALUES (36, '장학금');
INSERT INTO tblAccCategory (seq, name ) VALUES (37, '저축');
INSERT INTO tblAccCategory (seq, name ) VALUES (38, '주거');
INSERT INTO tblAccCategory (seq, name ) VALUES (39, '카페');
INSERT INTO tblAccCategory (seq, name ) VALUES (40, '통신');

--뉴스 tblNews
-- 자동차
INSERT INTO tblNews(seq,title,link,newsDate,media) VALUES (1,'현대자동차, 2024 베이징 국제 모터쇼 참가','https://www.segye.com/newsView/20240425514458?OutUrl=naver','2024-04-25','세계일보');
INSERT INTO tblNews(seq,title,link,newsDate,media) VALUES (2,'기아자동차, 2024 베이징 국제 모터쇼 참가','https://www.segye.com/newsView/20240425514534?OutUrl=naver','2024-04-25','세계일보');
INSERT INTO tblNews(seq,title,link,newsDate,media) VALUES (3,'서울시, 세계전기자동차협회 ''전기차 모범도시상'' 수상','https://www.yna.co.kr/view/AKR20240425083400004?input=1195m','2024-04-25','연합뉴스');
INSERT INTO tblNews(seq,title,link,newsDate,media) VALUES (4,'1분기 깜짝실적? 자동차주, 주가도 달린다','https://www.edaily.co.kr/news/read?newsId=01216886638859728','2024-04-25','이데일리');
INSERT INTO tblNews(seq,title,link,newsDate,media) VALUES (5,'자동차산업 상생협력 위한 협약','https://www.newsis.com/view/?id=NISI20240425_0020318815','2024.04.25','NEWSIS');
-- 교통
INSERT INTO tblNews(seq,title,link,newsDate,media) VALUES (6,'울산서도 K-패스 사용하세요','https://www.yna.co.kr/view/AKR20240425173800057?input=1195m','2024-04-26','연합뉴스');
INSERT INTO tblNews(seq,title,link,newsDate,media) VALUES (7,'대중교통비 환급받는 K-패스 카드, 오늘부터 발급','https://www.ytn.co.kr/_ln/0102_202404240839395646','2024.04.24','YTN');
INSERT INTO tblNews(seq,title,link,newsDate,media) VALUES (8,'"월 15회 이상 대중교통 타면 20% 환급” K-패스 카드 출시','https://news.kbs.co.kr/news/pc/view/view.do?ncd=7947839','2024.04.24','KBS');
INSERT INTO tblNews(seq,title,link,newsDate,media) VALUES (9,'한국·카자흐 ‘도로·교통 분야’ 발전 위해 뭉쳤다','https://www.news1.kr/articles/5396659','2024-04-25','뉴스1');
INSERT INTO tblNews(seq,title,link,newsDate,media) VALUES (10,'괴산군 ''임산부 교통비 지원사업'' 추진…최대 50만원','https://www.news1.kr/articles/5397694','2024-04-26','뉴스1');
-- 음식
INSERT INTO tblNews(seq,title,link,newsDate,media) VALUES (11,'월급 23만원 늘때 식비 6만원 더 써…''불황형 소비'' 그림자','https://news.mt.co.kr/mtview.php?no=2024041722075144864','2024.04.22','머니투데이');
INSERT INTO tblNews(seq,title,link,newsDate,media) VALUES (12,'직장인들 사이 ''인기 폭발''…"이것 덕분에 점심값 아껴요" [이슈+]','https://www.hankyung.com/article/2024042280487','2024.04.22','한국경제');
INSERT INTO tblNews(seq,title,link,newsDate,media) VALUES (13,'월평균 얼마 벌면 ''보통가구''일까?…''544만원''','https://www.sedaily.com/NewsView/2D7Y4I1WX3','2024-04-17','서울경제');
INSERT INTO tblNews(seq,title,link,newsDate,media) VALUES (14,'''직장인의 낙'' 점심인데…"고물가에 도시락 싸고 후식 포기"','https://www.dt.co.kr/contents.html?article_no=202404170210996wer001','2024-04-17','디지털타임스');
INSERT INTO tblNews(seq,title,link,newsDate,media) VALUES (15,'청년 식비 부담 덜어준다…광진구, ''천원의 아침밥'' 운영','https://www.sedaily.com/NewsView/2D7ROVKTH2','2024.04.22','데일리뉴스');

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
