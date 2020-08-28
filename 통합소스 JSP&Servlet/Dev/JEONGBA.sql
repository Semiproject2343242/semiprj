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
--------------     MEMBER ����	------------------	
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
    MEMBER_REGDATE	DATE	        DEFAULT SYSDATE,
	MEMBER_ENABLE	CHAR(2)	        DEFAULT 'Y',
	MEMBER_GRADE	VARCHAR2(10)	DEFAULT 'user'
);

CREATE SEQUENCE SEQ_MNO;

-- CREATE GRADE TABLE
--CREATE TABLE GRADE (
--	GRADE_NO	NUMBER	NOT NULL,
--	GRADE_NAME	VARCHAR2(20)	NOT NULL
--);

-- INSERT MEMBER
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'admin', 'admin', '������', '���', 'M', '90/01/01', '010-1234-5678', 'user1@nate.com', '����Ư���� ������', SYSDATE, default, 'admin');
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user1', 'user1', 'USER1', '����01', 'M', '90/01/02', '010-1111-1111', 'user2@nate.com', '����Ư���� ���Ǳ�', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user2', 'user2', 'USER2', '����02', 'M', '90/01/02', '010-2222-2222', 'user2@nate.com', '����Ư���� ���Ǳ�', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user3', 'user3', 'USER3', '����03', 'W', '90/01/03', '010-3333-3333', 'user3@nate.com', '����Ư���� �����', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user4', 'user4', 'USER4', '����04', 'W', '90/01/04', '010-4444-4444', 'user4@nate.com', '����Ư���� ���α�', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user5', 'user5', 'USER5', '����05', 'W', '90/01/05', '010-5555-5555', 'user5@nate.com', '����Ư���� ���빮��', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user6', 'user6', 'USER6', '����06', 'M', '90/01/06', '010-6666-6666', 'user6@nate.com', '����Ư���� ������', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user7', 'user7', 'USER7', '����07', 'W', '90/01/07', '010-7777-7777', 'user7@nate.com', '����Ư���� ������', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user8', 'user8', 'USER8', '����08', 'W', '90/01/08', '010-8888-8888', 'user8@nate.com', '����Ư���� ������', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user9', 'user9', 'USER9', '����09', 'M', '90/01/09', '010-9999-9999', 'user9@nate.com', '����Ư���� ���۱�', SYSDATE, default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user10', 'user10', 'USER10', '����10', 'M', '90/01/10', '010-1010-1010', 'user10@nate.com', '����Ư���� ���ϱ�', SYSDATE, default, default);

COMMIT;


--------------------------------------------------
--------------     BOARD ����	------------------	
--------------------------------------------------

-- CREATE BOARD TABLE
CREATE TABLE BOARD (
	B_NO	        NUMBER	        PRIMARY KEY,
	B_NAME          VARCHAR2(100)	NOT NULL,
	B_TITLE	        VARCHAR2(100)	NOT NULL,
	B_CONTENT	    VARCHAR2(4000)	NOT NULL,
	B_DATE	        DATE	        DEFAULT SYSDATE,
    B_RDATE	        DATE	        DEFAULT SYSDATE,
	B_VIEW_COUNT	NUMBER	        DEFAULT 0,
	B_RECOMMEND	    NUMBER	        DEFAULT 0,
	B_ENABLE	    VARCHAR2(1)     DEFAULT 'Y',
	B_WRITER	    NUMBER          NOT NULL,
	B_REPLY_COUNT	NUMBER	        DEFAULT 0,
	AC_STATE	    VARCHAR2(50)	NULL,
	LC_NAME	        VARCHAR(50)	    NULL,
	ENROLL_STATE	VARCHAR2(50)	DEFAULT 'N',
	EM_STATE	    VARCHAR2(50)	NULL,
	TC_NAME	        VARCHAR2(50)	NULL,
	CG_NAME	        VARCHAR2(50)	NULL
);

CREATE SEQUENCE SEQ_BNO;

INSERT INTO BOARD
VALUES (1, '��������', 'ù��° ���������Դϴ�', 'ù��° �������� �����Դϴ�.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '��������', '�ι�° ���������Դϴ�', '�ι�° �������� �����Դϴ�.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT;


--------------------------------------------------
--------------     REPLY ����	------------------	
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
VALUES (1, 'ù��° ��� �����Դϴ�.', SYSDATE, 1, 1);

INSERT INTO REPLY 
VALUES (SEQ_RNO.NEXTVAL, '�ι�° ��� �����Դϴ�.', SYSDATE, 1, 1);

COMMIT;

--------------------------------------------------
--------------     FILES ����	------------------	
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
--------------     ���� ���� ����	------------------	
--------------------------------------------------

-- BOARD TABLE WRITER FOREIGN KEY �������� 
ALTER TABLE BOARD ADD CONSTRAINT FK_MEMBER1 FOREIGN KEY (B_WRITER) 
REFERENCES MEMBER(MEMBER_NO);

-- REPLY TABLE WRITER FOREIGN KEY �������� 
ALTER TABLE REPLY ADD CONSTRAINT FK_MEMBER2 FOREIGN KEY (R_WRITER) 
REFERENCES MEMBER(MEMBER_NO);

-- REPLY TABLE BOARD_NO FOREIGN KEY ��������2 
ALTER TABLE REPLY ADD CONSTRAINT FK_BOARD FOREIGN KEY (B_NO) 
REFERENCES BOARD(B_NO);

COMMIT;

--------------------------------------------------
----------------   VIEW ����	   -------------------	
--------------------------------------------------

-- ���� �Խ��� ����Ʈ
CREATE OR REPLACE VIEW QALIST
AS
SELECT ROWNUM RNUM,QUESTION.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,CG_NAME
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='QA'
    ORDER BY B_NO DESC) QUESTION;

COMMIT;


-- �����Խ��� �Խñ� ����
BEGIN
    FOR I IN 1..30
    LOOP
       INSERT INTO BOARD VALUES (SEQ_BNO.NEXTVAL, 'QA', I, I,SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, NULL, NULL, NULL, NULL, NULL, '����');
    END LOOP;
END;

COMMIT;


-- ���� �Խ��� DETAIL
CREATE OR REPLACE VIEW QADETAIL
AS
SELECT *
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,CG_NAME
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='QA'
    ORDER BY B_NO DESC);

COMMIT;


--�������� �Խ��� ����Ʈ
CREATE OR REPLACE VIEW NOTICELIST
AS
SELECT ROWNUM RNUM,NOTICE.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,CG_NAME
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='��������'
    ORDER BY B_NO DESC) NOTICE;

COMMIT;


--�������� �Խ��� ������
CREATE OR REPLACE VIEW NOTICEDETAIL
AS
SELECT *
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,CG_NAME
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='��������'
    ORDER BY B_NO DESC);

COMMIT;


--���� �Խ��� ����Ʈ
CREATE OR REPLACE VIEW FREELIST
AS
SELECT ROWNUM RNUM,FREE.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='����'
    ORDER BY B_NO DESC) FREE;

COMMIT;


--���� �Խ��� ������
CREATE OR REPLACE VIEW FREEDETAIL
AS
SELECT *
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='����'
    ORDER BY B_NO DESC);

COMMIT;


-- ������å ����Ʈ
CREATE OR REPLACE VIEW SUPPORTLIST
AS
SELECT ROWNUM RNUM,SUPPORT.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,AC_STATE,LC_NAME,ENROLL_STATE,EM_STATE,TC_NAME,CG_NAME 
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='����'
    ORDER BY B_NO DESC) SUPPORT;

COMMIT;


-- ���Ȱ�� ����Ʈ
CREATE OR REPLACE VIEW EXTERNALLIST
AS
SELECT ROWNUM RNUM,EX.*
FROM (SELECT B_NO,B_TITLE,B_CONTENT,B_DATE,B_RDATE,B_VIEW_COUNT,B_RECOMMEND,B_WRITER,MEMBER_NICKNAME,B_REPLY_COUNT,AC_STATE,LC_NAME,ENROLL_STATE,TC_NAME,CG_NAME 
    FROM BOARD 
        JOIN MEMBER ON(MEMBER_NO = B_WRITER)
    WHERE BOARD.B_ENABLE='Y' AND B_NAME='���'
    ORDER BY B_NO DESC) EX;

COMMIT;


-- ������å �Խñ� ����
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '����', 'ù��° ������å ���Դϴ�', 'ù��° ������å �����Դϴ�.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '������', '����', DEFAULT, '������', 'û��(18~34��)', '��������');

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '����', '�ι�° ������å ���Դϴ�', '�ι�° ������å �����Դϴ�.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '������', '����', DEFAULT, '������', '�߳�(35~49��)', '�������');

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '����', '����° ������å ���Դϴ�', '����° ������å �����Դϴ�.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '������', '��õ��', DEFAULT, '������', '���(50~64��)', '�������');

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '����', '�׹�° ������å ���Դϴ�', '�׹�° ������å �����Դϴ�.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '������', '�����', DEFAULT, '������', '���(65�� �̻�)', 'â������');

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '����', '�ټ���° ������å ���Դϴ�', '�ټ���° ������å �����Դϴ�.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '������', '���ֽ�', DEFAULT, '������', 'û��(18~34��)', '��Ȱ/����');

COMMIT;


-- ���Ȱ�� �Խñ� ����
INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '���', 'ù��° ���Ȱ�� ���Դϴ�', 'ù��° ���Ȱ�� �����Դϴ�.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '������', '����', DEFAULT, NULL, 'û��(18~34��)', '������');

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '���', '�ι�° ���Ȱ�� ���Դϴ�', '�ι�° ���Ȱ�� �����Դϴ�.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '������', '����', DEFAULT, NULL, '�߳�(35~49��)', '������ȸ');

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '���', '����° ���Ȱ�� ���Դϴ�', '����° ���Ȱ�� �����Դϴ�.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '������', '��õ��', DEFAULT, NULL, '���(50~64��)', '����Ȱ��');

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '���', '�׹�° ���Ȱ�� ���Դϴ�', '�׹�° ���Ȱ�� �����Դϴ�.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '������', '�����', DEFAULT, NULL, '���(65�� �̻�)', '��������');

INSERT INTO BOARD
VALUES (SEQ_BNO.NEXTVAL, '���', '�ټ���° ���Ȱ�� ���Դϴ�', '�ټ���° ���Ȱ�� �����Դϴ�.', 
SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, '������', '���ֽ�', DEFAULT, NULL, 'û��(18~34��)', '����/����/ü��');

COMMIT;


-- �����Խ��� �Խñ� ����
BEGIN
    FOR I IN 1..30
    LOOP
       INSERT INTO BOARD VALUES (SEQ_BNO.NEXTVAL, '����', I, I, SYSDATE, SYSDATE, DEFAULT, DEFAULT, DEFAULT, 1, DEFAULT, NULL, NULL, NULL, NULL, NULL, null);
    END LOOP;
END;

COMMIT;

--------------------------------------------------
--------------       ������     	------------------	
--------------------------------------------------

-- INSERT MEMBER
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'admin', 'admin', '������', '���', 'M', '90/01/01', '010-1234-5678', 'user1@nate.com', '����Ư���� ������', default, 'admin');
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user1', 'user1', 'USER1', '����01', 'M', '90/01/02', '010-1111-1111', 'user2@nate.com', '����Ư���� ���Ǳ�', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user2', 'user2', 'USER2', '����02', 'M', '90/01/02', '010-2222-2222', 'user2@nate.com', '����Ư���� ���Ǳ�', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user3', 'user3', 'USER3', '����03', 'W', '90/01/03', '010-3333-3333', 'user3@nate.com', '����Ư���� �����', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user4', 'user4', 'USER4', '����04', 'W', '90/01/04', '010-4444-4444', 'user4@nate.com', '����Ư���� ���α�', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user5', 'user5', 'USER5', '����05', 'W', '90/01/05', '010-5555-5555', 'user5@nate.com', '����Ư���� ���빮��', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user6', 'user6', 'USER6', '����06', 'M', '90/01/06', '010-6666-6666', 'user6@nate.com', '����Ư���� ������', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user7', 'user7', 'USER7', '����07', 'W', '90/01/07', '010-7777-7777', 'user7@nate.com', '����Ư���� ������', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user8', 'user8', 'USER8', '����08', 'W', '90/01/08', '010-8888-8888', 'user8@nate.com', '����Ư���� ������', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user9', 'user9', 'USER9', '����09', 'M', '90/01/09', '010-9999-9999', 'user9@nate.com', '����Ư���� ���۱�', default, default);
INSERT INTO MEMBER VALUES(SEQ_MNO.NEXTVAL, 'user10', 'user10', 'USER10', '����10', 'M', '90/01/10', '010-1010-1010', 'user10@nate.com', '����Ư���� ���ϱ�', default, default);

-- MEMBER TABLE PRIMARY KEY ��������
ALTER TABLE MEMBER ADD CONSTRAINT PK_MEMBER PRIMARY KEY (
	MEMBER_NO
);

-- BOARD TABLE PRIMARY KEY ��������
ALTER TABLE BOARD ADD CONSTRAINT PK_BOARD PRIMARY KEY (
	B_NO
);

-- FILE TABLE PRIMARY KEY ��������
ALTER TABLE FILES ADD CONSTRAINT PK_FILE PRIMARY KEY (
	FILE_CODE
);

-- REPLY TABLE PRIMARY KEY ��������
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

-- SELECT BOARD JOIN REPLY






