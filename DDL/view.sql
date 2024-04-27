--사용자
--vwUser 
--tblMember, tblAdmin, tblPriv, tblMemberPriv, tblAdminPriv, tblProfileim

--개인정보
--vwMemberInfo 
--tblMember, tblProfileimg

--설문조사
--vwSurvey
--tblMember, tblSurvey, tblSavingsPeriod, tblCompressionIntensity


--게시물
--vwBoard
--tblPost, tblAttachedFile, tblBoard, tblCategory, tblMemberPriv, tblAdminPriv, tblAdmin, tblMember, tblUser, tblProfileimg, tblReplyComments, tblComments, tblBanWord

--내가 쓴 글
--vwMyPost
--tblMember, tblUser, tblPost

--내가 쓴 댓글
--vwMyComment
--tblMember, tblUser, tblComments, tblReplyComments, tblPost


--카드 정보
--vwCardInfo
--tblCardInformation, tblListCardBenefits, tblCardCategory, tblCardType, tblCardAndAcc

--카드 추천
--vwCardList
--vwCardInfo, tblMyCard, tblMember

--카드 조회
--vwMyCard
--tblMember, tblMyCard, tblCardInformation


--가계부 카테고리
--vwAccountBookCategory
--tblCardAndAcc, tblAccCategoryList, tblKeyWord, tblAccCategory

--가계부 내용
--vwAcc
--tblAcc, tblAccInfo, tblFixedDepositWithdrawalCheck, tblFixedFluctuationPeriod, tblMyCard, tblReasonChangeCategory, tblReasonsChangeList, tblPurchaseWishList

--사용자 금융 정보
--vwMemberFinance
--tblMemberFinance, tblProperty, tblDebt

--대시보드 정보
--vwAccContent
--tblNews, tblNewsCategoryList, vwAcc, vwSurvey, vwAccountBookCategory, vwMemberFinance