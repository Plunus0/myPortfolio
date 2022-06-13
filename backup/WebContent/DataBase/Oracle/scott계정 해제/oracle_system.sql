-- 전체테이블 수를 조회
SELECT COUNT(*) FROM USER_TABLES;

-- scott 테스트 계정 활성화
@D:\Oracle\app\oracle\product\11.2.0\server\rdbms\admin\scott.sql

-- scott 계정 unlock
alter user scott account UNLOCK;

-- scott 계정 암호 생성 : tiger
alter user scott identified by tiger;
