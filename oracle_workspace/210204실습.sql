--1. 첫번째 테이블 명 : EX_MEMBER
create table EX_MEMBER(
    MEMBER_CODE NUMBER,
    MEMBER_ID varchar2(20),            
    MEMBER_PWD char(20) not null,             
    MEMBER_NAME varchar2(30),                             
    MEMBER_ADDR varchar2(100) not null,               
    GENDER char(3),              
    PHONE char(11) not null,                  
    
    --제약사항
    constraints pk_member_code primary key(member_code),
    constraints uq_member_id unique( MEMBER_ID),
    constraints ck_gender check(gender in ('남', '여'))
);

--제약조건 검색
select constraint_name,
    uc.table_name,
    ucc.column_name,
    uc.constraint_type,
    uc.search_condition
from user_constraints uc
    join user_cons_columns ucc
        using(constraint_name)
where uc.table_name = 'EX_MEMBER';




--2. EX_MEMBER_NICKNAME 테이블을 생성하자. (제약조건 이름 지정할것)

create table ex_member_nickname(
    MEMBER_CODE NUMBER,
    MEMBER_NICKNAME varchar2(100) not null, 

    --제약사항
    constraints fk_member_code foreign key(member_code) 
                                references EX_MEMBER(member_code)
);
--제약조건 검색
select constraint_name,
    uc.table_name,
    ucc.column_name,
    uc.constraint_type,
    uc.search_condition
from user_constraints uc
    join user_cons_columns ucc
        using(constraint_name)
where uc.table_name = 'EX_MEMBER_NICKNAME';