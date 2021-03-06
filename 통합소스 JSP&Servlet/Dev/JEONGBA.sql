--------------------------------------------------
--------------     테이블 초기화 	------------------	
--------------------------------------------------

DROP TABLE MEMBER CASCADE CONSTRAINTS;

DROP TABLE REPLY CASCADE CONSTRAINTS;
DROP TABLE BOARD CASCADE CONSTRAINTS;
DROP TABLE GRADE CASCADE CONSTRAINTS;
DROP TABLE FILES CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_MNO;
DROP SEQUENCE SEQ_BNO;
DROP SEQUENCE SEQ_RNO;
DROP SEQUENCE SEQ_FNO;

ALTER TABLE BOARD DROP CONSTRAINT FK_MEMBER1;
ALTER TABLE REPLY DROP CONSTRAINT FK_MEMBER2;
ALTER TABLE REPLY DROP CONSTRAINT FK_BOARD;
ALTER TABLE FILES DROP CONSTRAINT FK_BOARD2;
ALTER TABLE FILES DROP CONSTRAINT FK_MEMBER3;


drop view "JEONGBA"."BLIST";
drop view "JEONGBA"."COMMULIST";
drop view "JEONGBA"."EXTERNALLIST";
drop view "JEONGBA"."FREEDETAIL";
drop view "JEONGBA"."FREELIST";
drop view "JEONGBA"."MAINEXTERNALLIST";
drop view "JEONGBA"."MAINSUPPORTLIST";
drop view "JEONGBA"."NOTICEDETAIL";
drop view "JEONGBA"."NOTICELIST";
drop view "JEONGBA"."QADETAIL";
drop view "JEONGBA"."QALIST";
drop view "JEONGBA"."REPLYLIST";
drop view "JEONGBA"."SUPPORTLIST";
drop view "JEONGBA"."MEMBERLIST";


--------------------------------------------------
--------------     MEMBER 관련	------------------	
--------------------------------------------------

-- CREATE MEMBER TABLE
CREATE TABLE MEMBER (
	MEMBER_NO	    NUMBER      	PRIMARY KEY,
	MEMBER_ID	    VARCHAR2(50)	UNIQUE,
	MEMBER_PW	    VARCHAR2(100)	NOT NULL,
	MEMBER_NAME	    VARCHAR2(30)	NOT NULL,
    MEMBER_NICKNAME VARCHAR2(30)    UNIQUE,
	MEMBER_GENDER	CHAR(2)	        NOT NULL,
	MEMBER_BIRTHDAY	DATE	        NOT NULL,
	MEMBER_PHONE	VARCHAR2(20)	NOT NULL,
	MEMBER_EMAIL	VARCHAR2(100)	NOT NULL,
	MEMBER_ADDRESS	VARCHAR2(100)	NOT NULL,
    MEMBER_REGDATE	DATE	        DEFAULT SYSDATE NOT NULL,
	MEMBER_ENABLE	CHAR(2)	        DEFAULT 'Y' NOT NULL,
	MEMBER_GRADE	VARCHAR2(10)	DEFAULT 'user' NOT NULL
);

CREATE SEQUENCE SEQ_MNO;    -- MEMBER SEQUENCE

COMMIT;


--------------------------------------------------
--------------     BOARD 관련	------------------	
--------------------------------------------------

-- CREATE BOARD TABLE
CREATE TABLE BOARD (
	B_NO	            NUMBER	        PRIMARY KEY,
	B_NAME              VARCHAR2(100)	NOT NULL,
	B_TITLE	            VARCHAR2(100)	NOT NULL,
	B_CONTENT	        VARCHAR2(4000)	NOT NULL,
	B_DATE	            DATE	        DEFAULT SYSDATE NOT NULL,
    B_RDATE	            DATE	        DEFAULT SYSDATE NOT NULL,
	B_VIEW_COUNT	    NUMBER	        DEFAULT 0 NOT NULL,
	B_RECOMMEND	        NUMBER	        DEFAULT 0 NOT NULL,
	B_ENABLE	        VARCHAR2(1)     DEFAULT 'Y' NOT NULL,
	B_WRITER	        NUMBER          NOT NULL,
	B_REPLY_COUNT	    NUMBER	        DEFAULT 0 NOT NULL,
	AC_STATE	        VARCHAR2(50)	NULL,
	LC_NAME	            VARCHAR(300)	NULL,   --
	ENROLL_STATE	    VARCHAR2(50)	DEFAULT 'N' NOT NULL,
	EM_STATE	        VARCHAR2(50)	NULL,
	TC_NAME	            VARCHAR2(300)	NULL,   --
	CG_NAME	            VARCHAR2(50)	NULL,
    RECRUIT_STARTDATE   DATE            NULL,
    RECRUIT_ENDDATE     DATE            NULL,
    ACTIVITY_STARTDATE  DATE            NULL,
    ACTIVITY_ENDDATE    DATE            NULL
);

CREATE SEQUENCE SEQ_BNO;    -- BOARD SEQUENCE

COMMIT;


--------------------------------------------------
--------------     REPLY 관련	------------------	
--------------------------------------------------

-- CREATE REPLY TABLE
CREATE TABLE REPLY (
	REPLY_NO	    NUMBER	        PRIMARY KEY,
    REPLY_CONTENT   VARCHAR2(500)   NOT NULL, 
	REPLY_DATE	    DATE	        DEFAULT SYSDATE NOT NULL,
    REPLY_RDATE     DATE            DEFAULT SYSDATE NOT NULL,    --
	R_WRITER	    NUMBER      	NOT NULL,
    REPLY_ENABLE    VARCHAR2(1)     DEFAULT 'Y' NOT NULL,        --
	B_NO	        NUMBER	        NOT NULL
);

CREATE SEQUENCE SEQ_RNO;    -- REPLY SEQUENCE

COMMIT;


--------------------------------------------------
--------------     FILES 관련	------------------	
--------------------------------------------------

-- CREATE FILES TABLE
CREATE TABLE FILES (
    FILE_NO           NUMBER            PRIMARY KEY,
    ORIGIN_NAME       VARCHAR2(255)     NOT NULL,
    CHANGE_NAME       VARCHAR2(255)     NOT NULL,
    FILE_PATH         VARCHAR2(1000)    NOT NULL,
    UPLOAD_DATE       DATE              DEFAULT SYSDATE  NOT NULL,
    FILE_LEVEL        NUMBER            NOT NULL,
    DOWNLOAD_COUNT    NUMBER            DEFAULT 0,
    STATUS            VARCHAR2(1)       DEFAULT 'Y',
    B_NO              NUMBER,
    MEMBER_NO         NUMBER
    --FOREIGN KEY (B_NO) REFERENCES BOARD 
    --FOREIGN KEY (MEMBER_NO) REFERENCES MEMBER
);

CREATE SEQUENCE SEQ_FNO;    -- FILE SEQUENCE

COMMIT;


--------------------------------------------------
--------------     제약 조건 관련	------------------	
--------------------------------------------------

-- BOARD TABLE WRITER FOREIGN KEY 제약조건 
ALTER TABLE BOARD ADD CONSTRAINT FK_MEMBER1 FOREIGN KEY (B_WRITER) 
REFERENCES MEMBER(MEMBER_NO) ON DELETE CASCADE;

-- REPLY TABLE WRITER FOREIGN KEY 제약조건 
ALTER TABLE REPLY ADD CONSTRAINT FK_MEMBER2 FOREIGN KEY (R_WRITER) 
REFERENCES MEMBER(MEMBER_NO) ON DELETE CASCADE;

-- REPLY TABLE BOARD_NO FOREIGN KEY 제약조건1 
ALTER TABLE REPLY ADD CONSTRAINT FK_BOARD FOREIGN KEY (B_NO) 
REFERENCES BOARD(B_NO) ON DELETE CASCADE;

-- FILES TABLE BOARD_NO FOREIGN KEY 제약조건2 
ALTER TABLE FILES ADD CONSTRAINT FK_BOARD2 FOREIGN KEY (B_NO) 
REFERENCES BOARD(B_NO) ON DELETE CASCADE;

-- FILES TABLE MEMBER_NO FOREIGN KEY 제약조건
ALTER TABLE FILES ADD CONSTRAINT FK_MEMBER3 FOREIGN KEY (MEMBER_NO) 
REFERENCES MEMBER(MEMBER_NO) ON DELETE CASCADE;

COMMIT;


--------------------------------------------------
----------------   VIEW 관련	   -------------------	
--------------------------------------------------

--멤버 리스트
CREATE OR REPLACE VIEW MEMBERLIST
AS                      
SELECT ROWNUM RNUM,MEMBER.*
FROM ( SELECT MEMBER_NO,MEMBER_ID,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_GENDER,MEMBER_BIRTHDAY,MEMBER_PHONE,MEMBER_EMAIL,MEMBER_ADDRESS,MEMBER_REGDATE,MEMBER_ENABLE,MEMBER_GRADE, 
(SELECT COUNT(*) 
    FROM BOARD B
    WHERE M.MEMBER_NO=B.B_WRITER) MEMBER_BOARD
FROM MEMBER M
WHERE MEMBER_GRADE='user'
ORDER BY MEMBER_NO DESC) MEMBER;

COMMIT;


-- 질문 게시판 리스트
CREATE OR REPLACE VIEW QALIST
AS
SELECT ROWNUM RNUM,QUESTION.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,CG_NAME
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='QA'
    ORDER BY B_NO DESC) QUESTION;

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


--공지사항 게시판 리스트
CREATE OR REPLACE VIEW NOTICELIST
AS
SELECT ROWNUM RNUM,NOTICE.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,CG_NAME
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='공지사항'
    ORDER BY B_NO DESC) NOTICE;

COMMIT;


--공지사항 게시판 디테일
CREATE OR REPLACE VIEW NOTICEDETAIL
AS
SELECT *
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,CG_NAME
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='공지사항'
    ORDER BY B_NO DESC);

COMMIT;


--자유 게시판 리스트
CREATE OR REPLACE VIEW FREELIST
AS
SELECT ROWNUM RNUM, F.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='자유'
    ORDER BY B_NO DESC) F;	

COMMIT;


--자유 게시판 디테일
CREATE OR REPLACE VIEW FREEDETAIL
AS
SELECT *
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='자유'
    ORDER BY B_NO DESC);	

COMMIT;


-- 지원정책 전체 리스트
CREATE OR REPLACE VIEW SUPPORTLIST
AS
SELECT ROWNUM RNUM,SUPPORT.*
FROM (SELECT B_NO,B_NAME,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,AC_STATE,LC_NAME,ENROLL_STATE,EM_STATE,TC_NAME,CG_NAME,RECRUIT_STARTDATE,RECRUIT_ENDDATE 
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='지원'
    ORDER BY B_NO DESC) SUPPORT;

COMMIT;


-- 대외활동 전체 리스트
CREATE OR REPLACE VIEW EXTERNALLIST
AS
SELECT ROWNUM RNUM,EXTERNALLIST.*
FROM (SELECT B_NO,B_NAME,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,AC_STATE,LC_NAME,ENROLL_STATE,EM_STATE,TC_NAME,CG_NAME,RECRUIT_STARTDATE,RECRUIT_ENDDATE,ACTIVITY_STARTDATE,ACTIVITY_ENDDATE 
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='대외'
    ORDER BY B_NO DESC) EXTERNALLIST;

COMMIT;


-- 지원정책 메인 리스트
CREATE OR REPLACE VIEW MAINSUPPORTLIST
AS
SELECT ROWNUM RNUM,SUPPORT.*
FROM (SELECT B_NO,B_NAME,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,AC_STATE,LC_NAME,ENROLL_STATE,EM_STATE,TC_NAME,CG_NAME,RECRUIT_STARTDATE,RECRUIT_ENDDATE,ACTIVITY_STARTDATE,ACTIVITY_ENDDATE 
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='지원' AND ENROLL_STATE='Y' 
    ORDER BY B_NO DESC) SUPPORT;

COMMIT;


-- 대외활동 메인 리스트
CREATE OR REPLACE VIEW MAINEXTERNALLIST
AS
SELECT ROWNUM RNUM,EXTERNALLIST.*
FROM (SELECT B_NO,B_NAME,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,AC_STATE,LC_NAME,ENROLL_STATE,EM_STATE,TC_NAME,CG_NAME,RECRUIT_STARTDATE,RECRUIT_ENDDATE,ACTIVITY_STARTDATE,ACTIVITY_ENDDATE 
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='대외' AND ENROLL_STATE='Y' 
    ORDER BY B_NO DESC) EXTERNALLIST;

COMMIT;


-- 통합게시판 리스트 BLIST
CREATE OR REPLACE VIEW BLIST
AS
SELECT ROWNUM RNUM,B.*
FROM (SELECT B_NO,B_NAME,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_ENABLE,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,AC_STATE,LC_NAME,ENROLL_STATE,EM_STATE,TC_NAME,CG_NAME,RECRUIT_STARTDATE,RECRUIT_ENDDATE,ACTIVITY_STARTDATE,ACTIVITY_ENDDATE 
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' 
    ORDER BY B_NO DESC) B;
    
COMMIT;


--커뮤니티 리트스 전체
CREATE OR REPLACE VIEW COMMULIST
AS
SELECT ROWNUM RNUM,COMMU.*
FROM (SELECT B_NO,B_NAME,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,AC_STATE,LC_NAME,ENROLL_STATE,EM_STATE,TC_NAME,CG_NAME,RECRUIT_STARTDATE,RECRUIT_ENDDATE,ACTIVITY_STARTDATE,ACTIVITY_ENDDATE 
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND ENROLL_STATE='N' AND (B_NAME='지원' OR B_NAME='대외' OR B_NAME='자유')
    ORDER BY B_NO DESC) COMMU;
    
COMMIT;


-- 댓글 리스트(프로필 포함)
CREATE OR REPLACE VIEW REPLYLIST
AS 
SELECT ROWNUM RNUM, REPLY_NO, REPLY_CONTENT, REPLY_DATE, REPLY_RDATE, R_WRITER, MEMBER_NICKNAME, REPLY_ENABLE, B_NO, CHANGE_NAME
FROM (SELECT R.REPLY_NO, R.REPLY_CONTENT, R.REPLY_DATE, R.REPLY_RDATE, R.R_WRITER, M.MEMBER_NICKNAME, R.REPLY_ENABLE, R.B_NO, F.CHANGE_NAME
        FROM REPLY R
            JOIN MEMBER M ON M.MEMBER_NO = R.R_WRITER
            LEFT OUTER JOIN FILES F ON R.R_WRITER = F.MEMBER_NO
        WHERE R.REPLY_ENABLE='Y'
        ORDER BY R.REPLY_NO ASC);

COMMIT;
 
 
 --------------------------------------------------
--------------  검색 관련 리스트  ------------------	
--------------------------------------------------


--자유 게시판 검색 리스트
-- ALL
SELECT ROWNUM RNUM, F.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='자유' AND (B_TITLE LIKE ?  OR B_CONTENT LIKE ? OR MEMBER_NICKNAME LIKE ?) 
    ORDER BY B_NO DESC) F 
WHERE ROWNUM BETWEEN ? AND ?;

-- WRITER
SELECT ROWNUM RNUM, F.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='자유' AND MEMBER_NICKNAME LIKE ?  
    ORDER BY B_NO DESC) F 
WHERE ROWNUM BETWEEN ? AND ?;

-- TITLE
SELECT ROWNUM RNUM, F.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='자유' AND B_TITLE LIKE ?  
    ORDER BY B_NO DESC) F 
WHERE ROWNUM BETWEEN ? AND ?;

-- CONTENT
SELECT ROWNUM RNUM, F.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='자유' AND B_CONTENT LIKE ?  
    ORDER BY B_NO DESC) F 
WHERE ROWNUM BETWEEN ? AND ?;

-- TITLE_CONTENT
SELECT ROWNUM RNUM, F.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='자유' AND (B_TITLE LIKE ? OR B_CONTENT LIKE ?) 
    ORDER BY B_NO DESC) F 
WHERE ROWNUM BETWEEN ? AND ?;
    
-- ELSE
SELECT * FROM FREELIST WHERE RNUM BETWEEN ? AND ? ORDER BY B_NO DESC;





 
 
 
 
 
        
--------------------------------------------------
--------------  샘플 데이터 생성 관련 ---------------	
--------------------------------------------------

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
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user11', 'user11', 'USER11', '유저11', 'M', '90/01/02', '010-1111-1111', 'user2@nate.com', '서울특별시 관악구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user12', 'user12', 'USER12', '유저12', 'M', '90/01/02', '010-2222-2222', 'user2@nate.com', '서울특별시 관악구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user13', 'user13', 'USER13', '유저13', 'W', '90/01/03', '010-3333-3333', 'user3@nate.com', '서울특별시 노원구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user14', 'user14', 'USER14', '유저14', 'W', '90/01/04', '010-4444-4444', 'user4@nate.com', '서울특별시 종로구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user15', 'user15', 'USER15', '유저15', 'W', '90/01/05', '010-5555-5555', 'user5@nate.com', '서울특별시 서대문구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user16', 'user16', 'USER16', '유저16', 'M', '90/01/06', '010-6666-6666', 'user6@nate.com', '서울특별시 광진구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user17', 'user17', 'USER17', '유저17', 'W', '90/01/07', '010-7777-7777', 'user7@nate.com', '서울특별시 강서구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user18', 'user18', 'USER18', '유저18', 'W', '90/01/08', '010-8888-8888', 'user8@nate.com', '서울특별시 강동구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user19', 'user19', 'USER19', '유저19', 'M', '90/01/09', '010-9999-9999', 'user9@nate.com', '서울특별시 동작구', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user20', 'user20', 'USER20', '유저20', 'M', '90/01/10', '010-1010-1010', 'user10@nate.com', '서울특별시 강북구', SYSDATE, default, default);

-- 공지사항 게시글 생성
INSERT INTO BOARD
VALUES (1, '공지사항', '첫번째 공지사항입니다', '첫번째 공지사항 내용입니다.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '공지사항', '두번째 공지사항입니다', '두번째 공지사항 내용입니다.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);


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


-- 자유게시판 게시글 생성
BEGIN
    FOR I IN 1..30
    LOOP
       INSERT INTO BOARD VALUES (SEQ_BNO.NEXTVAL, '자유', I, I, SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, NULL, NULL, NULL, NULL, NULL, null);
    END LOOP;
END;


-- 댓글 게시글 생성
INSERT INTO REPLY 
VALUES (1, '첫번째 댓글 내용입니다.', SYSDATE, SYSDATE, 1, DEFAULT, 1);

INSERT INTO REPLY 
VALUES (SEQ_RNO.NEXTVAL, '두번째 댓글 내용입니다.', SYSDATE, SYSDATE, 1, DEFAULT, 1);


-- 질문 게시글 생성
BEGIN
    FOR I IN 1..30
    LOOP
       INSERT INTO BOARD VALUES (SEQ_BNO.NEXTVAL, 'QA', I, I,SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, NULL, NULL, NULL, NULL, NULL, '질문');
    END LOOP;
END;

COMMIT;


--------------------------------------------------
--------------       연습장     	------------------	
--------------------------------------------------
SELECT * FROM FILES WHERE MEMBER_NO = 1;

SELECT B.*, F.CHANGE_NAME
FROM BOARD B
LEFT OUTER JOIN FILES F
ON B.B_WRITER = F.MEMBER_NO;


-- 댓글 리스트 + 댓글 작성자 프로필
SELECT R.*, F.CHANGE_NAME
FROM REPLY R
LEFT OUTER JOIN FILES F
ON R.R_WRITER = F.MEMBER_NO;

SELECT * FROM NOTICELIST WHERE RNUM BETWEEN 1 AND 4 ORDER BY B_NO DESC;


SELECT * FROM
(SELECT ROWNUM RNUM, F.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='자유' AND B_TITLE LIKE '%1%'  
    ORDER BY B_NO DESC) F)
WHERE RNUM BETWEEN 10 AND 13;



SELECT * FROM
(SELECT ROWNUM RNUM, N.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,CG_NAME 
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='공지사항' AND B_TITLE LIKE '%1%'  
    ORDER BY B_NO DESC) N)
WHERE RNUM BETWEEN 1 AND 20;



SELECT * FROM 
(SELECT ROWNUM RNUM,MEM.*
    FROM (SELECT MEMBER_NO,MEMBER_ID,MEMBER_NAME,MEMBER_NICKNAME,MEMBER_GENDER,MEMBER_BIRTHDAY,MEMBER_PHONE,MEMBER_EMAIL,MEMBER_ADDRESS,MEMBER_REGDATE,MEMBER_ENABLE,MEMBER_GRADE, 
    (SELECT COUNT(*) FROM BOARD B WHERE M.MEMBER_NO=B.B_WRITER) MEMBER_BOARD FROM MEMBER M 
    WHERE MEMBER_GRADE='user' AND MEMBER_NO LIKE '%1%' 
    ORDER BY MEMBER_NO DESC) MEM)
WHERE RNUM BETWEEN 1 AND 5;


SELECT * FROM
(SELECT ROWNUM RNUM,SUPPORT.*
FROM (SELECT B_NO,B_NAME,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,AC_STATE,LC_NAME,ENROLL_STATE,EM_STATE,TC_NAME,CG_NAME,RECRUIT_STARTDATE,RECRUIT_ENDDATE 
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='지원'
    ORDER BY B_NO DESC) SUPPORT)
WHERE RNUM BETWEEN 2 AND 5;



SELECT * FROM 
(SELECT ROWNUM RNUM,EXTERNALLIST.*
FROM (SELECT B_NO,B_NAME,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,AC_STATE,LC_NAME,ENROLL_STATE,EM_STATE,TC_NAME,CG_NAME,RECRUIT_STARTDATE,RECRUIT_ENDDATE,ACTIVITY_STARTDATE,ACTIVITY_ENDDATE 
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='대외' AND ENROLL_STATE = 'Y'
    ORDER BY B_NO DESC) EXTERNALLIST)
WHERE RNUM BETWEEN 1 AND 6;


SELECT * FROM 
(SELECT ROWNUM RNUM,EXTERNALLIST.*
FROM (SELECT B_NO,B_NAME,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,AC_STATE,LC_NAME,ENROLL_STATE,EM_STATE,TC_NAME,CG_NAME,RECRUIT_STARTDATE,RECRUIT_ENDDATE,ACTIVITY_STARTDATE,ACTIVITY_ENDDATE 
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='대외' 
    ORDER BY B_NO DESC) EXTERNALLIST)
WHERE ROWNUM<=6 AND ENROLL_STATE = 'Y';

-------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE VIEW MAINEXTERNALLIST
AS
SELECT ROWNUM RNUM,EXTERNALLIST.*
FROM (SELECT B_NO,B_NAME,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,AC_STATE,LC_NAME,ENROLL_STATE,EM_STATE,TC_NAME,CG_NAME,RECRUIT_STARTDATE,RECRUIT_ENDDATE,ACTIVITY_STARTDATE,ACTIVITY_ENDDATE 
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='대외' AND ENROLL_STATE = 'Y'
    ORDER BY B_NO DESC) EXTERNALLIST;
---------------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE VIEW EXTERNALLIST
AS
SELECT ROWNUM RNUM,EXTERNALLIST.*
FROM (SELECT B_NO,B_NAME,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,AC_STATE,LC_NAME,ENROLL_STATE,EM_STATE,TC_NAME,CG_NAME,RECRUIT_STARTDATE,RECRUIT_ENDDATE,ACTIVITY_STARTDATE,ACTIVITY_ENDDATE 
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='대외' 
    ORDER BY B_NO DESC) EXTERNALLIST;
---------------------------------------------------------------------------------------------------------------------------------------------

-- VIEW의 WHERE 절에 ENROLL_STATE = 'Y' 조건을 넣은 것
SELECT * FROM MAINEXTERNALLIST WHERE RNUM BETWEEN 1 AND 6;

-- ENROLL_STATE = 'Y' 을 VIEW 밖에서 WHERE절에 추가한 것
SELECT * FROM EXTERNALLIST WHERE ROWNUM<=6 AND ENROLL_STATE = 'Y' ORDER BY B_NO DESC;

















