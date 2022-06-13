-- scott�� ��� ���̺� ������ ��ȸ
SELECT COUNT(*) FROM USER_TABLES;

-- EMP ���̺��� ��� ������ ��ȸ
SELECT * FROM EMP;

SELECT * FROM DEPT;


/** 4�� 6�� **/
SELECT * FROM DEPT;
DESC DEPT;

SELECT * FROM EMP;
desc emp;

--TO_CHAR �Լ��� �̿��Ͽ� HIREDATE ��������� ��ȯ : YYYY/MM/DD
--TO_CHAR(�÷���,'����')
SELECT EMPNO, ENAME, JOB, MGR,TO_CHAR(HIREDATE,'YYYY/MM/DD') HIREDATE
        , SAL, COMM, DEPTNO
FROM EMP;   

-- Member ���̺� ����
-- ���� : CREATE TABLE ���̺��(�÷���  ������Ÿ��(����) ��������, ....)
CREATE TABLE MEMBER(
    ID      VARCHAR2(50)    PRIMARY KEY,
    NAME    VARCHAR2(30)    NOT NULL,
    ADDR    VARCHAR2(100),
    HP      VARCHAR2(50)    NOT NULL,
    MDATE   DATE
);

-- ���̺� ���� Ȯ��
SELECT * FROM USER_TABLES WHERE TABLE_NAME='MEMBER';

-- ���̺� ����
DESC MEMBER;

SELECT * FROM MEMBER;

-- pass �÷� �߰�
ALTER TABLE MEMBER 
 ADD PASS VARCHAR2(30);
 
SELECT * FROM MEMBER;

-- PASS�� �н����� �߰�
UPDATE MEMBER SET PASS='1234';
COMMIT;

desc member;
select id,pass from member;

--�α���
select count(*) from member where id='test' and pass='1234';
select id,pass from member where id='test' and pass='1234';

/***********************
  CGV_MEMBER ���̺� ����
************************/
CREATE TABLE CGV_MEMBER(
  ID    VARCHAR2(50)    PRIMARY KEY,
  PASS  VARCHAR2(50)    NOT NULL,
  NAME  VARCHAR2(50)    NOT NULL,
  GENDER  VARCHAR2(10)  NOT NULL,
  EMAIL   VARCHAR2(50)  NOT NULL,
  HP      VARCHAR2(20)  NOT NULL,
  HOBBYLIST  VARCHAR2(50)  NOT NULL,
  INTRO  VARCHAR2(100),
  MDATE  DATE
);
--���̺� ���� Ȯ��
SELECT * FROM USER_TABLES WHERE TABLE_NAME = 'CGV_MEMBER';
DESC CGV_MEMBER;
SELECT * FROM CGV_MEMBER;

/***********************
  CGV_BOARD ���̺� ����
************************/
CREATE TABLE CGV_BOARD(
  BID     VARCHAR2(10)   PRIMARY KEY,   
  BTITLE   VARCHAR2(100) NOT NULL,
  BCONTENT VARCHAR2(200),
  BHITS    NUMBER(4),
  BDATE    DATE
);

SELECT * FROM USER_TABLES WHERE TABLE_NAME = 'CGV_BOARD';
DESC CGV_BOARD;
SELECT * FROM CGV_BOARD;

-- BID �÷��� ���� ������ ���� - ������(�ڵ���ȣ ������)
CREATE SEQUENCE SEQU_CGV_BOARD_BID
  START WITH 1
  INCREMENT BY 1 ;

SELECT * FROM USER_SEQUENCES;

-- ��ü ����Ʈ : �ֱ��Է±��� �� ���� ���
-- order by�� �Լ��� �Բ� ����ϴ� ��쿡�� order by���� ���� �����ϵ���
-- �������� �������� ������ �ۼ�
--select bid, btitle, bhits, to_char(bdate,'yyyy/mm/dd') bdate 
--  from CGV_BOARD order by bdate desc;

select rownum rno, bid, btitle, bhits, to_char(bdate,'yyyy/mm/dd') bdate 
from (select bid, btitle, bhits, bdate from cgv_board order by bdate desc);



-- ������ ��� : bid
select bid,btitle,bcontent, bhits, bdate from cgv_board
where bid='b_1';


