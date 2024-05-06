--첨부 파일 tblAttachedFile
select * from tblPost;
insert into tblAttachedFile (seq, seqPost, fileName, fileLink) 
    values (1, 1, '공지사항_1', '1111');
insert into tblAttachedFile (seq, seqPost, fileName, fileLink) 
    values (2, 2, '공지사항_2', '2222');
insert into tblAttachedFile (seq, seqPost, fileName, fileLink) 
    values (3, 3, '질문 파일', '3333');
insert into tblAttachedFile (seq, seqPost, fileName, fileLink) 
    values (4, 6, '건의사항', '4444');
insert into tblAttachedFile (seq, seqPost, fileName, fileLink) 
    values (5, 7, '첨부파일 이미지', '5555');

--댓글 tblComments
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) 
values (1, 1, 6, '확인', '2024-04-26', 0, 0, 0);

insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) 
values (2, 2, 7, '확인 했습니다.', '2024-04-26', 0, 0, 0);

insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) 
values (3, 3, 7, '화이팅 하세요.', '2024-04-27', 1, 0, 0);

insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) 
values (4, 5, 8, '나도 문어', '2024-04-27', 1, 1, 0);

insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) 
values (5, 6, 1, '행복합니다.', '2024-04-28', 2, 1, 0);

insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) 
values (6, 7, 1, '행복합니다. 222', '2024-04-28', 2, 1, 0);

insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) 
values (7, 8, 2, '어서 오세요', '2024-04-28', 0, 0, 0);

insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) 
values (8, 9, 2, '어서 오세요', '2024-04-29', 0, 0, 0);

--가계부 내용 tblAccInfo
INSERT INTO tblAccInfo(SEQ,CONTENT,ACCINFODATE,PRICE,LOCATION,SEQACC,SEQREASONCHANGECATEGORY,SEQFIXEDFLUCTUATIONCHECK,SEQDEPOSITWITHDRAWALSTATUS) VALUES (1,'교촌치킨을 시켜서 넷플릭스를 봤다.','2024-01-01',45000,'교촌치킨',1,2,0,2);
INSERT INTO tblAccInfo(SEQ,CONTENT,ACCINFODATE,PRICE,LOCATION,SEQACC,SEQREASONCHANGECATEGORY,SEQFIXEDFLUCTUATIONCHECK,SEQDEPOSITWITHDRAWALSTATUS) VALUES (2,'야외세차장','2024-01-21',10000,'반짝반짝세차장',1,1,0,2);
INSERT INTO tblAccInfo(SEQ,CONTENT,ACCINFODATE,PRICE,LOCATION,SEQACC,SEQREASONCHANGECATEGORY,SEQFIXEDFLUCTUATIONCHECK,SEQDEPOSITWITHDRAWALSTATUS) VALUES (3,'월급이 천만원으로 올라서 기분이 좋다.','2024-04-05',10000000,'네이버',1,10,0,1);
INSERT INTO tblAccInfo(SEQ,CONTENT,ACCINFODATE,PRICE,LOCATION,SEQACC,SEQREASONCHANGECATEGORY,SEQFIXEDFLUCTUATIONCHECK,SEQDEPOSITWITHDRAWALSTATUS) VALUES (4,'카페가서 소개팅을 했는데 망했다.','2024-04-05',15200,'스타벅스',1,2,0,2);
INSERT INTO tblAccInfo(SEQ,CONTENT,ACCINFODATE,PRICE,LOCATION,SEQACC,SEQREASONCHANGECATEGORY,SEQFIXEDFLUCTUATIONCHECK,SEQDEPOSITWITHDRAWALSTATUS) VALUES (5,'헬스장에 다녀 몸짱이 될거다.','2024-04-08',320000,'단백질헬스장',1,2,2,2);
INSERT INTO tblAccInfo(SEQ,CONTENT,ACCINFODATE,PRICE,LOCATION,SEQACC,SEQREASONCHANGECATEGORY,SEQFIXEDFLUCTUATIONCHECK,SEQDEPOSITWITHDRAWALSTATUS) VALUES (6,'월세','2024-04-10',500000,'건물주인',1,3,1,2);
INSERT INTO tblAccInfo(SEQ,CONTENT,ACCINFODATE,PRICE,LOCATION,SEQACC,SEQREASONCHANGECATEGORY,SEQFIXEDFLUCTUATIONCHECK,SEQDEPOSITWITHDRAWALSTATUS) VALUES (7,'차가 고장나서 십이만원에 렌트했다.','2024-04-25',120000,'싸다렌터카',1,3,3,2);
INSERT INTO tblAccInfo(SEQ,CONTENT,ACCINFODATE,PRICE,LOCATION,SEQACC,SEQREASONCHANGECATEGORY,SEQFIXEDFLUCTUATIONCHECK,SEQDEPOSITWITHDRAWALSTATUS) VALUES (8,'타이어를 수리했다.','2024-03-23',420000,'타어어뱅크',2,5,0,2);
INSERT INTO tblAccInfo(SEQ,CONTENT,ACCINFODATE,PRICE,LOCATION,SEQACC,SEQREASONCHANGECATEGORY,SEQFIXEDFLUCTUATIONCHECK,SEQDEPOSITWITHDRAWALSTATUS) VALUES (9,'치킨 23000원','2024-04-29',23000,'BBQ',2,4,0,2);
INSERT INTO tblAccInfo(SEQ,CONTENT,ACCINFODATE,PRICE,LOCATION,SEQACC,SEQREASONCHANGECATEGORY,SEQFIXEDFLUCTUATIONCHECK,SEQDEPOSITWITHDRAWALSTATUS) VALUES (10,'카센터','2023-12-12',130000,'다고쳐렌터카',3,6,0,2);
INSERT INTO tblAccInfo(SEQ,CONTENT,ACCINFODATE,PRICE,LOCATION,SEQACC,SEQREASONCHANGECATEGORY,SEQFIXEDFLUCTUATIONCHECK,SEQDEPOSITWITHDRAWALSTATUS) VALUES (11,'택시','2023-12-30',30900,'주식회사택시',4,11,0,2);

--테스트용
INSERT INTO tblAccInfo(SEQ,CONTENT,ACCINFODATE,PRICE,LOCATION,SEQACC,SEQREASONCHANGECATEGORY,SEQFIXEDFLUCTUATIONCHECK,SEQDEPOSITWITHDRAWALSTATUS) VALUES (12,'카페가서 소개팅을 했는데 망했다.','2024-03-28',15200,'스타벅스',1,2,0,2);
INSERT INTO tblAccInfo(SEQ,CONTENT,ACCINFODATE,PRICE,LOCATION,SEQACC,SEQREASONCHANGECATEGORY,SEQFIXEDFLUCTUATIONCHECK,SEQDEPOSITWITHDRAWALSTATUS) VALUES (13,'치킨 23000원','2024-03-20',23000,'BBQ',2,4,0,2);

INSERT INTO tblAccInfo(SEQ,CONTENT,ACCINFODATE,PRICE,LOCATION,SEQACC,SEQREASONCHANGECATEGORY,SEQFIXEDFLUCTUATIONCHECK,SEQDEPOSITWITHDRAWALSTATUS) VALUES (14,'월급','2024-05-05',10000000,'네이버',1,10,0,1);

commit;