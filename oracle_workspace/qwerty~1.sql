create table tb_abc(
    id number
);

--권한, 롤을 조회
select *
from user_sys_privs; --권한

select *
from user_role_privs; --롤

select *
from role_sys_privs; --부여받은 롤에 포함된 권한



--kh계정이 소유한 tb_coffee테이블조회
select *
from kh.tb_coffee;