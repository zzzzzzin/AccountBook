--사용자
--vwUser 
--tblMember, tblAdmin, tblPriv, tblMemberPriv, tblAdminPriv, tblProfileim
create or replace view vwUser
as select
    pri.seq as pri_seq,
    pri.name as pri_name,
    mp.seq as mp_seq,
    mp.seqPriv as mp_seqPriv,
    ap.seq as ad_seq, 
    ap.seqPriv as ad_seqPriv,
    me.id as me_id,
    me.pw as me_pw,
    me.name as me_name,
    me.nickname as me_nickname,
    me.phoneNumber as me_phoneNumber,
    me.ssn as me_ssn,
    me.gender as me_gender,
    me.reportCount as me_reportCount,
    me.seqSurvey as me_seqSurvey,
    me.seqProfileimg as me_seqProfileimg,
    ad.id as ad_id,
    ad.pw as ad_pw,
    ad.nickname as ad_nickname
from tblPriv pri 
left join tblMemberPriv mp on mp.seqPriv = pri.seq
    left join tblAdminPriv ap on ap.seqPriv = pri.seq
        left join tblMember me on me.id = mp.idmember
            left join tblAdmin ad on ad.id = ap.idAdmin;








--개인정보
--vwMemberInfo 
--tblMember, tblProfileimg
create or replace view vwMemberInfo
as select 
    *
from tblMember me
inner join tblProfileimg pf on me.seqProfileimg = pf.seq;

--설문조사
--vwSurvey
--tblMember, tblSurvey, tblSavingsPeriod, tblCompressionIntensity
create or replace view vwSurvey
as select su.seq as su_seq,
          su.monthlyPaycheck as su_monthlyPaycheck,
          su.savingsGoals as su_savingsGoals,
          ci.seq as ci_seq,
          ci.intensity as ci_intensity,
          sp.seq as sp_seq,
          sp.period as sp_period,
          me.id as me_id,
          me.pw as me_pw,
          me.name as me_name,
          me.nickname as me_nickname,
          me.phoneNumber as me_phoneNumber,
          me.ssn as me_ssn,
          me.gender as me_gender,
          me.reportCount as me_reportCount
from tblMember me
inner join tblSurvey su on me.seqSurvey = su.seq
left outer join tblSavingsPeriod sp on sp.seq = su.seqSavingsPeriod
        left outer join tblCompressionIntensity ci on ci.seq = su.seqCompressionIntensity;


--게시물
--vwBoard
--tblPost, tblAttachedFile, tblBoard, tblCategory, tblMemberPriv, tblAdminPriv, tblAdmin, tblMember, tblUser, tblProfileimg, tblReplyComments, tblComments
create or replace view vwBoard
as select
    po.seq as po_seq,
    po.seqUser as po_seqUser,
    po.title as po_title,
    po.content as po_content,
    po.writeDate as po_writeDate,
    po.editDate as po_editDate,
    po.viewCount as po_viewCount,
    po.likeCount as po_likeCount,
    po.dislikeCount as po_dislikeCount,
    po.reportCount as po_reportCount,
    po.secretCheck as po_secretCheck,
    po.blindCheck as po_blindCheck,
    bo.seq as bo_seq,
    bo.seqCategory as bo_seqCategory,
    ca.seq as ca_seq,
    ca.name as ca_name,
    us.seq as us_seq,
    me.id as me_id,
    me.pw as me_pw,
    me.name as me_name,
    me.nickname as me_nickname,
    me.phoneNumber as me_phoneNumber,
    me.ssn as me_ssn,
    me.gender as me_gender,
    me.reportCount as me_reportCount,
    me.seqSurvey as me_seqSurvey,
    img.seq as img_seq,
    img.fileName as img_fileName,
    img.fileLink as img_fileLink,
    mp.seq as me_seq,
    mp.seqPriv as mp_seqPriv,
    ad.id as ad_id,
    ad.pw as ad_pw,
    ad.nickname as ad_nickname,
    ap.seq as ap_seq,
    ap.seqPriv as ap_seqPriv,
    co.seq as co_seq,
    co.seqUser  as co_seqUser,
    co.content as co_content,
    co.writeDate as co_writeDate,
    co.likeCount as co_likeCount,
    co.dislikeCount as co_dislikeCount,
    co.reportCount as co_reportCount,
    rc.seq as rc_seq,
    rc.seqComments as rc_seqComments,
    rc.seqUser as rc_seqUser,
    rc.content as rc_content,
    rc.writeDate as rc_writeDate,
    rc.likeCount as rc_likeCount,
    rc.dislikeCount as rc_dislikeCount,
    rc.reportCount as rc_reportCount,
    af.seq as af_seq,
    af.seqPost as af_seqPost,
    af.fileName as af_fileName,
    af.fileLink as af_fileLink
from tblPost po
inner join tblUser us on po.seqUser = us.seq
    left join tblMember me on me.id = us.idMember
        left join tblMemberPriv mp on mp.idMember = me.id
            left join tblAdmin ad on ad.id = us.idAdmin
                left join tblAdminPriv ap on ap.idAdmin = ad.id
                    left join tblComments co on co.seqPost = po.seq
                        left join tblReplyComments rc on rc.seqComments = co.seq
                            left join tblAttachedFile af on af.seqPost = po.seq
                                inner join tblBoard bo on bo.seq = po.seqBoard
                                    inner join tblCategory ca on ca.seq = bo.seqCategory
                                        left join tblProfileimg img on img.seq = me.seqProfileimg;





--vwboard2(vwboard에서 comment 부분 빠짐)
create or replace view vwboard2
as select
    po.seq as po_seq,
    po.seqUser as po_seqUser,
    po.title as po_title,
    po.content as po_content,
    po.writeDate as po_writeDate,
    po.editDate as po_editDate,
    po.viewCount as po_viewCount,
    po.likeCount as po_likeCount,
    po.dislikeCount as po_dislikeCount,
    po.reportCount as po_reportCount,
    po.secretCheck as po_secretCheck,
    po.blindCheck as po_blindCheck,
    bo.seq as bo_seq,
    bo.seqCategory as bo_seqCategory,
    ca.seq as ca_seq,
    ca.name as ca_name,
    us.seq as us_seq,
    me.id as me_id,
    me.pw as me_pw,
    me.name as me_name,
    me.nickname as me_nickname,
    me.phoneNumber as me_phoneNumber,
    me.ssn as me_ssn,
    me.gender as me_gender,
    me.reportCount as me_reportCount,
    me.seqSurvey as me_seqSurvey,
    img.seq as img_seq,
    img.fileName as img_fileName,
    img.fileLink as img_fileLink,
    mp.seq as me_seq,
    mp.seqPriv as mp_seqPriv,
    ad.id as ad_id,
    ad.pw as ad_pw,
    ad.nickname as ad_nickname,
    ap.seq as ap_seq,
    ap.seqPriv as ap_seqPriv,
    af.seq as af_seq,
    af.seqPost as af_seqPost,
    af.fileName as af_fileName,
    af.fileLink as af_fileLink
from tblPost po
inner join tblUser us on po.seqUser = us.seq
    left join tblMember me on me.id = us.idMember
        left join tblMemberPriv mp on mp.idMember = me.id
            left join tblAdmin ad on ad.id = us.idAdmin
                left join tblAdminPriv ap on ap.idAdmin = ad.id
                    left join tblAttachedFile af on af.seqPost = po.seq
                        inner join tblBoard bo on bo.seq = po.seqBoard
                            inner join tblCategory ca on ca.seq = bo.seqCategory
                                        left join tblProfileimg img on img.seq = me.seqProfileimg;


--내가 쓴 글
--vwMyPost
--tblMember, tblUser, tblPost
create or replace view vwMyPost
as select po.seq as po_seq,
          po.seqBoard as po_seqBoard,
          po.seqUser as po_seqUser,
          po.title,
          po.content,
          po.writeDate,
          po.editDate,
          po.viewCount,
          po.likeCount,
          po.dislikeCount,
          po.reportCount,
          po.secretCheck,
          po.blindCheck,
          us.seq as us_seq,
          us.idMember as us_idMember,
          me.id as me_id,
          me.pw as me_pw,
          me.name as me_name,
          me.nickname as me_nickname,
          me.phoneNumber as me_phoneNumber,
          me.ssn as me_ssn,
          me.gender as me_gender,
          me.reportCount as me_reportCount,
          me.seqSurvey as me_seqSurvey,
          me.seqProfileimg as me_seqProfileimg         
from tblPost po 
inner join tblUser us on us.seq = po.seqUser
    inner join tblMember me on me.id = us.idMember;


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
me.ssn me_ssn,
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
mc.validity
mc_validity,
me.id me_id,
me.pw me_pw,
me.name me_name,
me.nickname me_nickname,
me.phoneNumber me_phoneNumber,
me.ssn me_ssn,
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
me.ssn me_ssn,
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
create or replace view vwAccountBookCategory as (
    select 
        ac.seq as ac_seq,
        ac.name as ac_name,
        ke.seq as ke_seq,
        ke.content as ke_content,
        caa.seq as caa_seq,
        caa.seqCardCategory as caa_seqCardCategory, --tblCardCategory seq = fk
        acl.seq as acl_seq,
        acl.seqAccInfo as acl_seqAccInfo -- tblAccInfo seq = fk - 연결점
    from tblAccCategory ac
        inner join tblKeyWord ke 
        on ac.seq = ke.seqAccCategoryNumber
            inner join tblCardAndAcc caa 
            on ac.seq = caa.seqAccCategory
                inner join tblAccCategoryList acl 
                on ac.seq = acl.seqAccCategory);


--가계부 내용
--vwAcc
--tblAcc, tblAccInfo, tblFixedDepositWithdrawalCheck, tblFixedFluctuationPeriod, tblMyCard, tblReasonChangeCategory, tblReasonsChangeList, tblPurchaseWishList
create or replace view vwAcc as (
select 
    acc.seq as acc_seq,
    acc.idMember as acc_idMember,
    ai.seq as ai_seq,
    ai.content as ai_content,
    ai.accInfoDate as ai_accInfoDate,
    ai.price as ai_price,
    ai.location as ai_location,
    rcc.seq as rcc_seq,
    rcl.seq as rcl_seq,
    rcl.content as rcl_content,
    mc.seq as mc_seq,
    mc.cardNumber as mc_cardNumber,
    mc.alias as mc_alias,
    mc.validity as mc_validity,
    fdw.seq as fdw_seq,
    fdw.content as fdw_content,
    ffp.seq as ffp_seq,
    ffp.period as ffp_period
from tblAcc acc
    inner join tblAccInfo ai
    on acc.seq = ai.seqAcc
        inner join tblReasonChangeCategory rcc
        on ai.seqReasonChangeCategory = rcc.seq
         inner join tblReasonsChangeList rcl
         on rcc.seqReasonsChangeList = rcl.seq
            inner join tblMyCard mc
            on rcc.seqMyCard = mc.seq
                inner join tblFixedDepositWithdrawalCheck fdw
                on ai.seqFixedFluctuationCheck= fdw.seq
                    inner join tblFixedFluctuationPeriod ffp
                    on fdw.seqFixedFluctuationPeriod = ffp.seq);
