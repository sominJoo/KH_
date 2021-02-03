--1. 학생이름과 주소지를 표시하세요
select student_name 학생이름
    , student_address 주소지
from tb_student
order by student_name asc;


--2. 휴학중인 학생들의 이름과 주민번호를 나이가 적은 순서로 화면에 출력하시오.
select student_name 
    , student_ssn 
from tb_student
where absence_yn ='Y'
order by sysdate 
        - ((decode(substr(student_ssn,8,1),'1' ,1900,'2',1900,2000)+ substr(student_ssn,1,6)))
ASC;
select sysdate from dual;

--3. 주소지가 강원도나 경기도인 학생들 중 1900년대 학번을 가진 학생들의 이름과 학번, 주소를 이름의 오름차순으로 화면에 출력하시오. 
-- 단, 출력헤더에는 "학생이름","학번", "거주지 주소" 가 출력되도록 한다.
select student_name 학생이름
    , student_no 학번
    , student_address "거주지 주소"
from tb_student
where (student_address like '%경기도%' or student_address like '%강원도%')
    and substr(student_no,1,1) ='9'
order by student_name;


--4. 현재 법학과 교수 중 가장 나이가 많은 사람부터 이름을 확인핛 수 있는 SQL 문장을 작성하시오. 
-- (법학과의 '학과코드'는 학과 테이블(TB_DEPARTMENT)을 조회해서 찾아 내도록 하자)
select professor_name, professor_ssn
from tb_professor
where department_no =(
    select department_no
    from tb_department
    where department_name = '법학과'
)
order by sysdate 
        - (( decode(substr(professor_ssn,8,1),'1' ,1900,'2',1900,2000) + substr(professor_ssn,1,6)))
desc;


--5. 2004년2학기에 'C3118100' 과목을 수강한 학생들의 학점을 조회
--학점이 높은 학생부터 표시하고, 학점이 같으면 학번이 낮은 학생부터 표시하는 구문을 작성해보시오.
select student_no, point
from tb_grade
where term_no = '200402'
      and class_no = 'C3118100'
order by point desc, student_no asc ;


--6. 학생 번호, 학생 이름, 학과 이름을 학생 이름으로 오름차순 정렬하여 출력하는 SQL 문을 작성하시오.
select s.student_no
     , s.student_name
     , d.department_name
from tb_student s join tb_department d
    on s.department_no = d.department_no
order by s.student_name;


--7. 춘 기술대학교의 과목 이름과 과목의 학과 이름을 출력하는 SQL 문장을 작성하시오.
select c.class_name
    , d.department_name
from tb_class c join tb_department d
    on c.department_no = d.department_no;


--8. 과목별 교수 이름을 찾으려고 한다. 과목 이름과 교수 이름을 출력하는 SQL 문을 작성하시오.
select (select class_name from tb_class where c.class_no = class_no) 과목
    , (select professor_name from tb_professor where c.professor_no = professor_no) 교수이름
from tb_class_professor c
order by 교수이름;


--9. 8번의 결과 중 ‘인문사회’ 계열에 속핚 과목의 교수 이름을 찾으려고 한다. 
-- 이에 해당하는 과목 이름과 교수 이름을 출력하는 SQL 문을 작성하시오.
select c.class_name
     , p.professor_name
from tb_class_professor cp 
    join tb_professor p
        on cp.professor_no = p.professor_no
    join tb_class c
        on cp.class_no = c.class_no
    join tb_department d
        on p.department_no = d.department_no
where d.category ='인문사회';



--10. ‘음악학과’(department_name) 학생들의 평점을 구하려고 한다. 음악학과 학생들의 "학번", "학생 이름", "전체 평점"을 출력
--(단, 평점은 소수점 1자리까지맊 반올림하여 표시핚다.)
select s.student_no 학번
    , s.student_name 학생이름
    , round(avg(point),1) "전체평점"
from tb_grade g join tb_student s
        on g.student_no = s.student_no
    join tb_department d
        on s.department_no = d.department_no
where d.department_name = '음악학과'
group by s.student_no, s.student_name
order by s.student_no;


--11. 학번이 A313047인 학생이 학교에 나오고 있지 않다. 지도 교수에게 내용을 전달하기 위한 학과 이름, 학생 이름과 지도 교수 이름을 출력
--단, 출력헤더는 ‚학과이름‛, ‚학생이름‛, ‚지도교수이름‛으로 출력되도록 한다.
select (select department_name from tb_department where s.department_no = department_no)학과이름
    , student_name 학생이름
    , (select professor_name from tb_professor where s.coach_professor_no = professor_no) 지도교수이름
from tb_student s
where s.student_no = 'A313047';


--12. 2007년도에 '인간관계론' 과목을 수강한 학생을 찾아 학생이름과 수강학기를 출력]
select (select student_name from tb_student where g.student_no = student_no) 학생이름
    , term_no "학기"
from tb_grade g
where term_no like '2007%'
    and class_no = (
        select class_no
        from tb_class
        where class_name ='인간관계론'
    )
;


--13. 예체능 계열 과목 중 과목 담당교수를 한 명도 배정받지 못한 과목을 찾아 그 과목 이름과 학과 이름을 출력
select class_name, department_name
from tb_class 
    left join tb_class_professor 
        using(class_no)
    left join tb_department 
        using(department_no)
where category = '예체능'
    and professor_no is null
;



--14. 서반아어학과 학생들의 지도교수를 게시하고자 한다.
--학생이름과 지도교수 이름을 찾고 만일 지도 교수가 없는 학생일 경우 "지도교수 미지정‛으로 표시
--단, 출력헤더는 ‚학생이름‛, ‚지도교수‛로 표시하며 고학번 학생이 먼저 표시되도록 한다.
select student_name 학생이름,
    nvl((
        select professor_name
        from tb_professor
        where s.coach_professor_no = professor_no
    ), '지도교수 미지정') 지도교수
from tb_student s 
where department_no = (
    select department_no
    from tb_department
    where department_name = '서반아어학과'
)
order by student_no;


--15. 휴학생이 아닌 학생 중 평점이 4.0 이상인 학생을 찾아 
--그 학생의 학번, 이름, 학과 이름, 평점을 출력하는 SQL 문을 작성하시오.
select g.student_no 학번
    , s.student_name 이름
    ,(select department_name from tb_department where department_no =s.department_no) 학과이름
    , avg(point) 평점
from tb_grade g join tb_student s
    on g.student_no = s.student_no
where s.absence_yn ='N'
group by g.student_no,s.student_name, s.department_no having avg(point) >=4.0
order by 학번;



--16. 환경조경학과 전공과목들의 과목 별 평점을 파악할 수 있는 SQL 문을 작성하시오.
select g.class_no
    , c.class_name
    , avg(g.point)
from tb_class c join tb_grade g
    on c.class_no = g.class_no
where c.department_no = (
    select department_no
    from tb_department
    where department_name = '환경조경학과'
)
and class_type like '전공%'
group by g.class_no,c.class_name
order by g.class_no;



--17. 춘 기술대학교에 다니고 있는 최경희 학생과 같은 과 학생들의 이름과 주소를 출력
select student_name
    , student_address
from tb_student
where department_no =(
    select department_no
    from tb_student
    where student_name = '최경희'
);



--18. 국어국문학과에서 총 평점이 가장 높은 학생의 이름과 학번을 표시하는 SQL문을 작성하시오.
select 학번
     , 이름
from (
    select s.student_no 학번
         , avg(g.point) 평점
         , s.student_name 이름
    from tb_grade g join tb_student s
        on g.student_no = s.student_no
    where s.department_no = (
        select department_no
        from tb_department
        where department_name = '국어국문학과'
    )
    group by s.student_no, s.student_name
    order by 평점 desc
)
where rownum =1;



--19. "환경조경학과"가 속한 같은 계열 학과들의 학과 별 전공과목 평점을 파악하기 위한 적절한 SQL 문을 찾아내시오.
--단, 출력헤더는 "계열 학과명", "전공평점"으로 표시되도록 하고, 평점은 소수점 한 자리까지만 반올림하여 표시되도록 한다.

select d.department_name "계열 학과명"
    , round(avg(g.point),1) 전공평점
from tb_student s 
    join tb_grade g
        on s.student_no = g.student_no
    join tb_department d
        on s.department_no = d.department_no
where d.category = (
    select category
    from tb_department
    where department_name = '환경조경학과'
)
group by d.department_name
order by "계열 학과명";



