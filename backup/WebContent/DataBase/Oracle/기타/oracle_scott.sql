-- scott의 모든 테이블 개수를 조회
select count(*) from user_tables;

-- EMP 테이블의 모든 데이터 조회
select * from EMP;

-- C - INTERT
-- R - SELECT
-- U - UPDATE
-- D - DELETE
-- * 대표적인 기능 : 게시판 생성

-- 4월 6일 --
SELECT * FROM DEPT;
desc dept;

select * from emp;
desc emp;

--TO_CHAR 함수를 이용하여 HIREDATE 출력형식 변환 : YYYY/MM/DD
--TO_CHAR(컬럼명,'형식')

select empno, ename, job, mgr, to_char(hiredate,'YYYY/MM/DD') HIREDATE, sal, comm, deptno from emp;

-- Member 테이블 생성

CREATE TABLE MEMBER(
    ID VARCHAR2(50) PRIMARY KEY,
    NAME VARCHAR2(30) NOT NULL,
    ADDR VARCHAR2(100),
    HP VARCHAR2(50) NOT NULL,
    MDATE DATE
);

-- 테이블 생성 확인
SELECT * FROM USER_TABLES WHERE TABLE_NAME='MEMBER';

-- 테이블 구조
DESC MEMBER;
SELECT * FROM MEMBER;
DELETE from member where id='hong';

-- pass 컬럼 추가
ALTER TABLE MEMBER ADD PASS VARCHAR2(30);

-- pass에 패스워드 추가
UPDATE MEMBER SET PASS='1234';
commit;

-- 로그인
select count(*) from member where id='test' and pass='1234';
select id,pass from member where id='test' and pass='1234';

/**************************************
    CGV_MEMBER 테이블 생성
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
    CGV_BOARD 테이블 생성
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

-- 시퀀스 생성

CREATE SEQUENCE SEQU_CGV_BOARD_BID START WITH 1 INCREMENT BY 1;

SELECT * FROM USER_SEQUENCES;

-- CGV_BOARD 전체 리스트 : 최근입력글이 맨 위로
-- ORDER BY와 함수를 함께 사용하는 경우 ORDER BY부터 먼저 진행하도록 서브쿼리 형식으로 쿼리를 작성
SELECT BID, BTITLE, BHITS, TO_CHAR(BDATE, 'YYYY/MM/DD') BDATE FROM CGV_BOARD ORDER BY BDATE DESC;

-- 1. ORDER BY부터 실행
SELECT ROWNUM RNO, BID, BTITLE, BHITS, TO_CHAR(BDATE, 'YYYY/MM/DD') BDATE FROM
(SELECT BID, BTITLE, BHITS, BDATE FROM CGV_BOARD ORDER BY BDATE DESC);

-- 상세정보 출력 : bid
SELECT BID, BTITLE, BCONTENT, BHITS, BDATE FROM CGV_BOARD WHERE BID='b_1';

-- 조회수 업데이트
UPDATE CGV_BOARD SET BHITS=BHITS+1 WHERE BID='b_1';

-- 게시글 수정
UPDATE CGV_BOARD SET BTITLE='', BCONTENT='' WHERE BID='';

-- 게시글 삭제
DELETE FROM CGV_BOARD WHERE BID='b_1';
commit;

INSERT INTO CGV_MEMBER (ID, PASS, NAME, GENDER, EMAIL, HP, HOBBYLIST, INTRO, MDATE)
    VALUES('test4', '1111', '테스트계정', '여자', 'test@naver.com', '010-1234-5678', '독서', '자기소개 하겠습니다.', SYSDATE);

SELECT * FROM CGV_MEMBER; 

desc cgv_member;

DELETE FROM CGV_MEMBER WHERE ID='123';

COMMIT;

SELECT COUNT(*) FROM CGV_MEMBER WHERE ID='test' AND PASS='1234';

SELECT * FROM CGV_BOARD ORDER BY 'BID' DESC;

INSERT INTO CGV_BOARD (BID, BTITLE, BCONTENT, BDATE)VALUES('b_'||sequ_cgv_board_bid.nextval, "2022 X13 출시", "6월달 내로 출시합니다.", sysdate);

ALTER TABLE CGV_BOARD MODIFY (BHITS DEFAULT 0);

DESC CGV_BOARD;

COMMIT;

SELECT ROWNUM RNO, BID, BTITLE, BHITS, TO_CHAR(BDATE, 'YY/MM/DD') BDATE FROM (SELECT BID, BTITLE, BHITS, BDATE FROM CGV_BOARD ORDER BY BDATE DESC);

SELECT BTITLE, BCONTENT, BHITS, BDATE FROM CGV_BOARD WHERE BID='b_13';

SELECT * FROM EMP;

SELECT EMPNO, ENAME, JOB, MGR, TO_CHAR(HIREDATE, 'YYYY/MM/DD') HIREDATE, SAL, COMM, DEPTNO FROM EMP where empno=7369;

SELECT * FROM CGV_BOARD;

/**************************************
    CGV_NOTICE 테이블 생성
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

-- NID 컬럼에 들어가는 시퀀스 생성(자동번호 생성기

CREATE SEQUENCE SEQU_CGV_NOTICE_NID START WITH 1 INCREMENT BY 1;

SELECT * FROM USER_SEQUENCES;

commit;

select rno, bid, btitle, bhits, bdate
from (select rownum rno, bid, btitle, bhits,
    to_char(bdate,'yyyy/mm/dd') bdate
    from (select bid, btitle, bhits, bdate from cgv_board order by bdate desc))
    where rno between 1 and 5;

select * from cgv_board;

-- 게시판 파일저장을 위한 컬럼추가 : BFile(사용자가 선택한 파일명), BSFile(WAS에 저장될 이름)
ALTER TABLE CGV_BOARD ADD BFILE VARCHAR2(200);
ALTER TABLE CGV_BOARD ADD BSFILE VARCHAR2(500);

DESC CGV_BOARD;
DESC CGV_NOTICE;
desc cgv_member;
insert into cgv_member values("test","1234","Test계정","남자","test@naver.com","010-1234-1234","등산","test",sysdate,0);

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


