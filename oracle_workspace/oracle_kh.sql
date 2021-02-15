select * from emp_bck;


--modify 컬럼
--자료형, 기본값, null 여부 변경 가능
alter table tb_alter
MODIFY name varchar2(500) default '홍길동' null;


--행이 있다면, 변경 시 제한
--존재하는 값보다는작은 크기로 변경 불가.
--null값이 있는 컬럼을 not null로 변경 불가.

--modify 제약조건은 이름 외 변경 불가. => 제약조건 삭제 후 재생성

--rename 컬럼
alter table tb_alter
rename CONSTRAINT PK_TB_ALTER_NO to pk_tb_alter_num;

--drop 컬럼
alter table tb_alter
drop column name;

--drop 제약조건
alter table tb_alter
drop constraint pk_tb_alter_num;

--테이블 이름 변경
alter table tb_alter
rename to tb_alter_new;

rename tb_alter_new to tb_alter_all_new;



-----------------------------------
--DROP
-----------------------------------
--데이터베이스 삭제
DROP TABLE TB_ALTER;



--=====================================================
--DCL
--=====================================================
--데이터 제어 언어
--권한 부어/회수 관련 명렁어 : GRANT/ REVOKE
--TCL(COMMIT, ROLLBACK, SAVEPOINT)를 포함

--qwerty 계정생성 -system 관리자 계정으로 진행
create user qwerty
identified by qwerty
default tablespace users;

--접속 권한 부여
--create session 권한 또는 connect roll을 부여
grant connect to qwerty;


grant RESOURCE to qwerty;

--권한, 롤을 조회
select *
from user_sys_privs; --권한

select *
from user_role_privs; --롤

select *
from role_sys_privs; --부여받은 롤에 포함된 권한


--커피테이블 생성
create table tb_coffee(
    cname varchar2(100),
    price number,
    brand varchar2(100),
    
    CONSTRAINT pk_cname primary key(cname)
);


insert into tb_coffee
values ('maxim',2000,'동서식품');
insert into tb_coffee
values ('kanu',3000,'동서식품');
insert into tb_coffee
values ('nescafe',2500,'네슬레');

select * from tb_coffee;

commit;


--qwerty계정에서 열람가능하도록 권한 부여
grant select on tb_coffee to qwerty;

--수정권한 부여
grant insert, update on tn_coffee to qwerty;

--회수
revoke insert, update on tn_coffee from qwerty;



--===================================
--DATABASE OBJECT1
--===================================
--DB를 효율적으로 관리하고, 작동하게하는 단위

-------------------------------------------
-- DATA DICTIONARY
-------------------------------------------
--일반사용자 관리자로부터 열람권한을 얻어 사용하는 정보조회테이블
--읽기전용.
--객체 관련 작업을 하면 자동으로 그 내용이 반영.

--1. user_xxx : 사용자가 소유한 객체에 대한 정보
--2. all_xxx : user_xxx를 포함. 다른 사용자로부터 사용권한을 부여받은 객체에 대한 정보
--3. dba_xxx : 관리자전용. 모든 사용자의 모든 객체에 대한 정보


--이용가능한 모든  DD 조회
select * from dict; --dictionary
select * from tabs;
select * from users;

--user_sys_privs : 권한
--user_role_privs : 롤
--role_sys_privs : 사용자가 가진 롤에 포함된 모든 권한

--user_sequences
--user_views
--user_indexs
--user_constraints


--all_tables
--all_indexs

--------------------------------
--DBA_
---------------------------------


--특정사용자의 테이블 조회
select * 
from dba_tables
where owner in ('KH', 'QWERTY');

--특정사용자의 권한 조회
select *
from dba_sys_privs
where grantee = 'KH';

select *
from dba_role_privs
where grantee = 'KH';

--테이블 관련 권한 확인
select *
from dba_tab_privs
where owner = 'KH';

--관리자가 kh.tb_coffee 읽기 권한을 qwerty에게 부여
grant select, insert, update, delete on kh.tb_coffee to qwerty;


-----------------------------------------------
-- STORED VIEW
-----------------------------------------------
-- 저장뷰.
-- inlineview는 일회성이었지만, 이를 객체로 저장해서 재사용이 가능.
-- 가상테이블처럼 사용하지만, 실제로 데이터를 가지고 있는 것은 아니다.
-- 실제 테이블과 링크개념.

-- 뷰객체를 이용해서 제한적인 데이터만 다른 사용자에게 제공하는 것이 가능하다.
-- create view 권한을 부여 받아야한다.

--옵션
--1. 실제 컬럼 뿐 아니라 가공된 컬럼 사용가능
--2. join 사용 가능
--3. or replace 사용가능
--4. with read only 옵션 : insert,update등 dml명령어 사용 불가



create OR replace view view_emp
as
select emp_id, 
        emp_name,
        substr(emp_no, 1, 8) || '******' emp_no,
        email,
        phone,
        d.dept_title
from employee e 
    left join department d
        on e.dept_code = d.dept_id
with read only;

--view 생성 권한 부여(system 계정에서 부여해줌)
grant create view to kh;

select * from view_emp;


--성별,나이 등 복잡한 연산이 복잡하고 필요한 것을 미리 view로 지정해두면 편하다.
create or replace view view_employee_all
as
select E.*,
    decode(substr(emp_no,8,1),'1','남','3','남','여') gender
from employee e;

select * from view_employee_all where gender ='여';





--------------------------------------------
--SEQUENCE
--------------------------------------------
--정수값을 순차적으로 자동생성하는 객체.

/*
create sequence 시퀸스명

start with 시작값 ------------기본값
increment by 증가값 ----------기본값
maxvalue 최대값 | nomaxvalue ---- 기본값은 nomaxvalue. 
                                최대값 도달 시 다시 시작값을 혹인 에러 유말
minvalue 최소값 | nominvalue ---- 기본값은 nominvalue. 
                                 최소값 도달 시 다시 시작값을 혹인 에러 유말    
cycle | no cycle ----------------순환여부. 기본갑 nocycle
cache 캐싱개수 | nocaeche---------기본값 cache 20. 시퀸스 객체로 부터 20개씩 가져와서 ㅔㅁ모리에 채번
                                 
*/

create table tb_names(
    no number,
    name varchar2(100) not null,
    constraints pk primary key(no)
);


create sequence seq_tb_names_no
start with 1000
increment by 1
nomaxvalue
nominvalue
nocycle
cache 20;

insert into tb_names
values(seq_tb_names_no.nextval,'j');
select * from tb_names;


--복합 문자열에 시퀸스 사용
--주문번호 kh-2020-01000
create table tb_order(
    order_id varchar2(50),
    cnt number,
    constraints pk_order_id primary key(order_id)
);

select * from tb_order;


create sequence seq_order_id;

insert into tb_order
values('kh-' ||to_char(sysdate,'yyyymmdd') ||'-' || to_char(seq_order_id.nextval,'fm0000'), 100);

--alter문을 통해 시작값 start with값은 절대 변경 불가 => 시퀸스객체 삭제 후 재생성 필요




----------------------------------
--index
----------------------------------
--색인
--sql문 처리 속도 향상을 위해 컬럼에 대해 생성하는 객체
--key : 컬럼값, values :레코드의 논리적 주소값 rowid

--장점
--검색속도 향상. 시스템 부하를 줄여 성능 향상

--단점
--인덱스를 위한 추가 저장공간이 필요함.
--인덱스 생성/수정 시 별도의 시간 소요

--단순조회 업무보다 변경 작업이 많다 면 index생성을 주의해야함

--인덱스로 사용하면 좋은 컬럼
--1. 선택도가 좋은컬럼. 중복 데이터가 적은 컬럼.
--      id| 주민번호| email | 전화번호 > 이름> 부서코드 >>>>>>>>>>>>>>>성별
--2.where절에 자주 사용되어지는 경우. 조인 기준 컬럼인 경우
--3.입력된 데이터의 변경이 적은 컬럼.

select *
from user_indexes;

--job_code 인덱스가 없는 컬럼 => table의 모든 row를 검색(full scan)
select *
from employee
where job_code ='J1'; --F10으로 실행 계획을 볼수 있음

--emp_id 인덱스가 있는 컬럼 => unique scan by index rowid
select *
from employee
where emp_id = '201';



--========================================
--PL/SQL
--========================================
--procedural laguage/sql
--sql의 한계를 보완해서  sql문 안에서 변수 정의/조건처리/반복 처리 등 문법을 지원함

--유현
--1.익명 블럭(Anonymous Block) :P;/SQL 실행가능한 1회용 블럭
--2.Procedure : 특정 구문을 모아둔 서브 프로그램. DB서버에 저장하고, 클라이언트에 의해 호출/ 실행
--3.Function : 반드시 하나의 값을 리턴하는 서브 프로그램. DB서버에 저장하고, 클라이언트에 의해 호출/실행

--4.TRIGGER
--5.SCHEDULER

/*
declare     --1.변수 선언부(선택)

begin       --2. 실행부 (필수) - 조건,반목,출력문....

exception   --3.예외처리부(선택)

end;        --4.블럭종료 선언(필수)
/
--종료 /에 라인 주석 금지
*/

--세션별로 설정
--서버콘솔 출력 모드 지정 on
set serveroutput on;

begin
    --DBMS_OUTPUT패키지의 PUT_LINE 프로시져 : 출력문
    dbms_output.put_line('hellow PL/SQL');
end;
/


--PL/SQL를 통한 사원 조회

declare
    v_id number;
begin
    select emp_id
    into v_id                --select된 emp_id를 v_id에 대입
    from employee
    where emp_name ='&사원명'; --사용자에게 사원명을 입력받음
    
    dbms_output.put_line('사번 = ' ||v_id);
exception
    when no_data_found then dbms_output.put_line('해당이름을 가진 사원이 없습니다.');
end;
/


----------------------------
--변수선언/대입
----------------------------
--변수명 [constant] 자료형 [not null] [:= 초기값];

declare
    num constant number :=100;
    name varchar2(100) not null := '홍길동';   --not null 사용시 초기값 지정 필수
    result number;
begin
    dbms_output.put_line('num = ' ||num);
    --num :=200;      -- constant 사 값변경 불가 / PLS-00363: expression 'NUM' cannot be used as an assignment target
    name := '&이름';
    dbms_output.put_line('name = ' ||name);
end;
/

--PL/SQL 자료형
--1.기본자료형
--      문자형 : varchar2, char, clob
--      숫자형 : number
--      날짜형 : date
--      논리형 : boolean(true|false|null)
--2.복합자료형
--      레코드
--      커서
--      컬렉션

--참조형은 다른 테이블의 자료형을 차용해서 사용 가능
--1.%type
--2.%rowtype
--3.record

declare
--    v_emp_name varchar2(100);
--    v_emp_no   varchar2(100);
    --테이블 해당컬럼 타입 지정
    v_emp_name employee.emp_name%type;
    v_emp_no employee.emp_no%type;
begin
    select emp_name, emp_no
    into v_emp_name, v_emp_no
    from employee
    where emp_id = '&사번';
    
    dbms_output.put_line('v_emp_name = ' ||v_emp_name);
    dbms_output.put_line('v_emp_no = ' ||v_emp_no);
end;
/

--%rowtype: 테이블 한행을 타입으로 지정
declare
    v_emp employee%rowtype;
begin
    select*
    into v_emp
    from employee
    where emp_id = '&사번';
    
    dbms_output.put_line('v_emp_name = ' ||v_emp.emp_name);
    dbms_output.put_line('v_emp_no = ' ||v_emp.dept_code);
end;
/


--record
--사원명, 부서명등 존재하지 않는 컬럼 조합을 레코드로 선언

declare
    type my_emp_rec is record(
        emp_id employee.emp_id%type,
        emp_name employee.emp_name%type,
        dept_title department.dept_title%type
    );
    my_row my_emp_rec;
begin
    select e.emp_id, 
        e.emp_name, 
        d.dept_title
    into my_row
    from employee e
        left join department d
            on e.dept_code = d.dept_id
    where emp_id = '&사번';
    
    dbms_output.put_line('v_emp_name = ' ||my_row.emp_name);
    dbms_output.put_line('v_emp_no = ' ||my_row.emp_id);
    dbms_output.put_line('v_dept_title = ' ||my_row.dept_title);
end;
/


--사원명을 입력받고 사번, 사워명, 직급명, 부서명을 참조형 변수를 통해 출력하세요

declare
    type my_emp_rec is record(
        emp_id employee.emp_id%type,
        emp_name employee.emp_name%type,
        job_name job.job_name%type,
        dept_title department.dept_title%type
    );
    my_row my_emp_rec;
begin
    select e.emp_id, 
        e.emp_name, 
        j.job_name,
        d.dept_title
    into my_row
    from employee e
        left join department d
            on e.dept_code = d.dept_id
        join job j
            on e.job_code = j.job_code
    where emp_name = '&사원명';
    
    dbms_output.put_line('v_emp_name = ' ||my_row.emp_name);
    dbms_output.put_line('v_emp_no = ' ||my_row.emp_id);
    dbms_output.put_line('v_dept_title = ' ||my_row.dept_title);
    dbms_output.put_line('v_dept_title = ' ||my_row.job_name);
end;
/


-------------------------------------
--PL/SQL 안의 DML
----------------------------------
--이 안에서 COMMIT/ROLLBACK 트랜젝션(더 쪼갤수 없는 작업 단위) 처리까지 해줄것.

create table member(
    id varchar2(30),
    pwd varchar2(50) not null,
    name varchar2(100) not null,
    constraint member_id_pk primary key(id)
);

desc member;

begin
    insert into member
    values ('joh','12344','홍');
    
    --트랜젝션 처리
    commit;
end;
/


--사용자 입력값을 받아서 id, pwd, name을 새로운 행으로 추가하는 익명 블럭을 작성

begin
    insert into member
    values ('&id','&pwd','&name');
    
    --트랜젝션 처리
    commit;
end;
/

select * from member;




-------------------------------------
--조건문
-------------------------------------
--1.if 조건식 then ---- end if;
--2.if 조건식 then ---- else ---- end if;
--3.if 조건식 then ---- elseif 조건식 ---- then ---- end if;
declare
    name varchar2(100) := '&이름';
begin
    if name = '홍길동' then
        dbms_output.put_line('반갑습니다. 홍길동님');
    end if;
    
    dbms_output.put_line('------------끝-------------');
end;
/
declare
    num number := '&숫자'
begin
    if mod(num,3) = 0 then
        dbms_output.put_line('3배수 입력');
    elsif mode(num,3) =1 then
        dbms_output.put_line('3으로 나눈 나머지가 1입니다.');
    elsif mode(num,3) =2 then
        dbms_output.put_line('3으로 나눈 나머지가 2입니다.');
    end if;
    
    dbms_output.put_line('------------끝-------------');
end;
/


--사번을 입력받고, 해당사원 직급이 j1이라면 '대표' 출력
--j2라면 '임원'
--그외 평사원
declare
    v_job_code employee.job_code%type;
begin
    select job_code
    into v_job_code
    from employee
    where emp_id = '&사번';
    
    if v_job_code  = 'J1' then
        dbms_output.put_line('대표');
    elsif v_job_code  = 'J2' then
        dbms_output.put_line('임원');
    else
        dbms_output.put_line('평사원');
    end if;
end;
/

select * from employee;

--------------------------------
--반복문
--------------------------------
--1. 기본 loop : 무한 반복. exit 구문 필수
--2. while loop : 조건에 따른 반복
--3. for loop : 지정횟수만큼 반복

declare
    n number := 0;
begin 
    loop
        dbms_output.put_line(n);
        n := n+1;
        exit when n>50;
    end loop;
end;
/

--난수 출력
declare
   rnd number;
   num number := 0;
begin 
    --start 이상, end 미만 난수
    loop 
        rnd := trunc(dbms_random.value(1,11)); -- 1~10사이 난수
        num := num +1;
        dbms_output.put_line(rnd);
        exit when num =10;
    end loop;
end;
/

--while lopp
declare
    n number := 0;
begin
    while n<10 loop
        dbms_output.put_line(n);
        n := n+1;
    end loop;
end;
/    


--for in loop
--증감변수를별도로 선언하지 않아도 된다.
--자동 증가 처리
--reverse 1씩 감소
begin
    for n in 1..5 loop
    end loop;
end;
/






---------------------------------------------
-- FUNCTION
---------------------------------------------
--문자열 앞뒤에 d...b 헤드폰 씌우기 함수
--매개변수, 리턴선언시 자료형 크기지정하지 말것.
create or replace function db_func (p_str varchar2)
return varchar2
is
    --사용할 지역변수 선언
    result varchar2(32767);
begin
    --실행로직
    result := 'd' || p_str || 'b';
    return result;
end;
/

--실행
--1. 일반 sql문
select db_func(emp_name)
from employee;

--2. 익명블럭/다른 pl/sql객체에서 호출가능
set serveroutput on;
begin
    dbms_output.put_line(db_func('&이름'));
end;
/

--3. exec | execute 프로시져/함수 호출하는 명령
var text varchar2;
exec :text := db_func('신사임당');
print text;

--Data Dictionary에서 확인
select * 
from user_procedures
where object_type = 'FUNCTION';

--성별구하기 함수
create or replace function fn_get_gender(
    p_emp_no employee.emp_no%type
)
return varchar2
is
    gender varchar2(3);
begin
--    if substr(p_emp_no, 8, 1) in ('1', '3') then
--        gender := '남';
--    else 
--        gender := '여';
--    end if;
    
    --type1 : when 조건식을 여러개 나열
--    case 
--        when substr(p_emp_no, 8, 1) = '1' then
--            gender := '남';
--        when substr(p_emp_no, 8, 1) = '3' then
--            gender := '남';
--        else
--            gender := '여';
--    end case;

    --type2 : decode와 비슷. 단하나의 계산식만 제공.
    case substr(p_emp_no, 8, 1)
        when '1' then gender := '남';
        when '3' then gender := '남';
        else gender := '여';
    end case;
    
    return gender;
end;
/

select emp_name, 
            fn_get_gender(emp_no) gender
from employee;

--주민번호를 입력받아 나이를 리턴하는 함수 fn_get_age를 작성하고,
--사번, 사원명, 주민번호, 성별, 나이 조회(일반 sql문)
create or replace function fn_get_age(p_emp_no employee.emp_no%type)
return number
is
    v_birth_year number;
    v_age number;
begin
    case 
        when substr(p_emp_no, 8, 1) in ('1', '2') then v_birth_year := 1900;
        when substr(p_emp_no, 8, 1) in ('3', '4') then v_birth_year := 2000;
    end case;
    v_birth_year := v_birth_year + substr(p_emp_no, 1, 2); --출생년도
    
    v_age := extract(year from sysdate) - v_birth_year + 1;
    return v_age;
end;
/


select emp_id,
            emp_name,
            emp_no,
            fn_get_gender(emp_no) gender,
            fn_get_age(emp_no) age 
from employee;




----------------------------------
--PROCEDURE
----------------------------------
--일련의 작업 절차를 작성해 객체로 저장해둔것
--함수와 달리 리턴값이 없다.
--OUT 매개변수를 사용하면 호출부쪽으로 결과를 전달가능. 여러개의 값을 리턴하는 효과연출.

--1.매개변수 X
select *from member;

create or replace procedure proc_del_member
is
    --지역변수 선언
begin
    --실행구문
    delete from member;
    commit;
end;
/

--1.익명블럭 | 타 프로시져 객체에서 호출 가능
begin
    proc_del_member;
end;
/
--2.execute 실행
execute proc_del_member;



--2.매개변수 o
create or replace procedure proc_del_emp_by_di(
    p_emp_id emp_copy.emp_id%type
)
is
    --지역변수 선언
begin
    --실행구문
    delete from emp_copy
    where emp_id = p_emp_id;
    commit;
    dbms_output.put_line(p_emp_id ||'번 사원 삭제');
end;
/

execute proc_del_emp_by_di(211);
select * from emp_copy;


--out 매개변수 사용하기
--사번 전달해 사원명, 전화번호를 리턴( out매개변수)받을 수 있는 프로시저
create or replace procedure proc_select_emp_by_id(
    p_emp_id in emp_copy.emp_id%type,
    p_emp_name out emp_copy.emp_name%type,
    p_emp_no out emp_copy.emp_no%type
)
is
    --지역변수 선언
begin
    --실행구문
    select emp_name, emp_no
    into p_emp_name, p_emp_no
    from emp_copy
    where emp_id = p_emp_id;
end;
/

declare
    v_emp_name emp_copy.emp_name%type;
    v_emp_no emp_copy.emp_no%type;
begin
    proc_select_emp_by_id('&사번',v_emp_name,v_emp_no);
    dbms_output.put_line('v_emp_name : '||v_emp_name);
    dbms_output.put_line('v_emp_phone : '||v_emp_no);
end;
/

create table job_copy
as
select* from job;

select *from job_copy;


--pk 제약조건, not null추가
alter table job_copy
add constraints pk_job_copy primary key(job_code)
modify job_name not null;

--직급정보를 추가하는 프로시져
create or replace procedure proc_man_job_copy(
    p_job_code in job_copy.job_code%type
    ,p_job_name in job_copy.job_name%type
)
is
    isExist job_copy.job_code%type;
begin
    --1. 존재여부 확인(입력하려는 job_code가 기존 table에 존재하는지..
    select job_code
    into isExist
    from job_copy
    where job_code = p_job_code;
--2. 분기처리
    --존재하지 않으면 insert
    --존재하면 update
    case 
        when isExist is null then
            insert into job_copy
            values(p_job_code, p_job_name);
        when isExist is not null then
             update job_copy
             set job_name = p_job_name
             where job_code = p_job_code;
    end case;
    commit;
end;
/

select * from job_copy;





---------------------------------------
-- CURSOR
---------------------------------------
-- SQL의 처리결과 ResultSet을 가리키고 있는 포인터객체
-- 하나이상의 row에 순차적으로 접근가능

--1.암묵적 커서 : 모든 sql실행시 암묵적 커서가 만들어져 처리됨.
--2.명시적 커서 : 변수로 선언 후, open~fetch~close 과정에 따라 행에 접근 가능


declare
     v_emp emp_copy%rowtype;
     
     cursor my_cursor(p_dept_code emp_copy.dept_code%type)
     is
     select * from emp_copy 
     where dept_code = p_dept_code
     order by emp_id;
begin       
    open my_cursor('&부서코드');
    loop
        fetch my_cursor into v_emp;
        exit when my_cursor%notfound;
        dbms_output.put_line('사번 : '|| v_emp.emp_id);        
        dbms_output.put_line('사원명 : '|| v_emp.emp_name);  
        dbms_output.put_line('부서명 : '|| v_emp.dept_code);
    end loop;
    close my_cursor;
end;
/


--보통 for..in문을 통해 처리
--1. open-fetch-close 작업 자동
--2.행변수는 자동으로 선언
declare
     cursor
     is
     select * from employee;
begin       
   for my_row in my_cursor loop
        dbms_output.put_line(my_row.emp_id || ' : '||my_row.emp_name);
    end loop;
end;
/




-------------------------------------------
-- TRIGGER
-------------------------------------------
--방아쇠, 연쇄반응
--특정이벤트(DDL, DML, LOGON)가 발생했을때,
--실행될 코드를 모아둔 데이터베이스 객체.

--종류
--1. DDL Trigger
--2. DML Trigger
--3. LOGON/LOGOFF Trigger

--게시판테이블의 게시물삭제 
-- 1. 삭제여부컬럼 : del_flag 'N' -> 'Y'
-- 2. 삭제테이블 : 삭제된 행 데이터를 삭제테이블에 insert 

/*
create or replace trigger 트리거명
    before | after                                  -- 원 DML문 실행 전 | 실행 후에 trigger 실행
    insert | update | delete on 테이블명
    [for each row]                                 -- 행 level 트리거, 생략하면 문장 level 트리거
begin
    --실행코드
end;
/

- 행레벨 트리거 : 원DML문(10행)이 처리되는 행마다 trigger실행(10번)
- 문장레벨 트리거 : 원DML문이 실행시 trigger 한번 실행

의사 pseudo 레코드 (행레벨트리거에서만 유효)
- :old 원DML문 실행전 데이터
- :new  원DML문 실행후 데이터

insert 
    :old null
    :new 추가된 데이터
    
update
    :old 변경전 데이터
    :new 변경후 데이터
    
delete
    :old 삭제전 데이터
    :new null

**트리거내부에서는 transaction처리 하지 않는다. 원DML문의 트랜잭션에 자동포함된다.

*/

create or replace trigger trig_emp_salary
    before
    insert or update of salary on emp_copy
    for each row
begin
    dbms_output.put_line('변경전 salary : ' || :old.salary);
    dbms_output.put_line('변경후 salary : ' || :new.salary);
    
    insert into emp_copy_salary_log (emp_id, before_salary, after_salary)
    values(:new.emp_id, :old.salary, :new.salary);
    --commit과 같은 트랜잭션 처리를 하지 않는다.
end;
/

--재컴파일 명령어
alter trigger trig_emp_salary compile;

update emp_copy 
set salary  = salary + 1000000
where dept_code = 'D5';

rollback; --trigger에서 실행된 dml문도 함께 rollback된다.

--PK 추가
alter table emp_copy
add constraints pk_emp_copy_emp_id primary key(emp_id);

--급여변경 로그테이블
create table emp_copy_salary_log (
    emp_id varchar2(3),
    before_salary number,
    after_salary number,
    log_date date default sysdate,
    constraint fk_emp_id foreign key(emp_id) references emp_copy(emp_id)
);

select * from emp_copy;
select * from emp_copy_salary_log;

--@실습문제 :
--emp_copy 에서 사원을 삭제할 경우, emp_copy_del 테이블로 데이터를 이전시키는 trigger를 생성하세요.
--quit_date에 현재날짜를 기록할 것.
create table emp_copy_del
as
select E.*
from emp_copy E
where 1 = 2;

create or replace trigger trig_emp_quit
    before delete on emp_copy
    for each row
begin
    insert into emp_copy_del
    (emp_id, emp_name, emp_no, email, phone, dept_code, job_code, sal_level, salary, bonus, manager_id, hire_date, quit_date, quit_yn)
    values (:old.emp_id, :old.emp_name, :old.emp_no, :old.email, :old.phone, :old.dept_code, :old.job_code, :old.sal_level, :old.salary, :old.bonus, :old.manager_id, :old.hire_date, sysdate, 'Y');
    
    dbms_output.put_line(:old.emp_id||'사원이 퇴사자 테이블로 이동했음');
end;
/

select * from emp_copy;
select * from emp_copy_del;

delete from emp_copy
where quit_yn = 'Y';



--상픔 재고 관리
create table product(
    pcode number,
    pname varchar2(100),
    price number,
    stock_cnt number default 0,
    
    constraint pk_product_pcode primary key(pcode)
);




create table product_io(
    iocode number,
    pcode number,
    amount number,
    status char(1),
    io_date date default sysdate,
    
    constraint pk_product_io_iocode primary key(iocode),
    constraint fk_product_io_pcode foreign key(pcode)
                                   references product(pcode)
);

alter table product_io
add constraints ck_product_io_status check(status in ('I','O'));

create sequence seq_product_pcode;
create sequence seq_product_io_iocode
start with 1000;

insert into product
values (seq_product_pcode.nextval, '아이폰12',1500000,0);

insert into product
values (seq_product_pcode.nextval, '갤럭시21',1300000,0);

insert into product
values (seq_product_pcode.nextval, '아이폰12',1500000,0);

select *from product;
select *from product_io;


--입출고 데이터가 insert 되면 해당 상품의 재고 사량을 변경하는 트리서
create or replace trigger trg_product
    before
    insert on product_io      
    for each row
begin
    --입고
    if :new.status = 'I' then
        update product
        set stock_cnt = stock_cnt + :new.amount
        where pcode = :new.pcode;
    --출고
    else
        update product
        set stock_cnt = stock_cnt - :new.amount
        where pcode = :new.pcode;
    end if;
end;
/

insert into product_io
values (seq_product_io_iocode.nextval, 1,5,'I',sysdate);

commit;


--1.원 dml문의 대상테이블에 접근 불가
--2.트리거 안에서는 원dml문 제어 불가