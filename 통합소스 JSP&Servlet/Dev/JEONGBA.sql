DROP TABLE MEMBER;

DROP TABLE REPLY;
DROP TABLE BOARD;
DROP TABLE GRADE;
DROP TABLE FILES;

DROP SEQUENCE SEQ_MNO;
DROP SEQUENCE SEQ_BNO;
DROP SEQUENCE SEQ_RID;
DROP SEQUENCE SEQ_FID;

--------------------------------------------------
--------------     MEMBER 관련	------------------	
--------------------------------------------------

-- CREATE MEMBER TABLE
CREATE TABLE MEMBER (
	MEMBER_NO	    NUMBER      	PRIMARY KEY,        -- 회원 번호
	MEMBER_ID	    VARCHAR2(50)	UNIQUE,             -- 회원 아이디
	MEMBER_PW	    VARCHAR2(100)	NOT NULL,           -- 회원 비밀번호
	MEMBER_NAME	    VARCHAR2(30)	NOT NULL,           -- 회원 이름
    MEMBER_NICKNAME VARCHAR2(30)    UNIQUE,             -- 회원 닉네임
	MEMBER_GENDER	CHAR(2)	        NOT NULL,           -- 회원 성별
	MEMBER_BIRTHDAY	DATE	        NOT NULL,           -- 회원 생년월일
	MEMBER_PHONE	VARCHAR2(20)	NOT NULL,           -- 회원 전화번호
	MEMBER_EMAIL	VARCHAR2(100)	NOT NULL,           -- 회원 이메일
	MEMBER_ADDRESS	VARCHAR2(100)	NOT NULL,           -- 회원 주소
    MEMBER_REGDATE	DATE	        DEFAULT SYSDATE,    -- 회원 등록 날짜
	MEMBER_ENABLE	CHAR(2)	        DEFAULT 'Y',        -- 회원 활성화 여부
	MEMBER_GRADE	VARCHAR2(10)	DEFAULT 'user'      -- 회원 등급
);

CREATE SEQUENCE SEQ_MNO;

-- CREATE GRADE TABLE
--CREATE TABLE GRADE (
--	GRADE_NO	NUMBER	NOT NULL,
--	GRADE_NAME	VARCHAR2(20)	NOT NULL
--);

-- INSERT MEMBER
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'admin', 'admin', '관리자', '운영자', 'M', '90/01/01', '010-1234-5678', 'user1@nate.com', '서울특별시 강남구', SYSDATE, default, 'admin');
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user1', 'user1', 'USER1', '유저01', 'M', '90/01/02', '010-1111-1111', 'user2@nate.com', '서울특별시 관악구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user2', 'user2', 'USER2', '유저02', 'M', '90/01/02', '010-2222-2222', 'user2@nate.com', '서울특별시 관악구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user3', 'user3', 'USER3', '유저03', 'W', '90/01/03', '010-3333-3333', 'user3@nate.com', '서울특별시 노원구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user4', 'user4', 'USER4', '유저04', 'W', '90/01/04', '010-4444-4444', 'user4@nate.com', '서울특별시 종로구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user5', 'user5', 'USER5', '유저05', 'W', '90/01/05', '010-5555-5555', 'user5@nate.com', '서울특별시 서대문구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user6', 'user6', 'USER6', '유저06', 'M', '90/01/06', '010-6666-6666', 'user6@nate.com', '서울특별시 광진구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user7', 'user7', 'USER7', '유저07', 'W', '90/01/07', '010-7777-7777', 'user7@nate.com', '서울특별시 강서구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user8', 'user8', 'USER8', '유저08', 'W', '90/01/08', '010-8888-8888', 'user8@nate.com', '서울특별시 강동구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user9', 'user9', 'USER9', '유저09', 'M', '90/01/09', '010-9999-9999', 'user9@nate.com', '서울특별시 동작구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user10', 'user10', 'USER10', '유저10', 'M', '90/01/10', '010-1010-1010', 'user10@nate.com', '서울특별시 강북구', SYSDATE, default, default);

COMMIT;


--------------------------------------------------
--------------     BOARD 관련	------------------	
--------------------------------------------------

-- CREATE BOARD TABLE
CREATE TABLE BOARD (
	B_NO	        NUMBER	        PRIMARY KEY,        -- 게시글 번호
	B_NAME          VARCHAR2(100)	NOT NULL,           -- 게시판 이름
	B_TITLE	        VARCHAR2(100)	NOT NULL,           -- 게시글 제목
	B_CONTENT	    VARCHAR2(4000)	NOT NULL,           -- 게시글 내용
	B_DATE	        DATE	        DEFAULT SYSDATE,    -- 게시글 등록날짜
    B_RDATE	        DATE	        DEFAULT SYSDATE,    -- 게시글 수정날짜
	B_VIEW_COUNT	NUMBER	        DEFAULT 0,          -- 게시글 조회수
	B_RECOMMEND	    NUMBER	        DEFAULT 0,          -- 게시글 추천수
	B_ENABLE	    VARCHAR2(1)     DEFAULT 'Y',        -- 게시글 활성화여부
	B_WRITER	    NUMBER          NOT NULL,           -- 게시글 작성자
	B_REPLY_COUNT	NUMBER	        DEFAULT 0,          -- 게시글 댓글수
	AC_STATE	    VARCHAR2(50)	NULL,               -- 접수 상태
	LC_NAME	        VARCHAR(50)	    NULL,               -- 지역명
	ENROLL_STATE	VARCHAR2(50)	DEFAULT 'N',        -- 등록승인 상태
	EM_STATE	    VARCHAR2(50)	NULL,               -- 취업 상태
	TC_NAME	        VARCHAR2(50)	NULL,               -- 대상
	CG_NAME	        VARCHAR2(50)	NULL                -- 카테고리
);

CREATE SEQUENCE SEQ_BNO;

INSERT INTO BOARD
VALUES (1, '공지사항', '첫번째 공지사항입니다', '첫번째 공지사항 내용입니다.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '공지사항', '두번째 공지사항입니다', '두번째 공지사항 내용입니다.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT;


--------------------------------------------------
--------------     REPLY 관련	------------------	
--------------------------------------------------

-- CREATE REPLY TABLE
CREATE TABLE REPLY (
	REPLY_NO	    NUMBER	        PRIMARY KEY,
    REPLY_CONTENT   VARCHAR2(200)   NOT NULL, 
	REPLY_DATE	    DATE	        DEFAULT SYSDATE,
	R_WRITER	    NUMBER      	NOT NULL,
	B_NO	        NUMBER	        NOT NULL
);

CREATE SEQUENCE SEQ_RNO;

INSERT INTO REPLY 
VALUES (1, '첫번째 댓글 내용입니다.', SYSDATE, 1, 1);

INSERT INTO REPLY 
VALUES (SEQ_RNO.NEXTVAL, '두번째 댓글 내용입니다.', SYSDATE, 1, 1);

COMMIT;

--------------------------------------------------
--------------     FILES 관련	------------------	
--------------------------------------------------

-- CREATE FILES TABLE
CREATE TABLE FILES (
	FILE_CODE	NUMBER  	    PRIMARY KEY,
	FILE_NAME	VARCHAR2(500)	NOT NULL,
	FLIE_SIZE	VARCHAR2(300)	NOT NULL,
	FLIE_KIND	VARCHAR2(500)	NOT NULL,
	FILE_DATE	DATE	        NOT NULL,
	B_NO	    NUMBER	        NOT NULL
);

CREATE SEQUENCE SEQ_FNO;

COMMIT;

--------------------------------------------------
--------------     제약 조건 관련	------------------	
--------------------------------------------------

-- BOARD TABLE WRITER FOREIGN KEY 제약조건 
ALTER TABLE BOARD ADD CONSTRAINT FK_MEMBER1 FOREIGN KEY (B_WRITER) 
REFERENCES MEMBER(MEMBER_NO);

-- REPLY TABLE WRITER FOREIGN KEY 제약조건 
ALTER TABLE REPLY ADD CONSTRAINT FK_MEMBER2 FOREIGN KEY (R_WRITER) 
REFERENCES MEMBER(MEMBER_NO);

-- REPLY TABLE BOARD_NO FOREIGN KEY 제약조건2 
ALTER TABLE REPLY ADD CONSTRAINT FK_BOARD FOREIGN KEY (B_NO) 
REFERENCES BOARD(B_NO);

COMMIT;

--질문 게시판 리스트
CREATE OR REPLACE VIEW QALIST
AS
SELECT ROWNUM RNUM,QUESTION.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,CG_NAME
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='QA'
    ORDER BY B_NO DESC) QUESTION;

COMMIT;

-- QA 게시글 생성
BEGIN
    FOR I IN 1..30
    LOOP
       INSERT INTO BOARD VALUES (SEQ_BNO.NEXTVAL, 'QA', I, I,SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, NULL, NULL, NULL, NULL, NULL, '질문');
    END LOOP;
END;

COMMIT;

-- 질문 게시판 DETAIL
CREATE OR REPLACE VIEW QADETAIL
AS
SELECT *
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,CG_NAME
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='QA'
    ORDER BY B_NO DESC);

COMMIT;

-- 공지사항 리스트
CREATE OR REPLACE VIEW NOTICELIST
AS
SELECT ROWNUM RNUM,NOTICE.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,CG_NAME
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='공지사항'
    ORDER BY B_NO DESC) NOTICE;
    
--공지사항 디테일
CREATE OR REPLACE VIEW NOTICEDETAIL
AS
SELECT *
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,CG_NAME
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='공지사항'
    ORDER BY B_NO DESC);

-- 자유게시판 리스트
CREATE OR REPLACE VIEW FREELIST
AS
SELECT ROWNUM RNUM,FREE.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='자유'
    ORDER BY B_NO DESC) FREE;

-- 자유게시판 디테일
CREATE OR REPLACE VIEW FREEDETAIL
AS
SELECT *
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='자유'
    ORDER BY B_NO DESC);
    
COMMIT;

-- 자유게시판 게시글 생성
BEGIN
    FOR I IN 1..30
    LOOP
       INSERT INTO BOARD VALUES (SEQ_BNO.NEXTVAL, '자유', I, I, SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, NULL, NULL, NULL, NULL, NULL, null);
    END LOOP;
END;

COMMIT;

-- 지원정책 리스트
CREATE OR REPLACE VIEW SUPPORTLIST
AS
SELECT ROWNUM RNUM,SUPPORT.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,AC_STATE,LC_NAME,ENROLL_STATE,EM_STATE,TC_NAME,CG_NAME 
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='지원'
    ORDER BY B_NO DESC) SUPPORT;

-- 대외활동 리스트
CREATE OR REPLACE VIEW EXTERNALLIST
AS
SELECT ROWNUM RNUM,EX.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,AC_STATE,LC_NAME,ENROLL_STATE,TC_NAME,CG_NAME 
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='대외'
    ORDER BY B_NO DESC) EX;

COMMIT;

-- 지원정책 게시글 생성
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '지원', '첫번째 지원정책 글입니다', '첫번째 지원정책 내용입니다.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '접수중', '가평군', DEFAULT, '구직중', '청년(18~34세)', '재직지원');

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '지원', '두번째 지원정책 글입니다', '두번째 지원정책 내용입니다.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '접수중', '고양시', DEFAULT, '재직중', '중년(35~49세)', '취업지원');

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '지원', '세번째 지원정책 글입니다', '세번째 지원정책 내용입니다.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '접수중', '과천시', DEFAULT, '구직중', '장년(50~64세)', '기업지원');

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '지원', '네번째 지원정책 글입니다', '네번째 지원정책 내용입니다.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '접수중', '광명시', DEFAULT, '재직중', '어르신(65세 이상)', '창업지원');

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '지원', '다섯번째 지원정책 글입니다', '다섯번째 지원정책 내용입니다.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '접수중', '광주시', DEFAULT, '구직중', '청년(18~34세)', '생활/금융');

COMMIT;

-- 대외활동 게시글 생성
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '대외', '첫번째 대외활동 글입니다', '첫번째 대외활동 내용입니다.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '접수중', '가평군', DEFAULT, NULL, '청년(18~34세)', '공모전');

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '대외', '두번째 대외활동 글입니다', '두번째 대외활동 내용입니다.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '접수중', '고양시', DEFAULT, NULL, '중년(35~49세)', '경진대회');

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '대외', '세번째 대외활동 글입니다', '세번째 대외활동 내용입니다.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '접수중', '과천시', DEFAULT, NULL, '장년(50~64세)', '봉사활동');

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '대외', '네번째 대외활동 글입니다', '네번째 대외활동 내용입니다.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '접수중', '광명시', DEFAULT, NULL, '어르신(65세 이상)', '서포터즈');

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '대외', '다섯번째 대외활동 글입니다', '다섯번째 대외활동 내용입니다.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '접수중', '광주시', DEFAULT, NULL, '청년(18~34세)', '관람/전시/체험');

COMMIT;


----------------------- 여기까지 드래그 후 커밋 해주세요  ------------------------





--------------------------------------------------
--------------       연습장     	------------------	
--------------------------------------------------

-- INSERT MEMBER
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'admin', 'admin', '관리자', '운영자', 'M', '90/01/01', '010-1234-5678', 'user1@nate.com', '서울특별시 강남구', default, 'admin');
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user1', 'user1', 'USER1', '유저01', 'M', '90/01/02', '010-1111-1111', 'user2@nate.com', '서울특별시 관악구', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user2', 'user2', 'USER2', '유저02', 'M', '90/01/02', '010-2222-2222', 'user2@nate.com', '서울특별시 관악구', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user3', 'user3', 'USER3', '유저03', 'W', '90/01/03', '010-3333-3333', 'user3@nate.com', '서울특별시 노원구', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user4', 'user4', 'USER4', '유저04', 'W', '90/01/04', '010-4444-4444', 'user4@nate.com', '서울특별시 종로구', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user5', 'user5', 'USER5', '유저05', 'W', '90/01/05', '010-5555-5555', 'user5@nate.com', '서울특별시 서대문구', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user6', 'user6', 'USER6', '유저06', 'M', '90/01/06', '010-6666-6666', 'user6@nate.com', '서울특별시 광진구', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user7', 'user7', 'USER7', '유저07', 'W', '90/01/07', '010-7777-7777', 'user7@nate.com', '서울특별시 강서구', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user8', 'user8', 'USER8', '유저08', 'W', '90/01/08', '010-8888-8888', 'user8@nate.com', '서울특별시 강동구', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user9', 'user9', 'USER9', '유저09', 'M', '90/01/09', '010-9999-9999', 'user9@nate.com', '서울특별시 동작구', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user10', 'user10', 'USER10', '유저10', 'M', '90/01/10', '010-1010-1010', 'user10@nate.com', '서울특별시 강북구', default, default);

-- MEMBER TABLE PRIMARY KEY 제약조건
ALTER TABLE MEMBER ADD CONSTRAINT PK_MEMBER PRIMARY KEY (
	MEMBER_NO
);

-- BOARD TABLE PRIMARY KEY 제약조건
ALTER TABLE BOARD ADD CONSTRAINT PK_BOARD PRIMARY KEY (
	B_NO
);

-- FILE TABLE PRIMARY KEY 제약조건
ALTER TABLE FILES ADD CONSTRAINT PK_FILE PRIMARY KEY (
	FILE_CODE
);

-- REPLY TABLE PRIMARY KEY 제약조건
ALTER TABLE REPLY ADD CONSTRAINT PK_REPLY PRIMARY KEY (
	REPLY_NO
);

-- SELECT TABLE
SELECT * FROM MEMBER;
SELECT * FROM FILES;
SELECT * FROM BOARD;
SELECT * FROM REPLY;


-- SELECT BOARD JOIN MEMBER
SELECT B_NO, B_NAME, B_TITLE, B_CONTENT, B_DATE, B_VIEW_COUNT, B_RECOMMEND, B_REPLY_COUNT, M.MEMBER_ID, M.MEMBER_NAME
FROM BOARD
JOIN MEMBER M ON(MEMBER_NO = B_WRITER)
WHERE B_NO = 1;

SELECT * FROM FREELIST WHERE B_WRITER = 1 ORDER BY B_NO DESC;


