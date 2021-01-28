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



