-- scott�� ��� ���̺� ������ ��ȸ
select count(*) from user_tables;

-- EMP ���̺��� ��� ������ ��ȸ
select * from EMP;

-- C - INTERT
-- R - SELECT
-- U - UPDATE
-- D - DELETE
-- * ��ǥ���� ��� : �Խ��� ����

-- 4�� 6�� --
SELECT * FROM DEPT;
desc dept;

select * from emp;
desc emp;

--TO_CHAR �Լ��� �̿��Ͽ� HIREDATE ������� ��ȯ : YYYY/MM/DD
--TO_CHAR(�÷���,'����')

select empno, ename, job, mgr, to_char(hiredate,'YYYY/MM/DD') HIREDATE, sal, comm, deptno from emp;

-- Member ���̺� ����

CREATE TABLE MEMBER(
    ID VARCHAR2(50) PRIMARY KEY,
    NAME VARCHAR2(30) NOT NULL,
    ADDR VARCHAR2(100),
    HP VARCHAR2(50) NOT NULL,
    MDATE DATE
);

-- ���̺� ���� Ȯ��
SELECT * FROM USER_TABLES WHERE TABLE_NAME='MEMBER';

-- ���̺� ����
DESC MEMBER;
SELECT * FROM MEMBER;
DELETE from member where id='hong';

-- pass �÷� �߰�
ALTER TABLE MEMBER ADD PASS VARCHAR2(30);

-- pass�� �н����� �߰�
UPDATE MEMBER SET PASS='1234';
commit;

-- �α���
select count(*) from member where id='test' and pass='1234';
select id,pass from member where id='test' and pass='1234';

/**************************************
    CGV_MEMBER ���̺� ����
**************************************/

CREATE TABLE CGV_MEMBER(
    ID      VARCHAR2(50)     PRIMARY KEY,
    PASS    VARCHAR2(50)     NOT NULL,
    NAME    VARCHAR2(50)     NOT NULL,
    GENDER  VARCHAR2(10)     NOT NULL,
    EMAIL   VARCHAR2(50)     NOT NULL,
    HP      VARCHAR2(20)     NOT NULL,
    HOBBYLIST VARCHAR(50)    NOT NULL,
    INTRO   VARCHAR2(100),
    MDATE   DATE
);

SELECT * FROM USER_TABLES WHERE TABLE_NAME = 'CGV_MEMBER';

DESC CGV_MEMBER;

SELECT * FROM CGV_MEMBER;

SELECT COUNT(*) FROM CGV_MEMBER WHERE ID='test2' AND PASS='pass';

/**************************************
    CGV_BOARD ���̺� ����
**************************************/

CREATE TABLE CGV_BOARD(
    BID VARCHAR2(10) PRIMARY KEY,
    BTITLE VARCHAR2(100) NOT NULL,
    BCONTENT VARCHAR2(200),
    BHITS NUMBER(4),
    BDATE DATE
);

SELECT * FROM USER_TABLES WHERE TABLE_NAME='CGV_BOARD';

DESC CGV_BOARD;

SELECT * FROM CGV_BOARD;

-- ������ ����

CREATE SEQUENCE SEQU_CGV_BOARD_BID START WITH 1 INCREMENT BY 1;

SELECT * FROM USER_SEQUENCES;

-- CGV_BOARD ��ü ����Ʈ : �ֱ��Է±��� �� ����
-- ORDER BY�� �Լ��� �Բ� ����ϴ� ��� ORDER BY���� ���� �����ϵ��� �������� �������� ������ �ۼ�
SELECT BID, BTITLE, BHITS, TO_CHAR(BDATE, 'YYYY/MM/DD') BDATE FROM CGV_BOARD ORDER BY BDATE DESC;

-- 1. ORDER BY���� ����
SELECT ROWNUM RNO, BID, BTITLE, BHITS, TO_CHAR(BDATE, 'YYYY/MM/DD') BDATE FROM
(SELECT BID, BTITLE, BHITS, BDATE FROM CGV_BOARD ORDER BY BDATE DESC);

-- ������ ��� : bid
SELECT BID, BTITLE, BCONTENT, BHITS, BDATE FROM CGV_BOARD WHERE BID='b_1';

-- ��ȸ�� ������Ʈ
UPDATE CGV_BOARD SET BHITS=BHITS+1 WHERE BID='b_1';

-- �Խñ� ����
UPDATE CGV_BOARD SET BTITLE='', BCONTENT='' WHERE BID='';

-- �Խñ� ����
DELETE FROM CGV_BOARD WHERE BID='b_1';
commit;

INSERT INTO CGV_MEMBER (ID, PASS, NAME, GENDER, EMAIL, HP, HOBBYLIST, INTRO, MDATE)
    VALUES('test4', '1111', '�׽�Ʈ����', '����', 'test@naver.com', '010-1234-5678', '����', '�ڱ�Ұ� �ϰڽ��ϴ�.', SYSDATE);

SELECT * FROM CGV_MEMBER; 

desc cgv_member;

DELETE FROM CGV_MEMBER WHERE ID='123';

COMMIT;

SELECT COUNT(*) FROM CGV_MEMBER WHERE ID='test' AND PASS='1234';

SELECT * FROM CGV_BOARD ORDER BY 'BID' DESC;

INSERT INTO CGV_BOARD (BID, BTITLE, BCONTENT, BDATE)VALUES('b_'||sequ_cgv_board_bid.nextval, "2022 X13 ���", "6���� ���� ����մϴ�.", sysdate);

ALTER TABLE CGV_BOARD MODIFY (BHITS DEFAULT 0);

DESC CGV_BOARD;

COMMIT;

SELECT ROWNUM RNO, BID, BTITLE, BHITS, TO_CHAR(BDATE, 'YY/MM/DD') BDATE FROM (SELECT BID, BTITLE, BHITS, BDATE FROM CGV_BOARD ORDER BY BDATE DESC);

SELECT BTITLE, BCONTENT, BHITS, BDATE FROM CGV_BOARD WHERE BID='b_13';

SELECT * FROM EMP;

SELECT EMPNO, ENAME, JOB, MGR, TO_CHAR(HIREDATE, 'YYYY/MM/DD') HIREDATE, SAL, COMM, DEPTNO FROM EMP where empno=7369;

SELECT * FROM CGV_BOARD;

/**************************************
    CGV_NOTICE ���̺� ����
**************************************/

CREATE TABLE CGV_NOTICE(
    NID VARCHAR2(10) PRIMARY KEY,
    NTITLE VARCHAR2(100) NOT NULL,
    NCONTENT VARCHAR2(200),
    NHITS NUMBER(4),
    NDATE DATE
);

select * from cgv_notice;
desc cgv_notice;
SELECT * FROM USER_TABLES WHERE TABLE_NAME = 'CGV_NOTICE';

-- NID �÷��� ���� ������ ����(�ڵ���ȣ ������

CREATE SEQUENCE SEQU_CGV_NOTICE_NID START WITH 1 INCREMENT BY 1;

SELECT * FROM USER_SEQUENCES;

commit;

select rno, bid, btitle, bhits, bdate
from (select rownum rno, bid, btitle, bhits,
    to_char(bdate,'yyyy/mm/dd') bdate
    from (select bid, btitle, bhits, bdate from cgv_board order by bdate desc))
    where rno between 1 and 5;

select * from cgv_board;

-- �Խ��� ���������� ���� �÷��߰� : BFile(����ڰ� ������ ���ϸ�), BSFile(WAS�� ����� �̸�)
ALTER TABLE CGV_BOARD ADD BFILE VARCHAR2(200);
ALTER TABLE CGV_BOARD ADD BSFILE VARCHAR2(500);

DESC CGV_BOARD;
DESC CGV_NOTICE;
desc cgv_member;
insert into cgv_member values("test","1234","Test����","����","test@naver.com","010-1234-1234","���","test",sysdate,0);

commit;

select count(*) from cgv_member where id='test4' and pass='1111';

select * from cgv_member;

-- nfile, nsfile
alter table cgv_notice
add nfile varchar2(200);

alter table cgv_member
add join_status int;

alter table cgv_notice
add nsfile varchar2(500);

select * from cgv_notice;

delete from cgv_notice;

commit;


