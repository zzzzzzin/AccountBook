--카카오 key 값 불러오기
select
key
from tblAPI
where name = '카카오';

SELECT ci.name, ci.cardcompany, ci.filelink 
	                     FROM tblcardinformation ci 
	                     INNER JOIN tblListCardBenefits lcb ON lcb.seqcardinformation = ci.seq 
	                     INNER JOIN tblCardCategory cc ON cc.seq = lcb.seqcardcategory 
	                     WHERE cc.name = '통신';
