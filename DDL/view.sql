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
create or replace view vwMyComment
as
select
me.id me_id,
me.pw me_pw,
me.name me_name,
me.nickname me_nickname,
me.phoneNumber me_phoneNumber,
me.nss me_nss,
me.gender me_gender,
me.reportCount me_reportCount,
me.seqSurvey me_seqSurvey,
me.seqProfileimg me_seqProfileimg,
us.seq us_seq,
us.idAdmin us_idAdmin,
po.seq po_seq,
po.seqBoard po_seqBoard,
po.title po_title,
po.content po_content,
po.writeDate po_writeDate,
po.editDate po_editDate,
po.viewCount po_viewCount,
po.likeCount po_likeCount,
po.dislikeCount po_dislikeCount,
po.reportCount po_reportCount,
po.secretCheck po_secretCheck,
po.blindCheck po_blindCheck,
co.seq co_seq,
co.seqUser co_seqUser,
co.content co_content,
co.writeDate co_writeDate,
co.likeCount co_likeCount,
co.dislikeCount co_dislikeCount,
co.reportCount co_reportCount,
rc.seq rc_seq,
rc.seqComments rc_seqComments,
rc.seqUser rc_seqUser,
rc.content rc_content,
rc.writeDate rc_writeDate,
rc.likeCount rc_likeCount,
rc.dislikeCount rc_dislikeCount,
rc.reportCount rc_reportCount
from tblMember me
    inner join tblUser us
        on me.id = us.idMember
            full outer join tblPost po
                on po.seqUser = us.seq
                    left outer join tblComments co
                        on co.seqUser = us.seq
                            left outer join tblReplyComments rc
                                on rc.seqUser = us.seq;  
select * from vwMyComment;
select * from tblComments; --4
select * from tblReplyComments; --3
select * from tblUser; --6~9

--카드 정보
--vwCardInfo
--tblCardInformation, tblListCardBenefits, tblCardCategory, tblCardType, tblCardAndAcc
create or replace view vwCardInfo
as
select
cf.seq cf_seq,
cf.name cf_name,
cf.explanation cf_explanation,
cf.annualFee cf_annualFee,
cf.overseasUse cf_overseasUse,
cf.cardCompany cf_cardCompany,
cf.fileLink cf_fileLink,
lcb.seq lcb_seq,
cc.seq cc_seq,
cc.name cc_name,
ct.seq ct_seq,
ct.type ct_type,
caa.seq caa_seq,
caa.seqAccCategory caa_seqAccCategory
from tblCardInformation cf
    inner join tblListCardBenefits lcb
        on cf.seq = lcb.seqCardInformation
            inner join tblCardCategory cc
                on cc.seq = lcb.seqCardCategory
                    inner join tblCardType ct
                        on ct.seq = cf.seqCardType
                            inner join tblCardAndAcc caa
                                on caa.seqCardCategory = cc.seq;
        

--카드 추천
--vwCardList
--vwCardInfo, tblMyCard, tblMember
create or replace view vwCardList
as
select
vcf.cf_seq vcf_cf_seq,
vcf.cf_name vcf_cf_name,
vcf.cf_explanation vcf_cf_explanation,
vcf.cf_annualFee vcf_cf_annualFee,
vcf.cf_overseasUse vcf_cf_overseasUse,
vcf.cf_cardCompany vcf_cf_cardCompany,
vcf.cf_fileLink vcf_cf_fileLink,
vcf.lcb_seq vcf_lcb_seq,
vcf.cc_seq vcf_cc_seq,
vcf.cc_name vcf_cc_name,
vcf.ct_seq vcf_ct_seq,
vcf.ct_type vcf_ct_type,
vcf.caa_seq vcf_caa_seq,
mc.seq mc_seq,
mc.cardNumber mc_cardNumber,
mc.alias mc_alias,
mc.validity mc_validity,
me.id me_id,
me.pw me_pw,
me.name me_name,
me.nickname me_nickname,
me.phoneNumber me_phoneNumber,
me.nss me_nss,
me.gender me_gender,
me.reportCount me_reportCount,
me.seqSurvey me_seqSurvey,
me.seqProfileimg me_seqProfileimg
from vwCardInfo vcf
    inner join tblMyCard mc
        on vcf.cf_seq = mc.seqCardInformation
            inner join tblMember me
                on me.id = mc.idMember;


--카드 조회
--vwMyCard
--tblMember, tblMyCard, tblCardInformation
create or replace view vwMyCard
as
select
me.id me_id,
me.pw me_pw,
me.name me_name,
me.nickname me_nickname,
me.phoneNumber me_phoneNumber,
me.nss me_nss,
me.gender me_gender,
me.reportCount me_reportCount,
me.seqSurvey me_seqSurvey,
me.seqProfileimg me_seqProfileimg,
mc.seq mc_seq,
mc.cardNumber mc_cardNumber,
mc.alias mc_alias,
mc.validity mc_validity,
cf.seq cf_seq,
cf.name cf_name,
cf.explanation cf_explanation,
cf.annualFee cf_annualFee,
cf.overseasUse cf_overseasUse,
cf.cardCompany cf_cardCompany,
cf.fileLink cf_fileLink,
cf.seqCardType cf_seqCardType
from tblMember me
    inner join tblMyCard mc
        on me.id = mc.idMember
            inner join tblCardInformation cf
                on cf.seq = mc.seqCardInformation;


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