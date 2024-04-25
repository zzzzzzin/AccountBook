-- 회원
CREATE TABLE tblMember (
	id            VARCHAR2(30) NOT NULL, -- 아이디(이메일)
	pw            VARCHAR2(30) NOT NULL, -- 비밀번호
	name          VARCHAR2(50) NOT NULL, -- 이름
	nickname      VARCHAR2(20) NOT NULL, -- 닉네임
	phoneNumber   VARCHAR2(30) NOT NULL, -- 전화번호
	nss           VARCHAR2(13) NOT NULL, -- 주민등록 번호
	gender        VARCHAR2(10) NOT NULL, -- 성별
	reportCount   NUMBER       NOT NULL, -- 누적 신고 수
	seqSurvey     NUMBER       NOT NULL, -- 설문조사 번호
	seqProfileimg NUMBER       NOT NULL  -- 프로필 이미지 번호
);

-- 회원 제약 조건
-- 게시판 카테고리 기본키
ALTER TABLE tblMember
	ADD CONSTRAINT PK_tblMember PRIMARY KEY (id);

-- 게시판 카테고리 유니크 제약조건
ALTER TABLE tblMember
    ADD CONSTRAINT UK_tblMember_phoneNumber UNIQUE (phoneNumber);

ALTER TABLE tblMember
    ADD CONSTRAINT UK_tblMember_nss UNIQUE (nss);


-- 설문조사
CREATE TABLE tblSurvey (
	seq                     NUMBER NOT NULL, -- 번호
	monthlyPaycheck         NUMBER NULL,     -- 월급
	savingsGoals            NUMBER NULL,     -- 저축 목표 금액
	seqCompressionIntensity NUMBER NULL,     -- 압박 강도 번호
	seqSavingsPeriod        NUMBER NULL      -- 저축 기간 번호
);

-- 설문조사
ALTER TABLE tblSurvey
	ADD
		CONSTRAINT PK_tblSurvey -- 설문조사 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 프로필 이미지
CREATE TABLE tblProfileimg (
	seq      NUMBER        NOT NULL, -- 번호
	fileName VARCHAR2(50)  NOT NULL, -- 파일 이름
	fileLink VARCHAR2(300) NOT NULL  -- 파일 링크
);

-- 프로필 이미지
ALTER TABLE tblProfileimg
	ADD
		CONSTRAINT PK_tblProfileimg -- 프로필 이미지 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 게시판 카테고리
CREATE TABLE tblCategory (
	seq  NUMBER       NOT NULL, -- 번호
	name VARCHAR2(50) NOT NULL  -- 이름
);

-- 게시판 카테고리
ALTER TABLE tblCategory
    ADD CONSTRAINT PK_tblCategory PRIMARY KEY (seq);

-- 게시판 카테고리 유니크 제약 조건
ALTER TABLE tblCategory
    ADD CONSTRAINT UK_tblCategory_name UNIQUE (name);

-- 게시판
CREATE TABLE tblBoard (
	seq         NUMBER NOT NULL, -- 번호
	seqCategory NUMBER NOT NULL  -- 카테고리 번호
);

-- 게시판
ALTER TABLE tblBoard
	ADD
		CONSTRAINT PK_tblBoard -- 게시판 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 게시글
CREATE TABLE tblPost (
	seq          NUMBER         NOT NULL, -- 번호
	seqBoard     NUMBER         NOT NULL, -- 게시판 번호
	seqUser      NUMBER         NOT NULL, -- 사용자 번호
	title        VARCHAR2(100)  NOT NULL, -- 제목
	content      VARCHAR2(2000) NOT NULL, -- 내용
	writeDate    DATE           NOT NULL, -- 작성일
	editDate     DATE           NULL,     -- 수정일
	viewCount    NUMBER         NOT NULL, -- 조회 수
	likeCount    NUMBER         NOT NULL, -- 추천 수
	dislikeCount NUMBER         NOT NULL, -- 비추천 수
	reportCount  NUMBER         NOT NULL, -- 신고 수
	secretCheck  NUMBER         NOT NULL, -- 비밀글 여부
	blindCheck   NUMBER         NOT NULL  -- 블라인드 여부
);

-- 게시글
ALTER TABLE tblPost
	ADD
		CONSTRAINT PK_tblPost -- 게시글 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 댓글
CREATE TABLE tblComments (
	seq          NUMBER         NOT NULL, -- 번호
	seqPost      NUMBER         NOT NULL, -- 게시글 번호
	seqUser      NUMBER         NOT NULL, -- 사용자 번호
	content      VARCHAR2(2000) NOT NULL, -- 내용
	writeDate    DATE           NOT NULL, -- 작성일
	likeCount    NUMBER         NOT NULL, -- 추천 수
	dislikeCount NUMBER         NOT NULL, -- 비추천 수
	reportCount  NUMBER         NOT NULL  -- 신고 수
);

-- 댓글
ALTER TABLE tblComments
	ADD
		CONSTRAINT PK_tblComments -- 댓글 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 가계부 카테고리
CREATE TABLE tblAccCategory (
	seq  NUMBER       NOT NULL, -- 번호
	name VARCHAR2(50) NOT NULL  -- 이름
);

-- 가계부 카테고리
ALTER TABLE tblAccCategory
	ADD
		CONSTRAINT PK_tblAccCategory -- 가계부 카테고리 기본키
		PRIMARY KEY (
			seq -- 번호
		);
        
-- 가계부 카테고리 유니크 제약 조건
ALTER TABLE tblAccCategory
    ADD CONSTRAINT UK_tblAccCategory_name UNIQUE (name);

-- 대댓글
CREATE TABLE tblReplyComments (
	seq          NUMBER         NOT NULL, -- 번호
	seqComments  NUMBER         NOT NULL, -- 댓글 번호
	seqUser      NUMBER         NOT NULL, -- 사용자 번호
	content      VARCHAR2(2000) NOT NULL, -- 내용
	writeDate    DATE           NOT NULL, -- 작성일
	likeCount    NUMBER         NOT NULL, -- 추천 수
	dislikeCount NUMBER         NOT NULL, -- 비추천 수
	reportCount  NUMBER         NOT NULL  -- 신고 수
);

-- 대댓글
ALTER TABLE tblReplyComments
	ADD
		CONSTRAINT PK_tblReplyComments -- 대댓글 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 권한
CREATE TABLE tblPriv (
	seq  NUMBER       NOT NULL, -- 번호
	name VARCHAR2(50) NOT NULL  -- 이름
);

-- 권한
ALTER TABLE tblPriv
	ADD
		CONSTRAINT PK_tblPriv -- 권한 기본키
		PRIMARY KEY (
			seq -- 번호
		);
        
-- 권한명 유니크 제약 조건
ALTER TABLE tblPriv
    ADD CONSTRAINT UK_tblPriv_name UNIQUE (name);


-- 첨부 파일
CREATE TABLE tblAttachedFile (
	seq      NUMBER        NOT NULL, -- 번호
	seqPost  NUMBER        NOT NULL, -- 게시글 번호
	fileName VARCHAR2(50)  NOT NULL, -- 파일 이름
	fileLink VARCHAR2(300) NOT NULL  -- 파일 링크
);

-- 첨부 파일
ALTER TABLE tblAttachedFile
	ADD
		CONSTRAINT PK_tblAttachedFile -- 첨부 파일 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 가계부
CREATE TABLE tblAcc (
	seq       NUMBER       NOT NULL, -- 번호
	seqMember VARCHAR2(30) NOT NULL  -- 회원 번호
);

-- 가계부
ALTER TABLE tblAcc
	ADD
		CONSTRAINT PK_tblAcc -- 가계부 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 가계부 내용
CREATE TABLE tblAccInfo (
	seq                        NUMBER         NOT NULL, -- 번호
	content                    VARCHAR2(2000) NOT NULL, -- 내용
	accInfoDate                DATE           NOT NULL, -- 날짜
	price                      NUMBER         NOT NULL, -- 금액
	location                   VARCHAR2(50)   NULL,     -- 사용처
	seqAcc                     NUMBER         NOT NULL, -- 가계부 번호
	seqReasonChangeCategory    NUMBER         NOT NULL, -- 변동 사유 카테고리 번호
	seqFixedFluctuationCheck   NUMBER         NOT NULL, -- 고정 입출금 여부 번호
	seqDepositWithdrawalStatus NUMBER         NOT NULL  -- 입출금 상태 번호
);

-- 가계부 내용
ALTER TABLE tblAccInfo
	ADD
		CONSTRAINT PK_tblAccInfo -- 가계부 내용 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 키워드
CREATE TABLE tblKeyword (
	seq                  NUMBER         NOT NULL, -- 번호
	content              VARCHAR2(2000) NOT NULL, -- 내용
	seqAccCategoryNumber NUMBER         NOT NULL  -- 가계부 카테고리 번호
);

-- 키워드
ALTER TABLE tblKeyword
	ADD
		CONSTRAINT PK_tblKeyword -- 키워드 기본키
		PRIMARY KEY (
			seq -- 번호
		);
        
-- 키워드 유니크 제약 조건
ALTER TABLE tblKeyword
    ADD CONSTRAINT UK_tblKeyword_content UNIQUE (content);


-- 가계부 카테고리 목록
CREATE TABLE tblAccCategoryList (
	seq            NUMBER NOT NULL, -- 번호
	seqAccCategory NUMBER NOT NULL, -- 가계부 카테고리 번호
	seqAccInfo     NUMBER NOT NULL  -- 가계부 내용 번호
);

-- 가계부 카테고리 목록
ALTER TABLE tblAccCategoryList
	ADD
		CONSTRAINT PK_tblAccCategoryList -- 가계부 카테고리 목록 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 구매 위시 목록
CREATE TABLE tblPurchaseWishList (
	seq         NUMBER       NOT NULL, -- 번호
	productName VARCHAR2(50) NULL,     -- 제품명
	seqUser     NUMBER       NOT NULL  -- 사용자 번호
);

-- 구매 위시 목록
ALTER TABLE tblPurchaseWishList
	ADD
		CONSTRAINT PK_tblPurchaseWishList -- 구매 위시 목록 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 카드 정보
CREATE TABLE tblCardInformation (
	seq         NUMBER         NOT NULL, -- 번호
	name        VARCHAR2(50)   NOT NULL, -- 이름
	explanation VARCHAR2(2000) NULL,     -- 설명
	annualFee   NUMBER         NOT NULL, -- 연회비
	overseasUse VARCHAR2(10)   NOT NULL, -- 해외겸용
	cardCompany VARCHAR2(50)   NOT NULL, -- 카드사
	fileLink    VARCHAR2(300)  NULL,     -- 파일 링크
	seqCardType NUMBER         NOT NULL  -- 카드 타입 번호
);

-- 카드 정보
ALTER TABLE tblCardInformation
	ADD
		CONSTRAINT PK_tblCardInformation -- 카드 정보 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 카드 혜택 카테고리
CREATE TABLE tblCardCategory (
	seq  NUMBER       NOT NULL, -- 번호
	name VARCHAR2(50) NOT NULL  -- 이름
);

-- 카드 혜택 카테고리
ALTER TABLE tblCardCategory
	ADD
		CONSTRAINT PK_tblCardCategory -- 카드 혜택 카테고리 기본키
		PRIMARY KEY (
			seq -- 번호
		);
        
-- 카드 혜택 카테고리 유니크 제약 조건
ALTER TABLE tblCardCategory
    ADD CONSTRAINT UK_tblCardCategory_name UNIQUE (name);

-- 카드/가계부 카테고리 연결
CREATE TABLE tblCardAndAcc (
	seq             NUMBER NOT NULL, -- 번호
	seqCardCategory NUMBER NOT NULL, -- 카드 카테고리 번호
	seqAccCategory  NUMBER NOT NULL  -- 가계부 카테고리 번호
);

-- 카드/가계부 카테고리 연결
ALTER TABLE tblCardAndAcc
	ADD
		CONSTRAINT PK_tblCardAndAcc -- 카드/가계부 카테고리 연결 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 카드 혜택 목록
CREATE TABLE tblListCardBenefits (
	seq                NUMBER NOT NULL, -- 번호
	seqCardCategory    NUMBER NOT NULL, -- 카드 카테고리 번호
	seqCardInformation NUMBER NOT NULL  -- 카드 번호
);

-- 카드 혜택 목록
ALTER TABLE tblListCardBenefits
	ADD
		CONSTRAINT PK_tblListCardBenefits -- 카드 혜택 목록 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 배너 이미지
CREATE TABLE tblBannerImage (
	seq      NUMBER        NOT NULL, -- 번호
	fileLink VARCHAR2(300) NOT NULL  -- 파일 링크
);

-- 배너 이미지
ALTER TABLE tblBannerImage
	ADD
		CONSTRAINT PK_tblBannerImage -- 배너 이미지 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- API
CREATE TABLE tblAPI (
	seq  NUMBER        NOT NULL, -- 번호
	name VARCHAR2(50)  NOT NULL, -- 이름
	key  VARCHAR2(300) NOT NULL  -- 키
);

-- API
ALTER TABLE tblAPI
	ADD
		CONSTRAINT PK_tblAPI -- API 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 뉴스
CREATE TABLE tblNews (
	seq      NUMBER         NOT NULL, -- 번호
	title    VARCHAR2(100)  NOT NULL, -- 제목
	content  VARCHAR2(2000) NOT NULL, -- 내용
	newsDate DATE           NOT NULL, -- 날짜
	media    VARCHAR2(50)   NULL      -- 언론사
);

-- 뉴스
ALTER TABLE tblNews
	ADD
		CONSTRAINT PK_tblNews -- 뉴스 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 금지어
CREATE TABLE tblBanWord (
	seq     NUMBER         NOT NULL, -- 번호
	content VARCHAR2(2000) NOT NULL  -- 내용
);

-- 금지어
ALTER TABLE tblBanWord
	ADD
		CONSTRAINT PK_tblBanWord -- 금지어 기본키
		PRIMARY KEY (
			seq -- 번호
		);
        
-- 금지어 유니크 제약 조건
ALTER TABLE tblBanWord
    ADD CONSTRAINT UK_tblBanWord_content UNIQUE (content);

-- 로그
CREATE TABLE tblLog (
	seq NUMBER NOT NULL -- 번호
);

-- 로그
ALTER TABLE tblLog
	ADD
		CONSTRAINT PK_tblLog -- 로그 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 관리자
CREATE TABLE tblAdmin (
	id       VARCHAR2(30) NOT NULL, -- 아이디
	pw       VARCHAR2(30) NOT NULL, -- 비밀번호
	nickname VARCHAR2(20) NOT NULL  -- 닉네임
);

-- 관리자
ALTER TABLE tblAdmin
	ADD
		CONSTRAINT PK_tblAdmin -- 관리자 기본키2
		PRIMARY KEY (
			id -- 아이디
		);

-- 관리자 닉네임 유니크 제약 조건
ALTER TABLE tblAdmin
    ADD CONSTRAINT UK_tblAdmin_nickname UNIQUE (nickname);

-- 회원 권한 목록
CREATE TABLE tblMemberPriv (
	seq      NUMBER       NOT NULL, -- 번호
	seqPriv  NUMBER       NOT NULL, -- 권한 번호
	idMember VARCHAR2(30) NOT NULL  -- 회원 번호
);

-- 회원 권한 목록
ALTER TABLE tblMemberPriv
	ADD
		CONSTRAINT PK_tblMemberPriv -- 회원 권한 목록 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 관리자 권한 목록
CREATE TABLE tblAdminPriv (
	seq     NUMBER       NOT NULL, -- 번호
	seqPriv NUMBER       NOT NULL, -- 권한 번호
	idAdmin VARCHAR2(30) NOT NULL  -- 관리자 번호
);

-- 관리자 권한 목록
ALTER TABLE tblAdminPriv
	ADD
		CONSTRAINT PK_tblAdminPriv -- 관리자 권한 목록 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 사용자
CREATE TABLE tblUser (
	seq      NUMBER       NOT NULL, -- 번호
	idMember VARCHAR2(30) NULL,     -- 회원 번호
	idAdmin  VARCHAR2(30) NULL      -- 관리자 번호
);

-- 사용자
ALTER TABLE tblUser
	ADD
		CONSTRAINT PK_tblUser -- 사용자 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 압박 강도
CREATE TABLE tblCompressionIntensity (
	seq       NUMBER      NOT NULL, -- 번호
	intensity VARCHAR2(5) NULL      -- 강도
);

-- 압박 강도
ALTER TABLE tblCompressionIntensity
	ADD
		CONSTRAINT PK_tblCompressionIntensity -- 압박 강도 기본키
		PRIMARY KEY (
			seq -- 번호
		);
        
-- 압박 강도 유니크 제약 조건
ALTER TABLE tblCompressionIntensity
    ADD CONSTRAINT UK_tblCompressionIntensity_intensity UNIQUE (intensity);

-- 나의 카드
CREATE TABLE tblMyCard (
	seq                NUMBER       NOT NULL, -- 번호
	cardNumber         VARCHAR2(20) NOT NULL, -- 카드 번호
	alias              VARCHAR2(20) NULL,     -- 별칭
	validity           DATE         NOT NULL, -- 유효 기간
	idMember           VARCHAR2(30) NOT NULL, -- 회원 번호
	seqCardInformation NUMBER       NOT NULL  -- 카드 정보 번호
);

-- 나의 카드
ALTER TABLE tblMyCard
	ADD
		CONSTRAINT PK_tblMyCard -- 나의 카드 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 나의 카드 유니크 제약 조건
ALTER TABLE tblMyCard
    ADD CONSTRAINT UK_tblMyCard_cardNumber UNIQUE (cardNumber);

-- 카드 타입
CREATE TABLE tblCardType (
	seq  NUMBER       NOT NULL, -- 번호
	type VARCHAR2(10) NOT NULL  -- 타입
);

-- 카드 타입
ALTER TABLE tblCardType
	ADD
		CONSTRAINT PK_tblCardType -- 카드 타입 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 변동 사유 카테고리
CREATE TABLE tblReasonChangeCategory (
	seq                  NUMBER NOT NULL, -- 번호
	seqReasonsChangeList NUMBER NOT NULL, -- 변동 사유 목록 번호
	seqMyCard            NUMBER NULL      -- 나의 카드 번호
);

-- 변동 사유 카테고리
ALTER TABLE tblReasonChangeCategory
	ADD
		CONSTRAINT PK_tblReasonChangeCategory -- 변동 사유 카테고리 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 고정 변동 기간
CREATE TABLE tblFixedFluctuationPeriod (
	seq    NUMBER NOT NULL, -- 번호
	period DATE   NOT NULL  -- 기간
);

-- 고정 변동 기간
ALTER TABLE tblFixedFluctuationPeriod
	ADD
		CONSTRAINT PK_tblFixedFluctuationPeriod -- 고정 변동 기간 기본키2
		PRIMARY KEY (
			seq -- 번호
		);

-- 고정 입출금 여부
CREATE TABLE tblFixedDepositWithdrawalCheck (
	seq                       NUMBER         NOT NULL, -- 번호
	content                   VARCHAR2(2000) NOT NULL, -- 내용
	seqFixedFluctuationPeriod NUMBER         NOT NULL  -- 고정 변동 기간 번호
);

-- 고정 입출금 여부
ALTER TABLE tblFixedDepositWithdrawalCheck
	ADD
		CONSTRAINT PK_tblFixedDepositWithdrawalCheck -- 고정 입출금 여부 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 입출금 상태
CREATE TABLE tblDepositWithdrawalStatus (
	seq    NUMBER       NOT NULL, -- 번호
	status VARCHAR2(20) NOT NULL  -- 상태
);

-- 입출금 상태
ALTER TABLE tblDepositWithdrawalStatus
	ADD
		CONSTRAINT PK_tblDepositWithdrawalStatus -- 입출금 상태 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 자산
CREATE TABLE tblProperty (
	seq  NUMBER NOT NULL, -- 번호
	cash NUMBER NOT NULL  -- 현금
);

-- 자산
ALTER TABLE tblProperty
	ADD
		CONSTRAINT PK_tblProperty -- 자산 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 부채
CREATE TABLE tblDebt (
	seq  NUMBER NOT NULL, -- 번호
	cash NUMBER NOT NULL  -- 현금
);

-- 부채
ALTER TABLE tblDebt
	ADD
		CONSTRAINT PK_tblDebt -- 부채 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 회원 금융 정보
CREATE TABLE tblMemberFinance (
	seq         NUMBER       NOT NULL, -- 번호
	seqMember   VARCHAR2(30) NOT NULL, -- 회원 번호
	seqProperty NUMBER       NOT NULL, -- 자산 번호
	seqDebt     NUMBER       NOT NULL  -- 부채 번호
);

-- 회원 금융 정보
ALTER TABLE tblMemberFinance
	ADD
		CONSTRAINT PK_tblMemberFinance -- 회원 금융 정보 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 변동 사유 목록
CREATE TABLE tblReasonsChangeList (
	seq     NUMBER       NOT NULL, -- 번호
	content VARCHAR2(20) NOT NULL  -- 내용
);

-- 변동 사유 목록
ALTER TABLE tblReasonsChangeList
	ADD
		CONSTRAINT PK_tblReasonsChangeList -- 변동 사유 목록 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 뉴스 카테고리 목록
CREATE TABLE tblNewsCategoryList (
	seq            NUMBER NOT NULL, -- 번호
	seqnews        NUMBER NOT NULL, -- 뉴스 번호
	seqAccCategory NUMBER NOT NULL  -- 가계부 카테고리 번호
);

-- 뉴스 카테고리 목록
ALTER TABLE tblNewsCategoryList
	ADD
		CONSTRAINT PK_tblNewsCategoryList -- 뉴스 카테고리 목록 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 저축 기간
CREATE TABLE tblSavingsPeriod (
	seq    NUMBER NOT NULL, -- 번호
	period NUMBER NOT NULL  -- 기간
);

-- 저축 기간
ALTER TABLE tblSavingsPeriod
	ADD
		CONSTRAINT PK_tblSavingsPeriod -- 저축 기간 기본키
		PRIMARY KEY (
			seq -- 번호
		);

-- 회원
ALTER TABLE tblMember
	ADD
		CONSTRAINT FK_tblSurvey_TO_tblMember -- 설문조사 -> 회원
		FOREIGN KEY (
			seqSurvey -- 설문조사 번호
		)
		REFERENCES tblSurvey ( -- 설문조사
			seq -- 번호
		);

-- 회원
ALTER TABLE tblMember
	ADD
		CONSTRAINT FK_tblProfileimg_TO_tblMember -- 프로필 이미지 -> 회원
		FOREIGN KEY (
			seqProfileimg -- 프로필 이미지 번호
		)
		REFERENCES tblProfileimg ( -- 프로필 이미지
			seq -- 번호
		);

-- 설문조사 제약사항
ALTER TABLE tblSurvey
	ADD
		CONSTRAINT FK_tblCompressionIntensity_TO_tblSurvey -- 압박 강도 -> 설문조사
		FOREIGN KEY (
			seqCompressionIntensity -- 압박 강도 번호
		)
		REFERENCES tblCompressionIntensity ( -- 압박 강도
			seq -- 번호
		);

-- 설문조사
ALTER TABLE tblSurvey
	ADD
		CONSTRAINT FK_tblSavingsPeriod_TO_tblSurvey -- 저축 기간 -> 설문조사
		FOREIGN KEY (
			seqSavingsPeriod -- 저축 기간 번호
		)
		REFERENCES tblSavingsPeriod ( -- 저축 기간
			seq -- 번호
		);

-- 게시판
ALTER TABLE tblBoard
	ADD
		CONSTRAINT FK_tblCategory_TO_tblBoard -- 게시판 카테고리 -> 게시판
		FOREIGN KEY (
			seqCategory -- 카테고리 번호
		)
		REFERENCES tblCategory ( -- 게시판 카테고리
			seq -- 번호
		);

-- 게시글
ALTER TABLE tblPost
	ADD
		CONSTRAINT FK_tblBoard_TO_tblPost -- 게시판 -> 게시글
		FOREIGN KEY (
			seqBoard -- 게시판 번호
		)
		REFERENCES tblBoard ( -- 게시판
			seq -- 번호
		);

-- 게시글
ALTER TABLE tblPost
	ADD
		CONSTRAINT FK_tblUser_TO_tblPost -- 사용자 -> 게시글
		FOREIGN KEY (
			seqUser -- 사용자 번호
		)
		REFERENCES tblUser ( -- 사용자
			seq -- 번호
		);

-- 댓글
ALTER TABLE tblComments
	ADD
		CONSTRAINT FK_tblPost_TO_tblComments -- 게시글 -> 댓글
		FOREIGN KEY (
			seqPost -- 게시글 번호
		)
		REFERENCES tblPost ( -- 게시글
			seq -- 번호
		);

-- 댓글
ALTER TABLE tblComments
	ADD
		CONSTRAINT FK_tblUser_TO_tblComments -- 사용자 -> 댓글
		FOREIGN KEY (
			seqUser  -- 사용자 번호
		)
		REFERENCES tblUser ( -- 사용자
			seq -- 번호
		);

-- 대댓글
ALTER TABLE tblReplyComments
	ADD
		CONSTRAINT FK_tblComments_TO_tblReplyComments -- 댓글 -> 대댓글
		FOREIGN KEY (
			seqComments -- 댓글 번호
		)
		REFERENCES tblComments ( -- 댓글
			seq -- 번호
		);

-- 대댓글
ALTER TABLE tblReplyComments
	ADD
		CONSTRAINT FK_tblUser_TO_tblReplyComments -- 사용자 -> 대댓글
		FOREIGN KEY (
			seqUser  -- 사용자 번호
		)
		REFERENCES tblUser ( -- 사용자
			seq -- 번호
		);

-- 첨부 파일
ALTER TABLE tblAttachedFile
	ADD
		CONSTRAINT FK_tblPost_TO_tblAttachedFile -- 게시글 -> 첨부 파일
		FOREIGN KEY (
			seqPost -- 게시글 번호
		)
		REFERENCES tblPost ( -- 게시글
			seq -- 번호
		);

-- 가계부
ALTER TABLE tblAcc
	ADD
		CONSTRAINT FK_tblMember_TO_tblAcc -- 회원 -> 가계부
		FOREIGN KEY (
			seqMember -- 회원 번호
		)
		REFERENCES tblMember ( -- 회원
			id -- 아이디(이메일)
		);

-- 가계부 내용
ALTER TABLE tblAccInfo
	ADD
		CONSTRAINT FK_tblAcc_TO_tblAccInfo -- 가계부 -> 가계부 내용
		FOREIGN KEY (
			seqAcc -- 가계부 번호
		)
		REFERENCES tblAcc ( -- 가계부
			seq -- 번호
		);

-- 가계부 내용
ALTER TABLE tblAccInfo
	ADD
		CONSTRAINT FK_tblReasonChangeCategory_TO_tblAccInfo -- 변동 사유 카테고리 -> 가계부 내용
		FOREIGN KEY (
			seqReasonChangeCategory -- 변동 사유 카테고리 번호
		)
		REFERENCES tblReasonChangeCategory ( -- 변동 사유 카테고리
			seq -- 번호
		);

-- 가계부 내용
ALTER TABLE tblAccInfo
	ADD
		CONSTRAINT FK_tblFixedDepositWithdrawalCheck_TO_tblAccInfo -- 고정 입출금 여부 -> 가계부 내용
		FOREIGN KEY (
			seqFixedFluctuationCheck -- 고정 입출금 여부 번호
		)
		REFERENCES tblFixedDepositWithdrawalCheck ( -- 고정 입출금 여부
			seq -- 번호
		);

-- 가계부 내용
ALTER TABLE tblAccInfo
	ADD
		CONSTRAINT FK_tblDepositWithdrawalStatus_TO_tblAccInfo -- 입출금 상태 -> 가계부 내용
		FOREIGN KEY (
			seqDepositWithdrawalStatus -- 입출금 상태 번호
		)
		REFERENCES tblDepositWithdrawalStatus ( -- 입출금 상태
			seq -- 번호
		);

-- 키워드
ALTER TABLE tblKeyword
	ADD
		CONSTRAINT FK_tblAccCategory_TO_tblKeyword -- 가계부 카테고리 -> 키워드
		FOREIGN KEY (
			seqAccCategoryNumber -- 가계부 카테고리 번호
		)
		REFERENCES tblAccCategory ( -- 가계부 카테고리
			seq -- 번호
		);

-- 가계부 카테고리 목록
ALTER TABLE tblAccCategoryList
	ADD
		CONSTRAINT FK_tblAccCategory_TO_tblAccCategoryList -- 가계부 카테고리 -> 가계부 카테고리 목록
		FOREIGN KEY (
			seqAccCategory -- 가계부 카테고리 번호
		)
		REFERENCES tblAccCategory ( -- 가계부 카테고리
			seq -- 번호
		);

-- 가계부 카테고리 목록
ALTER TABLE tblAccCategoryList
	ADD
		CONSTRAINT FK_tblAccInfo_TO_tblAccCategoryList -- 가계부 내용 -> 가계부 카테고리 목록
		FOREIGN KEY (
			seqAccInfo -- 가계부 내용 번호
		)
		REFERENCES tblAccInfo ( -- 가계부 내용
			seq -- 번호
		);

-- 구매 위시 목록
ALTER TABLE tblPurchaseWishList
	ADD
		CONSTRAINT FK_tblUser_TO_tblPurchaseWishList -- 사용자 -> 구매 위시 목록
		FOREIGN KEY (
			seqUser  -- 사용자 번호
		)
		REFERENCES tblUser ( -- 사용자
			seq -- 번호
		);

-- 카드 정보
ALTER TABLE tblCardInformation
	ADD
		CONSTRAINT FK_tblCardType_TO_tblCardInformation -- 카드 타입 -> 카드 정보
		FOREIGN KEY (
			seqCardType -- 카드 타입 번호
		)
		REFERENCES tblCardType ( -- 카드 타입
			seq -- 번호
		);

-- 카드/가계부 카테고리 연결
ALTER TABLE tblCardAndAcc
	ADD
		CONSTRAINT FK_tblCardCategory_TO_tblCardAndAcc -- 카드 카테고리 -> 카드/가계부 카테고리 연결
		FOREIGN KEY (
			seqCardCategory -- 카드 카테고리 번호
		)
		REFERENCES tblCardCategory ( -- 카드 카테고리
			seq -- 번호
		);

-- 카드/가계부 카테고리 연결
ALTER TABLE tblCardAndAcc
	ADD
		CONSTRAINT FK_tblAccCategory_TO_tblCardAndAcc -- 가계부 카테고리 -> 카드/가계부 카테고리 연결
		FOREIGN KEY (
			seqAccCategory -- 가계부 카테고리 번호
		)
		REFERENCES tblAccCategory ( -- 가계부 카테고리
			seq -- 번호
		);

-- 카드 혜택 목록
ALTER TABLE tblListCardBenefits
	ADD
		CONSTRAINT FK_tblCardCategory_TO_tblListCardBenefits -- 카드 카테고리 -> 카드 혜택 목록
		FOREIGN KEY (
			seqCardCategory -- 카드 카테고리 번호
		)
		REFERENCES tblCardCategory ( -- 카드 카테고리
			seq -- 번호
		);

-- 카드 혜택 목록
ALTER TABLE tblListCardBenefits
	ADD
		CONSTRAINT FK_tblCardInformation_TO_tblListCardBenefits -- 카드 정보 -> 카드 혜택 목록
		FOREIGN KEY (
			seqCardInformation -- 카드 번호
		)
		REFERENCES tblCardInformation ( -- 카드 정보
			seq -- 번호
		);

-- 회원 권한 목록
ALTER TABLE tblMemberPriv
	ADD
		CONSTRAINT FK_tblPriv_TO_tblMemberPriv -- 권한 -> 회원 권한 목록
		FOREIGN KEY (
			seqPriv -- 권한 번호
		)
		REFERENCES tblPriv ( -- 권한
			seq -- 번호
		);

-- 회원 권한 목록
ALTER TABLE tblMemberPriv
	ADD
		CONSTRAINT FK_tblMember_TO_tblMemberPriv -- 회원 -> 회원 권한 목록
		FOREIGN KEY (
			idMember -- 회원 번호
		)
		REFERENCES tblMember ( -- 회원
			id -- 아이디(이메일)
		);

-- 관리자 권한 목록
ALTER TABLE tblAdminPriv
	ADD
		CONSTRAINT FK_tblPriv_TO_tblAdminPriv -- 권한 -> 관리자 권한 목록
		FOREIGN KEY (
			seqPriv -- 권한 번호
		)
		REFERENCES tblPriv ( -- 권한
			seq -- 번호
		);

-- 관리자 권한 목록
ALTER TABLE tblAdminPriv
	ADD
		CONSTRAINT FK_tblAdmin_TO_tblAdminPriv -- 관리자 -> 관리자 권한 목록
		FOREIGN KEY (
			idAdmin -- 관리자 번호
		)
		REFERENCES tblAdmin ( -- 관리자
			id -- 아이디
		);

-- 사용자
ALTER TABLE tblUser
	ADD
		CONSTRAINT FK_tblMember_TO_tblUser -- 회원 -> 사용자
		FOREIGN KEY (
			idMember -- 회원 번호
		)
		REFERENCES tblMember ( -- 회원
			id -- 아이디(이메일)
		);

-- 사용자
ALTER TABLE tblUser
	ADD
		CONSTRAINT FK_tblAdmin_TO_tblUser -- 관리자 -> 사용자
		FOREIGN KEY (
			idAdmin -- 관리자 번호
		)
		REFERENCES tblAdmin ( -- 관리자
			id -- 아이디
		);

-- 나의 카드
ALTER TABLE tblMyCard
	ADD
		CONSTRAINT FK_tblMember_TO_tblMyCard -- 회원 -> 나의 카드
		FOREIGN KEY (
			idMember -- 회원 번호
		)
		REFERENCES tblMember ( -- 회원
			id -- 아이디(이메일)
		);

-- 나의 카드
ALTER TABLE tblMyCard
	ADD
		CONSTRAINT FK_tblCardInformation_TO_tblMyCard -- 카드 정보 -> 나의 카드
		FOREIGN KEY (
			seqCardInformation -- 카드 정보 번호
		)
		REFERENCES tblCardInformation ( -- 카드 정보
			seq -- 번호
		);

-- 변동 사유 카테고리
ALTER TABLE tblReasonChangeCategory
	ADD
		CONSTRAINT FK_tblMyCard_TO_tblReasonChangeCategory -- 나의 카드 -> 변동 사유 카테고리
		FOREIGN KEY (
			seqMyCard -- 나의 카드 번호
		)
		REFERENCES tblMyCard ( -- 나의 카드
			seq -- 번호
		);

-- 변동 사유 카테고리
ALTER TABLE tblReasonChangeCategory
	ADD
		CONSTRAINT FK_tblReasonsChangeList_TO_tblReasonChangeCategory -- 변동 사유 목록 -> 변동 사유 카테고리
		FOREIGN KEY (
			seqReasonsChangeList -- 변동 사유 목록 번호
		)
		REFERENCES tblReasonsChangeList ( -- 변동 사유 목록
			seq -- 번호
		);

-- 고정 입출금 여부
ALTER TABLE tblFixedDepositWithdrawalCheck
	ADD
		CONSTRAINT FK_tblFixedFluctuationPeriod_TO_tblFixedDepositWithdrawalCheck -- 고정 변동 기간 -> 고정 입출금 여부
		FOREIGN KEY (
			seqFixedFluctuationPeriod -- 고정 변동 기간 번호
		)
		REFERENCES tblFixedFluctuationPeriod ( -- 고정 변동 기간
			seq -- 번호
		);

-- 회원 금융 정보
ALTER TABLE tblMemberFinance
	ADD
		CONSTRAINT FK_tblProperty_TO_tblMemberFinance -- 자산 -> 회원 금융 정보
		FOREIGN KEY (
			seqProperty -- 자산 번호
		)
		REFERENCES tblProperty ( -- 자산
			seq -- 번호
		);

-- 회원 금융 정보
ALTER TABLE tblMemberFinance
	ADD
		CONSTRAINT FK_tblDebt_TO_tblMemberFinance -- 부채 -> 회원 금융 정보
		FOREIGN KEY (
			seqDebt -- 부채 번호
		)
		REFERENCES tblDebt ( -- 부채
			seq -- 번호
		);

-- 회원 금융 정보
ALTER TABLE tblMemberFinance
	ADD
		CONSTRAINT FK_tblMember_TO_tblMemberFinance -- 회원 -> 회원 금융 정보
		FOREIGN KEY (
			seqMember -- 회원 번호
		)
		REFERENCES tblMember ( -- 회원
			id -- 아이디(이메일)
		);

-- 뉴스 카테고리 목록
ALTER TABLE tblNewsCategoryList
	ADD
		CONSTRAINT FK_tblNews_TO_tblNewsCategoryList -- 뉴스 -> 뉴스 카테고리 목록
		FOREIGN KEY (
			seqnews -- 뉴스 번호
		)
		REFERENCES tblNews ( -- 뉴스
			seq -- 번호
		);

-- 뉴스 카테고리 목록
ALTER TABLE tblNewsCategoryList
	ADD
		CONSTRAINT FK_tblAccCategory_TO_tblNewsCategoryList -- 가계부 카테고리 -> 뉴스 카테고리 목록
		FOREIGN KEY (
			seqAccCategory -- 가계부 카테고리 번호
		)
		REFERENCES tblAccCategory ( -- 가계부 카테고리
			seq -- 번호
		);
        
commit;