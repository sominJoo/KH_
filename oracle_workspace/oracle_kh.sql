--==================================
--kh 계정
--==================================
show user;

--table sample 생성
create table sample(
    id number
);

--사원 테이블 관리
SELECT * FROM employee;
--부서테이블
select * from department;
--직급테이블
select * from job;
--지역테이블
select * from location;
--국가테이블
select * from nation;
--급여테이블
select * from sal_grade;

select JOB_NAME from job where job_code =(SELECT JOB_CODE FROM employee WHERE EMP_NAME = '송종기');  

--테이블 명세
--컬럼명 널여부 자료형
DESCRIBE employee;
DESC employee;

--===================================
--DATA TYPE
-- 1.문자형 : varchar, char
-- 2.숫자형 : number
-- 3.날짜,시간형 : date
--===================================


--===================================
--문자형
--===================================
--가변형 varchar2(byte) : 최대 4000바이트까지
-- varchar2(10) 'korea'(영소문자는 글자당 1byte이므로 실제 5byte => 가변형이므로 5byte로 저장됨)
--              '안녕'(한글은 글자당 3바이트이므로 실제 크기 6바이트 저장 => 가변형이므로  6byte로 저장됨)

--고정형 char(byte) : 최대 2000바이트까지
--  chara(10) 'korea'(영소문자는 글자당 1byte이므로 실제 5byte => 고정형이므로 10byte로 저장됨)
--            '안녕'(한글은 글자당 3바이트이므로 실제 크기 6바이트 저장 => 고정형이므로 10byte로 저장됨)
--고정형, 가변형 모두 지정한 크기 이상의 값은 추가할 수 없다.
--가변형 long : 최대 2GB까지

--LOB타입 (large Object) 중의 CLOB(character LOB)는 단일 컬럼 최대 4GB까지 지원함
create table tb_datatype(
    a char(10),
    b VARCHAR2(10)
);

select * from tb_datatype;

insert into tb_datatype(a,b) VALUES('hello', 'hello');

insert into tb_datatype(a,b) VALUES('안녕', '안녕');

--데이터 변경(insert,delete,update)되는 경우 메모리상에서 먼저 처리된다 => commit을 통해 실제 database에 적용해야한다.
commit;

--lengthb(컬럼명): number - 저장된 데이터의 실제 크기를 리턴
select a, lengthb(a), b, lengthb(b) from tb_datatype;


insert into tb_datatype(a,b) VALUES('바보', '똥개');




--===================================
--숫자형
--===================================
-- 정수, 실수를 구분하지 않는다.
-- number(p,s)
-- p: 표현가능한 전체 자리수
-- s: p중 소수점 이하 자리수

--값 1234.567
/*
 number           1234.567
 number(7)        1234
 number(7,1)      1234.6 --반올림
 number(7,-2)     1200   --반올림
*/

create table tb_datatype_number(
    a NUMBER,
    b NUMBER(7),
    c NUMBER(7,1),
    d NUMBER(7,-2)
);

select * from tb_datatype_number;

insert into tb_datatype_number VALUES(1234.567,1234.567,1234.567,1234.567);

ROLLBACK;   --마지막 commit 시점 이후 변경사항을 취소 (commit한건 못지움)


CREATE TABLE tb_datatype_date( 
    a date,
    b timestamp
);


--to_char 날짜 숫자를 문자열로 표현
select to_char(a, 'yyyy/mm/dd hh24:mi:ss') as a, b from tb_datatype_date;
insert into tb_datatype_date values (sysdate,systimestamp);


-- 날짜형 - 날짜형 = 숫자(하루)
-- 날짜형 +(-) 숫자(하루) = 날짜형
select to_char(a, 'yyyy/mm/dd hh24:mi:ss') as a, 
       to_char(a-1, 'yyyy/mm/dd hh24:mi:ss') as a1, --하루 전 
       b from tb_datatype_date;

select sysdate-a from tb_datatype_date;

select to_date('2021/01/23')-a as a from tb_datatype_date;

--dual 가상테이블
select(sysdate +1)-sysdate from dual;

--data Query Language 데이터 조회를 위한 언어
--select
--쿼리 조회결과를 resultSet(결과 집합)라고 하며, 0행 이상을 포함

--from 절에 조회하고자 하는 테이블명시
--where 절에 의해 특정행을 filtering 기능 
--select절에 의해 컬럼을 filtering 또는 추가기능
--order by절에 의해 행 정렬

/*
select 컬럼명 -5
from 테이블명 -1
where 조건절 -2
group by 그룹기준 컬럼-3
having 그룹 조건절-4
order by 정렬기준-6
*/

select *
from employee;


--1. job table에서 job_name만 출력
select job_name from job;

--2. department table에서 모든 컬럼 출력
select * from department;

--3. employee table 에서 이름, 이메일,전화번호 입사일 출력
select emp_name, email, phone, hire_date from employee;

--4. employee table에서 급여서 2,500,000이상인 사원 이름과 급여 출력
select emp_name, salary from employee where salary >= 2500000;

--5.employee table에서 급여가 3,500,000이상이면서 직급코드가 'J3'인 사원 조회
select * from employee where (salary>=3500000 and job_code = 'J3');

--6. employee table에서현재 근무중인 사원을 이름 오름차순으로 정렬
select * from employee where quit_yn ='N' ORDER BY emp_name asc;




--===================================
-- 별칭 : 공백, 특수문자, 숫자로 시작하는 경우는 쌍따옴표 필수
--      : as와 쌍따옴표 생략가능


--nvl(col, null일때 값) : null 처리 함수, col이 null이 아니면 col값 리턴
--    : col이 null이면 (null일때 값)을 리턴
select bonus, nvl(bonus,0)
from employee;
--실급여 : salary +(salary*bonus)
select emp_name,
    salary,
    bonus,
    salary+(salary*nvl(bonus,0)) --bonus가 null이면 bonus 0으로 처리
from employee;


--distinct 중복 제거용
--select절에 한번만 사용된다.
--여러 컬럼 사용 시 컬럼을 묶어서 고유한 값으로 처리
select distinct job_code,dept_code from employee;


--문자연결 연산자 : ||
--  + 는 산술연산만 가능하다.
select '안녕' || '하세요' ||123 as 인사말
from dual;


--=================================================
-- where
--=================================================
--테이블의 모든 행 중 결과 집합에 포함될 행을 필터링한다.
--특정행에 대해 true | false 결과를 리턴한다.

/*
=               : 같은것
!=, ^=, <>      : 다른것
between, and    : 범위연산
like, not like  : 문자패턴 연산
is null, is not null : null여부
in, not in           : 값 목록에 포함 여부

and 
or
not     제시한 조건의 반전
*/

select email
from employee
where email like '___\_%' escape '\';


select emp_name, dept_code
from employee 
where dept_code in ('D6','D8');


select emp_name, dept_code
from employee 
where dept_code not in ('D6','D8');        -- where dept_code !='D6' and dept_code !='D8';


--인턴사원 조회
--null값은 산술, 비교 연산 불가능
select emp_name, dept_code
from employee
--where dept_code =null;
where dept_code is null; --(is not null)



--D6, D8부서원이아닌 사원조회(인턴사원 포함)
select emp_name, dept_code
from employee
where dept_code not in('D6','D8') or dept_code is null;
--nvl버전
select emp_name, dept_code
from employee
where nvl(dept_code,'D0') not in('D6','D8');



--=========================================
--ORDER BY
--=========================================
--select 구문 중 가장 마지막에 처리
--지정한 컬럼 기준으로 결과 집합을 정렬
--number 0<10;
--string ㄱ<ㅎ,  a<z
--date 과거<미래
--asc 생략가능(오름차순)
--desc 내림차순



--=========================================
--FUNCTION
--=========================================
--일련의 실행 코드를 작성해두고 호출해서 사용함.
--리턴값이 무조건 존재함

--1.단일행 함수  : 각행마다 반복 호출되어서 호출된 수만큼의 결과를 리턴
--  a. 문자처리함수
--  b. 숫자처리함수
--  c. 날짜처리함수
--  d. 형변환 함수
--  e. 기타함수

--2.그룹함수    : 여러행을 그룹핑한 후 그룹당 하나의 결과를 리턴


------------------------------------------------
--단일행함수
------------------------------------------------

--**********************************************
-- a. 문자처리함수
--**********************************************

--문자열 길이 리턴 :length

--lengthb(col) : 값의 byte 수 리턴
select emp_name, lengthb(emp_name) from employee;


--instr(string, search, position, occurence)
--string에서 search가 위치한 index 반환
--oracle에서는 index가 1에서부터 시작. 1부터 시작
select instr('kh정보교육원 국가정보원 정보문화사','정보'),    -- 3(index 위치)
       instr('kh정보교육원 국가정보원 정보문화사','안녕'),    -- 0(값없음)
       instr('kh정보교육원 국가정보원 정보문화사','정보',5),  -- 11(5번지 부터 시작해서 '정보'가 있는 인덱스까지 )
       instr('kh정보교육원 국가정보원 정보문화사','정보',1,3), -- 15(3번째 '정보'가 찾아지는 index)
       instr('kh정보교육원 국가정보원 정보문화사','정보',-1)     -- 11(postion이 음수면 뒤에서부터 시작)
from dual;

--email 컬럼값 중 '@'의 위치는:
select email, instr(email,'@') from employee;

--substr(String, startIndex, length)
--string에서 startIndex부터 length개수만큼 잘라내어 리턴
--startIndex 음수면 뒤에서 출력
--length 생략시에는 문자열 끝까지 반환
select substr('show me the moneu',6,2)
from dual;


--@실습 : 사원명에서 성(1글자로 가정)만 중복없이 사전순으로 출력
select DISTINCT  substr(emp_name,1,1) as 성
from employee
order by 성 asc;

--lpad|rpad(String, byte, padding_char)
--byte수의 공간에 String을 대입하고, 남은 공간은 padding_char를 왼쪽|오른쪽에 채울것.
--padding_char는 생략 시 공백문자
select lpad(email,20,'#'),
        rpad(email,20,'#'),
        '[' || lpad(email,20,'#') || ']',
        '[' || rpad(email,20,'#') || ']'
from employee;


--@실습 :남자사원만 사번, 사원명, 주민번호(8번째 자리가 1이나 3), 연봉 조회
--주민번호는 뒤 6자리는 *
select * from employee;
select emp_id, emp_name, rpad(substr(emp_no,1,8),14,'*') ,salary
from employee
where substr(emp_no,8,1) in (1,3);


--**********************************************
-- b. 숫자처리 함수
--**********************************************

-- mod(피젯수, 젯수) : 나머지 return
-- 나머지함수, 나머지 연산자 %가 없다
select mod(10,2) 
from dual;

--입사년도가 짝수인 사원 조회
select emp_name,
      extract(year from hire_date) year
from employee
where mod(extract(year from hire_date),2) =0
--where mod(year,2)=0 불가 : year이 정의가 안되어 있음
order by year;

--ceil(num) :  소수점 기준으로 반올림
select ceil(123.456),
       ceil(123.456*100)/100 -- 부동소수점 방식으로 처리
from dual;

--floor(num): 소수점 기준으로 버림
select floor(456.789),
    floor(456.789*10)/10
from dual;

--round(num,position) : position 기준으러(기본값 0, 소수점 기준) 반올림처리
select round(234.567),
       round(234.567,2),
       round(234.567,-1)
from dual;

--trunc(num,position) : 버림
select trunc(123.456),
       trunc(123.456,2)
from dual;


--**********************************************
--c.날짜처리함수
--**********************************************
-- 날짜형 + 숫자 = 날짜형
-- 날짜형 - 날짜형 = 숫자

--add_months(date, number): date 기준으로 몇달(num) 전후의 날짜형을 리턴
select sysdate+5,
    add_months(sysdate,1),
    add_months(sysdate,-1),
    add_months(sysdate + 5,1)
from dual;

--months_between(미래,과거) : 두 날짜형의 개월수 차이를 리턴.
select sysdate,
    to_date('2021/07/08'),
    trunc(months_between(to_date('2021/07/08'),sysdate),1) diff
from dual;




--이름, 입사일, 근무개월수(n개월), 근무개월수(n년 m개월) 조회
select emp_name,
    hire_date,
    trunc(months_between(sysdate,hire_date)) ||'개월' as 근무개월수,
    trunc(months_between(sysdate,hire_date)/12) ||'년' ||
    trunc( mod(months_between(sysdate,hire_date),12) )||'개월' as 근무개월수
from employee;




--**********************************************
--d.형변환 함수
--**********************************************
/*
        to_char     to_date
        ---->       ---->
    num      string     date
        <----      <----
        to_number   to_char
*/
--trun(date) : 시분초 정보를 제외한 년원일 정보만 리턴
select to_char(sysdate,'yyyy/mm/dd(day)'),
    to_char(sysdate, 'fmyyyy/mm/dd(day)'),   --형식문자로 인한 앞글자 0을 제거
    to_char(sysdate,'yyyy"년" mm"월" dd"일"')
from dual;

select to_char(1234567, 'fmL9,999,999,999') won, --L은 지역화폐 단위
       to_char(1234567, 'fmL9,999') won, --자리수가 모자르면 오류
       to_char(123.4, 'fm9999.99') won, --소수점이상의 빈자리는 공란, 소수점 이하 빈자리는 0처리
       to_char(123.4, 'fm0000.00') won -- 빈자리는 0처리
from dual;

--이름, 급여, 입사일 조회
select emp_name,
    to_char(salary, 'fm9,999,999') salary,
    to_char(hire_date,'fmyyyy-mm-dd-(dy)') hire_date
from employee;

--to_number(string, format)
select to_number('1,234,567','9,999,999') +100,
       to_number('￦3,000','L9,999')+100
from dual;

--자동형변환 지원
select '1000'+100,  
    '99' +'1',
    '99'||'1'
from dual;


--to_date(String , format)
select to_date('2020/09/09','yyyy/mm/dd')+1 from dual;


--2021/07/08 21:50:00의 2시간 후 정보를 출력
select to_char(
        to_date('2021/07/08 21:50:00','yyyy/mm/dd hh24:mi:ss')+(2/24),
        'yyyy/mm/dd hh24:mi:ss') result
from dual;

--현재시각 기준 1일 2시간 3분 4초후 날짜 정보를 출력
select sysdate + 1 +(2/24) + (3 /(24*60)) + (4/(24*60*60))
from dual;


--기간타입
--interval year to month : 년월 기간
-- interval date to second : 일 시 분 초 기간

--1년 2개월 3일 4시간 5분 6초후
select to_char(
    add_months(sysdate,14) +3 + (4/24) + (5/24/60) + (6/24/60/60), 'yyyy/mm/dd hh24:mi:ss')
from dual;

select to_char(
        sysdate+to_yminterval('01-02') + to_dsinterval('3 04:05:06') )
from dual;

--numtodsinterval(diff,unit)
--numtoyminterval(diff,unit)
--diff : 날짜 차이
--unit : year | month | day | hour | minute | second
select extract(day from 
    numtodsinterval(
    to_date('20210708','yyyymmdd') - sysdate, 'day'))
from dual;





--**********************************************
--e.기타 함수
--**********************************************
--null처리함수
-- nvl(col, nullvalue)
-- nvl2(col, notnullvalue, nullvalue) : 컬럼값이 null이 아니면 두번째 인자를 리턴, null이면 세번째 인자를 리턴
select emp_name,
    bonus,
    nvl(bonus, 0) nvl1,
    nvl2(bonus, '있음', '없음') nvl2
from employee;

--선택함수 1
--decode(expr, 값1, 결과값1, 값2, 결과값2,...,기본값)
select emp_name,
    emp_no,
    decode(substr(emp_no,8,1),'1','남','2','여','3','남','4','여') as 성별,
    decode(substr(emp_no,8,1),'1','남','3','남','여') as 성별2
from employee;

--J1은 대표 J2,J3은 임원 나머지는 평사원으로 출력(사원명, 직급코드, 직위)
select * from employee;
select emp_name,
    job_code,
    decode(job_code, 'J1','대표','J2','임원','J3','임원','평사원') as 직위
from employee
ORDER BY job_code;


--where절에서도 사용가능
--여사원만 조회
select emp_name,
    emp_no,
    decode(substr(emp_no,8,1) ,'1','남','3','남','여') 성별
from employee
where decode(substr(emp_no,8,1) ,'1','남','3','남','여') ='여';


--선택함수2
--case
/*
type1(decode와 ;유사)

- case 표현식
    when 값1 then 결과 1
    when 값2 then 결과2
    ...........
    else 기본값
    end
    
type2
- case
    when 조건식1 then 결과 1
    when 조건식2 then 결과2
    ...........
    else 기본값
    end
*/
--type1
select emp_no,
    case substr(emp_no, 8,1)
        when '1' then '남'
        when '3' then '남'
        else '여'
        end
        as gender
from employee;


--type2
select emp_no,
    case
        when substr(emp_no,8,1) ='1' then '남'
        when substr(emp_no,8,1) ='3' then '남'
        else '여'
        end
        as gender,
    case
        when substr(emp_no,8,1) in ('1','3') then '남'
        else '여'
        end
        as gender ,
        
    case job_code
        when 'J1' then '대표'
        when 'J2' then '임원'
        when 'J3' then '임원'
        else '평사원'
        end jon
from employee;



--=================================
-- GROUP FUNCTION
--=================================
--여러행을 그룹핑하고, 그룹당하나의 결과를 리턴하는 함수
--모든행을 하나의 그룹, 또는 GROUP BY를 통해서 세부 그룹 지정이 가능ㅎ다.

--SUM(COL)
select sum(salary)
from employee;
--그룹함수의 결과와 일반컬럼을 동시에 조회할 수 없다.



--avg(col) :평균
select round(avg(salary),1) "평균",
        to_char( round(avg(salary),1),'fm9,999,999,999') "평균2"
from employee;


select to_char( round(avg(salary),1),'fm9,999,999,999') "평균"
from employee
where dept_code ='D5';

select to_char( round(avg(salary),1),'fm9,999,999,999') "평균" 
from employee
group by dept_code having dept_code ='D5';


--남자사원의 평균 급여
select to_char( round(avg(salary),1),'fmL9,999,999,999') "평균" 
from employee
where substr(emp_no,8,1) in ('1','3');



--count(col)
-- null이 아닌 컬럼의 개수.  but,  * 은 null 포함 모든컬럼, 즉 하나의 행을 의미
select count(*),
    count(bonus),
    count(dept_code)
from employee;


select sum(
    case
        when bonus is not null then 1
        when bonus is null then 0
        end
        ) bonusman
from employee;


--사원이 속한 부서 총수(중복 제거)
select count(DISTINCT dept_code)
from employee;


--max(col) | min(col)
-- 숫자, 날짜 (과거-> 미래), 문자 (ㄱ->ㅎ)
SELECT max(salary), min(salary)
from employee;


--===================================
--GROUP BY
--===================================
--group by 구문 없이는 전체를 하나의 구룹으로 취금
--group by 절에 명시한 컬럼만 select에 사용가능


--부서코드별 사원수 조회
select nvl(dept_code,'intern') 부서코드,
    count(*) 사원수,
    to_char(sum(salary),'fmL9,999,999,999') 급여합계,
    to_char(trunc(avg(salary),1), 'fmL9,999,999,999.0') 급여평균
from employee
group by dept_code
order by dept_code;

--성별 인원수, 평균 급여 조회
select  decode(substr(emp_no, 8, 1), '1', '남','3','남','여') 성별, 
         count(*) 인원수,
         to_char(trunc(avg(salary),1), 'fmL9,999,999,999.0') 급여평균
from employee
group by decode(substr(emp_no, 8, 1), '1', '남','3','남','여');



--===================================
--having
--===================================

select job_code, count(*)
from employee
group by job_code
having count(*) >= 3
order by job_code;


select * from employee;

--관리하는 사원이 2명이상인 manager의 아이디와 관리하는 사원수
select manager_id, count(manager_id)
from employee
group by manager_id having count(manager_id) >=2;



--role up
--group by 절에 사용하는 함수
--그룹핑결과에 대해 소계를 제공

--rollup : 지정컬럼에 대해 단방향 소계
--cube : 지정컬럼에 대해 양방향 소계
--지정컬럼이 하나인 경우 rollup, cube 결과가 같다.

select dept_code, count(*)
from employee
group by rollup(dept_code) -- cube(dept_code)
order by 1;

--grouping()
-- 실제데이터 0 retrun | 집계데이터 1  컬럼을 구분하는 함수


--두개이상 컬럼을 rollup|cube에 전달하는 경우
select dept_code, job_code, count(*)
from employee
group by rollup(dept_code, job_code)
order by 1,2;



--=================================
--JOIN
--=================================
--relation 만들기
--가로방향 합치기 : join
--세로방향 합치기 : union
select *
from employee e join department d
    on e.dept_code = d.dept_id;
    
    
--join 종류
--1.EQUI-JOIN : 동등비교조건에 의한조인
--2.NON-EQUI-JOIN : 동등비교조건이 아닌 조인(between, in, not in, !=)

--join 문법
--1. ANSI 표준문법 : 모든 DBMS 공통문법
--2. Vendor별 문법 : DBMS별로 지원하는 문법. 오라클 전용문법

select E.emp_name,
     J.job_code,
     J.job_name
from employee E join job J
    on E.job_code = J.job_code;
    
--기준 컬럼명이 좌우 테이블에서 동일하다면 on대신 using 사용가능
--using 사용경우 해당 컬럼에 별칭 사용 불가 (E.job_code 불가. ORA-25154: column part of USING clause cannot have qualifier)
select job_code
from employee E join job J
    using(job_code);        --on 사용시 job_code 2개 column 생성되지만, using은 공통된컬럼이 되면서 1개만생성 => 별칭 사용불가
    
    
/*
euqi-join 종류
1. inner join : 교집합
2. outer join : 합집합
    -left outer join : 좌측테이블 기준 합집합
    -right outer join  : 우측테이블 기준 합집합
    -full outer join : 양테이블 기준 합집합
3. cross join 
    두테이블간 조인할 수 있는 최대 경우의 수를 표현
4. self join 
    같은 테이블의 조인
5. multiple join
    3개이상테이블조인
*/


-------------------------------------------
--INNER JOIN
-------------------------------------------
--A (inner) join B : 기본 join
--1. 기준컬럼값이 null인경우, 결과집합에서 제외
--2. 기준컬럼값이 상대 테이블에 존재하지 않는 경우, 결과 집합에서 제외.

select count (*)
from employee E join department D
    on e.dept_code = d.dept_id; --emp에서 dept_code가 null 행 제외(인턴)
    
-------------------------------------------
--OUTER JOIN
-------------------------------------------
--1. A left (inner) join B 
--좌측테이블 기준. 좌측테이블 모든 행이 포함, 우측테이블에는 on조건절에 만족하는 행만 포함
--24 = 22+2
select *
from employee E left outer join department D
    on e.dept_code = d.dept_id;     -- e.dept_code에서 null데이터가 제외된게 아니라 null데이터가 dept_id에 포함되지 않아서 제외
    
--2. A right (inner) join B :
--우측테이블 기준. 우측테이블 모든 행이 포함, 좌측테이블에는 on조건절에 만족하는 행만 포함
--25 =22+3(right)
select *
from employee E right outer join department D
    on e.dept_code = d.dept_id;     -- e.dept_id에서 null데이터가 제외된게 아니라 null데이터가 dept_code에 포함되지 않아서 제외

--3. full (outer)join
-- 완전조인. 좌우 테이블 모두 포함
select *
from employee E right outer join department D
    on e.dept_code = d.dept_id;
    
-------------------------------------------
--CROSS JOIN
-------------------------------------------
--상호조인. ON조건절없이, 좌측테이블 행, 우측테이블 행이 연결될 수 있는 모든 경우의 수를 포함한 결과 집합
select *
from employee E cross join department D;

--일반컬럼, 그룹함수 결과를 함께 조회

from emoployee e cross join ( select trunc(avg(salary)) from employee ) A;


-------------------------------------------
--SELF JOIN
-------------------------------------------
--조인시 같은 테이블을 좌/우측 테이블로 사용.

--사번, 사원명, 관리자 사번, 관리자명 조회
select *
from employee E1 join employee e2
    on e1.manager_id = e2.emp_id;
    
    
-------------------------------------------
--MULTIPLE JOIN
-------------------------------------------
--한번에 좌우 두테이블 씩 조인하여 3개이상의 테이블을 연결
select *
from employee e join department d
    on e.dept_code = d.dept_id
    join location L
    on d.location_id = l.local_code;


--직급이 대리, 과장이면서 asia지역에 근무하는 사원 조회
select e.emp_id 사번, 
       e.emp_name 이름, 
       j.job_name 직급명,
       d.dept_title 부서명,
       e.salary 급여,
       l.local_name 근무지역,
       n.national_name 국가
from employee e 
    join department d
      on e.dept_code = d.dept_id
    join location l
      on d.location_id = l.local_code
    join job j
      on e.job_code = j.job_code
    join nation n
      on l.national_code = n.national_code
where j.job_name in('대리','과장') and
      instr(l.local_name,'ASIA')>0
order by e.emp_id;

select * from employee;
select * from job;
select * from location;
selction
