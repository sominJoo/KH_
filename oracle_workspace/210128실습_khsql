--210128 @실습문제

--1. 2020년 12월 25일이 무슨 요일인지 조회하시오.
select to_char(to_date(20201225),'day') 요일 from dual;

--2. 주민번호가 70년대 생이면서 성별이 여자이고, 성이 전씨인 직원들의 
--사원명, 주민번호, 부서명, 직급명을 조회하시오.
select e.emp_name 사원명,
       e.emp_no 주민번호,
       d.dept_title 부서명,
       j.job_name 직급명
from employee e 
    join department d
        on e.dept_code = d.dept_id
    join job j
        on e.job_code = j.job_code
where decode(substr(e.emp_no,8,1), '1', '남', '3', '남', '여') = '여'
      and decode(substr(e.emp_no,1,1), '7', '70', '0') = '70'
      and e.emp_name like '전%';


--3. 가장 나이가 적은 직원의 사번, 사원명, 나이, 부서명, 직급명을 조회하시오.
select *
from (select  e.emp_id 사번,
       e.emp_name 사원명,
       extract(year from sysdate) - (decode(substr(e.emp_no, 1,1),'0','20','19') || substr(e.emp_no, 1,2)) 나이,
       d.dept_title 부서명,
       j.job_name 직급명
       from employee e 
    join department d
        on e.dept_code = d.dept_id
    join job j
        on e.job_code = j.job_code
    order by extract(year from sysdate) - (decode(substr(e.emp_no, 1,1),'0','20','19') || substr(e.emp_no, 1,2))
    )
where ROWNUM =1;


--4. 이름에 '형'자가 들어가는 직원들의 사번, 사원명, 부서명을 조회하시오.
select e.emp_id 사번,
       e.emp_name 사원명,
       e.emp_no 주민번호,
       d.dept_title 부서명
from employee e 
    join department d
        on e.dept_code = d.dept_id
where e.emp_name like '%형%';


--5. 해외영업팀에 근무하는 사원명, 직급명, 부서코드, 부서명을 조회하시오.
select e.emp_name 사원명,
       d.dept_id 부서코드,
       d.dept_title 부서명,
       j.job_name 직급명
from employee e 
    join department d
        on e.dept_code = d.dept_id
    join job j
        on e.job_code = j.job_code
where d.dept_title like '%해외영업%';


--6. 보너스포인트를 받는 직원들의 사원명, 보너스포인트, 부서명, 근무지역명을 조회하시오.
select e.emp_name 사원명,
       e.bonus "보너스 포인트",
       d.dept_title 부서명,
       l.national_code 근무지역명
from employee e 
    join department d
        on e.dept_code = d.dept_id
    join location l
        on d.location_id = l.local_code
where bonus is not null;



--7. 부서코드가 D2인 직원들의 사원명, 직급명, 부서명, 근무지역명을 조회하시오.
select e.emp_name 사원명,
       d.dept_id 부서코드,
       d.dept_title 부서명,
       j.job_name 직급명,
       l.national_code 근무지역명
from employee e 
    join department d
        on e.dept_code = d.dept_id
    join job j
        on e.job_code = j.job_code
    join location l
        on d.location_id = l.local_code
where d.dept_id ='D2'
order by e.emp_name;


--8. 급여등급테이블의 등급별 최대급여(MAX_SAL)보다 많이 받는 직원들의 사원명, 직급명, 급여, 연봉을 조회하시오.
--(사원테이블과 급여등급테이블을 SAL_LEVEL컬럼기준으로 동등 조인할 것)
select e.emp_name 사원명,
       j.job_name 직급명,
       e.salary 급여,
       to_char(e.salary *12, 'fmL9,999,999,999')연봉
from employee e 
    join department d
        on e.dept_code = d.dept_id
    join job j
        on e.job_code = j.job_code
    join sal_grade s
        on e.sal_level = s.sal_level
where e.salary > s.max_sal;


--9. 한국(KO)과 일본(JP)에 근무하는 직원들의 
--사원명, 부서명, 지역명, 국가명을 조회하시오.
select e.emp_name 사원명,
       d.dept_title 부서명,
       l.local_name 지역명,
       l.national_code 국가명
from employee e 
    join department d
        on e.dept_code = d.dept_id
    join location l
        on d.location_id = l.local_code
where l.national_code in ('KO','JP')
order by l.national_code;



--10. 같은 부서에 근무하는 직원들의 사원명, 부서코드, 동료이름을 조회하시오.
--self join 사용
select e1.emp_name 사원명,
       e1.dept_code 부서코드,
       e2.emp_name 동료이름 
from employee e1 join employee e2
    on e1.dept_code = e2.dept_code
where e1.emp_name != e2.emp_name;


--11. 보너스포인트가 없는 직원들 중에서 직급이 차장과 사원인 직원들의 사원명, 직급명, 급여를 조회하시오.
select e.emp_name 사원명,
       j.job_name 직급명,
       e.salary 급여       
from employee e join job j
        on e.job_code = j.job_code
where e.bonus is null 
    and j.job_name in ('차장','사원')
order by j.job_code;


--12. 재직중인 직원과 퇴사한 직원의 수를 조회하시오.
select quit_yn "퇴사?", count(*)
from employee
group by quit_yn;
