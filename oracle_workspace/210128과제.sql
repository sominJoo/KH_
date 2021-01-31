--## @실습문제 : join (@chun계정으로 실행)
--1. 학번, 학생명, 학과명 조회
-- 학과 지정이 안된 학생은 존재하지 않는다.
select s.student_no 학번,
       s.student_name 학생명,
       d.department_name 학과명
from tb_student s join tb_department d
    on s.department_no = d.department_no;

--2. 수업번호, 수업명, 교수번호, 교수명 조회
select c.class_no 수업번호,
    c.class_name 수업명,
    p.professor_no 교수번호,
    p.professor_name 교수명
from tb_class_professor cp 
    join tb_class c
        on cp.class_no = c.class_no
    join tb_professor p
        on cp.professor_no = p.professor_no
order by p.professor_name;

--3. 송박선 학생의 모든 학기 과목별 점수를 조회(학기, 학번, 학생명, 수업명, 점수)
select  s.student_no 학번,
        s.student_name 학생명,
        g.term_no 학기,
        c.class_name 수업명,
        g.point 점수
from tb_grade g 
    join tb_student s
        on g.student_no =s.student_no
    join tb_class c
        on g.class_no = c.class_no    
where s.student_name ='송박선'
order by g.term_no;

--4. 학생별 전체 평점(소수점이하 첫째자리 버림) 조회 (학번, 학생명, 평점)
--같은 학생이 여러학기에 걸쳐 같은 과목을 이수한 데이터 있으나, 전체 평점으로 계산함.
select  g.student_no 학번,
        s.student_name 학생명,
        trunc(avg(g.point),1) 평점
from tb_grade g join tb_student s
        on g.student_no = s.student_no
group by g.student_no, s.student_name
order by s.student_name;

-- 5. 교수번호, 교수명, 담당학생명수 조회
-- 단, 5명 이상을 담당하는 교수만 출력

select p.professor_no 교수번호,
       p.professor_name 교수명,
       count(*) 담당학생명수
from tb_professor p join tb_student s
     on p.professor_no = s.coach_professor_no
group by p.professor_no, p.professor_name having count(*) >=5
order by  p.professor_no; 



--@실습문제 : INNER JOIN & OUTER JOIN
--1. 학번, 학생명, 학과명을 출력
select s.student_no 학번,
        s.student_name 학생명,
        d.department_name 학과명
from tb_student s join tb_department d
    on s.department_no = d.department_no;

--2. 학번, 학생명, 담당교수명을 출력하세요. 담당교수가 없는 학생은 '없음'으로 표시
select s.student_no 학번,
        s.student_name 학생명,
        nvl(p.professor_name,'없음') 담당교수명
from tb_student s  left outer join tb_professor p
    on s.coach_professor_no = p.professor_no;

--3. 학과별 교수명과 인원수를 모두 표시하세요.
select d.department_name, p.professor_name, count(*) 인원수
from tb_department d join tb_professor p
    on d.department_no = p.department_no
GROUP by rollup(d.department_name,p.professor_name) ;


-- 4. 이름이 [~람]인 학생의 평균학점을 구해서 학생명과 평균학점(반올림해서 소수점둘째자리까지)과 같이 출력.
-- (동명이인일 경우에 대비해서 student_name만으로 group by 할 수 없다.)
select s.student_name, round(avg(g.point),2)
from tb_student s join tb_grade g
    on s.student_no = g.student_no
where  s.student_name like '%람'
GROUP BY g.student_no,s.student_name;


--5. 학생별 다음정보를 구하라.
/*
--------------------------------------------
학생명  학기     과목명    학점
--------------------------------------------
감현제	200401	전기생리학 	4.5
            .
            .
--------------------------------------------
​
*/
select s.student_name 학생명
       ,g.term_no  학기
       ,c.class_name 과목명
       ,g.point 학점
from tb_student s join tb_grade g
        on s.student_no = g.student_no
    join tb_class c
        on g.class_no = c.class_no
order by student_name;




