-- DROP TABLE ORDERS;
-- DROP TABLE PRODUCT;
-- DROP TABLE CUSTOMER;
DROP TABLE ELDERLY;
DROP TABLE ROBOT_DIALOG;
DROP TABLE CARE_HANDOVER;
DROP TABLE ROBOT_DETECT;
DROP TABLE ROBOT_MENUAL;

-- ELDERLY 테이블 (부모 테이블)
CREATE TABLE "ELDERLY" (
                           "ID" INTEGER PRIMARY KEY,
                           "NAME" VARCHAR2(100) NOT NULL,
                           "AGE" INTEGER DEFAULT 0,
                           "CONTACT" VARCHAR2(100),
                           "CREATE_TIME" TIMESTAMP NOT NULL
);

-- ROBOT_MENUAL 테이블
CREATE TABLE "ROBOT_MENUAL" (
                                "ID" INTEGER PRIMARY KEY,
                                "ELDERLY_ID" INTEGER,
                                "RANK" VARCHAR2(100),
                                "DETECT_METHOD" VARCHAR2(255),
                                "AGE" INTEGER DEFAULT 0,
                                "TOTAL_ATTEMPTS" INTEGER,
                                "SUCCESS_ATTEMPTS" TIMESTAMP,
                                "CREATE_TIME" DATE NOT NULL,
                                FOREIGN KEY ("ELDERLY_ID") REFERENCES "ELDERLY" ("ID")
);

-- ROBOT_DETECT 테이블
CREATE TABLE "ROBOT_DETECT" (
                                "NO" INTEGER,
                                "ID" INTEGER,
                                "ELDERLY_ID" INTEGER,
                                "CREATE_TIME" DATE NOT NULL,
                                "TEXT" VARCHAR2(255),
                                "EMOTION" VARCHAR2(100) DEFAULT 'Y',
                                "DETECT_METHOD" VARCHAR2(255),
                                "SUCCESS_YN" VARCHAR2(50) DEFAULT 'Y',
                                PRIMARY KEY ("NO", "ID"),
                                FOREIGN KEY ("ELDERLY_ID") REFERENCES "ELDERLY" ("ID")
);

-- ROBOT_DIALOG 테이블
CREATE TABLE "ROBOT_DIALOG" (
                                "ID" INTEGER PRIMARY KEY,
                                "ELDERLY_ID" INTEGER,
                                "CREATE_TIME" TIMESTAMP NOT NULL,
                                "ELDERLY_TEXT" VARCHAR2(255),
                                "ROBOT_TEXT" VARCHAR2(255),
                                "MORNING_NIGHT" VARCHAR2(50) DEFAULT 'MORNING',
                                FOREIGN KEY ("ELDERLY_ID") REFERENCES "ELDERLY" ("ID")
);

-- CARE_HANDOVER 테이블
CREATE TABLE "CARE_HANDOVER" (
                                 "ID" INTEGER PRIMARY KEY,
                                 "ELDERLY_ID" INTEGER,
                                 "CREATE_TIME" TIMESTAMP NOT NULL,
                                 "TEXT" VARCHAR2(255),
                                 FOREIGN KEY ("ELDERLY_ID") REFERENCES "ELDERLY" ("ID")
);

-- ROBOT_MENUAL에 UNIQUE 제약 조건 추가
ALTER TABLE "ROBOT_MENUAL" ADD CONSTRAINT "ROBOT_METHOD_UNIQUE" UNIQUE ("DETECT_METHOD");

-- ROBOT_DETECT에서 DETECT_METHOD를 ROBOT_MENUAL과 연결
ALTER TABLE "ROBOT_DETECT" ADD FOREIGN KEY ("DETECT_METHOD") REFERENCES "ROBOT_MENUAL" ("DETECT_METHOD");
