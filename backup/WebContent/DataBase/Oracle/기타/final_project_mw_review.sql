CREATE TABLE MW_PRODUCT( 
    PNUM VARCHAR2(50) PRIMARY KEY, 
    PNAME VARCHAR2(50) NOT NULL,
    PPRICE INT NOT NULL, 
    PSALEPRICE  INT,   
    PTAGIMAGE VARCHAR2(200), 
    PCATEGORY VARCHAR2(50) NOT NULL, 
    PSTOCK INT NOT NULL,
    PMAINFILE VARCHAR2(200),
    PMAINSFILE VARCHAR2(200)
);

create sequence sequ_mw_product_pnum
start with 1
increment by 1;

ALTER TABLE MW_PRODUCT
    ADD PMAINFILE VARCHAR2(200);
ALTER TABLE MW_PRODUCT
    ADD PMAINSFILE VARCHAR2(200);
ALTER TABLE MW_PRODUCT
    ADD PDATE DATE;
ALTER TABLE MW_PRODUCT
    ADD PTEXT VARCHAR2(500);

create table mw_product_file(
  fnum   varchar2(30) primary key,
  pfile1 varchar2(50),
  pfile2 varchar2(50),
  pfile3 varchar2(50),
  pfile4 varchar2(50),
  pfile5 varchar2(50),
  psfile1 varchar2(100),
  psfile2 varchar2(100),
  psfile3 varchar2(100),
  psfile4 varchar2(100),
  psfile5 varchar2(100),
      CONSTRAINT f_code FOREIGN KEY (fnum)
         REFERENCES Mw_product(pnum) ON DELETE CASCADE
);

select PNUM,PNAME,PPRICE,PSALEPRICE,PTAGIMAGE,PCATEGORY,PSTOCK,PMAINFILE,PMAINSFILE
    from  MW_PRODUCT
        where PCATEGORY = '»ç¶÷';
        
        
        
create table mw_review(
    vid VARCHAR2(50) PRIMARY KEY, 
    vdate date NOT NULL,
    vcontent  varchar2(500),   
    PTAGIMAGE VARCHAR2(200), 
    vpnum VARCHAR2(50) NOT NULL, 
    vmemail varchar2(50) NOT NULL,
    vfile VARCHAR2(200),
    vsfile VARCHAR2(200),
    CONSTRAINT fk_code1 FOREIGN KEY(vpnum) REFERENCES Mw_product(pnum) ON DELETE CASCADE,
    CONSTRAINT fk_code2 FOREIGN KEY(vmemail) REFERENCES Mw_member(memail) ON DELETE CASCADE
);