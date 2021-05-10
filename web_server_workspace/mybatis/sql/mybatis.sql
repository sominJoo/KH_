--==================
--관리자 계정
--==================

create user mybatis
identified by mybatis
default tablespace users;

grant connect, resource to  mybatis;



--===================
--mybatis 계정
--===================
create table student(
    no number,
    name VARCHAR(100) not null,
    tel char(11) not null,
    reg_date date default sysdate,
    CONSTRAINT pk_student_no primary key(no)
);

create SEQUENCE seq_student_no;



--Oracle Sysnonym 객체
--동의어 객체, 별칭 객체

--mybatis계정에서 kh 계정의 table 로 접근 불가
select * from kh.employee;

--===============
--관리자 계정
--===============
--접근 권한 부여
grant all on kh.employee to mybatis;
grant all on kh.department to mybatis;
grant all on kh.job to mybatis;
grant create synonym to mybatis;


--동의어 생성
--resource 롤에 create synonym 포함되어있지 않다. => 관리자 계정에서 권한 부여 필수!
create synonym emp for KH.employee;
create synonym dept for KH.department;
create synonym job for KH.job;

select * from emp;