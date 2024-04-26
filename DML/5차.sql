-- 게시글 tblPost(비밀글과 블라인드 여부는 0-보이기, 1-안보이기 로 통일)
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck) 
values (1, 1, 1, '공지사항 입니다.', '모두들 여름철 더위조심하시길 바랍니다.', '2024-04-26', null, 10, 3, 1, 0, 0, 0);

insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck) 
values (2, 1, 2, '두번째 공지사항 입니다.', '모두들 여름철 더위조심하시길 바랍니다.', '2024-04-27', null, 10, 4, 1, 0, 0, 0);

insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck) 
values (3, 2, 6, '개발자 질문 입니다.', '개발자 화이팅.', '2024-04-27', null, 10, 4, 0, 0, 0, 0);

insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck) 
values (4, 2, 6, '욕입니다.', '욕 합니다. 이건 협박입니다.', '2024-04-27', null, 10, 4, 0, 0, 0, 1);

insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck) 
values (5, 2, 7, '나는 문어.', '꿈을 꾸는 문어', '2024-04-27', null, 10, 2, 0, 0, 0, 0);

insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck) 
values (6, 3, 7, '건의 사항 입니다.', '다들 행복했으면 좋겠습니다.', '2024-04-28', null, 12, 2, 0, 0, 1, 0);

insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck) 
values (7, 3, 8, '건의', '다들 행복했으면 좋겠습니다.', '2024-04-28', null, 8, 2, 0, 0, 1, 0);

insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck) 
values (8, 4, 9, '출석', '출석체크', '2024-04-28', null, 0, 0, 0, 0, 0, 0);

insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck) 
values (9, 4, 8, '출석', '출췍', '2024-04-29', null, 0, 0, 0, 0, 0, 0);

insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck) 
values (10, 4, 6, '욕', '욕욕욕욕욕욕욕', '2024-04-29', null, 0, 0, 0, 0, 0, 1);



--구매 위시 목록 tblPurchaseWishList

--변동 사유 카테고리 tblReasonChangeCategory

--가계부 내용 tblAccInfo
