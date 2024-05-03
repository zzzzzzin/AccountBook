--대댓글 tblReplyComments
insert into tblReplyComments (seq, seqComments, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) 
values (1, 1, 1, '감사합니다.', '2024-04-28', 0, 0, 0);

insert into tblReplyComments (seq, seqComments, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) 
values (2, 2, 2, '감사합니다.', '2024-04-28', 0, 0, 0);

insert into tblReplyComments (seq, seqComments, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) 
values (3, 3, 6, '화이팅!', '2024-04-28', 0, 0, 0);

insert into tblReplyComments (seq, seqComments, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) 
values (4, 4, 7, '문문문어어어', '2024-04-28', 0, 0, 0);

insert into tblReplyComments (seq, seqComments, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) 
values (5, 6, 7, '운영자님 ㄳ', '2024-04-28', 0, 0, 0);


--가계부 카테고리 목록 tblAccCategoryList
INSERT INTO tblAccCategoryList(seq,seqAccCategory,seqAccInfo) VALUES (1,33,1);
INSERT INTO tblAccCategoryList(seq,seqAccCategory,seqAccInfo) VALUES (2,35,2);
INSERT INTO tblAccCategoryList(seq,seqAccCategory,seqAccInfo) VALUES (3,8,3);
INSERT INTO tblAccCategoryList(seq,seqAccCategory,seqAccInfo) VALUES (4,39,4);
INSERT INTO tblAccCategoryList(seq,seqAccCategory,seqAccInfo) VALUES (5,2,5);
INSERT INTO tblAccCategoryList(seq,seqAccCategory,seqAccInfo) VALUES (6,38,6);
INSERT INTO tblAccCategoryList(seq,seqAccCategory,seqAccInfo) VALUES (7,5,7);
INSERT INTO tblAccCategoryList(seq,seqAccCategory,seqAccInfo) VALUES (8,35,8);
INSERT INTO tblAccCategoryList(seq,seqAccCategory,seqAccInfo) VALUES (9,33,9);
INSERT INTO tblAccCategoryList(seq,seqAccCategory,seqAccInfo) VALUES (10,35,10);
INSERT INTO tblAccCategoryList(seq,seqAccCategory,seqAccInfo) VALUES (11,5,11);

--테스트
INSERT INTO tblAccCategoryList(seq,seqAccCategory,seqAccInfo) VALUES (12,39,12);
INSERT INTO tblAccCategoryList(seq,seqAccCategory,seqAccInfo) VALUES (13,33,13);



commit;