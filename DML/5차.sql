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
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values
(100, 2, 160,'일상 공유합니다!','오늘은 날씨가 참 좋네요. 산책하기 딱 좋은 날씨입니다.','2023-01-15',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (101, 2, 160,'새로운 취미를 시작했어요!','요즘 그림 그리는 것에 빠졌습니다. 너무 재밌어요!','2023-02-03',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (102, 2, 160,'여행 다녀왔습니다~','지난 주말에 제주도로 여행을 다녀왔어요. 눈이 너무 예뻤어요!','2023-03-20',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (103, 2, 160,'맛있는 음식 추천해요!','저는 최근에 마라탕에 빠졌어요. 매운 맛이 일품이에요!','2023-04-07',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (104, 2, 160,'운동 시작했습니다!','건강을 위해 요가를 시작했어요. 몸이 한결 가벼워진 느낌이에요.','2023-05-12',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (105, 2, 160,'책 추천합니다~','최근에 읽은 책 중에 "미래를 바꾸는 습관"이라는 책이 인상 깊었어요.','2023-06-25',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (106, 2, 160,'영화 감상 후기','어제 "라라랜드"를 봤는데 정말 감동적이었어요. 음악이 너무 좋았어요.','2023-07-08',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (107, 2, 160,'새로운 프로젝트 시작!','회사에서 새로운 프로젝트를 시작했어요. 열심히 해야겠어요!','2023-08-17',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (108, 2, 160,'오늘의 일상','평범한 하루였지만 소소한 행복을 느꼈어요.','2023-09-01',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (109, 2, 160,'가을 나들이 다녀왔어요','가을 단풍구경하러 산으로 갔다 왔어요. 정말 아름다웠어요!','2023-10-23',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (110, 2, 160,'좋아하는 노래 추천해요!','요즘 무한 반복해서 듣고 있는 노래는 "Dynamite"에요!','2023-11-09',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (111, 2, 160,'겨울 준비 시작~','날씨가 점점 추워지네요. 겨울 옷을 꺼내야 할 것 같아요.','2023-12-05',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (112, 2, 160,'연말 계획!','올해도 얼마 남지 않았네요. 연말에는 가족들과 함께 보내고 싶어요.','2023-12-18',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (113, 2, 160,'새해 다짐','새해에는 건강 관리를 더 열심히 해야겠어요!','2024-01-01',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (114, 2, 160,'봄나들이 계획 중','날씨가 따뜻해지고 있어요. 꽃구경 가고 싶어요!','2024-03-15',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (115, 2, 160,'최근 관심사','최근에는 주식 투자에 관심이 생겼어요. 열심히 공부해야겠어요.','2024-02-28',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (116, 2, 160,'새로운 레시피 도전!','오늘은 처음으로 양갈비를 구워봤어요. 생각보다 맛있었어요!','2024-03-10',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (117, 2, 160,'봄 감성','봄이 오니까 설레는 마음이 드네요. 새로운 시작을 해볼까 해요.','2024-03-22',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (118, 2, 160,'일상 공유해요~','오늘은 친구들과 함께 브런치를 먹었어요. 오랜만에 수다떨고 스트레스를 풀었어요.','2023-01-05',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (119, 2, 160,'영화 추천합니다!','최근에 본 영화 중에 "인턴"이 정말 재밌었어요. 감동도 있고 교훈도 있는 영화예요!','2023-01-20',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (120, 2, 160,'운동 일지','오늘은 1시간 동안 런닝머신 위에서 뛰었어요. 땀 흘리니까 속이 후련하네요.','2023-02-08',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (121, 2, 160,'요리 실험!','어제는 처음으로 깐풍기를 만들어봤어요. 생각보다 어렵지 않았어요!','2023-02-23',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (122, 2, 160,'봄 소식','길가에 벚꽃이 피기 시작했어요. 봄이 오고 있나 봐요!','2023-03-12',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (123, 2, 160,'책 리뷰 작성','최근에 읽은 책 중에 "당신은 결국 무엇이든 해내는 사람"이 인상 깊었어요.','2023-03-30',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (124, 2, 160,'여행 계획 세우는 중!','이번 여름에는 유럽으로 배낭여행을 갈 계획이에요. 벌써부터 설레네요!','2023-04-15',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (125, 2, 160,'새로운 도전~','요즘 기타 배우기 시작했어요. 손가락이 아프지만 재밌어요!','2023-05-02',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (126, 2, 160,'일상 이야기 공유','오늘은 회사에서 동료들과 회식을 했어요. 맛있는 것도 먹고 즐거운 시간을 보냈어요.','2023-05-28',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (127, 2, 160,'영화관 후기','오늘은 친구들과 영화관에 다녀왔어요. "분노의 질주"를 봤는데 액션이 볼만했어요!','2023-06-11',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (128, 2, 160,'요리 실험 성공!','오늘은 처음으로 파스타를 만들어봤어요. 생각보다 맛있게 나왔어요!','2023-06-30',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (129, 2, 160,'여름 계획','이번 여름에는 바다로 놀러 가려고 해요. 시원한 바다가 기다려지네요!','2023-07-15',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (130, 2, 160,'운동 성과 공유해요','3개월 동안 운동한 결과 5kg이나 빠졌어요. 뿌듯하네요!','2023-08-03',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (131, 2, 160,'일상 공유','오늘은 아침부터 빵을 만들었어요. 집에서 만든 빵 냄새가 정말 좋더라고요.','2023-08-22',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (132, 2, 160,'가을 소식','길가에 코스모스가 피기 시작했어요. 가을이 성큼 다가온 것 같아요.','2023-09-10',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (133, 2, 160,'책 추천해요!','최근에 읽은 책 중에 "김미경의 마흔 수업"이 도움이 많이 됐어요.','2023-09-28',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (134, 2, 160,'취미 이야기','요즘 풍경 사진 찍는 것에 빠져있어요. 주말마다 사진 찍으러 다니고 있어요.','2023-10-14',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (135, 2, 160,'여행 후기 작성','지난 주에 강원도로 여행을 다녀왔어요. 정말 좋은 추억이 됐어요!','2023-11-02',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (136, 2, 160,'운동 계획','내년부터는 수영을 배워보려고 해요. 전신운동이 될 것 같아요.','2023-12-10',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (137, 2, 160,'연말 정산','벌써 한 해가 끝나가네요. 올해는 정말 많은 일이 있었던 것 같아요.','2023-12-28',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (138, 2, 160,'새해 소망','새해에는 더 행복하고 건강했으면 좋겠어요. 모두 힘내세요!','2024-01-10',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (139, 2, 160,'일상 공유해요','오늘은 집에서 영화 마라톤을 했어요. 오랜만에 푹 쉬는 느낌이에요.','2024-01-25',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (140, 2, 160,'요리 도전!','오늘은 처음으로 초밥을 만들어봤어요. 예쁘진 않지만 맛은 괜찮네요!','2024-02-12',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (141, 2, 160,'운동 일지','요즘은 크로스핏에 푹 빠졌어요. 힘들지만 보람찼어요!','2024-03-01',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (142, 2, 160,'봄 소식','공원에 벚꽃이 만개했어요. 봄 날씨가 너무 좋네요!','2024-03-20',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (143, 2, 160,'일상 공유','오늘은 친구들과 보드게임 파티를 했어요. 웃느라 배꼽 빠질 뻔했네요!','2024-03-30',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (144, 2, 160,'영화 추천','최근에 본 "겨울왕국2" 정말 재밌더라고요. 감동도 있고 노래도 좋았어요!','2023-01-08',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (145, 2, 160,'책 감상문','얼마 전에 읽은 "말의 품격"이라는 책, 많은 생각이 들게 하네요.','2023-02-14',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (146, 2, 160,'운동 성과','플랭크 1분 버티기에 성공했어요! 너무 뿌듯해요.','2023-03-07',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (147, 2, 160,'봄나들이','한강 공원에서 치맥하며 봄을 만끽했어요. 봄바람이 너무 좋더라고요!','2023-04-18',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (148, 2, 160,'일상 토크','요즘 고민이 많아요. 이직할까 말까 계속 고민 중이에요.','2023-05-27',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (149, 2, 160,'여행 계획','7월에 제주도 여행 갈 예정이에요. 벌써부터 설레네요!','2023-06-09',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (150, 2, 160,'요리 도전기','오늘은 브라우니를 처음 만들어봤어요. 생각보다 어렵지 않네요!','2023-07-22',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (151, 2, 160,'취미 생활','주말마다 등산 다니는 게 너무 좋아요. 자연 속에서 힐링하는 기분이에요.','2023-08-11',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (152, 2, 160,'책 추천','"나는 나로 살기로 했다"라는 책 추천해요. 정말 인상 깊게 읽었어요.','2023-09-05',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (153, 2, 160,'영화 후기','어제 "조커" 영화 봤는데 충격적이었어요. 하지만 연기력은 최고였어요.','2023-10-19',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (154, 2, 160,'일상 이야기','오늘은 회사에서 간식 파티가 있었어요. 다 같이 먹으니 더 맛있더라고요.','2023-11-08',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (155, 2, 160,'운동 계획','내년에는 풀코스 마라톤에 도전해보려고 해요. 열심히 연습해야겠어요.','2023-12-03',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (156, 2, 160,'연말 파티','어제 친구들과 연말 파티를 했어요. 오랜만에 다 같이 모이니 너무 좋더라고요.','2023-12-25',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (157, 2, 160,'새해 인사','새해 복 많이 받으세요! 올해는 모두 건강하시길 바랍니다.','2024-01-01',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (158, 2, 160,'취미 생활','최근에 캘리그라피를 배우기 시작했어요. 너무 재밌어요!','2024-02-17',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (159, 2, 160,'영화 추천','주말에 "킹스맨" 시리즈 정주행했어요. 진짜 재밌더라고요!','2024-03-09',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (160, 2, 160,'운동 성과','요가를 시작한 지 2달 만에 유연성이 많이 좋아졌어요. 뿌듯해요!','2023-01-12',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (161, 2, 160,'봄 소식','길에 개나리가 피기 시작했어요. 봄이 오고 있나 봐요!','2023-03-05',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (162, 2, 160,'일상 공유','오늘은 회사 근처 새로 생긴 카페에 다녀왔어요. 분위기도 좋고 맛도 괜찮았어요.','2023-04-27',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (163, 2, 160,'책 감상','얼마 전에 읽은 "죽고 싶지만 떡볶이는 먹고 싶어"라는 책, 공감 많이 됐어요.','2023-06-03',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (164, 2, 160,'여름 계획','8월에 친구들과 바다로 캠핑 갈 예정이에요. 벌써 기대돼요!','2023-07-19',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (165, 2, 160,'요리 도전기','오늘은 크림 파스타를 만들어봤어요. 맛있게 잘 됐어요!','2023-08-08',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (166, 2, 160,'가을 산책','근처 공원에서 가을 풍경을 즐겼어요. 단풍이 정말 예뻤어요.','2023-10-25',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (167, 2, 160,'영화 후기','어제 "담보" 영화 봤어요. 웃기면서도 감동적이더라고요.','2023-11-13',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (168, 2, 160,'운동 계획','겨울에는 실내에서 필라테스를 배워볼까 해요. 몸매 관리 차원에서요.','2023-12-07',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (169, 2, 160,'연말 파티','회사에서 연말 파티를 했어요. 맛있는 것도 먹고 선물 교환도 하고 재밌었어요.','2023-12-28',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (170, 2, 160,'새해 계획','올해는 영어 공부를 열심히 해볼 생각이에요. 토익 점수 올리는 게 목표예요.','2024-01-05',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (171, 2, 160,'책 추천','최근에 읽은 "언어의 온도"라는 책 추천해요. 따뜻한 말의 힘에 대해 알 수 있었어요.','2024-02-20',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (172, 2, 160,'봄 소식','따뜻한 봄 날씨에 기분이 좋아요. 벚꽃 구경 가고 싶네요.','2024-03-14',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (173, 2, 160,'일상 공유','오늘은 쇼핑하러 갔다가 맛있는 와플을 발견했어요. 너무 달콤하더라고요!','2023-01-17',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (174, 2, 160,'취미 생활','요즘 직소 퍼즐에 푹 빠졌어요. 시간 가는 줄 모르고 하게 되네요.','2023-02-28',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (175, 2, 160,'영화 추천','"그랜드 부다페스트 호텔" 영화 추천합니다. 독특한 분위기가 매력적이에요.','2023-04-10',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (176, 2, 160,'운동 성과','매일 아침 조깅하는 습관을 들였더니 컨디션이 너무 좋아졌어요!','2023-05-22',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (177, 2, 160,'책 감상','얼마 전 "모순"이라는 책을 읽었는데, 인생에 대해 많은 생각을 하게 됐어요.','2023-07-01',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (178, 2, 160,'여름 휴가','다음 주에 1주일 휴가 냈어요. 휴식을 취하면서 충전할 생각이에요.','2023-08-14',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (179, 2, 160,'요리 실험','새로운 레시피로 닭가슴살 요리에 도전했어요. 살짝 느끼하지만 맛있었어요.','2023-09-23',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (180, 2, 160,'가을 축제','이번 주말에 가을 축제에 다녀올 계획이에요. 맛있는 것도 먹고 구경도 할 거예요.','2023-11-06',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (181, 2, 160,'겨울 준비','겨울 옷을 꺼내 정리하고 있어요. 올 겨울은 좀 더 따뜻하게 입어야겠어요.','2023-12-12',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (182, 2, 160,'연말 회고','한 해를 돌아보니 후회되는 일도 있지만 감사한 일이 더 많네요. 내년에는 더 발전하고 싶어요.','2023-12-30',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (183, 2, 160,'새해 다짐','올해는 하고 싶었던 일에 도전해볼 거예요. 용기 내서 시작해보려고요.','2024-01-08',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (184, 2, 160,'취미 생활','퇴근 후 매일 기타 연습을 하고 있어요. 점점 실력이 느는 게 느껴져요.','2024-02-26',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (185, 2, 160,'봄 소식','어제 집 앞에 민들레를 봤어요. 봄이 코앞으로 다가온 것 같아요.','2023-02-21',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (186, 2, 160,'영화 감상','주말에 "soul" 애니메이션을 봤어요. 삶의 의미에 대해 생각하게 되는 영화였어요.','2023-03-18',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (187, 2, 160,'일상 공유','오늘은 점심으로 김치찌개를 먹었어요. 매콤한 맛이 잊혀지지 않네요.','2023-04-29',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (188, 2, 160,'운동 계획','이번 달부터 복싱을 배워보려고 해요. 스트레스도 풀고 체력도 기를 수 있을 거 같아요.','2023-06-08',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (189, 2, 160,'책 추천','최근에 읽은 "돈의 속성"이라는 책, 재테크에 관심 있는 분들께 추천해요.','2023-07-22',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (190, 2, 160,'여름 계획','8월에는 워터파크에 가볼 생각이에요. 시원한 물놀이가 기다려져요!','2023-08-11',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (191, 2, 160,'요리 도전기','이번 주말에는 홈메이드 피자에 도전해볼 거예요. 토핑 고민 중이에요.','2023-09-29',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (192, 2, 160,'가을 산책','공원에서 억새도 구경하고 호수 주변을 걸었어요. 가을 정취가 물씬 느껴졌어요.','2023-11-02',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (193, 2, 160,'영화 후기','"미드나이트 인 파리" 영화 봤어요. 파리의 낭만적인 분위기가 너무 매력적이었어요.','2023-12-17',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (194, 2, 160,'겨울 레시피','날씨가 추워지니 따뜻한 국물 요리가 생각나요. 어묵탕 레시피 공유해요!','2024-01-12',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (195, 3, 160, '사이트 접속 속도 개선 건의', '최근 사이트 접속 속도가 느려진 것 같아요. 개선해주시면 좋을 것 같습니다.', '2023-01-03', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (196, 3, 160, '게시판 카테고리 추가 제안', '게시판에 OO 카테고리를 추가해주시면 좋을 것 같아요. 관련 주제로 소통할 수 있는 공간이 필요해보입니다.', '2023-02-15', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (197, 3, 160, '모바일 앱 개발 제안', '모바일 앱으로도 서비스를 이용할 수 있으면 좋겠어요. 앱 개발 계획이 있으신지 궁금합니다.', '2023-03-28', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (198, 3, 160, '이벤트 아이디어 제안', '가입자 수 100만 명 돌파 기념으로 특별한 이벤트를 진행하면 어떨까요? 경품도 준비하고 재미있는 이벤트였으면 좋겠어요.', '2023-04-10', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (199, 3, 160, '새로운 기능 추가 건의', '사이트에 OO 기능이 추가되면 편리할 것 같아요. 검토 부탁드립니다.', '2023-05-22', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (200, 3, 160, '불편사항 개선 요청', '최근 OO 기능을 이용하면서 불편한 점이 있었어요. OO 부분을 개선해주시면 사용하기 더 좋을 것 같네요.', '2023-06-08', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (201, 3, 160, '회원 등급 제도 제안', '사이트 이용 실적에 따라 회원 등급을 나누고 혜택을 주는 제도가 있으면 좋을 것 같아요.', '2023-07-18', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (202, 3, 160, '콘텐츠 다양화 제안', '현재 제공되는 콘텐츠 외에도 OO 주제의 콘텐츠가 더 많아졌으면 좋겠어요.', '2023-08-29', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (203, 3, 160, '커뮤니티 활성화 아이디어', '커뮤니티 활성화를 위해 OO 이벤트를 정기적으로 개최하면 어떨까요? 회원들의 참여도 높일 수 있을 것 같아요.', '2023-09-11', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (204, 3, 160, '사이트 디자인 개선 건의', '사이트 디자인이 조금 올드한 느낌이에요. 트렌디한 디자인으로 바꾸면 좋을 것 같습니다.', '2023-10-26', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (205, 3, 160, '검색 기능 개선 제안', '현재 검색 기능이 조금 부정확한 것 같아요. 검색어에 맞는 결과가 잘 나오도록 개선되면 좋겠습니다.', '2023-11-05', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (206, 3, 160, '음악 재생 기능 추가 건의', '사이트에 음악 재생 기능이 있으면 좋을 것 같아요. 분위기도 좋고 이용자들이 즐길 수 있을 듯합니다.', '2023-12-18', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (207, 3, 160, '댓글 알림 기능 추가 요청', '내가 댓글 단 글에 새로운 댓글이 달리면 알림이 오는 기능이 있으면 편리할 것 같아요.', '2024-01-09', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (208, 3, 160, '게시글 작성 에디터 개선 건의', '게시글 작성할 때 사용하는 에디터의 기능이 조금 부족한 것 같아요. 더 많은 기능이 추가되면 좋겠네요.', '2024-02-20', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (209, 3, 160, '광고 노출 방식 개선 제안', '현재 광고 노출 방식이 조금 불편하게 느껴져요. 사용자 경험을 해치지 않는 선에서 개선되면 좋을 것 같아요.', '2024-03-07', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (210, 3, 160, '회원 가입 절차 간소화 건의', '현재 회원 가입 절차가 조금 복잡한 것 같아요. 필수 입력 항목을 줄이고 간단하게 가입할 수 있으면 좋겠어요.', '2023-01-12', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (211, 3, 160, '프로필 사진 업로드 용량 증대 요청', '현재 프로필 사진 업로드 용량이 조금 작은 것 같아요. 좀 더 큰 용량의 사진도 업로드할 수 있으면 좋겠습니다.', '2023-02-23', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (212, 3, 160, '비밀번호 변경 주기 설정 제안', '계정 보안을 위해 비밀번호 변경 주기를 설정할 수 있는 옵션이 있으면 좋을 것 같아요.', '2023-03-08', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (213, 3, 160, '실시간 채팅 기능 추가 건의', '사이트에 실시간 채팅 기능이 있으면 사용자들 간의 소통이 더 활발해질 것 같아요.', '2023-04-19', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (214, 3, 160, '게시글 스크랩 기능 추가 제안', '마음에 드는 게시글을 스크랩할 수 있는 기능이 있으면 나중에 다시 볼 때 편리할 것 같아요.', '2023-05-30', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (215, 3, 160, '태그 기능 추가 건의', '게시글에 태그를 달 수 있는 기능이 추가되면 관심사별로 글을 모아볼 수 있어 편리할 것 같네요.', '2023-06-14', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (216, 3, 160, '쪽지 보내기 기능 개선 요청', '현재 쪽지 보내기 기능이 조금 불편한 점이 있어요. 더 간편하게 쪽지를 주고받을 수 있으면 좋겠어요.', '2023-07-25', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (217, 3, 160, '게시글 구독 기능 추가 제안', '관심 있는 작성자의 게시글을 구독할 수 있는 기능이 있으면 새로운 글을 놓치지 않고 볼 수 있을 것 같아요.', '2023-08-07', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (218, 3, 160, '이미지 업로드 방식 개선 건의', '게시글에 이미지를 올릴 때 현재는 조금 불편한 점이 있어요. 더 간단하고 직관적인 방식으로 개선되면 좋겠네요.', '2023-09-18', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (219, 3, 160, '공지사항 알림 기능 추가 요청', '중요한 공지사항이 올라왔을 때 알림을 받을 수 있는 기능이 있으면 유용할 것 같아요.', '2023-10-29', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (220, 3, 160, '회원 등급별 아이콘 차등화 제안', '회원 등급별로 다른 아이콘을 사용하면 활동량에 따른 차별성을 줄 수 있을 것 같아요.', '2023-11-10', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (221, 3, 160, '랭킹 시스템 도입 건의', '게시글 작성이나 댓글 활동 등을 점수화해서 랭킹 시스템을 만들면 사용자들의 참여도가 높아질 것 같네요.', '2023-12-21', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (222, 3, 160, '비속어 필터링 기능 강화 요청', '일부 사용자들이 비속어를 많이 사용하는 것 같아요. 비속어 필터링 기능을 좀 더 강화해주시면 좋겠습니다.', '2024-01-31', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (223, 3, 160, '플랫폼 다크모드 지원 요청', '다크모드로 플랫폼을 이용할 수 있는 옵션이 있으면 눈의 피로를 줄일 수 있을 것 같아요.', '2024-02-12', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (224, 3, 160, '첨부파일 용량 제한 완화 건의', '게시글에 첨부할 수 있는 파일 용량이 조금 적은 것 같아요. 용량 제한을 좀 더 늘려주시면 감사하겠습니다.', '2024-03-25', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (225, 3, 160, '개인정보 보호 강화 제안', '개인정보 보호를 위해 이메일 주소 암호화 등의 조치가 필요할 것 같습니다.', '2023-01-08', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (226, 3, 160, '계정 탈퇴 절차 간소화 요청', '현재 계정 탈퇴 절차가 조금 복잡한 것 같아요. 사용자 편의를 위해 간소화되면 좋겠네요.', '2023-02-19', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (227, 3, 160, '푸시 알림 카테고리 세분화 건의', '푸시 알림을 카테고리별로 설정할 수 있으면 사용자가 원하는 알림만 받을 수 있을 것 같아요.', '2023-03-03', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (228, 3, 160, '인기 게시글 알고리즘 개선 제안', '현재 인기 게시글 선정 방식이 조금 아쉬운 점이 있어요. 더 나은 알고리즘으로 개선되면 좋겠습니다.', '2023-04-14', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (229, 3, 160, '게시글 번역 기능 추가 건의', '외국어로 작성된 게시글을 자동으로 번역해주는 기능이 있으면 글로벌 소통이 가능할 것 같아요.', '2023-05-26', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (230, 3, 160, '팔로우한 사용자 새 글 알림 요청', '내가 팔로우한 사용자가 새 글을 올리면 알림을 받을 수 있는 기능이 있으면 좋겠어요.', '2023-06-07', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (231, 3, 160, '사용자 차단 기능 추가 제안', '특정 사용자를 차단할 수 있는 기능이 있으면 불편한 상황을 피할 수 있을 것 같네요.', '2023-07-19', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (232, 3, 160, '게시글 공유 기능 개선 건의', '게시글을 다른 플랫폼으로 공유할 때 조금 불편한 점이 있어요. 더 간편하게 공유할 수 있으면 좋겠습니다.', '2023-08-30', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (233, 3, 160, '키워드 알림 기능 추가 요청', '관심 있는 키워드에 대한 알림을 받을 수 있는 기능이 있으면 유용할 것 같아요.', '2023-09-11', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (234, 3, 160, '투표 기능 추가 제안', '게시글에 투표 기능을 추가하면 사용자들의 의견을 수렴하기 좋을 것 같네요.', '2023-10-23', null, 0, 0, 0, 0, 0, 0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (235, 3, 160,'검색 기능 개선 요청','검색 결과의 정확도가 낮은 편인 것 같습니다. 검색 알고리즘을 개선해주시면 좋겠어요.','2023-01-05',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (236, 3, 160,'모바일 앱 버그 제보','모바일 앱 사용 중 특정 기능에서 종종 오류가 발생합니다. 확인 후 수정 부탁드려요.','2023-02-12',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (237, 3, 160,'이벤트 아이디어 제안드려요','다가오는 명절에 맞춰 특별한 이벤트를 진행하면 어떨까요? 예를 들면 OO 이벤트 등이 좋을 것 같아요.','2023-03-20',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (238, 3, 160,'커뮤니티 게시판 카테고리 추가 제안','커뮤니티 게시판에 OO 카테고리를 추가하면 관련 주제로 소통하기 좋을 것 같아요.','2023-04-08',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (239, 3, 160,'새로운 콘텐츠 제작 제안','OO 주제로 새로운 콘텐츠를 제작하면 사용자들의 관심을 끌 수 있을 것 같습니다.','2023-05-16',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (240, 3, 160,'사이트 로딩 속도 개선 요청드려요','최근 사이트 로딩 속도가 느려진 것 같아요. 개선 방안을 마련해주시면 감사하겠습니다.','2023-06-23',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (241, 3, 160,'불편사항 개선해주세요','OO 서비스 이용 중 불편한 점이 있어서 개선 요청드립니다. 확인 후 조치 부탁드려요.','2023-07-02',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (242, 3, 160,'이용자 혜택 확대 제안합니다','이용자 혜택을 좀 더 확대하면 사이트 활성화에 도움이 될 것 같아요. 적립금 제도 도입 등을 제안드려요.','2023-08-11',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (243, 3, 160,'일정 관리 기능 추가 건의','사이트 내에 일정 관리 기능이 있으면 편리할 것 같습니다. 캘린더 형식으로 일정을 등록하고 관리할 수 있으면 좋겠어요.','2023-09-28',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (244, 3, 160,'푸시 알림 오류 제보드려요','푸시 알림 수신에 문제가 있는 것 같아요. 알림이 제대로 오지 않는 경우가 있습니다. 확인 부탁드립니다.','2023-10-07',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (245, 3, 160,'홍보 이벤트 제안합니다','사이트 홍보를 위해 OO 이벤트를 진행하면 어떨까요? 사용자 참여를 유도하는 이벤트가 효과적일 것 같아요.','2023-11-15',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (246, 3, 160,'연말 이벤트 아이디어 제안드려요','한 해를 마무리하는 연말을 맞아 특별한 이벤트를 기획하면 좋을 것 같아요. 예를 들면 OO 이벤트 등이 흥미로울 것 같네요.','2023-12-24',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (247, 3, 160,'새해 맞이 업데이트 제안합니다','새해를 맞아 사이트 디자인을 새롭게 단장하면 좋을 것 같아요. 새로운 느낌을 주는 것도 좋을 거 같네요.','2024-01-03',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (248, 3, 160,'이용자 피드백 시스템 도입 제안','이용자 피드백을 좀 더 적극적으로 수렴할 수 있는 시스템이 필요한 것 같아요. 피드백 게시판 등을 운영하면 어떨까요?','2024-02-12',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (249, 3, 160,'봄맞이 이벤트 제안드려요','봄을 맞아 사이트에 생기를 불어넣을 수 있는 이벤트를 진행하면 좋을 것 같아요. 예를 들어 OO 이벤트 등이 어떨까요?','2024-03-22',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (250, 3, 160,'검색어 자동완성 기능 추가 제안','검색어를 입력할 때 자동완성 기능이 있으면 편리할 것 같아요. 사용자 경험 향상에 도움이 될 거예요.','2023-01-14',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (251, 3, 160,'비밀번호 변경 주기 설정 기능 요청','계정 보안을 위해 비밀번호 변경 주기를 설정할 수 있는 기능이 필요할 것 같아요. 주기적으로 변경을 유도하는 알림 등도 있으면 좋겠네요.','2023-02-23',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (252, 3, 160,'커뮤니티 활성화를 위한 아이디어 제안','커뮤니티 활성화를 위해 우수 게시글 선정 이벤트를 진행하면 어떨까요? 사용자 참여를 유도하는 데 효과적일 것 같아요.','2023-03-04',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (253, 3, 160,'모바일 앱 UI 개선 요청드려요','모바일 앱의 UI가 조금 더 직관적이었으면 좋겠어요. 사용성 개선을 위한 UI 업데이트를 제안드립니다.','2023-04-12',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (254, 3, 160,'이벤트 당첨자 발표 방식 제안','이벤트 당첨자 발표 시 개별 연락도 좋지만, 사이트 내에 당첨자 게시판을 만들면 더 투명할 것 같아요.','2023-05-21',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (255, 3, 160,'컨텐츠 업로드 오류 제보드려요','컨텐츠 업로드 시 간헐적으로 오류가 발생하는 것 같아요. 업로드 프로세스를 점검해 주시면 감사하겠습니다.','2023-06-30',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (256, 3, 160,'게시글 작성 시 미리보기 기능 제안','게시글 작성 시 미리보기 기능이 있으면 편리할 것 같아요. 작성한 게시글의 최종 모습을 확인할 수 있어서 좋을 거 같네요.','2023-07-09',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (257, 3, 160,'사이트 내 쪽지 기능 추가 건의드려요','사이트 내에서 사용자 간 쪽지를 주고받을 수 있는 기능이 있으면 소통이 더 활발해질 것 같아요.','2023-08-18',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (258, 3, 160,'콘텐츠 다운로드 속도 개선 요청합니다','콘텐츠 다운로드 속도가 조금 느린 편인 것 같아요. 다운로드 속도 개선을 위한 방안을 마련해 주시면 좋겠습니다.','2023-09-27',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (259, 3, 160,'회원 등급제 도입 제안드려요','사이트 내 회원 등급제를 도입하면 사용자 참여도를 높일 수 있을 것 같아요. 등급별 혜택 등을 제공하면 좋겠어요.','2023-10-06',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (260, 3, 160,'사이트 접속 오류 제보합니다','가끔 사이트 접속이 원활하지 않을 때가 있어요. 접속 오류에 대한 점검 부탁드립니다.','2023-11-15',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (261, 3, 160,'겨울맞이 이벤트 아이디어 제안해요','겨울을 맞아 사이트 분위기를 바꿔보는 건 어떨까요? 겨울 느낌 나는 디자인으로 변경하는 이벤트를 제안드려요.','2023-12-24',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (262, 3, 160,'새해 계획 공유 이벤트 제안합니다','새해를 맞아 사용자들의 새해 계획을 공유하는 이벤트를 진행하면 어떨까요? 서로의 목표를 응원하는 분위기를 조성할 수 있을 거예요.','2024-01-02',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (263, 3, 160,'밸런타인데이 이벤트 아이디어 제안드려요','밸런타인데이를 맞아 사랑을 주제로 한 이벤트를 진행하면 좋을 것 같아요. 사랑에 관한 사용자들의 이야기를 공유하는 게시판을 만들어보면 어떨까요?','2024-02-14',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (264, 3, 160,'화이트데이 이벤트 제안합니다','밸런타인데이에 이어 화이트데이 이벤트도 진행하면 좋겠어요. 사랑받는 사람들을 위한 특별한 이벤트를 기획해보는 건 어떨까요?','2024-03-14',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (265, 3, 160,'웹 접근성 개선 제안드려요','웹 접근성을 높이면 더 많은 사용자들이 편리하게 이용할 수 있을 것 같아요. 접근성 개선을 위한 방안을 마련해 주시면 좋겠습니다.','2023-01-22',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (266, 3, 160,'모바일 앱 푸시 알림 오류 제보해요','모바일 앱에서 푸시 알림이 제대로 수신되지 않을 때가 있어요. 푸시 알림 기능에 대한 점검 부탁드립니다.','2023-03-03',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (267, 3, 160,'사이트 내 채팅 기능 추가 제안합니다','사이트 내에 실시간 채팅 기능이 있으면 사용자들 간의 소통이 더 활발해질 것 같아요. 채팅 기능 추가를 제안드려요.','2023-04-11',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (268, 3, 160,'이벤트 상품 다양화 요청드려요','이벤트 상품으로 제공되는 품목들이 조금 더 다양했으면 좋겠어요. 사용자들의 관심을 끌 수 있는 다양한 상품을 제안드립니다.','2023-05-20',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (269, 3, 160,'게시글 작성 시 첨부 파일 확장자 제한 제안','게시글 작성 시 첨부 파일의 확장자를 제한하는 것이 보안상 좋을 것 같아요. 허용된 확장자만 업로드할 수 있도록 설정하는 걸 제안합니다.','2023-06-29',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (270, 3, 160,'콘텐츠 추천 알고리즘 개선 제안해요','현재 콘텐츠 추천 알고리즘이 사용자의 관심사를 정확히 반영하지 못하는 것 같아요. 추천 알고리즘 개선을 통해 사용자 만족도를 높일 수 있을 거예요.','2023-07-08',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (271, 3, 160,'여름 휴가 시즌 이벤트 아이디어 제안드려요','여름 휴가 시즌을 맞아 특별한 이벤트를 진행하면 어떨까요? 사용자들의 휴가 계획을 공유하고 추천하는 게시판을 만들어보는 건 어떨까요?','2023-08-17',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (272, 3, 160,'사이트 로고 변경 제안합니다','사이트 로고를 좀 더 세련되고 현대적인 느낌으로 변경하면 어떨까요? 브랜드 이미지 향상에 도움이 될 것 같아요.','2023-09-26',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (274, 3, 160,'할로윈 데이 이벤트 제안드려요','할로윈 데이를 맞아 사이트에 특별한 이벤트를 진행하면 어떨까요? 호러 영화 추천 게시판이나 할로윈 분장 콘테스트 등 다양한 이벤트를 기획해보면 좋을 것 같아요.','2023-10-31',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (275, 3, 160,'감사절 맞이 이벤트 아이디어 제안합니다','감사절을 맞이하여 사용자들에게 감사 인사를 전하는 이벤트를 진행하면 어떨까요? 감사 메시지를 공유하는 게시판을 만들어 서로 감사 인사를 나누는 것도 좋을 것 같아요.','2023-11-23',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (276, 3, 160,'크리스마스 이벤트 제안드려요','크리스마스를 맞아 특별한 이벤트를 기획해보면 어떨까요? 크리스마스 트리 꾸미기 콘테스트나 크리스마스 노래 추천 게시판 등 다양한 이벤트를 진행할 수 있을 것 같아요.','2023-12-25',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (277, 3, 160,'이벤트 당첨자 선정 방식 제안합니다','이벤트 당첨자 선정 시 좀 더 투명하고 공정한 방식을 도입하면 어떨까요? 랜덤 추첨 방식이나 참여도에 따른 가중치 부여 등 다양한 방법을 고려해보면 좋을 것 같아요.','2024-01-15',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (278, 3, 160,'발렌타인 데이 이벤트 아이디어 제안해요','발렌타인 데이를 맞아 사랑을 주제로 한 이벤트를 진행해보면 어떨까요? 사랑 고백 메시지 공유 게시판이나 초콜릿 만들기 레시피 공유 등 다양한 이벤트를 기획할 수 있을 거예요.','2024-02-14',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (279, 3, 160,'화이트 데이 이벤트 제안드려요','발렌타인 데이에 이어 화이트 데이에도 특별한 이벤트를 진행하면 좋을 것 같아요. 사랑받은 사람들을 위한 이벤트를 기획해보는 건 어떨까요?','2024-03-14',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (280, 3, 160,'봄맞이 이벤트 아이디어 제안합니다','봄을 맞아 사이트에 생기를 불어넣을 수 있는 이벤트를 진행해보면 어떨까요? 봄 관련 사진 콘테스트나 봄 데이트 코스 추천 게시판 등 다양한 이벤트를 기획할 수 있을 거예요.','2024-03-21',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (281, 3, 160,'사이트 접속 오류 개선 요청드려요','최근 사이트 접속 시 종종 오류가 발생하는 것 같아요. 안정적인 서비스 제공을 위해 접속 오류 개선을 요청드립니다.','2023-01-31',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (282, 3, 160,'콘텐츠 업데이트 주기 제안합니다','콘텐츠 업데이트 주기를 좀 더 짧게 조정하면 어떨까요? 사용자들의 관심과 참여를 유지하기 위해 주기적인 콘텐츠 업데이트가 필요할 것 같아요.','2023-03-10',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (283, 3, 160,'사이트 로딩 속도 개선 요청드려요','사이트 로딩 속도가 느려서 불편함을 느끼는 사용자들이 있는 것 같아요. 로딩 속도 개선을 통해 사용자 경험을 향상시킬 수 있을 거예요.','2023-04-19',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (284, 3, 160,'모바일 앱 업데이트 제안합니다','모바일 앱의 기능과 디자인을 업데이트하면 좋을 것 같아요. 사용자 편의성을 높이고 최신 트렌드를 반영한 앱으로 개선하는 것을 제안드려요.','2023-05-28',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (285, 3, 160,'고객 센터 응답 속도 개선 요청드려요','고객 센터에 문의했을 때 응답 속도가 느린 편이에요. 신속하고 정확한 답변을 받을 수 있도록 고객 센터 응대 속도 개선을 요청드립니다.','2023-07-07',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (286, 3, 160,'이벤트 경품 발송 지연 개선 요청합니다','이벤트에 당첨되었는데 경품 발송이 많이 지연되는 경우가 있어요. 당첨자들의 기대감을 유지하기 위해 경품 발송 프로세스를 개선해주시면 감사하겠습니다.','2023-08-16',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (287, 3, 160,'추석 맞이 이벤트 아이디어 제안드려요','추석을 맞아 사이트에서 특별한 이벤트를 진행하면 어떨까요? 명절 인사 나누기 게시판이나 추석 음식 레시피 공유 등 다양한 이벤트를 기획해볼 수 있을 것 같아요.','2023-09-27',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (288, 3, 160,'할로윈 데이 이벤트 제안합니다','할로윈 데이를 맞아 사이트에 특별한 이벤트를 준비하면 좋을 것 같아요. 무서운 이야기 공유 게시판이나 할로윈 코스프레 콘테스트 등 다채로운 이벤트를 진행해보면 어떨까요?','2023-10-31',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (289, 3, 160,'겨울 시즌 이벤트 아이디어 제안드려요','겨울 시즌을 맞아 사이트에 특별한 분위기를 연출하는 건 어떨까요? 크리스마스 트리 꾸미기 이벤트나 겨울 풍경 사진 콘테스트 등 다양한 이벤트를 기획해볼 수 있을 거예요.','2023-12-15',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (290, 3, 160,'이벤트 참여 방법 개선 제안합니다','현재 이벤트 참여 방법이 조금 복잡하다는 의견이 있어요. 더 간단하고 직관적인 참여 방법으로 개선한다면 사용자 참여율을 높일 수 있을 것 같아요.','2024-01-24',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (291, 3, 160,'발렌타인 데이 이벤트 제안드려요','발렌타인 데이를 맞아 사랑을 테마로 한 이벤트를 진행해보면 어떨까요? 러브 스토리 공유 이벤트나 하트 모양 디자인 콘테스트 등 다양한 아이디어를 생각해볼 수 있을 거예요.','2024-02-14',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (292, 3, 160,'화이트 데이 이벤트 아이디어 제안합니다','화이트 데이에도 특별한 이벤트를 준비하면 좋을 것 같아요. 사랑 고백 이벤트나 달콤한 디저트 레시피 공유 등 다채로운 콘텐츠를 마련해보는 건 어떨까요?','2024-03-14',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (293, 3, 160,'봄 시즌 이벤트 제안드려요','봄을 맞아 사이트에 생기 넘치는 분위기를 연출하면 좋을 것 같아요. 봄꽃 구경 명소 추천 이벤트나 봄 패션 콘테스트 등 다양한 아이디어를 기획해볼 수 있을 거예요.','2024-03-22',null,0,0,0,0,0,0);
insert into tblPost (seq, seqBoard, seqUser, title, content, writeDate, editDate, viewCount, likeCount, dislikeCount, reportCount, secretCheck, blindCheck)
values (294, 3, 160,'사이트 내 알림 기능 개선 요청합니다','사이트 내 알림 기능이 제대로 작동하지 않는 경우가 있어요. 중요한 공지나 이벤트 소식을 놓치지 않도록 알림 기능 개선을 요청드립니다.','2023-02-09',null,0,0,0,0,0,0);
commit;
--구매 위시 목록 tblPurchaseWishList
INSERT INTO tblPurchaseWishList(seq,productName,seqAcc) VALUES (1,'자동차',1);
INSERT INTO tblPurchaseWishList(seq,productName,seqAcc) VALUES (2,'휴대폰',1);
INSERT INTO tblPurchaseWishList(seq,productName,seqAcc) VALUES (3,'냉장고',2);
INSERT INTO tblPurchaseWishList(seq,productName,seqAcc) VALUES (4,'전자레인지',2);
INSERT INTO tblPurchaseWishList(seq,productName,seqAcc) VALUES (5,'컴퓨터',3);
INSERT INTO tblPurchaseWishList(seq,productName,seqAcc) VALUES (6,'마우스',3);
INSERT INTO tblPurchaseWishList(seq,productName,seqAcc) VALUES (7,'키보드',4);


--변동 사유 카테고리 tblReasonChangeCategory
select * from tblReasonsChangeList;
-- 사유 목록(1: 계좌이체, 2: 신용 카드, 3: 체크 카드, 현금)
select * from tblMyCard order by seq;
select * from tblCardInformation;
--(1: 신용, 2:체크) 1~5 체크 6~10 신용
--계좌이체
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (1, 1, null);   
--신용 or 체크
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (2, 3, 1);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (3, 3, 2);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (4, 3, 3);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (5, 3, 4);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (6, 3, 5);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (7, 2, 6);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (8, 2, 7);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (9, 2, 8);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (10, 2, 9);
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (11, 2, 10);
--현금
insert into tblReasonChangeCategory (seq, seqReasonsChangeList, seqMyCard) 
    values (12, 4, null);

commit;


