-- 어르신 테이블 ELDERLY INSERT

DELETE FROM ELDERLY WHERE 0=0;

INSERT INTO "ELDERLY" ("ELDERLY_ID", "NAME", "AGE", "GENDER", "BIRTH", "CONDITION", "CONTACT", "CREATE_TIME")
VALUES (1, '김춘분', 87, 'F', TO_DATE('1937-03-05', 'YYYY-MM-DD'), '치매, 청각장애 3급, 우울증, 관절염', '010-1234-5678', TO_DATE('2024-09-09 12:30:45', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO "ELDERLY" ("ELDERLY_ID", "NAME", "AGE", "GENDER", "BIRTH", "CONDITION", "CONTACT", "CREATE_TIME")
VALUES (2, '박춘자', 90, 'F', TO_DATE('1940-07-19', 'YYYY-MM-DD'), '치매, 청각장애 3급, 우울증, 관절염', '010-1010-1010', TO_DATE('2024-09-09 12:30:45', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO "ELDERLY" ("ELDERLY_ID", "NAME", "AGE", "GENDER", "BIRTH", "CONDITION", "CONTACT", "CREATE_TIME")
VALUES (3, '정영자', 85, 'F', TO_DATE('1947-12-01', 'YYYY-MM-DD'), '치매, 청각장애 3급, 우울증, 관절염', '010-2020-2020', TO_DATE('2024-09-09 12:30:45', 'YYYY-MM-DD HH24:MI:SS'));

COMMIT;

-- 로봇 폭언 감지 ROBOT_DETECT INSERT

DELETE FROM ROBOT_DETECT WHERE 0=0;

INSERT INTO ROBOT_DETECT (NO, ELDERLY_ID, CREATE_TIME, TEXT, DETECT_METHOD, SUCCESS_YN) VALUES ('1', 1, TO_DATE('2024-07-01', 'YYYY-MM-DD'), '너는 뭐야! 왜 자꾸 나한테 말을 걸어! 꺼져!', '차분하고 침착한 어조로 어르신의 감정에 공감하며, 불편함을 질문함.', 'Y');

INSERT INTO ROBOT_DETECT (NO, ELDERLY_ID, CREATE_TIME, TEXT, DETECT_METHOD, SUCCESS_YN) VALUES (2, 1, TO_DATE('2024-07-02', 'YYYY-MM-DD'), '걱정? 네가 뭘 알아! 다들 나한테 신경도 안 쓰고!', '공감과 도와주려는 태도로 대응.', 'Y');

INSERT INTO ROBOT_DETECT (NO, ELDERLY_ID, CREATE_TIME, TEXT, DETECT_METHOD, SUCCESS_YN) VALUES (3, 1, TO_DATE('2024-07-03', 'YYYY-MM-DD'), '나보고 뭘 어쩌라는 거야! 다들 나한테 이러고, 나 혼자야!', '안정감을 제공하며 혼자가 아니라고 설명.', 'Y');

INSERT INTO ROBOT_DETECT (NO, ELDERLY_ID, CREATE_TIME, TEXT, DETECT_METHOD, SUCCESS_YN) VALUES (4, 1, TO_DATE('2024-07-04', 'YYYY-MM-DD'), '혼자지! 네가 뭘 알아!', '힘든 날이 있을 수 있다고 공감하며 진정시키는 대화.', 'Y');

INSERT INTO ROBOT_DETECT (NO, ELDERLY_ID, CREATE_TIME, TEXT, DETECT_METHOD, SUCCESS_YN) VALUES (5, 2, TO_DATE('2024-07-05', 'YYYY-MM-DD'), '하... 모르겠어. 그냥 너무 답답해.', '어르신이 좋아하는 클래식 음악을 제안.', 'Y');

INSERT INTO ROBOT_DETECT (NO, ELDERLY_ID, CREATE_TIME, TEXT, DETECT_METHOD, SUCCESS_YN) VALUES (6,2, TO_DATE('2024-07-06', 'YYYY-MM-DD'), '음악? 모르겠어... 음악 틀어서 뭐가 달라지겠어.', '클래식 음악을 들려주겠다고 제안.', 'Y');

INSERT INTO ROBOT_DETECT (NO, ELDERLY_ID, CREATE_TIME, TEXT, DETECT_METHOD, SUCCESS_YN) VALUES (7, 2, TO_DATE('2024-07-07', 'YYYY-MM-DD'), '클래식... 아, 그랬던가?', '음악을 들었을 때 좋았던 기억을 상기시키며 대화.', 'Y');

INSERT INTO ROBOT_DETECT (NO, ELDERLY_ID, CREATE_TIME, TEXT, DETECT_METHOD, SUCCESS_YN) VALUES (8, 2, TO_DATE('2024-07-08', 'YYYY-MM-DD'), '음... 그래, 뭐... 한번 들어보지.', '어르신의 동의를 얻어 음악 재생.', 'Y');

INSERT INTO ROBOT_DETECT (NO, ELDERLY_ID, CREATE_TIME, TEXT, DETECT_METHOD, SUCCESS_YN) VALUES (9, 3, TO_DATE('2024-07-09', 'YYYY-MM-DD'), '(음악이 흐른 후) 음... 조금 덜 답답하네.', '안정감을 제공하며 어르신이 좋아하는 음악을 들려줌.', 'Y');

INSERT INTO ROBOT_DETECT (NO, ELDERLY_ID, CREATE_TIME, TEXT, DETECT_METHOD, SUCCESS_YN) VALUES (10, 3, TO_DATE('2024-07-10', 'YYYY-MM-DD'), '그래, 네가 그나마 말이라도 들어주니까... 좀 나은 것 같아.', '어르신의 감정에 공감하며 대화 이어감.', 'Y');

INSERT INTO ROBOT_DETECT (NO, ELDERLY_ID, CREATE_TIME, TEXT, DETECT_METHOD, SUCCESS_YN) VALUES (11, 3, TO_DATE('2024-07-11', 'YYYY-MM-DD'), '지금은... 그냥 좀 쉬고 싶어.', '음악을 들으시면서 쉬시라고 권유.', 'Y');

INSERT INTO ROBOT_DETECT (NO, ELDERLY_ID, CREATE_TIME, TEXT, DETECT_METHOD, SUCCESS_YN) VALUES (12, 3, TO_DATE('2024-07-12', 'YYYY-MM-DD'), '응, 그래. 고마워.', '차분하게 마무리하며 어르신을 안심시킴.', 'Y');

COMMIT;

-- ROBOT MANUAL 로봇 대응 테이블
DELETE FROM ROBOT_MANUAL WHERE 0=0;

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (1, 1, '공감하는 말하기', 30, 25, TO_DATE('2024-07-12', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (1, 2, '심호흡하기', 24, 16, TO_DATE('2024-07-12', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (1, 3, '좋아하는 노래 듣기', 21, 11, TO_DATE('2024-07-12', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (1, 4, '보호자와 통화 연결', 18, 9, TO_DATE('2024-07-12', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (1, 5, '옛날 이야기하기', 15, 7, TO_DATE('2024-07-12', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (1, 6, '사진 앨범 보기', 13, 5, TO_DATE('2024-07-12', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (1, 7, '드라마 명장면 틀어드리기', 10, 3, TO_DATE('2024-07-12', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (1, 8, '간단한 운동 유도하기', 8, 2, TO_DATE('2024-07-12', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (1, 9, '가벼운 퀴즈 드리기', 5, 1, TO_DATE('2024-07-12', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (1, 10, '바둑 두기', 3, 0, TO_DATE('2024-07-12', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (2, 1, '공감하는 말하기', 30, 25, TO_DATE('2024-07-13', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (2, 2, '심호흡하기', 16, 16, TO_DATE('2024-07-13', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (2, 3, '좋아하는 노래 듣기', 21, 11, TO_DATE('2024-07-13', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (2, 4, '보호자와 통화 연결', 18, 9, TO_DATE('2024-07-13', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (2, 5, '옛날 이야기하기', 15, 7, TO_DATE('2024-07-13', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (2, 6, '사진 앨범 보기', 13, 5, TO_DATE('2024-07-13', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (2, 7, '드라마 명장면 틀어드리기', 10, 3, TO_DATE('2024-07-13', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (2, 8, '간단한 운동 유도하기', 8, 2, TO_DATE('2024-07-13', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (2, 9, '가벼운 퀴즈 드리기', 5, 1, TO_DATE('2024-07-13', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (2, 10, '바둑 두기', 3, 0, TO_DATE('2024-07-13', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (3, 1, '공감하는 말하기', 30, 25, TO_DATE('2024-07-14', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (3, 2, '심호흡하기', 16, 16, TO_DATE('2024-07-14', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (3, 3, '좋아하는 노래 듣기', 21, 11, TO_DATE('2024-07-14', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (3, 4, '보호자와 통화 연결', 18, 9, TO_DATE('2024-07-14', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (3, 5, '옛날 이야기하기', 15, 7, TO_DATE('2024-07-14', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (3, 6, '사진 앨범 보기', 13, 5, TO_DATE('2024-07-14', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (3, 7, '드라마 명장면 틀어드리기', 10, 3, TO_DATE('2024-07-14', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (3, 8, '간단한 운동 유도하기', 8, 2, TO_DATE('2024-07-14', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (3, 9, '가벼운 퀴즈 드리기', 5, 1, TO_DATE('2024-07-14', 'YYYY-MM-DD'));

INSERT INTO ROBOT_MANUAL (ELDERLY_ID , RANK , DETECT_METHOD, TOTAL_ATTEMPTS , SUCCESS_ATTEMPTS, CREATE_TIME) VALUES (3, 10, '바둑 두기', 3, 0, TO_DATE('2024-07-14', 'YYYY-MM-DD'));

COMMIT;

-- ROBOT_DIALOG 로봇 조회 테이블
DELETE FROM ROBOT_DIALOG WHERE 0=0;

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('1', '1', '2024-09-10 8:00:00', '어젯밤에는 잘 주무셨나요?', '어젯밤에는 잘 주무셨나요?', '잠은 잤지, 근데 자꾸 중간에 깨. 뒤척거리다 보면 다시 잠들기 힘들어. 피곤해.', '잠은 잤지만 자꾸 중간에 깨.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('2', '1', '2024-09-10 8:00:01', '오늘 하루가 조금 길게 느껴지셨군요. 텔레비전 보시면서 재미있는 프로그램은 없으셨어요?', '텔레비전 보시면서 재미있는 프로그램은 없으셨어요?', '응, 드라마 보긴 했는데 금방 끝났어. 요즘은 예전처럼 오래 즐기지 못하는 것 같아.', '드라마 보긴 했는데 금방 끝났는데 예전처럼 오래 즐기지 못하는 것 같다.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('3', '1', '2024-09-10 22:00:02', '천천히 쉬시면서 오늘 하루 보내시면 좋을 것 같아요. 필요하시면 언제든 불러주세요.', '천천히 쉬시면서 오늘 하루 보내면 좋을 것 같아요.', '응, 그래. 나중에 바람 좀 더 쐬러 나가볼까 생각 중이야. 그때 또 도와줘.', '바람 좀 더 쐬러 나가볼까 생각 중이고 바람 좀 더 쐬러 나가볼까 생각 중이다.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('4', '1', '2024-09-10 22:00:02', '오늘 많이 피곤하셨군요. 어르신, 잠자기 전에 스트레칭 좀 하시면 좀 나아지실 거예요. 내일은 좀 더 나은 하루가 되길 바라요.', '어르신, 잠자기 전에 스트레칭 좀 하면 좀 나아지실 거예요.', '내일? 글쎄... 내일도 오늘처럼 그냥 그렇게 보내겠지 뭐.', '내일도 그냥 그렇게 보내겠지 뭐... 내일도 오늘처럼 그냥 그렇게 보내겠지 뭐... 내일도 오늘처럼 그냥 그렇게 보내겠지 뭐...');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('5', '1', '2024-09-11 8:00:00', '안녕하세요, 어르신! 오늘 아침 기분은 어떠세요?', '어르신 오늘 아침 기분은 어떠세요?', '어, 그냥 그래. 뭐... 딱히 기분이 좋지도 나쁘지도 않고. 그냥 그런 날이지.', '기분이 좋지도 나쁘지도 않은 그냥 그런 날이지.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('6', '1', '2024-09-11 8:00:00', '내일은 오늘보다 조금 더 가벼운 하루가 될 거예요. 좋아하시는 활동을 조금씩 해보시면 기분이 나아지실 거예요.', '내일은 조금 더 가벼운 하루가 될 것이고 좋아하시는 활동을 조금씩 해보면 기분이 나아질 것이다.', '그럴까? 요즘은 뭐 딱히 하고 싶은 게 없어. 그냥 조용히 있고 싶어.', '요즘은 딱히 하고 싶은 게 없어.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('7', '1', '2024-09-11 22:00:02', '그러실 때는 좋아하시는 음악이나 들으시면서 편안하게 쉬시는 것도 좋을 것 같아요. 어르신이 좋아하시는 음악 있잖아요.', '어르신이 좋아하시는 음악을 들으시면서 편안하게 쉬시는 것도 좋을 것 같고 어르신이 좋아하시는 음악을 들으시면서 편안하게 쉬시는 것도 좋을 것 같다.', '음악... 그래, 예전에 듣던 클래식 음악이 좋더라. 그거 들으면 마음이 좀 편해지긴 해.', '클래식 음악은 예전에 듣던 클래식 음악이 좋더라.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('8', '1', '2024-09-11 22:00:02', '그 드라마가 재미있으셨군요. 혹시 저녁은 맛있게 드셨나요?', '드라마가 재미있으셨군요.', '저녁은 그냥 대충 먹었어. 요즘 입맛이 통 없어. 뭘 먹어도 그냥 그렇고, 별로야.', '저녁은 대충 먹었지만 입맛이 없어서 대충 먹었어.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('9', '1', '2024-09-12 8:00:08', '혹시 깰 때 어디 불편한 곳은 없으셨어요?', '깰 때 불편한 곳은 없으셨나요?', '응, 허리가 좀 아프더라. 나이가 드니까 뭐 여기도 쑤시고 저기도 쑤시고 그래.', '나이가 드니 허리가 좀 아프더라.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('10', '1', '2024-09-12 8:00:08', '그럼 음악 틀어드릴게요. 오늘은 편안히 쉬시고, 내일 아침에 또 뵐게요.', '음악 틀어드리고 편히 쉬시고 내일 아침에 또 뵐게요.', '그래. 오늘은 좀 일찍 자야겠어. 내일 보자.', '오늘은 좀 일찍 자야겠어.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('11', '1', '2024-09-12 22:00:02', '오늘 아침은 드셨어요?', '아침은 드셨나요', '응, 먹긴 했어. 근데 요즘 왜 이리 입맛이 없지? 뭐 먹어도 그냥 그렇더라.', '먹긴 했는데 입맛이 없어 뭐 먹어도 그냥 그렇더라.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('12', '1', '2024-09-12 22:00:02', '음악을 들으면서 천천히 쉬시면 몸도 마음도 더 편안해지실 거예요. 오늘 하루 수고 많으셨어요.', '음악을 들으면서 천천히 쉬시면 몸도 마음도 더 편안해질 거예요.', '고마워. 네가 있으니 마음이 좀 편안하네. 음악 들으면서 조금 쉬다 잘게.', '고마워.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('13', '1', '2024-09-13 8:00:12', '오늘은 특별히 하시고 싶은 일이 있으세요?', '오늘은 특별히 하고 싶은 일이 있냐고 하니 특별히 하고 싶은 일이 있다고 했다.', '글쎄... 뭐 할 것도 없고, 그냥 좀 쉬고 싶어. 날씨만 좋으면 나가서 바람이라도 쐬고 싶은데.', '날씨만 좋으면 나가서 바람이라도 쐬고 싶은데... 날씨만 좋으면 나가서 바람이라도 쐬고 싶은데... 날씨만 좋으면 나가서 바람이라도 쐬고 싶은데...');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('14', '1', '2024-09-13 8:00:13', '어르신, 오늘 하루는 어떻게 보내셨어요? 특별히 기억에 남는 일이 있었나요?', '어르신, 오늘 하루는 어떻게 보냈으며 특별히 기억에 남는 일이 있었나요?', '뭐, 별로... 그냥 텔레비전 좀 보고 누워 있었어. 하루가 참 길더라.', '텔레비전 좀 보고 누워 있었는데 하루가 참 길더라.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('15', '1', '2024-09-13 8:00:14', '오늘 날씨가 참 맑아요. 창문을 열어보시면 따뜻한 햇살이 들어와요. 바람도 부는데 기분 좋아지실 거예요.', '날씨가 참 맑아요.', '그렇다고? 햇살 좋으면 좀 나가볼까... 어, 바람도 시원하네. 창문 열어두니까 기분이 좀 나아.', '햇살 좋으면 좀 나가볼까... 바람도 시원하고 창문 열어두니까 기분이 좀 나아.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('16', '1', '2024-09-13 8:00:15', '그럼 클래식 음악을 틀어드릴까요? 편안하게 들으시면서 마음을 안정시키면 오늘 밤도 편안하게 주무실 수 있을 거예요.', '클래식 음악을 틀어드릴까요?', '그래, 그거 들으면 좀 낫겠지. 요즘은 뭐 할 것도 없고, 그냥 쉬는 게 최고야.', '요즘은 뭐 할 것도 없고 그냥 쉬는 게 최고야.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('17', '1', '2024-09-14 8:00:16', '자연을 느끼시면 기분도 한결 좋아지실 거예요. 오늘도 제가 옆에서 어르신을 도와드릴게요.', '자연을 느끼시면 기분도 한결 좋아지실 거예요.', '그래, 고마워. 오늘은 그냥 편안히 보내고 싶다. 괜히 힘들게 뭐 하느니 이렇게 있는 게 낫지.', '오늘은 그냥 편히 보내고 싶다.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('18', '1', '2024-09-14 8:00:17', '입맛이 없으시다니 걱정이네요. 속은 괜찮으세요? 불편하신 곳은 없으신가요?', '입맛이 없으시다니 걱정인데 속은 괜찮으신가요 불편한 곳은 없으신가요 ', '속도 좀 더부룩하고, 몸이 좀 무거워. 요즘 피곤한가 봐.', '속도 더부룩하고 몸이 무거워.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('19', '1', '2024-09-14 8:00:18', '네, 산책 다녀오시면 훨씬 나아지실 거예요. 그럼 어르신, 오늘 하루도 제가 잘 챙겨드릴게요.', '산책 다녀오시면 훨씬 나아지실 것이고 산책 다녀오시면 훨씬 나아지실 것이다.', '알았어. 네가 있으니까 나도 마음이 놓여. 산책하러 가기 전에 한번 더 불러.', '산책하러 가기 전에 한번 더 불러.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('20', '1', '2024-09-14 8:00:19', '물론이죠. 언제든 말씀하세요. 햇볕도 좋으니 산책도 참 좋을 거예요.', '햇볕도 좋고 산책도 참 좋을 거예요.', '그래, 그러면 오늘은 기분도 좀 나아지겠지. 산책 가서 기분 좀 풀어야겠네.', '산책 가서 기분 좀 풀고 산책 가서 기분 좀 풀어야겠다.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('21', '2', '2024-09-15 8:00:20', '어젯밤에는 잘 주무셨나요?', '어젯밤에는 잘 주무셨나요?', '잠은 잤지, 그런데 자꾸 중간에 깨서 뒤척거리게 돼. 한 번 깨면 다시 잠들기까지 꽤 시간이 걸리더라고. 그러다 보니 새벽에 겨우 잠들어서, 아침에 일어나면 피곤한 느낌이 남아 있어. 나이가 드니까 예전처럼 깊게 자는 게 힘든가 봐.', '잠은 잤는데 중간에 깨서 뒤척거리게 되고 한 번 깨면 다시 잠들기까지 시간이 걸려 새벽에 겨우 잠들어서 아침에 일어나면 피곤한 느낌이 남아 있다.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('22', '2', '2024-09-15 8:00:21', '오늘 하루가 조금 길게 느껴지셨군요. 텔레비전 보시면서 재미있는 프로그램은 없으셨어요?', '텔레비전 보시면서 재미있는 프로그램은 없으셨어요?', '응, 드라마 보긴 했는데 금방 끝났어. 요즘 방송이 예전만큼 재미있지도 않고, 시간도 금방 지나가서 좀 아쉽더라. 예전에는 1시간 넘게 재미있게 보곤 했는데, 이제는 뭔가 집중이 잘 안 돼서 그런지 금방 끝나버리는 것 같아.', '드라마 보긴 했는데 금방 끝났는데 방송이 예전만큼 재미있지도 않고 시간도 금방 지나가서 아쉽다.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('23', '2', '2024-09-15 8:00:22', '천천히 쉬시면서 오늘 하루 보내시면 좋을 것 같아요. 필요하시면 언제든 불러주세요.', '천천히 쉬시면서 오늘 하루 보내면 좋을 것 같아요.', '그래, 고마워. 나중에 바람 좀 쐬러 나가볼까 생각 중이야. 요즘 날씨가 괜찮으니까 나가서 산책을 좀 하면 기분도 나아질 것 같아. 그때 또 도와줘. 혼자 나가기 좀 힘들 때가 있거든.', '바람 좀 쐬러 나가볼까 생각 중인데 날씨가 괜찮으니까 산책을 좀 하면 기분도 나아질 것 같아 그때 또 도와줘.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('24', '2', '2024-09-15 8:00:23', '오늘 많이 피곤하셨군요. 어르신, 잠자기 전에 스트레칭 좀 하시면 좀 나아지실 거예요. 내일은 좀 더 나은 하루가 되길 바라요.', '어르신, 잠자기 전에 스트레칭 좀 하면 나아지실 거예요.', '스트레칭이라... 예전에는 자주 했었는데 요즘은 잊고 지냈네. 몸이 찌뿌둥할 때 한 번씩 해주면 좋다는 걸 알면서도, 막상 하기 귀찮아지더라고. 내일은 오늘보다는 좀 더 가볍게 하루를 보내고 싶긴 한데, 마음처럼 잘 될지는 모르겠어. 나이 들어서 그런지 하루하루가 비슷하게 느껴져.', '스트레칭을 자주 했었는데 몸이 찌뿌둥할 때 한 번씩 해주면 좋다는 걸 알면서도 막상 하기 귀찮아지더라고.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('25', '2', '2024-09-16 8:00:24', '안녕하세요, 어르신! 오늘 아침 기분은 어떠세요?', '어르신 오늘 아침 기분은 어떠세요?', '어, 그냥 그래. 뭐 딱히 기분이 좋지도 나쁘지도 않고 그냥 그렇다고 해야 할까. 특별히 뭔가 기쁜 일도 없고, 그렇다고 안 좋은 일도 없고. 요즘은 그냥 그런 날들이 계속 되는 것 같아. 예전처럼 뭔가에 크게 기뻐하거나 슬퍼하는 일도 드물어졌고 말이야.', '기분이 좋지도 나쁘지도 않고 특별히 기쁜 일도 없고 그렇다고 안 좋은 일도 없고 그냥 그런 날들이 계속 되는 것 같다.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('26', '2', '2024-09-16 8:00:25', '내일은 오늘보다 조금 더 가벼운 하루가 될 거예요. 좋아하시는 활동을 조금씩 해보시면 기분이 나아지실 거예요.', '내일은 조금 더 가벼운 하루가 될 것이고 좋아하시는 활동을 조금씩 해보면 기분이 나아질 것이다.', '그럴까? 사실 요즘은 뭐 딱히 하고 싶은 것도 없고, 그냥 조용히 시간을 보내는 게 제일 편하더라고. 예전에는 이래저래 바쁘게 살았는데 이제는 그런 것도 다 귀찮아졌어. 그래도 가끔은 좋아했던 활동을 다시 시작해볼까 하는 생각이 들기도 해.', '뭐 딱히 하고 싶은 것도 없고 조용히 시간을 보내는 게 제일 편하지만 예전에는 바쁘게 살았는데 이제는 그런 것도 다 귀찮아져서 가끔은 좋아했던 활동을 다시 시작해볼까 하는 생각이 들기도 한다.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('27', '2', '2024-09-16 8:00:26', '그러실 때는 좋아하시는 음악이나 들으시면서 편안하게 쉬시는 것도 좋을 것 같아요. 어르신이 좋아하시는 음악 있잖아요.', '어르신이 좋아하시는 음악을 들으시면서 편안하게 쉬시는 것도 좋을 것 같고 어르신이 좋아하시는 음악을 들으시면서 편안하게 쉬시는 것도 좋을 것 같다.', '음악이라... 그래, 예전에 듣던 클래식 음악이 아직도 좋더라. 요즘은 음악도 자주 듣지 않게 됐는데, 그거 들으면 마음이 좀 차분해지고 안정되는 느낌이 들어. 특히 밤에 들으면 더 좋아. 그렇게 듣다 보면 잠도 더 잘 오는 것 같고.', '클래식 음악은 예전에 듣던 클래식 음악이 아직도 좋더라.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('28', '2', '2024-09-16 8:00:27', '그 드라마가 재미있으셨군요. 혹시 저녁은 맛있게 드셨나요?', '드라마가 재미있으셨군요.', '저녁은 그냥 대충 먹었어. 요즘은 왜 그런지 입맛도 별로 없고, 뭘 먹어도 맛이 그저 그래. 예전에는 맛있게 먹었던 음식들도 이제는 그 맛이 예전 같지 않더라고. 그래서 그냥 간단하게 먹고 치워버렸어.', '저녁은 대충 먹었는데 입맛도 별로 없고 뭘 먹어도 맛이 그저 그래서 그냥 간단하게 먹고 치워버렸다.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('29', '2', '2024-09-17 8:00:28', '혹시 깰 때 어디 불편한 곳은 없으셨어요?', '깰 때 불편한 곳은 없으셨나요?', '응, 허리가 좀 아프더라. 요즘 들어서 허리 통증이 자주 생겨. 나이가 드니까 여기도 쑤시고 저기도 쑤시고, 그럴 때마다 걱정이야. 병원에 가봐야 하나 싶기도 하고, 그렇다고 병원에 가는 것도 번거롭고. 이렇게 그냥 버티고 있는데, 요즘은 앉아 있는 것조차 힘들어질 때가 있어.', '나이가 들면서 허리 통증이 자주 생겨 병원에 가봐야 하나 싶기도 하고 그렇다고 병원에 가는 것도 번거로워 그냥 버티고 있는데 앉아 있는 것조차 힘들어질 때가 있다.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('30', '2', '2024-09-17 8:00:29', '그럼 음악 틀어드릴게요. 오늘은 편안히 쉬시고, 내일 아침에 또 뵐게요.', '음악 틀어드리고 편히 쉬시고 내일 아침에 또 뵐게요.', '그래, 고마워. 오늘은 좀 일찍 자야겠어. 피곤하기도 하고, 내일은 좀 더 나은 하루를 보내고 싶거든. 음악 들으면서 마음을 좀 가라앉히고, 편안하게 잘 수 있으면 좋겠네. 내일 보자.', '음악 들으면서 마음을 가라앉히고 편안하게 잘 수 있으면 좋겠다.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('31', '2', '2024-09-17 8:00:30', '오늘 아침은 드셨어요?', '아침은 드셨나요 ', '응, 먹긴 했어. 그런데 요즘 왜 이리 입맛이 없지? 뭐 먹어도 그냥 그렇더라. 예전에는 아침밥을 든든하게 챙겨 먹었는데, 이제는 밥 먹는 것도 귀찮고 그냥 대충 때우게 되더라고. 이런 상태가 계속되면 몸에 안 좋을 텐데 말이야.', '아침밥을 든든하게 챙겨 먹었는데 밥 먹는 것도 귀찮고 대충 때우게 되는 상태가 계속되면 몸에 안 좋을 텐데 말이다.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('32', '2', '2024-09-17 8:00:31', '음악을 들으면서 천천히 쉬시면 몸도 마음도 더 편안해지실 거예요. 오늘 하루 수고 많으셨어요.', '음악을 들으면서 천천히 쉬시면 몸도 마음도 더 편안해질 거예요.', '그래, 고마워. 네가 이렇게 챙겨주니까 마음이 한결 편안하네. 음악 들으면서 잠깐 쉬었다가 잘게. 오늘은 하루 종일 피곤했으니까 푹 자야겠어. 내일은 좀 더 나은 기분으로 일어나면 좋겠다.', '음악 들으면서 잠깐 쉬었다가 자고 내일은 좀 더 나은 기분으로 일어나면 좋겠다.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('33', '2', '2024-09-18 8:00:32', '오늘은 특별히 하시고 싶은 일이 있으세요?', '오늘은 특별히 하고 싶은 일이 있냐고 하니 특별히 하고 싶은 일이 있다고 했다.', '글쎄... 특별히 할 것도 없고, 그냥 좀 쉬고 싶어. 날씨만 좋으면 나가서 바람이라도 쐬고 싶은데, 요즘은 날씨도 별로고 해서 집 안에만 있게 되네. 나가서 산책이라도 하면 기분이 좀 나아질 것 같긴 한데, 날씨가 도와주지 않으니 말이야.', '날씨만 좋으면 나가서 바람이라도 쐬고 싶은데 날씨가 도와주지 않으니 집 안에만 있게 된다.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('34', '2', '2024-09-18 8:00:33', '어르신, 오늘 하루는 어떻게 보내셨어요? 특별히 기억에 남는 일이 있었나요?', '어르신은 오늘 하루를 어떻게 보냈는지 기억에 남는 일이 있었는지 물었다.', '뭐, 특별한 일은 없었어. 그냥 텔레비전 좀 보고 누워 있었어. 하루가 참 길더라. 텔레비전을 봐도 집중이 잘 안 되고, 그렇다고 뭘 하기도 귀찮고. 그래서 그냥 멍하니 시간을 보낸 것 같아. 이런 날들이 계속되다 보니 시간이 참 더디게 흐르는 것처럼 느껴져.', '특별한 일은 없었고 텔레비전 좀 보고 누워 있었는데 하루가 참 길더라.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('35', '2', '2024-09-18 8:00:34', '오늘 날씨가 참 맑아요. 창문을 열어보시면 따뜻한 햇살이 들어와요. 바람도 부는데 기분 좋아지실 거예요.', '날씨가 참 맑아요.', '그렇다고? 그럼 창문 좀 열어볼까... 어, 바람도 시원하고 햇살도 좋네. 창문을 열어두니까 기분이 좀 나아지는 것 같아. 나중에 바람 쐬러 잠깐 나갔다 와야겠어. 이런 날씨가 계속되면 참 좋을 텐데, 요즘은 날씨가 자주 변해서 아쉽네.', '창문을 열어두니까 기분이 좀 나아지는 것 같아 바람 쐬러 잠깐 나갔다 와야겠어.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('36', '2', '2024-09-18 8:00:35', '그럼 클래식 음악을 틀어드릴까요? 편안하게 들으시면서 마음을 안정시키면 오늘 밤도 편안하게 주무실 수 있을 거예요.', '클래식 음악을 틀어줄까요 편안하게 들으시면서 마음을 안정시키면 오늘 밤도 편안하게 주무실 수 있을 거예요.', '그래, 클래식 음악 들으면 마음이 차분해지고 좋아. 요즘은 뭐 할 것도 없고, 그냥 쉬는 게 제일 낫더라고. 그렇게 음악 들으면서 차분히 있는 시간이 제일 좋은 것 같아. 그리고 나서 잠자리에 들면 그나마 편안하게 잠들 수 있을 것 같아.', '클래식 음악 들으면 마음이 차분해지고 좋아.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('37', '2', '2024-09-19 8:00:36', '자연을 느끼시면 기분도 한결 좋아지실 거예요. 오늘도 제가 옆에서 어르신을 도와드릴게요.', '자연을 느끼시면 기분도 한결 좋아지실 거예요.', '고마워. 네가 이렇게 신경 써주니 마음이 한결 가벼워지는 것 같아. 오늘은 그냥 편안히 보내고 싶다. 괜히 힘들게 뭐 하느니 이렇게 조용히 보내는 것도 좋은 것 같아. 가끔은 이런 평온한 시간이 더 소중하게 느껴지기도 하거든.', '신경 써줘서 마음이 한결 가벼워지는 것 같아.');

INSERT INTO ROBOT_DIALOG (NO, ELDERLY_ID, CREATE_TIME, ROBOT_TEXT, ROBOT_SUMMARIZE, ELDERLY_TEXT , ELDERLY_SUMMARIZE) VALUES ('38', '2', '2024-09-19 8:00:37', '입맛이 없으시다니 걱정이네요. 속은 괜찮으세요? 불편하신 곳은 없으신가요?', '입맛이 없으시다니 걱정인데 속이 괜찮으신가요 불편한 곳은 없으신가요 ', '속도 좀 더부룩하고, 몸이 좀 무거워. 요즘 피곤한가', '속도 좀 더부룩하고 몸이 좀 무거워.');

COMMIT;

-- ROBOT_DIALOG_EMOTION 로봇감정분석 테이블

DELETE FROM ROBOT_DIALOG_EMOTION WHERE 0=0;

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES (1, 1, TO_DATE('2024-07-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES (2, 1, TO_DATE('2024-07-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES (3, 1, TO_DATE('2024-07-02 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('4', 1, TO_DATE('2024-07-02 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('5', 1, TO_DATE('2024-07-03 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('6', 1, TO_DATE('2024-07-03 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('7', 1, TO_DATE('2024-07-04 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('8', 1, TO_DATE('2024-07-04 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('9', 1, TO_DATE('2024-07-05 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('10', 1, TO_DATE('2024-07-05 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('11', 1, TO_DATE('2024-07-06 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('12', 1, TO_DATE('2024-07-06 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('13', 1, TO_DATE('2024-07-07 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('14', 1, TO_DATE('2024-07-07 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('15', 1, TO_DATE('2024-07-08 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('16', 1, TO_DATE('2024-07-08 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('17', 1, TO_DATE('2024-07-09 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('18', 1, TO_DATE('2024-07-09 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('19', 1, TO_DATE('2024-07-10 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('20', 1, TO_DATE('2024-07-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('21', 2, TO_DATE('2024-07-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('22', 2, TO_DATE('2024-07-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('23', 2, TO_DATE('2024-07-02 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('24', 2, TO_DATE('2024-07-02 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('25', 2, TO_DATE('2024-07-03 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('26', 2, TO_DATE('2024-07-03 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('27', 2, TO_DATE('2024-07-04 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('28', 2, TO_DATE('2024-07-04 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('29', 2, TO_DATE('2024-07-05 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('30', 2, TO_DATE('2024-07-05 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('31', 2, TO_DATE('2024-07-06 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('32', 2, TO_DATE('2024-07-06 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('33', 2, TO_DATE('2024-07-07 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('34', 2, TO_DATE('2024-07-07 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('35', 2, TO_DATE('2024-07-08 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('36', 2, TO_DATE('2024-07-08 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('37', 2, TO_DATE('2024-07-09 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('38', 2, TO_DATE('2024-07-09 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('39', 2, TO_DATE('2024-07-10 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('40', 2, TO_DATE('2024-07-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('41', 3, TO_DATE('2024-07-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('42', 3, TO_DATE('2024-07-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('43', 3, TO_DATE('2024-07-02 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('44', 3, TO_DATE('2024-07-02 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('45', 3, TO_DATE('2024-07-03 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('46', 3, TO_DATE('2024-07-03 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('47', 3, TO_DATE('2024-07-04 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('48', 3, TO_DATE('2024-07-04 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('49', 3, TO_DATE('2024-07-05 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('50', 3, TO_DATE('2024-07-05 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('51', 3, TO_DATE('2024-07-06 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('52', 3, TO_DATE('2024-07-06 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('53', 3, TO_DATE('2024-07-07 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('54', 3, TO_DATE('2024-07-07 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('55', 3, TO_DATE('2024-07-08 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('56', 3, TO_DATE('2024-07-08 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('57', 3, TO_DATE('2024-07-09 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('58', 3, TO_DATE('2024-07-09 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'N');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('59', 3, TO_DATE('2024-07-10 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Y', 'Y');

INSERT INTO ROBOT_DIALOG_EMOTION (NO , ELDERLY_ID, CREATE_TIME, MORNING_NIGHT_YN, GOOD_BAD_YN) VALUES ('60', 3, TO_DATE('2024-07-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'N', 'Y');

COMMIT;

-- CARE_HANDOVER 인수인계 테이블

DELETE FROM CARE_HANDOVER WHERE 0=0 ;

INSERT INTO CARE_HANDOVER (NO, ELDERLY_ID , CREATE_TIME , TEXT) VALUES ('1', '1', '2024-07-01 08:00:00', '김춘분 어르신 아침 안 드심. 배고프다고 하실 수 있음.');

INSERT INTO CARE_HANDOVER (NO, ELDERLY_ID , CREATE_TIME , TEXT) VALUES ('2', '1', '2024-07-01 10:21:47', '춘자 어르신과 싸우심. 주의 필요!');

INSERT INTO CARE_HANDOVER (NO, ELDERLY_ID , CREATE_TIME , TEXT) VALUES ('3', '1', '2024-07-01 13:14:28', '아침 안 드시고 점심 많이 드심. 소화제 드림.');

INSERT INTO CARE_HANDOVER (NO, ELDERLY_ID , CREATE_TIME , TEXT) VALUES ('4', '1', '2024-07-01 16:42:51', '두통이 심하다고 하셔서 타이레놀 복용하심.');

INSERT INTO CARE_HANDOVER (NO, ELDERLY_ID , CREATE_TIME , TEXT) VALUES ('5', '1', '2024-07-01 20:57:02', '평소보다 한 시간 일찍 주무심.');

INSERT INTO CARE_HANDOVER (NO, ELDERLY_ID , CREATE_TIME , TEXT) VALUES ('6', '2', '2024-07-01 08:00:00', '아침 산책 중 길을 잃어버리셔서 요양보호사가 동행함.');

INSERT INTO CARE_HANDOVER (NO, ELDERLY_ID , CREATE_TIME , TEXT) VALUES ('7', '2', '2024-07-01 10:21:47', '식사 중에 음식을 잘못 삼키셔서 주의 필요. 물과 부드러운 음식을 제공함.');

INSERT INTO CARE_HANDOVER (NO, ELDERLY_ID , CREATE_TIME , TEXT) VALUES ('8', '2', '2024-07-01 13:14:28', '갑자기 집에 가야 한다며 불안해하심. 계속해서 안심시킴.');

INSERT INTO CARE_HANDOVER (NO, ELDERLY_ID , CREATE_TIME , TEXT) VALUES ('9', '3', '2024-07-01 08:00:00', '어제와 다르게 아침 식사 시 거부감 없음. 모든 식사 섭취 완료.');

INSERT INTO CARE_HANDOVER (NO, ELDERLY_ID , CREATE_TIME , TEXT) VALUES ('10', '3', '2024-07-01 10:21:47', 'TV를 보다가 전쟁 뉴스에 큰 충격을 받으심. 즉시 채널을 변경하고 대화를 나눔.');

INSERT INTO CARE_HANDOVER (NO, ELDERLY_ID , CREATE_TIME , TEXT) VALUES ('11', '3', '2024-07-01 13:14:28', '평소보다 감정 기복이 심해짐. 저녁 무렵 울음. 심리적 안정을 위해 산책 제공.');

COMMIT;




