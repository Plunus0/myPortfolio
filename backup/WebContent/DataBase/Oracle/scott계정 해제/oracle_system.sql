-- ��ü���̺� ���� ��ȸ
SELECT COUNT(*) FROM USER_TABLES;

-- scott �׽�Ʈ ���� Ȱ��ȭ
@D:\Oracle\app\oracle\product\11.2.0\server\rdbms\admin\scott.sql

-- scott ���� unlock
alter user scott account UNLOCK;

-- scott ���� ��ȣ ���� : tiger
alter user scott identified by tiger;
