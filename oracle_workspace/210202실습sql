<DQL종합실습문제>
@ 실습 문제
--문제1. 기술지원부에 속한 사람들의 사람의 이름,부서코드,급여를 출력하시오
select emp_name 사원명
    , dept_code 부서코드
    , salary 급여
from employee
where dept_code = (
    select dept_id
    from department
    where dept_title = '기술지원부'); 
    

--문제2. 기술지원부에 속한 사람들 중 가장 연봉이 높은 사람의 이름,부서코드,급여를 출력하시오
select *
from( 
    select emp_name 사원명
    , dept_code 부서코드
    , salary 급여
    from employee
    where dept_code = (
        select dept_id
        from department
        where dept_title ='기술지원부'
        )
    order by salary desc
    )
where rownum =1;



--문제3. 매니저가 있는 사원중에 월급이 전체사원 평균을 넘고 사번,이름,매니저 이름, 월급을 구하시오. 
--    1. JOIN을 이용하시오
select e.emp_id 사번
    , e.emp_name 이름
    , e1.emp_name 매니저
    , e.salary
from employee e join employee e1 
    on e.manager_id = e1.emp_id
where e.manager_id is not null
    and e.salary > ( 
        select avg(salary)
        from employee
    );   

--    2. JOIN하지 않고, 스칼라상관쿼리(SELECT)를 이용하기
select e.emp_id 사번
    , e.emp_name 이름
    , (select emp_name from employee where emp_id = e.manager_id) 매니저
    , e.salary
from employee e
where e.manager_id is not null
    and salary > ( 
        select avg(salary)
        from employee
    );    




--문제4. 같은 직급(job_code)의 평균급여보다 같거나 많은 급여를 받는 직원의 이름, 직급코드, 급여, 급여등급 조회
select * from employee;
select * from job;

select e.emp_name 이름
    , e.job_code 직급코드
    , e.salary 급여
    , e.sal_level 급여등급
from employee e
where e.salary > ( 
        select avg(salary)
        from employee
        WHERE JOB_CODE = E.JOB_CODE
    );    




--문제5 부서별 평균 급여가 3000000 이상인 부서명, 평균 급여 조회
--단, 평균 급여는 소수점 버림, 부서명이 없는 경우 '인턴'처리
select *
from (
    select nvl((select dept_title from department where e.dept_code = dept_id),'인턴') 부서명,
        trunc(avg(salary)) 평균급여
    from employee e
    group by e.dept_code
) 
where 평균급여 > 3000000
;


--문제6. 직급의 연봉 평균보다 적게 받는 여자사원의 사원명,직급명,부서명,연봉을 이름 오름차순으로 조회하시오
--  연봉 계산 => (급여+(급여*보너스))*12    
select 사원명, 
       부서명, 
       직급명, 
       연봉,
       (select trunc(avg(salary + (salary*nvl(bonus,0))*12))
        from employee
        where job_code = 직급코드) 평균연봉
from (
    select e.emp_name 사원명
         , e.job_code 직급코드
         , nvl((select dept_title from department where e.dept_code = dept_id),'인턴') 부서명
         , (select job_name from job where e.job_code = job_code) 직급명
         , trunc(e.salary+(e.salary *nvl(e.bonus,0))) 연봉
    from employee e
    where decode(substr(emp_no,8,1),'1','남','3','남','여') = '여'
)
where 연봉 < (
        select trunc(avg(salary + (salary*nvl(bonus,0))*12)) 평균연봉
        from employee
        where job_code = 직급코드
)
order by 사원명 asc;


---문제7. 다음 도서목록테이블을 생성하고, 공저인 도서만 출력하세요.
create table tbl_books (
book_title  varchar2(50)
,author     varchar2(50)
,loyalty     number(5)
);
insert into tbl_books values ('반지나라 해리포터', '박나라', 200);
insert into tbl_books values ('대화가 필요해', '선동일', 500);
insert into tbl_books values ('나무', '임시환', 300);
insert into tbl_books values ('별의 하루', '송종기', 200);
insert into tbl_books values ('별의 하루', '윤은해', 400);
insert into tbl_books values ('개미', '장쯔위', 100);
insert into tbl_books values ('아지랑이 피우기', '이오리', 200);
insert into tbl_books values ('아지랑이 피우기', '전지연', 100);
insert into tbl_books values ('삼국지', '노옹철', 200);
select * from tbl_books;
    
select book_title
from tbl_books
group by book_title having count(*)>1;
    
    

