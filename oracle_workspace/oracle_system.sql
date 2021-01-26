--한줄주석
--==================================
--system 관리자 계정
--==================================
show user;

--현재 등록된 사용자 목록 조회
--sys 슈퍼관리자(db 여러개 생성)
--system 일반관리자
select * from dba_users;


--sql은 대소문자 구분x
-- 사용자 계정의 비밀번호, 테이블내의 데이터는 대소문자 구분


--관리자는 일반 사용자를 생성할 수 있다.
 create user kh 
 IDENTIFIED by kh               --비밀번호
 default tablespace users;      --데이터가 저장될 영역 system/users
 
 --사용자 삭제   : 사용자에 있는 모든 data가 삭제됨(주의해야함)
 --drop user kh;
 
 --접속권한 create session이 포함된 role(권한묶음) connect 부여
 --grant connect to kh;
 
 --생성, 연결 한번에 부여
 grant connect,resource to kh;
 
 
 
 --chun 계정생성(실습용)
 create user chun
 identified by chun
 default tablespace users;
 
 grant connect, resource to chun;
 