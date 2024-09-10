-- DROP TABLE ORDERS;
-- DROP TABLE PRODUCT;
-- DROP TABLE CUSTOMER;
DROP TABLE CARE_HANDOVER;
DROP TABLE ROBOT_DETECT;
DROP TABLE ROBOT_MANUAL;
DROP TABLE ROBOT_DIALOG;
DROP TABLE ROBOT_DIALOG_EMOTION;
DROP TABLE ELDERLY;

-- ELDERLY 테이블 (부모 테이블)
CREATE TABLE "ELDERLY" (
                           "ELDERLY_ID" INTEGER PRIMARY KEY,
                           "NAME" VARCHAR2(100) NOT NULL,
                           "AGE" INTEGER DEFAULT 0,
                           "GENDER" VARCHAR2(1)  DEFAULT 'Y',
                           "BIRTH" TIMESTAMP,
                           "CONDITION" VARCHAR2(2000),
                           "CONTACT" VARCHAR2(50),
                           "CREATE_TIME" TIMESTAMP NOT NULL
);

-- ROBOT_MANUAL 테이블
CREATE TABLE "ROBOT_MANUAL" (
                                "ELDERLY_ID" INTEGER,
                                "RANK" VARCHAR2(50),
                                "DETECT_METHOD" VARCHAR2(1000),
                                "TOTAL_ATTEMPTS" INTEGER,
                                "SUCCESS_ATTEMPTS" INTEGER,
                                "CREATE_TIME" DATE NOT NULL,
                                CONSTRAINT PK_ROBOT_MANUAL PRIMARY KEY ("ELDERLY_ID", "RANK"),
                                FOREIGN KEY ("ELDERLY_ID") REFERENCES "ELDERLY" ("ELDERLY_ID")
);

-- ROBOT_DETECT 테이블
CREATE TABLE "ROBOT_DETECT" (
                                "NO" INTEGER PRIMARY KEY,
                                "ELDERLY_ID" INTEGER,
                                "CREATE_TIME" DATE NOT NULL,
                                "TEXT" VARCHAR2(4000),
                                "DETECT_METHOD" VARCHAR2(1000),
                                "SUCCESS_YN" VARCHAR2(1) DEFAULT 'Y',
                                FOREIGN KEY ("ELDERLY_ID") REFERENCES "ELDERLY" ("ELDERLY_ID")
);

-- ROBOT_DIALOG 테이블
DROP TABLE ROBOT_DIALOG;
CREATE TABLE "ROBOT_DIALOG" (
                                "NO" INTEGER PRIMARY KEY,
                                "ELDERLY_ID" INTEGER,
                                "CREATE_TIME" TIMESTAMP NOT NULL,
                                "ELDERLY_TEXT" VARCHAR2(4000),
                                "ELDERLY_SUMMARIZE" VARCHAR2(2000),
                                "ROBOT_TEXT" VARCHAR2(4000),
                                "ROBOT_SUMMARIZE" VARCHAR2(2000),
                                FOREIGN KEY ("ELDERLY_ID") REFERENCES "ELDERLY" ("ELDERLY_ID")
);

-- ROBOT_DIALOG_EMOTION 테이블
CREATE TABLE "ROBOT_DIALOG_EMOTION" (
                                        "NO" INTEGER PRIMARY KEY,
                                        "ELDERLY_ID" INTEGER,
                                        "CREATE_TIME" TIMESTAMP NOT NULL,
                                        "MORNING_NIGHT_YN" VARCHAR2(1) DEFAULT 'Y',
                                        "GOOD_BAD_YN" VARCHAR2(1) DEFAULT 'Y',
                                        FOREIGN KEY ("ELDERLY_ID") REFERENCES "ELDERLY" ("ELDERLY_ID")
);


-- CARE_HANDOVER 테이블
CREATE TABLE "CARE_HANDOVER" (
                                 "NO" INTEGER PRIMARY KEY,
                                 "ELDERLY_ID" INTEGER,
                                 "CREATE_TIME" TIMESTAMP NOT NULL,
                                 "TEXT" VARCHAR2(500),
                                 FOREIGN KEY ("ELDERLY_ID") REFERENCES "ELDERLY" ("ELDERLY_ID")
);

CREATE SEQUENCE CARE_HANDOVER_NO_SEQ
    START WITH 100       -- 초기값
    INCREMENT BY 1     -- 증가값
    NOCACHE            -- 캐시 사용하지 않음
    NOCYCLE;           -- 최대값에 도달해도 다시 1로 돌아가지 않음

-- 권한주기
GRANT SELECT ON CARE_HANDOVER_NO_SEQ TO C##LAB4DX;
