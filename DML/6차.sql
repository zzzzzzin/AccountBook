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

insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) 
values (8, 9, 7, '어서 오세요', '', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (42, 528, 160, '오늘도 좋은 하루 되세요!', '2024-04-05', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (43, 325, 9, '이 글을 보니 감동이 밀려오네요.', '2024-04-12', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (44, 101, 164, '와우, 정말 멋진 생각이에요!', '2024-04-19', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (45, 439, 7, '이런 좋은 글을 공유해주셔서 감사합니다.', '2024-04-26', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (46, 217, 166, '여러분의 의견을 듣고 싶습니다.', '2024-04-03', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (47, 302, 8, '이 주제에 대해 더 깊이 알고 싶어요.', '2024-04-10', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (48, 487, 163, '정말 흥미로운 관점이네요!', '2024-04-17', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (49, 119, 10, '이 글을 읽고 많은 것을 배웠습니다.', '2024-04-24', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (50, 256, 165, '모두 함께 노력해야 할 문제인 것 같아요.', '2024-04-01', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (51, 394, 6, '이 글에 공감합니다. 잘 읽었습니다.', '2024-04-08', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (52, 528, 161, '우와, 정말 멋진 아이디어예요!', '2024-04-15', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (53, 327, 7, '이런 새로운 시도가 필요한 때입니다.', '2024-04-22', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (54, 102, 162, '모두가 공감할 수 있는 이야기네요.', '2024-04-29', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (55, 439, 9, '이 문제에 대해 깊이 고민해봐야겠어요.', '2024-04-06', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (56, 215, 164, '함께 힘을 모아 노력합시다!', '2024-04-13', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (57, 301, 10, '저도 이 의견에 동의합니다.', '2024-04-20', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (58, 486, 161, '이렇게 좋은 정보 공유해주셔서 감사해요.', '2024-04-27', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (59, 120, 8, '오늘도 배울 점이 많은 글이었습니다.', '2024-04-04', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (60, 254, 163, '누구나 공감할 수 있는 말씀이십니다.', '2024-04-11', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (61, 393, 8, '읽으면서 많은 생각이 들었어요.', '2024-04-18', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (62, 522, 160, '이런 좋은 취지에 함께하고 싶습니다.', '2024-04-25', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (63, 329, 9, '우리 모두 관심을 가져야 할 주제입니다.', '2024-04-02', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (64, 104, 160, '이 글을 계기로 바뀌었으면 좋겠네요.', '2024-04-09', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (65, 437, 7, '공감가는 말씀이세요. 감사합니다.', '2024-04-16', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (66, 213, 162, '이런 분들이 더 많아졌으면 좋겠어요.', '2024-04-23', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (67, 300, 8, '생각할 거리를 주는 좋은 포스팅이네요.', '2024-04-30', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (68, 485, 160, '공감하고 갑니다. 멋진 글 잘 봤습니다!', '2024-04-07', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (69, 122, 10, '이런 긍정적인 변화가 지속되길 바랍니다.', '2024-04-14', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (70, 252, 161, '여러분의 소중한 의견 감사드려요.', '2024-04-21', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (71, 391, 6, '이 문제의 해결책을 고민해봐야겠어요.', '2024-04-28', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (72, 526, 160, '따뜻한 마음이 느껴지는 포스팅입니다.', '2024-04-05', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (73, 331, 7, '이렇게 좋은 의견을 나눌 수 있어 기쁩니다.', '2024-04-12', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (74, 106, 161, '모두가 주목해야 할 내용이에요.', '2024-04-19', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (75, 435, 9, '함께 노력하는 모습이 보기 좋습니다.', '2024-04-26', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (76, 211, 160, '이 글을 읽으니 희망이 생기네요.', '2024-04-03', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (77, 299, 10, '모두에게 좋은 메시지를 주는 글입니다.', '2024-04-10', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (78, 484, 166, '저도 꼭 동참하고 싶은 활동이에요.', '2024-04-17', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (79, 124, 8, '모두가 행복해질 수 있는 방법이네요.', '2024-04-24', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (80, 250, 165, '이런 좋은 취지에 박수를 보냅니다.', '2024-04-01', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (81, 389, 8, '우리 사회에 꼭 필요한 운동이에요.', '2024-04-08', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (82, 525, 162, '많은 분들이 동참했으면 좋겠습니다.', '2024-04-15', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (83, 333, 9, '이런 긍정적인 에너지가 널리 퍼지길!', '2024-04-22', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (84, 108, 166, '함께하면 못할 일이 없을 것 같아요.', '2024-04-29', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (85, 433, 7, '이런 멋진 활동에 감사드립니다!', '2024-04-06', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (86, 209, 163, '정말 뜻깊은 하루가 될 것 같네요.', '2024-04-13', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (87, 298, 8, '모두가 마음을 모아 앞으로 나아갑시다.', '2024-04-20', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (88, 483, 161, '작은 실천이 세상을 변화시킬 수 있어요.', '2024-04-27', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (89, 126, 10, '얼마나 멋진 결과가 있을지 기대됩니다.', '2024-04-04', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (90, 248, 166, '우리의 마음이 하나 되는 순간이에요.', '2024-04-11', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (91, 387, 6, '이런 노력이 세상을 바꿀 거예요.', '2024-04-18', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (92, 524, 163, '포기하지 않는 모습이 아름답습니다.', '2024-04-25', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (93, 335, 7, '오늘의 이 자리가 새로운 시작이 되길!', '2024-04-02', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (94, 110, 160, '우리의 마음이 모이는 곳에 기적이 있어요.', '2024-04-12', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (95, 431, 9, '이런 멋진 분들과 함께해서 영광입니다.', '2024-04-23', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (96, 207, 166, '오늘 하루도 파이팅 하세요!', '2024-04-08', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (97, 297, 10, '이 자리에 함께 할 수 있어서 감사해요.', '2024-04-17', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (98, 482, 163, '서로 사랑하고 이해하는 세상을 꿈꿉니다.', '2024-04-28', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (99, 128, 8, '우리가 함께 만들어가는 더 나은 내일!', '2024-04-03', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (100, 246, 165, '포기하지 않는 우리들의 도전에 박수를!', '2024-04-14', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (101, 385, 8, '오늘도 함께 웃으며 하루를 보내세요!', '2024-04-16', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (102, 522, 161, '이런 긍정적인 변화가 더 많아지길 바라요.', '2024-04-23', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (103, 337, 9, '함께하는 우리의 힘을 믿습니다!', '2024-04-30', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (104, 112, 162, '서로 사랑하고 이해하는 세상을 향해!', '2024-04-07', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (105, 383, 7, '이 글을 읽는 모든 분들의 행복을 기원합니다.', '2024-04-14', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (106, 520, 162, '우리의 작은 행동이 큰 변화를 만들 수 있어요.', '2024-04-21', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (107, 339, 10, '모두의 마음을 하나로 모을 수 있는 계기가 되길!', '2024-04-28', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (108, 114, 160, '우리가 함께 만드는 아름다운 세상!', '2024-04-05', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (109, 381, 8, '긍정적인 마음가짐이 가장 큰 힘이 됩니다.', '2024-04-12', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (110, 518, 162, '서로 격려하고 응원하는 모습이 아름다워요.', '2024-04-19', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (111, 341, 9, '이런 좋은 영향력이 널리 퍼지길 기대합니다.', '2024-04-26', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (112, 116, 161, '우리 함께 더 나은 내일을 만들어 갈 수 있어요!', '2024-04-03', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (113, 379, 7, '모두의 행복이 가득한 하루 되시길 바랍니다.', '2024-04-10', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (114, 516, 165, '함께 웃고 함께 울며 서로 위로해주는 우리!', '2024-04-17', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (115, 343, 10, '이런 따뜻한 마음들이 세상을 바꿀 거예요.', '2024-04-24', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (116, 118, 166, '작은 친절이 누군가에겐 큰 힘이 될 수 있습니다.', '2024-04-01', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (117, 377, 8, '오늘 하루도 서로 사랑하며 보내세요!', '2024-04-08', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (118, 514, 163, '우리가 함께 손잡고 걸어가는 이 길이 희망입니다.', '2024-04-15', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (119, 345, 9, '긍정의 에너지가 가득한 하루 보내세요!', '2024-04-22', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (120, 120, 164, '서로에 대한 이해와 배려가 더 많아졌으면 좋겠어요.', '2024-04-29', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (121, 375, 7, '오늘도 좋은 일만 가득하시길 바랍니다!', '2024-04-06', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (122, 512, 161, '우리가 만드는 작은 변화가 세상을 움직입니다.', '2024-04-13', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (123, 347, 10, '모두의 마음속에 사랑이 가득하길 기도합니다.', '2024-04-20', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (124, 122, 162, '함께 웃을 수 있는 일상이 더 많아지길 바라요.', '2024-04-27', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (125, 373, 8, '긍정적인 시선으로 세상을 바라보는 것이 중요해요.', '2024-04-04', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (126, 510, 162, '우리의 연대와 협력이 더 큰 힘을 발휘할 거예요!', '2024-04-11', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (127, 349, 9, '서로 격려하고 응원해주는 멋진 하루 되세요!', '2024-04-18', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (128, 124, 160, '모두가 행복해지는 그 날까지 함께 노력해요!', '2024-04-25', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (129, 371, 7, '서로 사랑하고 이해하는 아름다운 세상을 꿈꿉니다.', '2024-04-02', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (130, 508, 167, '함께할수록 더 빛나는 우리의 힘!', '2024-04-09', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (131, 351, 10, '어려운 시기일수록 서로 의지하며 이겨내요.', '2024-04-16', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (132, 126, 168, '우리 함께 더 좋은 세상을 만들어갈 수 있습니다!', '2024-04-23', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (133, 369, 8, '긍정의 에너지로 가득 찬 하루 보내시길 바랍니다.', '2024-04-30', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (134, 506, 165, '서로 격려하고 응원하는 모습이 보기 좋아요!', '2024-04-07', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (135, 353, 9, '오늘 하루도 행복한 일만 가득하시길 바랍니다.', '2024-04-14', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (136, 128, 166, '함께 노력하는 우리의 모습이 자랑스럽습니다!', '2024-04-21', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (137, 367, 7, '긍정적인 마음가짐으로 서로 응원해주세요.', '2024-04-28', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (138, 504, 163, '우리의 작은 행동 하나하나가 세상을 바꿀 수 있어요.', '2024-04-05', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (139, 355, 10, '서로 사랑하고 이해하는 아름다운 하루 되세요!', '2024-04-12', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (140, 130, 164, '모두의 행복이 곧 나의 행복입니다.', '2024-04-19', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (141, 365, 6, '긍정의 힘으로 오늘도 힘차게 시작해봅시다!', '2024-04-26', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (142, 327, 7, '오늘도 즐겁게 하루를 시작해봐요!', '2024-04-18', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (143, 498, 6, '서로 사랑하고 이해하는 마음이 가장 중요해요.', '2024-04-05', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (144, 361, 8, '긍정적인 에너지가 가득한 하루 되세요!', '2024-04-22', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (145, 136, 9, '함께 손잡고 걸어가는 우리의 길이 아름답습니다.', '2024-04-11', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (146, 496, 10, '오늘 하루도 서로 응원하며 힘내세요!', '2024-04-29', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (147, 363, 7, '우리가 함께 만드는 더 나은 내일을 기대합니다.', '2024-04-08', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (148, 138, 6, '작은 친절이 모여 큰 기적을 만들어요.', '2024-04-25', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (149, 494, 8, '긍정의 힘으로 세상을 바꿔나가요!', '2024-04-14', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (150, 365, 9, '서로 격려하고 응원해주는 멋진 하루 되세요.', '2024-04-02', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (151, 140, 10, '우리 함께 웃으며 행복한 추억을 만들어요!', '2024-04-19', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (152, 492, 7, '모두의 마음속에 사랑이 가득하길 바랍니다.', '2024-04-06', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (153, 367, 6, '함께 노력하는 우리의 모습이 아름답습니다!', '2024-04-23', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (154, 142, 8, '오늘도 좋은 일만 가득하시길 바랍니다.', '2024-04-12', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (155, 490, 9, '우리가 서로 사랑하고 이해하는 세상을 만들어요!', '2024-04-30', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (156, 369, 10, '긍정적인 마음가짐으로 행복한 하루 보내세요.', '2024-04-09', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (157, 144, 7, '서로 응원하고 격려하는 우리가 최고예요!', '2024-04-26', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (158, 488, 6, '작은 행동 하나하나가 세상을 변화시킵니다.', '2024-04-15', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (159, 371, 8, '우리 함께 더 나은 세상을 향해 나아가요!', '2024-04-03', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (160, 146, 9, '모두가 행복해지는 그날까지 함께해요.', '2024-04-20', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (161, 486, 10, '긍정의 에너지로 가득 찬 하루 되길 바랍니다!', '2024-04-07', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (162, 373, 7, '서로 사랑하고 이해하며 살아가는 우리!', '2024-04-24', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (163, 148, 6, '오늘 하루도 즐겁고 행복하게 보내세요.', '2024-04-13', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (164, 484, 8, '우리가 함께 만드는 아름다운 추억이 최고죠!', '2024-04-01', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (165, 375, 9, '긍정적인 변화를 위해 우리 함께 노력해요.', '2024-04-18', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (166, 150, 10, '서로 응원하고 격려하는 멋진 우리가 되어요!', '2024-04-05', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (167, 482, 7, '우리의 작은 노력이 큰 결실을 맺을 거예요.', '2024-04-22', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (168, 377, 6, '오늘도 서로 사랑하며 살아가는 멋진 하루 되세요!', '2024-04-11', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (169, 152, 8, '함께 웃고 함께 울며 함께 성장하는 우리!', '2024-04-29', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (170, 480, 9, '긍정의 힘으로 오늘도 파이팅!', '2024-04-08', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (171, 379, 10, '우리가 함께 만들어가는 더 나은 내일을 기대해요.', '2024-04-25', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (172, 154, 7, '작은 친절이 모여 세상을 바꾸는 거죠.', '2024-04-14', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (173, 478, 6, '서로 격려하고 응원하는 아름다운 우리가 최고!', '2024-04-02', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (174, 381, 8, '우리 함께 웃으며 행복한 추억을 쌓아가요!', '2024-04-19', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (175, 156, 9, '모두의 마음속에 사랑과 평화가 가득하길!', '2024-04-06', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (176, 476, 10, '함께 노력하는 우리의 모습이 아름답습니다.', '2024-04-23', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (177, 383, 7, '오늘도 좋은 일만 가득할 거예요!', '2024-04-12', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (178, 158, 6, '우리가 서로 사랑하고 이해하는 세상을 만들어가요.', '2024-04-30', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (179, 474, 8, '긍정적인 마음가짐으로 행복한 하루 되세요!', '2024-04-09', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (180, 385, 9, '서로 응원하고 격려하는 우리가 될게요.', '2024-04-26', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (181, 160, 10, '작은 행동 하나하나가 큰 변화를 만들어요!', '2024-04-15', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (182, 472, 7, '우리 함께 더 나은 세상을 향해 전진해요.', '2024-04-03', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (183, 387, 6, '모두가 행복해지는 그날까지 힘차게!', '2024-04-20', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (184, 162, 8, '긍정의 에너지로 가득 찬 멋진 하루 되세요!', '2024-04-07', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (185, 470, 9, '서로 사랑하고 이해하며 살아가는 우리가 되어요.', '2024-04-24', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (186, 389, 10, '오늘 하루도 즐겁고 행복하게 보내세요!', '2024-04-13', 0, 0, 0);
insert into tblComments (seq, seqPost, seqUser, content, writeDate, likeCount, dislikeCount, reportCount) values (187, 164, 7, '우리가 함께 만드는 아름다운 추억들!', '2024-04-01', 0, 0, 0);
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