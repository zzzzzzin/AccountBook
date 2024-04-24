-- 회원
ALTER TABLE tblMember
	DROP CONSTRAINT FK_tblSurvey_TO_tblMember; -- 설문조사 -> 회원

-- 회원
ALTER TABLE tblMember
	DROP CONSTRAINT FK_tblProfileimg_TO_tblMember; -- 프로필 이미지 -> 회원

-- 설문조사
ALTER TABLE tblSurvey
	DROP CONSTRAINT FK_tblCompressionIntensity_TO_tblSurvey; -- 압박 강도 -> 설문조사

-- 설문조사
ALTER TABLE tblSurvey
	DROP CONSTRAINT FK_tblDebt_TO_tblSurvey; -- 부채 -> 설문조사

-- 설문조사
ALTER TABLE tblSurvey
	DROP CONSTRAINT FK_tblSavingsPeriod_TO_tblSurvey; -- 저축 기간 -> 설문조사

-- 게시판
ALTER TABLE tblBoard
	DROP CONSTRAINT FK_tblCategory_TO_tblBoard; -- 게시판 카테고리 -> 게시판

-- 게시글
ALTER TABLE tblPost
	DROP CONSTRAINT FK_tblBoard_TO_tblPost; -- 게시판 -> 게시글

-- 게시글
ALTER TABLE tblPost
	DROP CONSTRAINT FK_tblUser_TO_tblPost; -- 사용자 -> 게시글

-- 댓글
ALTER TABLE tblComments
	DROP CONSTRAINT FK_tblPost_TO_tblComments; -- 게시글 -> 댓글

-- 댓글
ALTER TABLE tblComments
	DROP CONSTRAINT FK_tblUser_TO_tblComments; -- 사용자 -> 댓글

-- 대댓글
ALTER TABLE tblReplyComments
	DROP CONSTRAINT FK_tblComments_TO_tblReplyComments; -- 댓글 -> 대댓글

-- 대댓글
ALTER TABLE tblReplyComments
	DROP CONSTRAINT FK_tblUser_TO_tblReplyComments; -- 사용자 -> 대댓글

-- 첨부 파일
ALTER TABLE tblAttachedFile
	DROP CONSTRAINT FK_tblPost_TO_tblAttachedFile; -- 게시글 -> 첨부 파일

-- 가계부
ALTER TABLE tblAcc
	DROP CONSTRAINT FK_tblMember_TO_tblAcc; -- 회원 -> 가계부

-- 가계부 내용
ALTER TABLE tblAccInfo
	DROP CONSTRAINT FK_tblAcc_TO_tblAccInfo; -- 가계부 -> 가계부 내용

-- 가계부 내용
ALTER TABLE tblAccInfo
	DROP CONSTRAINT FK_tblReasonChangeCategory_TO_tblAccInfo; -- 변동 사유 카테고리 -> 가계부 내용

-- 가계부 내용
ALTER TABLE tblAccInfo
	DROP CONSTRAINT FK_tblFixedDepositWithdrawalCheck_TO_tblAccInfo; -- 고정 입출금 여부 -> 가계부 내용

-- 가계부 내용
ALTER TABLE tblAccInfo
	DROP CONSTRAINT FK_tblDepositWithdrawalStatus_TO_tblAccInfo; -- 입출금 상태 -> 가계부 내용

-- 키워드
ALTER TABLE tblKeyword
	DROP CONSTRAINT FK_tblAccCategory_TO_tblKeyword; -- 가계부 카테고리 -> 키워드

-- 가계부 카테고리 목록
ALTER TABLE tblAccCategoryList
	DROP CONSTRAINT FK_tblAccCategory_TO_tblAccCategoryList; -- 가계부 카테고리 -> 가계부 카테고리 목록

-- 가계부 카테고리 목록
ALTER TABLE tblAccCategoryList
	DROP CONSTRAINT FK_tblAccInfo_TO_tblAccCategoryList; -- 가계부 내용 -> 가계부 카테고리 목록

-- 구매 위시 목록
ALTER TABLE tblPurchaseWishList
	DROP CONSTRAINT FK_tblUser_TO_tblPurchaseWishList; -- 사용자 -> 구매 위시 목록

-- 카드 정보
ALTER TABLE tblCardInformation
	DROP CONSTRAINT FK_tblCardType_TO_tblCardInformation; -- 카드 타입 -> 카드 정보

-- 카드/가계부 카테고리 연결
ALTER TABLE tblCardAndAcc
	DROP CONSTRAINT FK_tblCardCategory_TO_tblCardAndAcc; -- 카드 카테고리 -> 카드/가계부 카테고리 연결

-- 카드/가계부 카테고리 연결
ALTER TABLE tblCardAndAcc
	DROP CONSTRAINT FK_tblAccCategory_TO_tblCardAndAcc; -- 가계부 카테고리 -> 카드/가계부 카테고리 연결

-- 카드 혜택 목록
ALTER TABLE tblListCardBenefits
	DROP CONSTRAINT FK_tblCardCategory_TO_tblListCardBenefits; -- 카드 카테고리 -> 카드 혜택 목록

-- 카드 혜택 목록
ALTER TABLE tblListCardBenefits
	DROP CONSTRAINT FK_tblCardInformation_TO_tblListCardBenefits; -- 카드 정보 -> 카드 혜택 목록

-- 회원 권한 목록
ALTER TABLE tblMemberPriv
	DROP CONSTRAINT FK_tblPriv_TO_tblMemberPriv; -- 권한 -> 회원 권한 목록

-- 회원 권한 목록
ALTER TABLE tblMemberPriv
	DROP CONSTRAINT FK_tblMember_TO_tblMemberPriv; -- 회원 -> 회원 권한 목록

-- 관리자 권한 목록
ALTER TABLE tblAdminPriv
	DROP CONSTRAINT FK_tblPriv_TO_tblAdminPriv; -- 권한 -> 관리자 권한 목록

-- 관리자 권한 목록
ALTER TABLE tblAdminPriv
	DROP CONSTRAINT FK_tblAdmin_TO_tblAdminPriv; -- 관리자 -> 관리자 권한 목록

-- 사용자
ALTER TABLE tblUser
	DROP CONSTRAINT FK_tblMember_TO_tblUser; -- 회원 -> 사용자

-- 사용자
ALTER TABLE tblUser
	DROP CONSTRAINT FK_tblAdmin_TO_tblUser; -- 관리자 -> 사용자

-- 나의 카드
ALTER TABLE tblMyCard
	DROP CONSTRAINT FK_tblMember_TO_tblMyCard; -- 회원 -> 나의 카드

-- 나의 카드
ALTER TABLE tblMyCard
	DROP CONSTRAINT FK_tblCardInformation_TO_tblMyCard; -- 카드 정보 -> 나의 카드

-- 변동 사유 카테고리
ALTER TABLE tblReasonChangeCategory
	DROP CONSTRAINT FK_tblMyCard_TO_tblReasonChangeCategory; -- 나의 카드 -> 변동 사유 카테고리

-- 변동 사유 카테고리
ALTER TABLE tblReasonChangeCategory
	DROP CONSTRAINT FK_tblReasonsChangeList_TO_tblReasonChangeCategory; -- 변동 사유 목록 -> 변동 사유 카테고리

-- 고정 입출금 여부
ALTER TABLE tblFixedDepositWithdrawalCheck
	DROP CONSTRAINT FK_tblFixedFluctuationPeriod_TO_tblFixedDepositWithdrawalCheck; -- 고정 변동 기간 -> 고정 입출금 여부

-- 회원 금융 정보
ALTER TABLE tblMemberFinance
	DROP CONSTRAINT FK_tblProperty_TO_tblMemberFinance; -- 자산 -> 회원 금융 정보

-- 회원 금융 정보
ALTER TABLE tblMemberFinance
	DROP CONSTRAINT FK_tblDebt_TO_tblMemberFinance; -- 부채 -> 회원 금융 정보

-- 회원 금융 정보
ALTER TABLE tblMemberFinance
	DROP CONSTRAINT FK_tblMember_TO_tblMemberFinance; -- 회원 -> 회원 금융 정보

-- 뉴스 카테고리 목록
ALTER TABLE tblNewsCategoryList
	DROP CONSTRAINT FK_tblNews_TO_tblNewsCategoryList; -- 뉴스 -> 뉴스 카테고리 목록

-- 뉴스 카테고리 목록
ALTER TABLE tblNewsCategoryList
	DROP CONSTRAINT FK_tblAccCategory_TO_tblNewsCategoryList; -- 가계부 카테고리 -> 뉴스 카테고리 목록

-- 회원
ALTER TABLE tblMember
	DROP CONSTRAINT PK_tblMember; -- 회원 기본키

-- 설문조사
ALTER TABLE tblSurvey
	DROP CONSTRAINT PK_tblSurvey; -- 설문조사 기본키

-- 프로필 이미지
ALTER TABLE tblProfileimg
	DROP CONSTRAINT PK_tblProfileimg; -- 프로필 이미지 기본키

-- 게시판 카테고리
ALTER TABLE tblCategory
	DROP CONSTRAINT PK_tblCategory; -- 게시판 카테고리 기본키

-- 게시판
ALTER TABLE tblBoard
	DROP CONSTRAINT PK_tblBoard; -- 게시판 기본키

-- 게시글
ALTER TABLE tblPost
	DROP CONSTRAINT PK_tblPost; -- 게시글 기본키

-- 댓글
ALTER TABLE tblComments
	DROP CONSTRAINT PK_tblComments; -- 댓글 기본키

-- 가계부 카테고리
ALTER TABLE tblAccCategory
	DROP CONSTRAINT PK_tblAccCategory; -- 가계부 카테고리 기본키

-- 대댓글
ALTER TABLE tblReplyComments
	DROP CONSTRAINT PK_tblReplyComments; -- 대댓글 기본키

-- 권한
ALTER TABLE tblPriv
	DROP CONSTRAINT PK_tblPriv; -- 권한 기본키

-- 첨부 파일
ALTER TABLE tblAttachedFile
	DROP CONSTRAINT PK_tblAttachedFile; -- 첨부 파일 기본키

-- 가계부
ALTER TABLE tblAcc
	DROP CONSTRAINT PK_tblAcc; -- 가계부 기본키

-- 가계부 내용
ALTER TABLE tblAccInfo
	DROP CONSTRAINT PK_tblAccInfo; -- 가계부 내용 기본키

-- 키워드
ALTER TABLE tblKeyword
	DROP CONSTRAINT PK_tblKeyword; -- 키워드 기본키

-- 가계부 카테고리 목록
ALTER TABLE tblAccCategoryList
	DROP CONSTRAINT PK_tblAccCategoryList; -- 가계부 카테고리 목록 기본키

-- 구매 위시 목록
ALTER TABLE tblPurchaseWishList
	DROP CONSTRAINT PK_tblPurchaseWishList; -- 구매 위시 목록 기본키

-- 카드 정보
ALTER TABLE tblCardInformation
	DROP CONSTRAINT PK_tblCardInformation; -- 카드 정보 기본키

-- 카드 카테고리
ALTER TABLE tblCardCategory
	DROP CONSTRAINT PK_tblCardCategory; -- 카드 카테고리 기본키

-- 카드/가계부 카테고리 연결
ALTER TABLE tblCardAndAcc
	DROP CONSTRAINT PK_tblCardAndAcc; -- 카드/가계부 카테고리 연결 기본키

-- 카드 혜택 목록
ALTER TABLE tblListCardBenefits
	DROP CONSTRAINT PK_tblListCardBenefits; -- 카드 혜택 목록 기본키

-- 배너 이미지
ALTER TABLE tblBannerImage
	DROP CONSTRAINT PK_tblBannerImage; -- 배너 이미지 기본키

-- API
ALTER TABLE tblAPI
	DROP CONSTRAINT PK_tblAPI; -- API 기본키

-- 뉴스
ALTER TABLE tblNews
	DROP CONSTRAINT PK_tblNews; -- 뉴스 기본키

-- 금지어
ALTER TABLE tblBanWord
	DROP CONSTRAINT PK_tblBanWord; -- 금지어 기본키

-- 로그
ALTER TABLE tblLog
	DROP CONSTRAINT PK_tblLog; -- 로그 기본키

-- 관리자
ALTER TABLE tblAdmin
	DROP CONSTRAINT PK_tblAdmin; -- 관리자 기본키2

-- 회원 권한 목록
ALTER TABLE tblMemberPriv
	DROP CONSTRAINT PK_tblMemberPriv; -- 회원 권한 목록 기본키

-- 관리자 권한 목록
ALTER TABLE tblAdminPriv
	DROP CONSTRAINT PK_tblAdminPriv; -- 관리자 권한 목록 기본키

-- 사용자
ALTER TABLE tblUser
	DROP CONSTRAINT PK_tblUser; -- 사용자 기본키

-- 압박 강도
ALTER TABLE tblCompressionIntensity
	DROP CONSTRAINT PK_tblCompressionIntensity; -- 압박 강도 기본키

-- 나의 카드
ALTER TABLE tblMyCard
	DROP CONSTRAINT PK_tblMyCard; -- 나의 카드 기본키

-- 카드 타입
ALTER TABLE tblCardType
	DROP CONSTRAINT PK_tblCardType; -- 카드 타입 기본키

-- 변동 사유 카테고리
ALTER TABLE tblReasonChangeCategory
	DROP CONSTRAINT PK_tblReasonChangeCategory; -- 변동 사유 카테고리 기본키

-- 고정 변동 기간
ALTER TABLE tblFixedFluctuationPeriod
	DROP CONSTRAINT PK_tblFixedFluctuationPeriod; -- 고정 변동 기간 기본키2

-- 고정 입출금 여부
ALTER TABLE tblFixedDepositWithdrawalCheck
	DROP CONSTRAINT PK_tblFixedDepositWithdrawalCheck; -- 고정 입출금 여부 기본키

-- 입출금 상태
ALTER TABLE tblDepositWithdrawalStatus
	DROP CONSTRAINT PK_tblDepositWithdrawalStatus; -- 입출금 상태 기본키

-- 자산
ALTER TABLE tblProperty
	DROP CONSTRAINT PK_tblProperty; -- 자산 기본키

-- 부채
ALTER TABLE tblDebt
	DROP CONSTRAINT PK_tblDebt; -- 부채 기본키

-- 회원 금융 정보
ALTER TABLE tblMemberFinance
	DROP CONSTRAINT PK_tblMemberFinance; -- 회원 금융 정보 기본키

-- 변동 사유 목록
ALTER TABLE tblReasonsChangeList
	DROP CONSTRAINT PK_tblReasonsChangeList; -- 변동 사유 목록 기본키

-- 뉴스 카테고리 목록
ALTER TABLE tblNewsCategoryList
	DROP CONSTRAINT PK_tblNewsCategoryList; -- 뉴스 카테고리 목록 기본키

-- 저축 기간
ALTER TABLE tblSavingsPeriod
	DROP CONSTRAINT PK_tblSavingsPeriod; -- 저축 기간 기본키

-- 회원
DROP TABLE tblMember;

-- 설문조사
DROP TABLE tblSurvey;

-- 프로필 이미지
DROP TABLE tblProfileimg;

-- 게시판 카테고리
DROP TABLE tblCategory;

-- 게시판
DROP TABLE tblBoard;

-- 게시글
DROP TABLE tblPost;

-- 댓글
DROP TABLE tblComments;

-- 가계부 카테고리
DROP TABLE tblAccCategory;

-- 대댓글
DROP TABLE tblReplyComments;

-- 권한
DROP TABLE tblPriv;

-- 첨부 파일
DROP TABLE tblAttachedFile;

-- 가계부
DROP TABLE tblAcc;

-- 가계부 내용
DROP TABLE tblAccInfo;

-- 키워드
DROP TABLE tblKeyword;

-- 가계부 카테고리 목록
DROP TABLE tblAccCategoryList;

-- 구매 위시 목록
DROP TABLE tblPurchaseWishList;

-- 카드 정보
DROP TABLE tblCardInformation;

-- 카드 카테고리
DROP TABLE tblCardCategory;

-- 카드/가계부 카테고리 연결
DROP TABLE tblCardAndAcc;

-- 카드 혜택 목록
DROP TABLE tblListCardBenefits;

-- 배너 이미지
DROP TABLE tblBannerImage;

-- API
DROP TABLE tblAPI;

-- 뉴스
DROP TABLE tblNews;

-- 금지어
DROP TABLE tblBanWord;

-- 로그
DROP TABLE tblLog;

-- 관리자
DROP TABLE tblAdmin;

-- 회원 권한 목록
DROP TABLE tblMemberPriv;

-- 관리자 권한 목록
DROP TABLE tblAdminPriv;

-- 사용자
DROP TABLE tblUser;

-- 압박 강도
DROP TABLE tblCompressionIntensity;

-- 나의 카드
DROP TABLE tblMyCard;

-- 카드 타입
DROP TABLE tblCardType;

-- 변동 사유 카테고리
DROP TABLE tblReasonChangeCategory;

-- 고정 변동 기간
DROP TABLE tblFixedFluctuationPeriod;

-- 고정 입출금 여부
DROP TABLE tblFixedDepositWithdrawalCheck;

-- 입출금 상태
DROP TABLE tblDepositWithdrawalStatus;

-- 자산
DROP TABLE tblProperty;

-- 부채
DROP TABLE tblDebt;

-- 회원 금융 정보
DROP TABLE tblMemberFinance;

-- 변동 사유 목록
DROP TABLE tblReasonsChangeList;

-- 뉴스 카테고리 목록
DROP TABLE tblNewsCategoryList;

-- 저축 기간
DROP TABLE tblSavingsPeriod;

commit;