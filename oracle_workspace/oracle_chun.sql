--====================================
--CHUN 계정
--====================================

select * from tb_department;

--1. 춘 기술대학교의 학과 이름과 계열을 표시하시오.(출력 헤더는 "학과 명", "계열" 으로 표시)
select department_name as "학과 명",
        CATEGORY as "계열"
from tb_department;


--2. 학과의 학과 정원을 다음과 같은 형태로 화면에 출력핚다.
select 
    department_name || '의 정원은 ' || CAPACITY || '명 입니다.'
from tb_department;

select * from tb_student where absence_yn = 'Y';

--3. "국어국문학과" 에 다니는 여학생 중 현재 휴학중인 여학생?
select student_name
from tb_student
where (select department_no from tb_department where department_name= '국어국문학과') =  department_no    --'국어국문학과'를 다니는 학생을 찾는 코드(tb_department에서 국어국문학과 코드를 찾고 tb_student의 학과코드와 비교)
 and decode(substr(student_ssn, 8,1),'1','남','여') = '여'                                                -- 여학생을 찾기 위한 코드
 and absence_yn = 'Y';                                                                                   -- 휴학생을 찾기 위한 코드
 

--4. 도서관에서 대출 도서 장기 연체자 들을 찾아 이름을 게시
-- 장기연체자 학번 : A513079, A513090, A513091, A513110, A513119
select student_name 
from tb_student
where student_no in ('A513079', 'A513090', 'A513091', 'A513110', 'A513119');


--5. 입학정원이 20명 이상 30명 이하인 학과들의 학과 이름과 계열을 출력
select department_name
    category
from tb_department
where capacity between 20 and 30;
 

select * from tb_professor;
 --6. 춘 기술대학교 총장의 이름을 알아낼 수 있는 SQL 문장을 작성하시오.
select professor_name
from tb_professor
where department_no is null;


--7. 혹시 전산상의 착오로 학과가 지정되어 있지 않은 학생이 있는지 확인
select student_name
from tb_student
where DEPARTMENT_NO is null; --학과번호가 없는 학생을 찾는다.


--8.수강신청을 하려고 한다. 선수과목 여부를 확인해야 하는데, 
-- 선수과목이 존재하는 과목들은 어떤 과목인지 과목번호를 조회
select class_no
from tb_class
where preattending_class_no is not null;

--9. 춘 대학에는 어떤 계열(CATEGORY)들이 있는지 조회해보시오
select distinct category
from tb_department;

--10. 02학번 전주 거주자들의 모임을 만들려고 핚다. 
-- 휴학한 사람들은 제외, 재학중인 학생들의 학번, 이름, 주민번호를 출력
select student_no,
    student_name,
    student_ssn,
    student_address
from tb_student
where absence_yn = 'N'                --재학생여부
    and instr(student_no,'A2') >0     -- 학번에 'A2'가 들어가는지 검사 들어가면 index값 출력되므로 0이상임
    and instr(student_address, '전주')>0 -- 학번과 마찬가지 방법
order by student_name;


select * from tb_student;
select * from tb_department;