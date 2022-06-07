-- scott의 모든 테이블 개수를 조회
SELECT COUNT(*) FROM USER_TABLES;

-- EMP 테이블의 모든 데이터 조회
SELECT * FROM EMP;

SELECT * FROM DEPT;


/** 4월 6일 **/
SELECT * FROM DEPT;
DESC DEPT;

SELECT * FROM EMP;
desc emp;

--TO_CHAR 함수를 이용하여 HIREDATE 출력형식을 변환 : YYYY/MM/DD
--TO_CHAR(컬럼명,'형식')
SELECT EMPNO, ENAME, JOB, MGR,TO_CHAR(HIREDATE,'YYYY/MM/DD') HIREDATE
        , SAL, COMM, DEPTNO
FROM EMP;   

-- Member 테이블 생성
-- 형식 : CREATE TABLE 테이블명(컬럼명  데이터타입(길이) 제약조건, ....)
CREATE TABLE MEMBER(
    ID      VARCHAR2(50)    PRIMARY KEY,
    NAME    VARCHAR2(30)    NOT NULL,
    ADDR    VARCHAR2(100),
    HP      VARCHAR2(50)    NOT NULL,
    MDATE   DATE
);

-- 테이블 생성 확인
SELECT * FROM USER_TABLES WHERE TABLE_NAME='MEMBER';

-- 테이블 구조
DESC MEMBER;

SELECT * FROM MEMBER;

-- pass 컬럼 추가
ALTER TABLE MEMBER 
 ADD PASS VARCHAR2(30);
 
SELECT * FROM MEMBER;

-- PASS에 패스워드 추가
UPDATE MEMBER SET PASS='1234';
COMMIT;

desc member;
select id,pass from member;

--로그인
select count(*) from member where id='test' and pass='1234';
select id,pass from member where id='test' and pass='1234';

/***********************
  CGV_MEMBER 테이블 생성
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
--테이블 생성 확인
SELECT * FROM USER_TABLES WHERE TABLE_NAME = 'CGV_MEMBER';
DESC CGV_MEMBER;
SELECT * FROM CGV_MEMBER;

/***********************
  CGV_BOARD 테이블 생성
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

-- BID 컬럼에 들어가는 시퀀스 생성 - 시퀀스(자동번호 생성기)
CREATE SEQUENCE SEQU_CGV_BOARD_BID
  START WITH 1
  INCREMENT BY 1 ;

SELECT * FROM USER_SEQUENCES;

-- 전체 리스트 : 최근입력글이 맨 위로 출력
-- order by와 함수를 함께 사용하는 경우에는 order by부터 먼저 진행하도록
-- 서브쿼리 형식으로 쿼리를 작성
--select bid, btitle, bhits, to_char(bdate,'yyyy/mm/dd') bdate 
--  from CGV_BOARD order by bdate desc;

select rownum rno, bid, btitle, bhits, to_char(bdate,'yyyy/mm/dd') bdate 
from (select bid, btitle, bhits, bdate from cgv_board order by bdate desc);



-- 상세정보 출력 : bid
select bid,btitle,bcontent, bhits, bdate from cgv_board
where bid='b_1';


