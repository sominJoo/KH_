--===================================
-- 관리자 계정
--===================================
--student계정 생성 및 권한부여
create user student
identified by student
default tablespace users;

grant connect, resource to student;


--===================================
-- STUDENT 계정
--===================================
create table member(
    member_id varchar2(20),
    password varchar2(20) not null,
    member_name varchar2(100) not null,
    gender char(1),
    age number,
    email varchar2(200),
    phone char(11) not null,
    address varchar2(1000),
    hobby varchar2(110),        --농구,음악감상, 영화
    enroll_date date default sysdate,
    
    constraint pk_member_id primary key(member_id),
    constraint ck_member_gender check(gender in ('M','F'))    
);


insert into member
values(
    'honggd','1234','홍길동','M',33,
    'honggd@naver.com','01023433333',
    '서울 강남구 테헤란로','등산,그림,요리',default
);


insert into member
values(
    'sinsa','1234','신사임당','F',48,
    'sinsa@naver.com','01023438787',
    '서울 강동구','운동',default
);


insert into member
values(
    'sejong','1234','세종대왕','M',88,
    'sejong@naver.com','01023431822',
    '서울 강서구','음악감상',default
);


insert into member
values(
    'lees','1234','이순신','M',55,
    'lees@naver.com','01012431822',
    '전남 여수','목공예',default
);

insert into member
values(
    'tyryt','1234','유관순','M',null,
    null,'01013334566',
    null,null,default
);


SELECT
    *
FROM member;

commit;


--탈퇴회원 관리 TABLE
create table member_del
as
select member.*, sysdate del_date 
from member
where 1=0;

alter table member_del modify (del_date default sysdate);

--탈퇴 시 MEMBER_DEL테이블 삽입 트리거
create or replace trigger trig_member_del
    after
    delete on member
    for each row
begin
    insert into member_del(member_id, password, member_name, gender, age, email, phone, address, hobby, enroll_date, del_date)
    values (:old.member_id, :old.password, :old.member_name, :old.gender, :old.age, :old.email, :old.phone, :old.address, :old.hobby, :old.enroll_date, DEFAULT);
end;
/
select *from member_del;
select *from member;

delete from member_del;

commit;


