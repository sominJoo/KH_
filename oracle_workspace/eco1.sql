select * from personal_point;
select * from team_point;
select * from badge;




update challenge_join set end_date = trunc(to_date('21/02/02')+30) where member_id='honggd' and challenge_id=23;
update badge set badge_date = trunc(to_date('21/02/02')+30) where member_id='honggd' and challenge_id=23;
commit;

select * from badge b left join badge_image bimg on b.badge_img_id = bimg.badge_img_id;


select * from challenge_join;
select * from personal_point;
select * from badge;
select * from badge_image;
update challenge_join set challenge_id=20 where challenge_id=22;
insert into badge values (seq_badge_id.nextval, 20, 'honggd', 70, to_date('21/03/19'));

commit;


select *from challenge;


--honggd 17(텀블러) 챌린지 포인트
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/23'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/30'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/31'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/08'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/14'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/22'));
commit;

--honggd 23(불끄기)챌린지 포인트
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/13'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/23'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/03/03'));


--honggd 21(손수건)챌린지 포인트
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/20'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/17'));
commit;

--honggd 20(마스크)챌린지 포인트
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/18'));

commit;


--특정 날짜, 특정 member_id의 뱃지 이미지, 챌린지 정보
select * from badge b  left join badge_image bimg  on b.badge_img_id = bimg.badge_img_id  left join challenge c on bimg.challenge_id = c.challenge_id where badge_date between trunc(to_date(?),'MM') and (last_day(to_date(?))) and member_id= ?;


--특정 날짜, 특정 member_id의 포인트 정보(챌린지
select * from personal_point where member_id = 'honggd' and point_date = to_date('21/03/17');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where member_id = 'qwerty';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/26') and member_id = 'honggd';

select * from challenge;
--진행중인 챌린지(현재 시스템이 confirm ~ end 사이)
select * from challenge_join cj left join challenge c on cj.challenge_id = c.challenge_id where sysdate between confirm_date and end_date and member_id=?;



select * from personal_point;
--qwerty 21(마스크)챌린지 포인트
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/30'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/15'));
commit;

select * from personal_point;
--qwerty 17(마스크)챌린지 포인트
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/20'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/04'));
commit;


select * from personal_point;
--qwerty 14(마스크)챌린지 포인트
insert into personal_point VALUES (seq_p_point_id.nextval, 14,'qwerty',(select challenge_point from challenge where challenge_id=14), to_date('21/04/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 14,'qwerty',(select challenge_point from challenge where challenge_id=14), to_date('21/04/25'));
commit;

select * from badge_image where badge_img_id in (select badge_img_id from badge where);


--trigger
--challenge_join에서 delect 되면 뱃지가 지급되는 형식?


select * from member;
update member set member_pw = '1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==' where member_id='admin2';
commit;




select * from a_confirm;

select * from challenge_join;
select * from challenge;


insert into challenge_join values ('honggd', 6, sysdate, sysdate); --단기 챌린지
commit;
insert into challenge_join values ('honggd', 22, sysdate-5, (sysdate-5)+30); --장기 챌린지
insert into challenge_join values ('honggd', 26, sysdate-30,  sysdate); --장기 챌린지


insert into a_confirm (a_id,member_id, challenge_id, confirm_type,a_title,a_content,a_reg_date) values(SEQ_A_CONFIRM_ID.nextval,?,(select challenge_id from challenge where challenge_name =?), ?,?,?,default) ;  

select challenge_id from a_confirm  where a_id = 52;

select * from a_confirm;
select * from personal_point order by point_date desc;
insert into personal_point VALUES (seq_p_point_id.nextval, (select challenge_id from a_confirm  where a_id = ?),? ,(select challenge_point from challenge_join where challenge_id= (select challenge_id from a_confirm  where a_id = ?)), sysdate);


-- 포인트 지급 여부 열추가, 제약조건 추가
ALTER TABLE a_confirm ADD(point_check char(1) default 'N');
ALTER TABLE a_confirm ADD CONSTRAINT ck_point_check  check(point_check in ('N','Y'));

ALTER TABLE a_confirm drop constraint  ck_point_check;
ALTER TABLE a_confirm drop COLUMN point_check ;
update a_confirm set point_check = 'N';
update a_confirm set point_check =? where a_id =? and member_id=?;

commit;

select * from a_confirm a left join challenge c  on a.challenge_id = c.challenge_id;
select challenge_point from challenge where challenge_id= (select challenge_id from a_confirm  where a_id = 52);
insert into personal_point VALUES (seq_p_point_id.nextval, (select challenge_id from a_confirm  where a_id = ?),? ,(select challenge_point from challenge where challenge_id= (select challenge_id from a_confirm  where a_id = ?)), default);


select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('2021-04-26');


--특정날자의 포인트 조회 업무 오류
select * from personal_point order by point_date desc;
select * from personal_point where point_date = to_date('21/04/26','yy/MM/');
select * from personal_point where to_char(point_date,'yy/MM/dd') = to_char('21/04/26');
where to_char(point_date,'yyyy-MM-dd') = to_char('2021-04-26') and member_id = 'honggd';

commit;
select * from team_point;
ALTER TABLE team_point ADD(challenge_id number);
ALTER TABLE team_point ADD CONSTRAINT fk_challenge_id  foreign key(challenge_id) references challenge(challenge_id) on delete set null;
selectOneBadgeImage = select * from badge b  left join badge_image bimg  on b.badge_img_id = bimg.badge_img_id  left join challenge c on bimg.challenge_id = c.challenge_id where to_char(badge_date) = to_char(?) and member_id = ?



select * from personal_point where to_char(point_date,'yy/MM/dd') = to_char('21/04/26');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id left join team_point tp on pp.member_id= tp.member_id;
select * from personal_point where to_char(point_date,'yy/MM/dd') = to_char('21/04/26');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id left join team_point tp on pp.member_id= tp.member_id;
select * from team_point;
select * from personal_point where to_char(point_date,'yyyy-MM-dd') = to_char('2021-04-26') and member_id = 'honggd';
select * from personal_point where to_char(point_date,'yy/MM/dd') = to_char('21/04/26') and member_id = 'honggd';
select * from personal_point where to_char(point_date,'yy/MM/dd') = ('21/04/26');
select * from personal_point where to_char(point_date,'yy/MM/dd') = ('21/04/25');
select *  
from ( 
    select row_number() over(order by reg_date desc) rnum, b.*, a.no attach_no, a.original_filename, a.renamed_filename, a.status   
    from board b  
        left join attachment a 
            on b.no = a.board_no and a.status='Y'

    ) B 
where rnum between 10 and 20;
select department_name
from tb_department
where category = '예체능';
select * from personal_point order by point_date;
select * from PRODUCT_STOCK;
select *
from tb_class 
    left join tb_class_professor using(class_no)
    left join tb_department using(department_no)
where category = '예체능'
    and professor_no is null;
select * from personal_point where point_date = TO_DATE('2021-03-18','yy/MM/dd');
select g.student_no 학번, avg(point) 평점
from tb_grade g join tb_student s
    on g.student_no = s.student_no
group by g.student_no having avg(point) > 4;
select *from product_io;
select * from tbl_files;
select *  from ( 
select row_number() over(order by reg_date desc) rnum, b.*, a.no attach_no, a.original_filename, a.renamed_filename, a.status   
    from board b  
    left join attachment a
    on b.no = a.board_no and a.status='Y'
    left join (select board_no, count(board_no) cnt
                from board_comment
                group by board_no) bc
    on b.no = bc.board_no) B 
where rnum between 1 and 20;
select * from badge
where badge_date 
between (to_char(trunc(to_date('21/02/01'),'MM'),'yy/MM/dd') ) and (last_day(to_date('21/02/01')));
grant resource,connect to eco_individual;
select * from badge_image where badge_img_id in (select badge_img_id from badge where badge_date between (trunc(to_date('2021-03-01'),'MM')) and (LAST_DAY(to_date('2021-03-01'))) and member_id= 'honggd');
select bc.* from board_comment bc where board_no = 143 start with comment_level =1  connect by prior no=comment_ref order siblings by reg_date;
select *
from tb_class c join tb_class_professor cp
    on c.class_no = cp.class_no;
select badge_img_id from badge where badge_date between trunc(to_date('2021-03-01'),'MM') and last_day(to_date('2021-03-01')) and member_id= 'honggd';
select * from badge
where badge_date 
between (to_char(trunc(to_date('21/05/25'),'MM'),'yy/MM/dd') ) and (last_day(to_date('21/05/01')))
and member_id= 'qwerty';
select * from emp_copy;
select *
from user_tab_cols
where table_name = 'EMP_COPY';
select department_name, department_no
    from tb_department
    where department_name = '환경조경학과';
select * from badge_image where badge_img_id in(select badge_img_id from badge where badge_date between trunc(to_date( '2021-02-01' ,'yy/MM/dd'),'MM') and last_day(to_date('2021-02-01','yy/MM/dd')) and member_id= 'honggd');
select *from job_copy;
select * from challenge_join cj left join challenge c on cj.challenge_id = c.challenge_id where member_id = 'honggd' and sysdate BETWEEN cj.confirm_date and cj.end_date;
select student_no, point
from tb_grade
where term_no = '200402'
      and class_no = 'C3118100'
order by point desc, student_no asc;
select *
from tb_class_professor
where class_no not in(
    select class_no
    from tb_class
    where department_no in(
        select department_no
        from tb_department
        where category = '예체능'
    )

);
select * 
from badge b 
    left join badge_image bimg 
        on b.badge_img_id = bimg.badge_img_id 
    left join challenge c
        on bimg.challenge_id = c.challenge_id;
select lpad('',level-1),
        level, bc.*
from board_comment bc
start with comment_level =1 
connect by prior no=comment_ref;
select * from badge b left join badge_image bimg on b.badge_img_id = bimg.badge_img_id where badge_date = TO_DATE('2021-03-04', 'yy/mm/dd') and member_id = 'honggd';
select * from badge;
select * 
  from (
     select row_number() over(order by reg_date desc) rnum, b.*, a.no attach_no, a.original_filename, a.renamed_filename, a.status 
     from board b  left join attachment a on b.no = a.board_no) B where rnum between 6 and 10
select *from member_del;
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
select *
from tb_class_professor cp 
    left join tb_class c
        on cp.class_no = c.class_no;
update badge set badge_date = trunc(to_date('21/02/02')+30) where member_id='honggd' and challenge_id=23;
select * from badge_image where badge_img_id in (select badge_img_id from badge where badge_date between trunc(to_date( '2021-02-01' ,'yy/MM/dd'),'MM') and (last_day(to_date('2021-02-01','yy/MM/dd'))) and member_id= 'qwerty');
select class_no
from tb_class
where department_no = (
    select department_no
    from tb_department
    where department_name = '환경조경학과'
);
select (select class_name from tb_class where class_no = cp.class_no) ,
    (select department_name from tb_department where department_no = (
        select department_no from tb_class where class_no = cp.class_no
    ))
from tb_class_professor cp
where class_no in(
    select class_no
    from tb_class
    where department_no in(
        select department_no
        from tb_department
        where category = '예체능'
    )
);
select * from challenge;
select class_no
from tb_class
where department_no in(
    select department_no
    from tb_department
    where category = '예체능'
)
MINUS

--담당교수 존재하는 과목
select class_no
from tb_class_professor
where class_no in(
    select class_no
    from tb_class
    where department_no in(
        select department_no
        from tb_department
        where category = '예체능'
    )
);
select student_no 학번
    , (select student_name from tb_student where g.student_no = student_no) 학생이름
    , round(avg(point),1) "전체평점"
from tb_grade g
where student_no in (
    select student_no
    from tb_student
    where department_no = (
        select department_no
        from tb_department
        where department_name = '음악학과'
        )
)
group by student_no;
select * from badge
where badge_date 
between (to_char(trunc(to_date('21/05/01'),'MM'),'yy/MM/dd') ) and (last_day(to_date('21/05/01')))
and member_id= 'honggd';
select *
from user_constraints
where table_name = 'EMPLOYEE';
select *  
from ( 
    select row_number() over(order by reg_date desc) rnum, b.*, a.no attach_no, a.original_filename, a.renamed_filename, a.status 
    from board b  
        left join attachment a 
            on b.no = a.board_no
         and a.status='Y'
    ) B 
where rnum between 10 and 20;
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('2021-04-26') and member_id = 'honggd';
SELECT EMP_ID, EMP_NAME, nvl(DEPT_CODE,'부서미지정'), salary
FROM EMPloyee
WHERE (nvl(DEPT_CODE,'부서미지정'), salary) IN (
    SELECT nvl(DEPT_CODE,'부서미지정'), MAX(salary)
    FROM EMPloyee
    GROUP BY DEPT_CODE)
ORDER BY DEPT_CODE;
--珥� 19媛� �뀒�씠釉�
select * from tabs;
--梨뚮┛吏�
CREATE TABLE challenge (
	challenge_id	number		      NOT NULL,
	challenge_term_type	char(1)		  NOT NULL,
	challenge_level	number	      NOT NULL,
	challenge_name	varchar2(4000)	  NOT NULL,
	challenge_info	varchar2(4000)	  NOT NULL,
	challenge_point	number		      NOT NULL,
	challenge_term	number default 1  NOT NULL,
    
    constraint pk_challenge_id primary key(challenge_id),
    constraint ck_challenge_term_type check(challenge_term_type in ('S','L')),      -- challenge �븯猷�/湲곌컙 援щ텇(S/L)
    constraint ck_challenge_level check(challenge_level in (1,2,3))         -- challenge 媛뺣룄 援щ텇(1-�븯 / 2-以�/ 3-�긽)
);

--�쑀��
CREATE TABLE member (
	member_id varchar2(15)		NOT NULL,
	member_pw 	varchar2(300)		NOT NULL,
	member_name 	varchar2(50)		NOT NULL,
	member_nickname	varchar2(50)		NOT NULL,
	member_email	varchar2(100)		NULL,
	member_phone	char(11)		NOT NULL,
	member_team	char(1)	DEFAULT 'N'	NOT NULL,
	member_picture	varchar2(4000)	DEFAULT '湲곕낯 �씠誘몄�'	NOT NULL,
	member_role	char(1)	DEFAULT 'U'	NOT NULL,
	access_token	varchar2(4000)		NULL,

    constraint pk_member_id primary key(member_id),
    constraint ck_member_team check(member_team in ('N','Y')),      -- ���뿉 �냽�빐�엳吏� �븡�떎('N') / ���뿉 �냽�빐 �엳�떎('Y')
    constraint ck_member_role check(member_role in ('U','A'))         -- 'U' : �씪諛� �궗�슜�옄 / 'A' : 愿�由ъ옄
);

--�룷�씤�듃 (媛쒖씤)
CREATE TABLE personal_point (
	p_point_id	number		    NOT NULL,
	challenge_id	number,
	member_id	varchar2(15)		NOT NULL,
	point	number	DEFAULT 0	NOT NULL,
	point_date	date	DEFAULT sysdate	NOT NULL,
    
    constraint pk_personal_point_id primary key(p_point_id),
    constraint fk_personal_point_member_id foreign key(member_id) references member(member_id) on delete cascade,                       --�깉�눜�떆 �룷�씤�듃 �궘�젣
    constraint fk_personal_point_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null   --梨뚮┛吏� �궘�젣 �떆 洹몃�濡� �궓�븘 �엳�쓬
);

--諭껋�
CREATE TABLE badge (
	badge_id number         NOT NULL,
	challenge_id number,
	member_id	varchar2(15)    NOT NULL,
	badge_img_id	number	NOT NULL,
	badge_date date DEFAULT sysdate	NOT NULL,
    
    constraint pk_badge_id primary key(badge_id),
    constraint fk_badge_member_id foreign key(member_id) references member(member_id) on delete cascade,                     --�궗�슜�옄 �깉�눜�떆 媛숈씠 �궘�젣
    constraint fk_badge_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete  set null,       --梨뚮┛吏� �궘�젣�빐�룄 洹몃�濡� 議댁옱
    constraint fk_badge_badge_img_id foreign key(badge_img_id) references badge_image(badge_img_id) on delete cascade        --諭껋� �씠誘몄� �궘�젣 �떆 媛숈씠 �궘�젣
);
--諭껋� �씠誘몄� ���옣
CREATE TABLE badge_image (
	badge_img_id	number		NOT NULL,
	badge_name	varchar2(100)		NOT NULL,
	badge_img	varchar2(4000)		NOT NULL,       --badge �뙆�씪紐�
    
    constraint pk_badge_img_id primary key(badge_img_id)    
);


COMMENT ON COLUMN badge_image.badge_img IS '�씠誘몄� 寃쎈줈';

--寃뚯떆湲� (怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
CREATE TABLE article (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	a_type	varchar2(15)		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_aritlce_id primary key(a_id),
    constraint fk_member_id foreign key(member_id) references member(member_id) on delete set null          --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
);

--�씤利� 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_confirm (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	challenge_id	number,
	confirm_type	varchar2(10)		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_a_confirm_id primary key(a_id),
    constraint fk_a_confirm_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
    constraint fk_a_confirm__challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null  --梨뚮┛吏� �궘�젣�빐�룄 �� 議댁옱
);

--���썝 李얘린 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_search_team (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	challenge_id	number,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
	s_team_count	number	DEFAULT 4	NOT NULL,
    
    constraint pk_a_search_team_id primary key(a_id),
    constraint fk_a_search_team_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
    constraint fk_a_search_team_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null  --梨뚮┛吏� �궘�젣�빐�룄 �� 議댁옱
);

--�슦由� �� 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_team (
	team_a_id	number		NOT NULL,
	member_id	varchar2(15)		NOT NULL,
	a_id	number		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_a_team_id primary key(team_a_id),
    constraint fk_a_team_member_id foreign key(member_id) references member(member_id) on delete set null,                       --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱                   
    constraint fk_a_team_a_id foreign key(a_id) references a_search_team(a_id) on delete cascade --梨뚮┛吏� �궘�젣(梨뚮┛吏� �걹)�굹硫� 媛숈씠 �궘�젣
);

alter table a_team
modify(member_id null);

commit;

--��
CREATE TABLE team (
	team_id	number		    NOT NULL,
	member_id	varchar2(15)	NOT NULL,
	a_id	number		NOT NULL,
	team_start_day date DEFAULT sysdate	NOT NULL,
    
    constraint pk_team_id primary key(team_id),
    constraint fk_team_member_id foreign key(member_id) references member(member_id) on delete cascade,      --member �깉�눜 �떆 ���룄 媛숈씠 �깉�눜
    constraint fk_team_a_id foreign key(a_id) references a_search_team(a_id)  --李몄“ �떆 遺�紐�(���썝李얘린寃뚯떆湲�) �궘�젣 遺덇�
);

--�룷�씤�듃(��)
CREATE TABLE team_point (
	t_point_id	number		NOT NULL,
	member_id	varchar2(15)		NOT NULL,
	a_id	number		NOT NULL,
	point	number	DEFAULT 0	NOT NULL,
	point_date	date	DEFAULT sysdate	NOT NULL,
    
    constraint pk_team_point_id primary key(t_point_id),
    constraint fk_team_point_member_id foreign key(member_id) references member(member_id) on delete cascade,        --�쉶�썝�깉�눜�떆 媛숈씠 �궘�젣
    constraint fk_team_point_a_id foreign key(a_id) references a_search_team(a_id)   --李몄“ �떆 遺�紐�(���썝李얘린寃뚯떆湲�) �궘�젣 遺덇�
);

--泥⑤��뙆�씪(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
CREATE TABLE attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_attachment_id primary key(attachment_id),
    constraint fk_attachment_a_id foreign key(a_id) references article(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(�씤利�)
CREATE TABLE confirm_attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_confirm_attachment_id primary key(attachment_id),
    constraint fk_confirm_attachment_a_id foreign key(a_id) references a_confirm(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_confirm_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(���썝李얘린) ** ���썝李얘린 = s_
CREATE TABLE s_team_attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_s_team_attachment_id primary key(attachment_id),
    constraint fk_s_team_attachment_a_id foreign key(a_id) references a_search_team(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_s_team_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(�슦由ы� 寃뚯떆湲�) ** �슦由ы� = a_
CREATE TABLE a_team_attachment (
	attachment_id	number		NOT NULL,
	team_a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_a_team_attachment_id primary key(attachment_id),
    constraint fk_a_team_attachment_team_a_id foreign key(team_a_id) references a_team(team_a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_a_team_attachment_status check(attachment_status in ('Y','N'))
);

--�뙎湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
create table a_comment (
    comment_id number not null,
    member_id varchar2(15),
    a_id number not null,
    comment_content varchar2(2000) not null,
    comment_reg_date date default sysdate,
    comment_level number default 1 not null,
    comment_ref number,
    
    constraint pk_a_comment_id primary key(comment_id),
    constraint fk_a_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_a_comment_a_id foreign key(a_id) references article(a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_a_comment_comment_ref foreign key(comment_ref) references a_comment(comment_id) on delete set null        --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)
);

--�뙎湲�(�씤利�)
CREATE TABLE confirm_comment (
	comment_id	number		NOT NULL,
	member_id	varchar2(15),
	a_id	number		NOT NULL,
	comment_content	varchar2(2000)		NOT NULL,
	comment_reg_date	date	DEFAULT sysdate	NOT NULL,
	comment_level	number	DEFAULT 1	NOT NULL,
	comment_ref	number,
    
    constraint pk_confirm_comment_id primary key(comment_id),
    constraint fk_confirm_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                             --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_confirm_comment_a_id foreign key(a_id) references a_confirm(a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_confirm_comment_comment_ref foreign key(comment_ref) references confirm_comment(comment_id) on delete set null        --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)  
);

--�뙎湲�(�슦由ы�)
CREATE TABLE team_comment (
	comment_id	number		NOT NULL,
	team_a_id	number		NOT NULL,
	member_id	varchar2(15),
	comment_content	varchar2(2000)		NOT NULL,
	comment_reg_date	date	DEFAULT sysdate	NOT NULL,
	comment_level	number	DEFAULT 1	NOT NULL,
	comment_ref	number,
    
    constraint pk_comment_id primary key(comment_id),
    constraint fk_comment_team_a_id foreign key(team_a_id) references a_team(team_a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                                         --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_comment_comment_ref foreign key(comment_ref) references team_comment(comment_id) on delete set null                       --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)
);

--�� �떊泥��옄
CREATE TABLE request_team (
	request_id	number		NOT NULL,
	member_id	varchar2(15),
	a_id	number		NOT NULL,
    
    constraint pk_request_team_id primary key(request_id),
    constraint fk_request_team_member_id foreign key(member_id) references member(member_id) on delete set null,          --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_request_team_a_id foreign key(a_id) references a_search_team(a_id)      -- ���썝李얘린 寃뚯떆湲� �궘�젣 紐삵븿
);

--sequence
create sequence seq_team_id;
create sequence seq_a_comment_id;
create sequence seq_p_point_id;
create sequence seq_badge_id;
create sequence seq_badge_img_id;
create sequence seq_attachment_id;
create sequence seq_t_point_id;
create sequence seq_article_id;
create sequence seq_a_confirm_id;
create sequence seq_a_search_team_id;
create sequence seq_confirm_attachment_id;
create sequence seq_search_team_attachment_id;
create sequence seq_confirm_comment_id;
create sequence seq_team_comment_id;
create sequence seq_a_team_id;
create sequence seq_request_id;
create sequence seq_team_attachment_id;
create sequence seq_challenge_id;

--
select * from member; --�궗�슜�옄
select * from article; --寃뚯떆湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
select * from a_confirm; --�씤利� 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from a_search_team; --���썝 李얘린 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from a_team; --�슦由ы� 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from challenge; --梨뚮┛吏�

--�뀒�뒪�듃�슜 �쑀��
insert into member
values (
'honggd', '1234', '�솉湲몃룞', '湲몃룞', 'honggd@naver.com', '01011111111','Y', default, default, 'access_token_1234'
);

insert into member
values (
'qwerty', '1234', '荑좎뼱�떚', '�뼱�떚', 'qwerty@naver.com', '01022222222','N', default, default, 'access_token_2345'
);

insert into member
values (
'aaaaa', '1234', '�븘�븘�븘', '�븘�븘', 'aaaaa@naver.com', '01033333333','Y', default, default, 'access_token_3456'
);

insert into member
values (
'bbbbb', '1234', '鍮꾨퉬鍮�', '鍮꾨퉬', 'bbbbb@naver.com', '01034343434','N', default, default, 'access_token_4567'
);

insert into member
values (
'ccccc', '1234', '�뵪�뵪�뵪', '�뵪�뵪', 'ccccc@naver.com', '01045454545','Y', default, default, 'access_token_5678'
);

insert into member
values (
'ddddd', '1234', '�뵒�뵒�뵒', '�뵒�뵒', 'ddddd@naver.com', '01056565656','Y', default, default, NULL
);

insert into member
values (
'eeeee', '1234', '�씠�씠�씠', '�씠�씠', 'eeeee@naver.com', '01067676767','Y', default, default, NULL
);

insert into member
values (
'fffff', '1234', '�뿉�봽�봽', '�뿉�봽', 'fffff@naver.com', '01078787878','Y', default, default, 'access_token_6789'
);

insert into member
values (
'ggggg', '3456', '伊먯쪖伊�', '伊먯쪖', 'ggggg@naver.com', '01090909090','Y', default, default, 'access_token_0000'
);

insert into member
values (
'hhhhh', '3456', '�뿉�씠移�', '�뿉移�', 'hhhhh@naver.com', '01034561234','N', default, default, 'access_token_0666'
);

insert into member
values (
'iiiii', '3456', '�븘�씠�븘', '�븘�씠', 'iiiii@naver.com', '01011122221','N', default, default, 'access_token_7700'
);

insert into member
values (
'jjjjj', '3456', '�젣�씠�젣', '�젣�씠', 'jjjjj@naver.com', '01037373737','N', default, default, 'access_token_0880'
);

insert into member
values (
'kkkkk', '3456', '耳�耳�耳�', '耳�耳�', 'kkkkk@naver.com', '01023122312','N', default, default, 'access_token_4354'
);

insert into member
values (
'temp0', '3456', '�뀥�봽�쁺', '�뀥0', 'temp0@naver.com', '01012123434','N', default, default, NULL
);

insert into member
values (
'temp1', '3456', '�뀥�봽�씪', '�뀥1', 'temp1@naver.com', '01056567676','N', default, default, NULL
);
insert into member
values (
'admin1', '1234', '愿�由ъ옄1', '愿�由ъ옄2', 'admin1@naver.com', '01044444444',default, '愿�由ъ옄�씠誘몄�', 'A', NULL
);

insert into member
values (
'admin2', '1234', '愿�由ъ옄1', '愿�由ъ옄2', 'admin2@naver.com', '01055555555',default, '愿�由ъ옄�씠誘몄�', 'A', NULL
);

--�뀒�뒪�듃�슜 寃뚯떆湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
insert into article
values (
seq_article_id.nextval,'honggd','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 1','�븞�뀞�븯�꽭�슂 蹂몃Ц - 1', to_date('18/02/14','RR/MM/DD'), default, default
);
insert into article
values (
seq_article_id.nextval,'aaaaa','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 2','�븞�뀞�븯�꽭�슂 蹂몃Ц - 2',to_date('18/03/16','RR/MM/DD'), default, default
);
insert into article
values (
seq_article_id.nextval,'bbbbb','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 3','�븞�뀞�븯�꽭�슂 蹂몃Ц - 3',to_date('18/03/24','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'ccccc','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 4','�븞�뀞�븯�꽭�슂 蹂몃Ц - 4',to_date('18/04/14','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'aaaaa','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 5','�븞�뀞�븯�꽭�슂 蹂몃Ц - 5',to_date('18/04/24','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin1','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 1','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 1',to_date('18/05/08','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'ddddd','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 6','�븞�뀞�븯�꽭�슂 蹂몃Ц - 6',to_date('18/05/25','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 7','�븞�뀞�븯�꽭�슂 蹂몃Ц - 7',to_date('18/06/12','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 8','�븞�뀞�븯�꽭�슂 蹂몃Ц - 8',to_date('18/06/14','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 9','�븞�뀞�븯�꽭�슂 蹂몃Ц - 9',to_date('18/07/10','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin2','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 2','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 2',to_date('18/07/23','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 10','�븞�뀞�븯�꽭�슂 蹂몃Ц - 10',to_date('18/08/18','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 11','�븞�뀞�븯�꽭�슂 蹂몃Ц - 11',to_date('18/09/29','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin2','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 3','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 3',to_date('18/10/10','RR/MM/DD'),default, default
);

--�뀒�뒪�듃�슜 �씤利� 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_confirm
values (
seq_a_confirm_id.nextval,'ggggg',4,'�븯猷�','�뾽�궗�씠�겢留� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �뾽�궗�씠�겢留� �씤利앹엯�땲�떎',to_date('18/01/01','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'qwerty',15,'湲곌컙','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/02/05','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'eeeee',20,'��','�떎�쉶�슜 留덉뒪�겕 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �떎�쉶�슜 留덉뒪�겕 �씤利앹엯�땲�떎',to_date('18/03/22','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ddddd',17,'��','��釉붾윭 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 ��釉붾윭 �씤利앹엯�땲�떎',to_date('18/04/14','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'eeeee',3,'�븯猷�','怨꾨떒 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 怨꾨떒 �씤利앹엯�땲�떎',to_date('18/05/05','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'hhhhh',15,'湲곌컙','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/05/27','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'jjjjj',18,'湲곌컙','�옣諛붽뎄�땲 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �옣諛붽뎄�땲 �씤利앹엯�땲�떎',to_date('18/06/13','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ccccc',10,'�븯猷�','�벐�젅湲� 以띻린 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �벐�젅湲� 以띻린 �씤利앹엯�땲�떎',to_date('18/06/26','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ggggg',15,'��','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/07/02','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'fffff',24,'��','諛곕떖�쓬�떇 以꾩씠湲� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 諛곕떖�쓬�떇 以꾩씠湲� �씤利앹엯�땲�떎',to_date('18/07/17','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ccccc',12,'�븯猷�','�솚寃� 罹좏럹�씤 吏묓쉶 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 吏묓쉶 李몄뿬 �씤利앹엯�땲�떎',to_date('18/08/26','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'honggd',11,'�븯猷�','媛쒖씤 �슜湲� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 媛쒖씤 �슜湲� �씤利앹엯�땲�떎',to_date('18/08/30','RR/MM/DD'),default, default
);

--�뀒�뒪�듃�슜 ���썝 李얘린 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_search_team
values (
seq_a_search_team_id.nextval,'bbbbb',15,'遺꾨━�닔嫄� 媛숈씠 �븯�떎遺�?','遺꾨━�닔嫄� 媛숈씠�빐�슂~ �� �룷�븿 4紐낆씠�꽌 �빀�떆�떎~',to_date('18/01/01','RR/MM/DD'),default,default,default
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'hhhhh',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/02/02','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'iiiii',18,'�븳 �떖 �룞�븞 �옣諛붽뎄�땲 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/03/03','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',24,'�븳 �떖 �룞�븞 諛곕떖�쓬�떇 以꾩엯�떆�떎~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/03/13','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'kkkkk',21,'�븳 �떖 �룞�븞 �넀�닔嫄� �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/04/04','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'qwerty',20,'�븳 �떖 �룞�븞 �떎�쉶�슜留덉뒪�겕 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/05/05','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'temp0',22,'�븳 �떖 �룞�븞 �뿉�뼱而� �쟻�젙�삩�룄 �쑀吏��빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/06/06','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'temp1',15,'�븳 �떖 �룞�븞 遺꾨━�닔嫄� 媛숈씠�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/07/07','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'kkkkk',25,'�븳 �떖 �룞�븞 臾쇳떚�뒋 �뜙�궗�슜�빐�슂~','�� �룷�븿 9紐낆씠�꽌 �빀�떆�떎~',to_date('18/08/08','RR/MM/DD'),default,default,9
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',26,'�븳 �떖 �룞�븞 �빖�뱶�룿 �뜙 �궗�슜�빐�슂~','�� �룷�븿 4紐낆씠�꽌 �빀�떆�떎~',to_date('18/09/09','RR/MM/DD'),default,default,4
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'iiiii',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 5紐낆씠�꽌 �빀�떆�떎~',to_date('18/10/01','RR/MM/DD'),default,default,5
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'hhhhh',18,'�븳 �떖 �룞�븞 �옣諛붽뎄�땲 �궗�슜�빐�슂~','�� �룷�븿 6紐낆씠�꽌 �빀�떆�떎~',to_date('18/11/01','RR/MM/DD'),default,default,6
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'bbbbb',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 7紐낆씠�꽌 �빀�떆�떎~',to_date('18/12/01','RR/MM/DD'),default,default,7
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 8紐낆씠�꽌 �빀�떆�떎~',to_date('18/12/12','RR/MM/DD'),default,default,8
);

--�뀒�뒪�듃�슜 �슦由ы� 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_team
values (
seq_a_team_id.nextval,'ddddd',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂1?','遺꾨━�닔嫄�',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'honggd',2,'��釉붾윭 �궗�슜�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'aaaaa',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂2?','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ccccc',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂3?','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ddddd',2,'��釉붾윭 �궗�슜�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'eeeee',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂?4','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'fffff',2,'��釉붾윭 �궗�슜�씠�슂3','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ggggg',2,'��釉붾윭 �궗�슜�씠�슂4','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ccccc',1,'遺꾨━�닔嫄� 吏덈Ц�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'eeeee',1,'遺꾨━�닔嫄� 吏덈Ц�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'fffff',2,'��釉붾윭 吏덈Ц�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'honggd',2,'��釉붾윭 吏덈Ц�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

commit;
--梨뚮┛吏�
select * from challenge;

insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 異쒗눜洹쇱떆 �옄媛��슜 �씠�슜 �븞 �븯湲�', '�삤�뒛 �옄媛��슜 ���떊�뿉 ��以묎탳�넻/ 嫄룰린/ �옄�쟾嫄곕줈 異쒗눜洹� �븯怨� �씤利� �궗吏꾩쓣 �젣異쒗빐二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �솚寃� 蹂댄샇 愿��젴 SNS 肄섑뀗痢� 寃뚯떆', '�삤�뒛 SNS�뿉 �솚寃� 蹂댄샇 愿��젴 肄섑뀗痢좊�� 寃뚯떆�븳 �썑 寃뚯떆臾쇱쓣 罹≪퀜�빐二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 �뿕由щ쿋�씠�꽣 ���떊 怨꾨떒 �씠�슜�븯湲�', '�삤�뒛 �뿕由щ쿋�씠�꽣 ���떊 怨꾨떒 �씠�슜�븯怨� 怨꾨떒怨� �떊諛쒖씠 蹂댁씠�룄濡� �궗吏꾩쓣 李띿뼱 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�삤�뒛 �뾽�궗�씠�겢留곹븯湲�', '�삤�뒛 �뾽�궗�씠�겢�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 援щℓ�떆 �젣濡� �썾�씠�뒪�듃 留ㅼ옣�뿉�꽌 援щℓ�븯湲�', '�삤�뒛 �씪諛� 留ㅼ옣 ���떊 �젣濡� �썾�씠�뒪�듃 留ㅼ옣�뿉�꽌 援щℓ�븯怨� 援щℓ�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �넻吏��꽌, �븞�궡臾� �쟾�옄 臾몄꽌濡� �닔�떊 諛� �뿴�엺 �떊泥��븯湲�', '�삤�뒛 醫낆씠 �슦�렪臾쇱쓣 以꾩씠湲� �쐞�빐�꽌 �넻吏��꽌, �븞�궡臾� �쟾�옄 臾몄꽌濡� �닔�떊 諛� �뿴�엺 �떊泥��븯怨� �떊泥��븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 媛��쟾�젣�뭹 諛� �쟾湲곗슜�뭹 誘� �궗�슜�떆 肄붾뱶 鍮쇨린', '�삤�뒛 媛��쟾�젣�뭹 諛� �쟾湲� �슜�뭹 誘� �궗�슜�떆 肄붾뱶瑜� 鍮쇨퀬 �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.',100 ,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �쓬�떇 �궓湲곗� �븡怨� �떎 癒밴린', '�삤�뒛 �쓬�떇�쓣 �궓湲곗� �븡怨� �떎 癒밴퀬 �떎 癒뱀� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 二쇰Ц�떆 移쒗솚寃� �룷�옣�옱 �궗�슜�븯�뒗 怨녹뿉�꽌 二쇰Ц�븯湲�', '�삤�뒛 移쒗솚寃� �룷�옣�옱 �궗�슜�븯�뒗 怨녹뿉�꽌 二쇰Ц�븳 �뮘 �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�삤�뒛 湲멸굅由� �벐�젅湲� 以띻린', '�삤�뒛 湲멸굅由ъ뿉 �엳�뒗 �벐�젅湲곕�� 以띻퀬 二쇱슫 �벐�젅湲� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 �룷�옣�떆 媛쒖씤�슜湲� �궗�슜�븯湲�', '�삤�뒛 �쓬�떇�쓣 �룷�옣�븷 �븣 媛쒖씤�슜湲곗뿉 �룷�옣�븯怨� �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�솚寃� 罹좏럹�씤 吏묓쉶 李몄뿬', '�삤�뒛 �솚寃� 罹좏럹�씤 吏묓쉶�뿉 李몄뿬�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 硫붿씪�븿 鍮꾩슦湲�', '�삤�뒛 硫붿씪�븿�쓣 鍮꾩슫 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);

--湲곌컙 梨뚮┛吏�
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �씪�쉶�슜�뭹 �궗�슜 理쒖냼�븳�쑝濡� �븯湲�',
'�븳 �떖 �룞�븞 利됱꽍諛� ���떊 諛μ넡�쑝濡� 吏곸젒 諛μ쓣 �빐癒밴굅�굹, �깮�닔 二쇰Ц �떆 鍮� 蹂묒쓣 �쉶�닔�븯�뒗 �깮�닔濡� 二쇰Ц�븯�뒗 �벑 �씪�쉶�슜�뭹�쓣 理쒖냼�븳�쑝濡� �궗�슜�빐 二쇱꽭�슂.', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 遺꾨━�닔嫄� �젣��濡� �븯湲�',
'�븳 �떖 �룞�븞 瑗쇨세�븯寃� 遺꾨━�닔嫄곕�� �빐二쇱꽭�슂. (�씤利� �궗吏� �삁 : 遺꾨━�닔嫄� �븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 3, '移쒗솚寃� �꽭�젣 留뚮뱾�뼱�꽌 �븳 �떖 �뜥蹂닿린', 
'吏곸젒 移쒗솚寃� �꽭�젣瑜� 留뚮뱾怨� 留뚮뱺 �꽭�젣瑜� �븳 �떖 �룞�븞 �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �꽭�젣 留뚮뱶�뒗 �궗吏�, �꽭�젣 �궗�슜 �궗吏�)',700,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 ��釉붾윭 梨숆린怨� �깮�솢�븯湲�',
'�븳 �떖 �룞�븞 �쇅異쒗븷 �븣 ��釉붾윭瑜� 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : ��釉붾윭 �궗�슜�븯�뒗 �궗吏�)',700 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �옣諛붽뎄�땲 梨숆린怨� �깮�솢�븯湲�',
'�븳 �떖 �룞�븞 �쇅異쒗븷 �븣 �옣諛붽뎄�땲瑜� 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �옣諛붽뎄�땲 �궗�슜�븯�뒗 �궗吏�)',500 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �꺎�뫖 ���떊 �꺎�뫖諛� �궗�슜�븯湲�',
'�븳 �떖 �룞�븞 �꺎�뫖 ���떊 �꺎�뫖諛붾�� �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �꺎�뫖諛� �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �떎�쉶�슜 留덉뒪�겕 李⑹슜�븯湲�',
'�븳 �떖 �룞�븞 �씪�쉶�슜 留덉뒪�겕 ���떊 �떎�쉶�슜 留덉뒪�겕瑜� �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �떎�쉶�슜 留덉뒪�겕 �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �쑕吏� ���떊 �넀�닔嫄� �뱾怨� �떎�땲湲�',
'�븳 �떖 �룞�븞 �쑕吏� ���떊 �넀�닔嫄댁쓣 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �넀�닔嫄� �궗�슜�븯�뒗 �궗吏�)', 700,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �뿉�뼱而� �궗�슜�떆 �쟻�젙�삩�룄(26�룄) �쑀吏��븯湲�',
'�븳 �떖 �룞�븞 �뿉�뼱而� �궗�슜 �떆 �쟻�젙�삩�룄(26�룄)濡� �쑀吏��빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �뿉�뼱而� 26�룄濡� 留욎떠吏� �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �궙 �떆媛꾩뿉�뒗 議곕챸 ���떊 �옄�뿰愿� �씠�슜�븯湲�',
'�븳 �떖 �룞�븞 �궙 �떆媛꾩뿉�뒗 議곕챸�쓣 �벐�뒗 ���떊 �옄�뿰愿묒쓣 �씠�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : 議곕챸�쓣 �궎吏� �븡怨� �옄�뿰愿� �씠�슜�븯�뒗 �궗吏�)',600 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 3, '�븳 �떖 �룞�븞 諛곕떖�쓬�떇 以꾩씠湲�',
'�븳 �떖 �룞�븞 諛곕떖�쓬�떇�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : 吏� 諛� 癒밸뒗 �궗吏�)',700 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 臾쇳떚�뒋 �궗�슜 以꾩씠湲�',
'�븳 �떖 �룞�븞 臾쇳떚�뒋 �궗�슜�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : 嫄몃젅�굹 �뻾二� �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �빖�뱶�룿 �뜙 �븯湲�', 
'�븳 �떖 �룞�븞 �빖�뱶�룿 �궗�슜�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : �쑕���룿 �씠�슜 �떆媛� �삱由ш린)', 500,30
);



insert into badge_image values (seq_badge_img_id.nextval, 'Lm1_�씪�쉶�슜以꾩씠湲�' , 'Lm1_�씪�쉶�슜以꾩씠湲�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm2_遺꾨━�닔嫄곗쿇�옱' , 'Lm2_遺꾨━�닔嫄곗쿇�옱.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm3_移쒗솚寃쎌꽭�젣�떖�씤' , 'Lm3_移쒗솚寃쎌꽭�젣�떖�씤.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm4_��釉붾윭' , 'Lm4_��釉붾윭.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm5_�옣諛붽뎄�땲' , 'Lm5_�옣諛붽뎄�땲.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm6_�꺎�뫖諛붿궗�슜�븯湲�' , 'Lm6_�꺎�뫖諛붿궗�슜�븯湲�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm7_�떎�쉶�슜留덉뒪�겕' , 'Lm7_�떎�쉶�슜留덉뒪�겕.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm8_�슦�븘�븯寃뚯넀�닔嫄�' , 'Lm8_�슦�븘�븯寃뚯넀�닔嫄�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm9_�삤議댁링吏��궡�씠' , 'Lm9_�삤議댁링吏��궡�씠.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm10_�옄�뿰愿묒궗�옉�빐!' , 'Lm10_�옄�뿰愿묒궗�옉�빐!.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm11_�솚寃쎌쓽誘쇱”' , 'Lm11_�솚寃쎌쓽誘쇱”.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm12_�뻾二�' , 'Lm12_�뻾二�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm13_�빖�뱶�룿' , 'Lm13_�빖�뱶�룿.png');

rollback;

commit;

select * from badge_image;

insert into badge_image values (seq_badge_img_id.nextval, 'Rm1_媛쒖씤1�쐞' , 'Rm1_媛쒖씤1�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm2_媛쒖씤2�쐞' , 'Rm2_媛쒖씤2�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm3_媛쒖씤3�쐞' , 'Rm3_媛쒖씤3�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm4_媛쒖씤4�쐞' , 'Rm4_媛쒖씤4�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm5_媛쒖씤5�쐞' , 'Rm5_媛쒖씤5�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm1_��1�쐞' , 'Tm1_��1�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm2_��2�쐞' , 'Tm2_��2�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm3_��3�쐞' , 'Tm3_��3�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm4_��4�쐞' , 'Tm4_��4�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm5_��5�쐞' , 'Tm5_��5�쐞.png');



commit;

select * from challenge;
select * from badge_image;



commit;
select *from challenge;
select * from badge_image;

ALTER TABLE challenge ADD(badge_img_id number);
ALTER TABLE challenge
ADD CONSTRAINT fk_badge_img_id  foreign key(badge_img_id) references badge_image(badge_img_id);

foreign key(member_id) references member(member_id
update challenge set badge_img_id =64 where challenge_id=14;

commit;


select *from challenge;
select * from badge;
select * from badge_image;
select * from member;
select * from challenge_join;
update member set member_pw='1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==' where member_id='qwerty';
commit;

--challenge_join
insert into challenge_join values ('honggd', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('honggd', 17, to_date('21/01/23'), trunc(to_date('21/01/23')+30));
insert into challenge_join values ('honggd', 21, to_date('21/02/16'), trunc(to_date('21/01/23')+30));
update challenge_join set confirm_date=to_date('21/02/16') where confirm_date=to_date('22/02/16');
commit;
update challenge_join set end_date=trunc(to_date('21/02/16')+30) where confirm_date=to_date('21/02/16');



insert into challenge_join values ('qwerty', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('qwerty', 17, to_date('21/02/03'), trunc(to_date('21/02/03')+30));
insert into challenge_join values ('qwerty', 21, to_date('21/01/16'), trunc(to_date('21/01/16')+30));
commit;

-- 諭껋� �씠誘몄� insert(challenge_join怨� �뿰寃�)
insert into badge values (seq_badge_id.nextval, 14, 'honggd', 64, sysdate);
insert into badge values (seq_badge_id.nextval, 17, 'honggd', 67, sysdate);
insert into badge values (seq_badge_id.nextval, 21, 'honggd', 71, sysdate);
insert into badge values (seq_badge_id.nextval, 22, 'honggd', 72, sysdate);
insert into challenge_join values ('honggd', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('honggd', 17, to_date('21/01/23'), trunc(to_date('21/01/23')+30));
insert into challenge_join values ('honggd', 21, to_date('21/02/16'), trunc(to_date('21/01/23')+30));
delete from challenge_join where member_id ='honggd' and challenge_id=22;
update challenge_join set confirm_date=to_date('21/02/16') where confirm_date=to_date('22/02/16');


commit;
select *from badge;
select * from challenge_join;
update badge set badge_date=trunc(to_date('21/02/16')+30) where badge_id=45;

insert into badge values (seq_badge_id.nextval, 14, 'qwerty', 64, sysdate+30);
insert into badge values (seq_badge_id.nextval, 17, 'qwerty', 67,  trunc(to_date('21/02/03')+30));
insert into badge values (seq_badge_id.nextval, 21, 'qwerty', 71, trunc(to_date('21/01/16')+30));

commit;


--�빐�떦�떖, �빐�떦 硫ㅻ쾭�쓽 諭껋� �젙蹂�
select * from badge where badge_date between (trunc(to_date('2021-05-24','yy/MM/dd'),'MM')) and (last_day(to_date('2021-05-24','yy/MM/dd'))) and member_id= 'qwerty';
select * from badge_image where badge_img_id in(select badge_img_id from badge where badge_date between trunc(to_date( '2021-02-01' ,'yy/MM/dd'),'MM') and last_day(to_date('2021-02-01','yy/MM/dd')) and member_id= 'honggd');



select * from badge;

select * from badge_image;
select * from badge_image where badge_img_id in (select badge_img_id from badge where badge_date between trunc(to_date('2021-02-01' ,'yy/MM/dd'),'MM') and (last_day(to_date('2021-02-01','yy/MM/dd'))) and member_id= 'qwerty');



commit; values (seq_badge_img_i
select g.student_no 학번, avg(point) 평점
from tb_grade g join tb_student s
    on g.student_no = s.student_no
where s.absence_yn ='N'
group by g.student_no having avg(point) > 4;
select d.department_name "계열 학과명"
    , round(avg(g.point),1) 전공평점
from tb_student s 
    join tb_grade g
        on s.student_no = g.student_no
    join tb_department d
        on s.department_no = d.department_no

group by s.department_no, d.department_name
order by "계열 학과명";
--珥� 19媛� �뀒�씠釉�
select * from tabs;
--梨뚮┛吏�
CREATE TABLE challenge (
	challenge_id	number		      NOT NULL,
	challenge_term_type	char(1)		  NOT NULL,
	challenge_level	number	      NOT NULL,
	challenge_name	varchar2(4000)	  NOT NULL,
	challenge_info	varchar2(4000)	  NOT NULL,
	challenge_point	number		      NOT NULL,
	challenge_term	number default 1  NOT NULL,
    
    constraint pk_challenge_id primary key(challenge_id),
    constraint ck_challenge_term_type check(challenge_term_type in ('S','L')),      -- challenge �븯猷�/湲곌컙 援щ텇(S/L)
    constraint ck_challenge_level check(challenge_level in (1,2,3))         -- challenge 媛뺣룄 援щ텇(1-�븯 / 2-以�/ 3-�긽)
);

--�쑀��
CREATE TABLE member (
	member_id varchar2(15)		NOT NULL,
	member_pw 	varchar2(300)		NOT NULL,
	member_name 	varchar2(50)		NOT NULL,
	member_nickname	varchar2(50)		NOT NULL,
	member_email	varchar2(100)		NULL,
	member_phone	char(11)		NOT NULL,
	member_team	char(1)	DEFAULT 'N'	NOT NULL,
	member_picture	varchar2(4000)	DEFAULT '湲곕낯 �씠誘몄�'	NOT NULL,
	member_role	char(1)	DEFAULT 'U'	NOT NULL,
	access_token	varchar2(4000)		NULL,

    constraint pk_member_id primary key(member_id),
    constraint ck_member_team check(member_team in ('N','Y')),      -- ���뿉 �냽�빐�엳吏� �븡�떎('N') / ���뿉 �냽�빐 �엳�떎('Y')
    constraint ck_member_role check(member_role in ('U','A'))         -- 'U' : �씪諛� �궗�슜�옄 / 'A' : 愿�由ъ옄
);

--�룷�씤�듃 (媛쒖씤)
CREATE TABLE personal_point (
	p_point_id	number		    NOT NULL,
	challenge_id	number,
	member_id	varchar2(15)		NOT NULL,
	point	number	DEFAULT 0	NOT NULL,
	point_date	date	DEFAULT sysdate	NOT NULL,
    
    constraint pk_personal_point_id primary key(p_point_id),
    constraint fk_personal_point_member_id foreign key(member_id) references member(member_id) on delete cascade,                       --�깉�눜�떆 �룷�씤�듃 �궘�젣
    constraint fk_personal_point_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null   --梨뚮┛吏� �궘�젣 �떆 洹몃�濡� �궓�븘 �엳�쓬
);

--諭껋�
CREATE TABLE badge (
	badge_id number         NOT NULL,
	challenge_id number,
	member_id	varchar2(15)    NOT NULL,
	badge_img_id	number	NOT NULL,
	badge_date date DEFAULT sysdate	NOT NULL,
    
    constraint pk_badge_id primary key(badge_id),
    constraint fk_badge_member_id foreign key(member_id) references member(member_id) on delete cascade,                     --�궗�슜�옄 �깉�눜�떆 媛숈씠 �궘�젣
    constraint fk_badge_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete  set null,       --梨뚮┛吏� �궘�젣�빐�룄 洹몃�濡� 議댁옱
    constraint fk_badge_badge_img_id foreign key(badge_img_id) references badge_image(badge_img_id) on delete cascade        --諭껋� �씠誘몄� �궘�젣 �떆 媛숈씠 �궘�젣
);
--諭껋� �씠誘몄� ���옣
CREATE TABLE badge_image (
	badge_img_id	number		NOT NULL,
	badge_name	varchar2(100)		NOT NULL,
	badge_img	varchar2(4000)		NOT NULL,       --badge �뙆�씪紐�
    
    constraint pk_badge_img_id primary key(badge_img_id)    
);


COMMENT ON COLUMN badge_image.badge_img IS '�씠誘몄� 寃쎈줈';

--寃뚯떆湲� (怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
CREATE TABLE article (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	a_type	varchar2(15)		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_aritlce_id primary key(a_id),
    constraint fk_member_id foreign key(member_id) references member(member_id) on delete set null          --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
);

--�씤利� 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_confirm (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	challenge_id	number,
	confirm_type	varchar2(10)		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_a_confirm_id primary key(a_id),
    constraint fk_a_confirm_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
    constraint fk_a_confirm__challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null  --梨뚮┛吏� �궘�젣�빐�룄 �� 議댁옱
);

--���썝 李얘린 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_search_team (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	challenge_id	number,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
	s_team_count	number	DEFAULT 4	NOT NULL,
    
    constraint pk_a_search_team_id primary key(a_id),
    constraint fk_a_search_team_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
    constraint fk_a_search_team_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null  --梨뚮┛吏� �궘�젣�빐�룄 �� 議댁옱
);

--�슦由� �� 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_team (
	team_a_id	number		NOT NULL,
	member_id	varchar2(15)		NOT NULL,
	a_id	number		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_a_team_id primary key(team_a_id),
    constraint fk_a_team_member_id foreign key(member_id) references member(member_id) on delete set null,                       --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱                   
    constraint fk_a_team_a_id foreign key(a_id) references a_search_team(a_id) on delete cascade --梨뚮┛吏� �궘�젣(梨뚮┛吏� �걹)�굹硫� 媛숈씠 �궘�젣
);

alter table a_team
modify(member_id null);

commit;

--��
CREATE TABLE team (
	team_id	number		    NOT NULL,
	member_id	varchar2(15)	NOT NULL,
	a_id	number		NOT NULL,
	team_start_day date DEFAULT sysdate	NOT NULL,
    
    constraint pk_team_id primary key(team_id),
    constraint fk_team_member_id foreign key(member_id) references member(member_id) on delete cascade,      --member �깉�눜 �떆 ���룄 媛숈씠 �깉�눜
    constraint fk_team_a_id foreign key(a_id) references a_search_team(a_id)  --李몄“ �떆 遺�紐�(���썝李얘린寃뚯떆湲�) �궘�젣 遺덇�
);

--�룷�씤�듃(��)
CREATE TABLE team_point (
	t_point_id	number		NOT NULL,
	member_id	varchar2(15)		NOT NULL,
	a_id	number		NOT NULL,
	point	number	DEFAULT 0	NOT NULL,
	point_date	date	DEFAULT sysdate	NOT NULL,
    
    constraint pk_team_point_id primary key(t_point_id),
    constraint fk_team_point_member_id foreign key(member_id) references member(member_id) on delete cascade,        --�쉶�썝�깉�눜�떆 媛숈씠 �궘�젣
    constraint fk_team_point_a_id foreign key(a_id) references a_search_team(a_id)   --李몄“ �떆 遺�紐�(���썝李얘린寃뚯떆湲�) �궘�젣 遺덇�
);

--泥⑤��뙆�씪(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
CREATE TABLE attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_attachment_id primary key(attachment_id),
    constraint fk_attachment_a_id foreign key(a_id) references article(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(�씤利�)
CREATE TABLE confirm_attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_confirm_attachment_id primary key(attachment_id),
    constraint fk_confirm_attachment_a_id foreign key(a_id) references a_confirm(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_confirm_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(���썝李얘린) ** ���썝李얘린 = s_
CREATE TABLE s_team_attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_s_team_attachment_id primary key(attachment_id),
    constraint fk_s_team_attachment_a_id foreign key(a_id) references a_search_team(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_s_team_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(�슦由ы� 寃뚯떆湲�) ** �슦由ы� = a_
CREATE TABLE a_team_attachment (
	attachment_id	number		NOT NULL,
	team_a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_a_team_attachment_id primary key(attachment_id),
    constraint fk_a_team_attachment_team_a_id foreign key(team_a_id) references a_team(team_a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_a_team_attachment_status check(attachment_status in ('Y','N'))
);

--�뙎湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
create table a_comment (
    comment_id number not null,
    member_id varchar2(15),
    a_id number not null,
    comment_content varchar2(2000) not null,
    comment_reg_date date default sysdate,
    comment_level number default 1 not null,
    comment_ref number,
    
    constraint pk_a_comment_id primary key(comment_id),
    constraint fk_a_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_a_comment_a_id foreign key(a_id) references article(a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_a_comment_comment_ref foreign key(comment_ref) references a_comment(comment_id) on delete set null        --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)
);

--�뙎湲�(�씤利�)
CREATE TABLE confirm_comment (
	comment_id	number		NOT NULL,
	member_id	varchar2(15),
	a_id	number		NOT NULL,
	comment_content	varchar2(2000)		NOT NULL,
	comment_reg_date	date	DEFAULT sysdate	NOT NULL,
	comment_level	number	DEFAULT 1	NOT NULL,
	comment_ref	number,
    
    constraint pk_confirm_comment_id primary key(comment_id),
    constraint fk_confirm_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                             --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_confirm_comment_a_id foreign key(a_id) references a_confirm(a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_confirm_comment_comment_ref foreign key(comment_ref) references confirm_comment(comment_id) on delete set null        --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)  
);

--�뙎湲�(�슦由ы�)
CREATE TABLE team_comment (
	comment_id	number		NOT NULL,
	team_a_id	number		NOT NULL,
	member_id	varchar2(15),
	comment_content	varchar2(2000)		NOT NULL,
	comment_reg_date	date	DEFAULT sysdate	NOT NULL,
	comment_level	number	DEFAULT 1	NOT NULL,
	comment_ref	number,
    
    constraint pk_comment_id primary key(comment_id),
    constraint fk_comment_team_a_id foreign key(team_a_id) references a_team(team_a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                                         --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_comment_comment_ref foreign key(comment_ref) references team_comment(comment_id) on delete set null                       --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)
);

--�� �떊泥��옄
CREATE TABLE request_team (
	request_id	number		NOT NULL,
	member_id	varchar2(15),
	a_id	number		NOT NULL,
    
    constraint pk_request_team_id primary key(request_id),
    constraint fk_request_team_member_id foreign key(member_id) references member(member_id) on delete set null,          --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_request_team_a_id foreign key(a_id) references a_search_team(a_id)      -- ���썝李얘린 寃뚯떆湲� �궘�젣 紐삵븿
);

--sequence
create sequence seq_team_id;
create sequence seq_a_comment_id;
create sequence seq_p_point_id;
create sequence seq_badge_id;
create sequence seq_badge_img_id;
create sequence seq_attachment_id;
create sequence seq_t_point_id;
create sequence seq_article_id;
create sequence seq_a_confirm_id;
create sequence seq_a_search_team_id;
create sequence seq_confirm_attachment_id;
create sequence seq_search_team_attachment_id;
create sequence seq_confirm_comment_id;
create sequence seq_team_comment_id;
create sequence seq_a_team_id;
create sequence seq_request_id;
create sequence seq_team_attachment_id;
create sequence seq_challenge_id;

--
select * from member; --�궗�슜�옄
select * from article; --寃뚯떆湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
select * from a_confirm; --�씤利� 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from a_search_team; --���썝 李얘린 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from a_team; --�슦由ы� 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from challenge; --梨뚮┛吏�

--�뀒�뒪�듃�슜 �쑀��
insert into member
values (
'honggd', '1234', '�솉湲몃룞', '湲몃룞', 'honggd@naver.com', '01011111111','Y', default, default, 'access_token_1234'
);

insert into member
values (
'qwerty', '1234', '荑좎뼱�떚', '�뼱�떚', 'qwerty@naver.com', '01022222222','N', default, default, 'access_token_2345'
);

insert into member
values (
'aaaaa', '1234', '�븘�븘�븘', '�븘�븘', 'aaaaa@naver.com', '01033333333','Y', default, default, 'access_token_3456'
);

insert into member
values (
'bbbbb', '1234', '鍮꾨퉬鍮�', '鍮꾨퉬', 'bbbbb@naver.com', '01034343434','N', default, default, 'access_token_4567'
);

insert into member
values (
'ccccc', '1234', '�뵪�뵪�뵪', '�뵪�뵪', 'ccccc@naver.com', '01045454545','Y', default, default, 'access_token_5678'
);

insert into member
values (
'ddddd', '1234', '�뵒�뵒�뵒', '�뵒�뵒', 'ddddd@naver.com', '01056565656','Y', default, default, NULL
);

insert into member
values (
'eeeee', '1234', '�씠�씠�씠', '�씠�씠', 'eeeee@naver.com', '01067676767','Y', default, default, NULL
);

insert into member
values (
'fffff', '1234', '�뿉�봽�봽', '�뿉�봽', 'fffff@naver.com', '01078787878','Y', default, default, 'access_token_6789'
);

insert into member
values (
'ggggg', '3456', '伊먯쪖伊�', '伊먯쪖', 'ggggg@naver.com', '01090909090','Y', default, default, 'access_token_0000'
);

insert into member
values (
'hhhhh', '3456', '�뿉�씠移�', '�뿉移�', 'hhhhh@naver.com', '01034561234','N', default, default, 'access_token_0666'
);

insert into member
values (
'iiiii', '3456', '�븘�씠�븘', '�븘�씠', 'iiiii@naver.com', '01011122221','N', default, default, 'access_token_7700'
);

insert into member
values (
'jjjjj', '3456', '�젣�씠�젣', '�젣�씠', 'jjjjj@naver.com', '01037373737','N', default, default, 'access_token_0880'
);

insert into member
values (
'kkkkk', '3456', '耳�耳�耳�', '耳�耳�', 'kkkkk@naver.com', '01023122312','N', default, default, 'access_token_4354'
);

insert into member
values (
'temp0', '3456', '�뀥�봽�쁺', '�뀥0', 'temp0@naver.com', '01012123434','N', default, default, NULL
);

insert into member
values (
'temp1', '3456', '�뀥�봽�씪', '�뀥1', 'temp1@naver.com', '01056567676','N', default, default, NULL
);
insert into member
values (
'admin1', '1234', '愿�由ъ옄1', '愿�由ъ옄2', 'admin1@naver.com', '01044444444',default, '愿�由ъ옄�씠誘몄�', 'A', NULL
);

insert into member
values (
'admin2', '1234', '愿�由ъ옄1', '愿�由ъ옄2', 'admin2@naver.com', '01055555555',default, '愿�由ъ옄�씠誘몄�', 'A', NULL
);

--�뀒�뒪�듃�슜 寃뚯떆湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
insert into article
values (
seq_article_id.nextval,'honggd','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 1','�븞�뀞�븯�꽭�슂 蹂몃Ц - 1', to_date('18/02/14','RR/MM/DD'), default, default
);
insert into article
values (
seq_article_id.nextval,'aaaaa','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 2','�븞�뀞�븯�꽭�슂 蹂몃Ц - 2',to_date('18/03/16','RR/MM/DD'), default, default
);
insert into article
values (
seq_article_id.nextval,'bbbbb','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 3','�븞�뀞�븯�꽭�슂 蹂몃Ц - 3',to_date('18/03/24','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'ccccc','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 4','�븞�뀞�븯�꽭�슂 蹂몃Ц - 4',to_date('18/04/14','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'aaaaa','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 5','�븞�뀞�븯�꽭�슂 蹂몃Ц - 5',to_date('18/04/24','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin1','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 1','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 1',to_date('18/05/08','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'ddddd','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 6','�븞�뀞�븯�꽭�슂 蹂몃Ц - 6',to_date('18/05/25','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 7','�븞�뀞�븯�꽭�슂 蹂몃Ц - 7',to_date('18/06/12','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 8','�븞�뀞�븯�꽭�슂 蹂몃Ц - 8',to_date('18/06/14','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 9','�븞�뀞�븯�꽭�슂 蹂몃Ц - 9',to_date('18/07/10','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin2','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 2','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 2',to_date('18/07/23','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 10','�븞�뀞�븯�꽭�슂 蹂몃Ц - 10',to_date('18/08/18','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 11','�븞�뀞�븯�꽭�슂 蹂몃Ц - 11',to_date('18/09/29','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin2','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 3','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 3',to_date('18/10/10','RR/MM/DD'),default, default
);

--�뀒�뒪�듃�슜 �씤利� 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_confirm
values (
seq_a_confirm_id.nextval,'ggggg',4,'�븯猷�','�뾽�궗�씠�겢留� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �뾽�궗�씠�겢留� �씤利앹엯�땲�떎',to_date('18/01/01','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'qwerty',15,'湲곌컙','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/02/05','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'eeeee',20,'��','�떎�쉶�슜 留덉뒪�겕 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �떎�쉶�슜 留덉뒪�겕 �씤利앹엯�땲�떎',to_date('18/03/22','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ddddd',17,'��','��釉붾윭 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 ��釉붾윭 �씤利앹엯�땲�떎',to_date('18/04/14','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'eeeee',3,'�븯猷�','怨꾨떒 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 怨꾨떒 �씤利앹엯�땲�떎',to_date('18/05/05','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'hhhhh',15,'湲곌컙','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/05/27','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'jjjjj',18,'湲곌컙','�옣諛붽뎄�땲 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �옣諛붽뎄�땲 �씤利앹엯�땲�떎',to_date('18/06/13','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ccccc',10,'�븯猷�','�벐�젅湲� 以띻린 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �벐�젅湲� 以띻린 �씤利앹엯�땲�떎',to_date('18/06/26','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ggggg',15,'��','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/07/02','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'fffff',24,'��','諛곕떖�쓬�떇 以꾩씠湲� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 諛곕떖�쓬�떇 以꾩씠湲� �씤利앹엯�땲�떎',to_date('18/07/17','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ccccc',12,'�븯猷�','�솚寃� 罹좏럹�씤 吏묓쉶 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 吏묓쉶 李몄뿬 �씤利앹엯�땲�떎',to_date('18/08/26','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'honggd',11,'�븯猷�','媛쒖씤 �슜湲� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 媛쒖씤 �슜湲� �씤利앹엯�땲�떎',to_date('18/08/30','RR/MM/DD'),default, default
);

--�뀒�뒪�듃�슜 ���썝 李얘린 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_search_team
values (
seq_a_search_team_id.nextval,'bbbbb',15,'遺꾨━�닔嫄� 媛숈씠 �븯�떎遺�?','遺꾨━�닔嫄� 媛숈씠�빐�슂~ �� �룷�븿 4紐낆씠�꽌 �빀�떆�떎~',to_date('18/01/01','RR/MM/DD'),default,default,default
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'hhhhh',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/02/02','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'iiiii',18,'�븳 �떖 �룞�븞 �옣諛붽뎄�땲 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/03/03','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',24,'�븳 �떖 �룞�븞 諛곕떖�쓬�떇 以꾩엯�떆�떎~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/03/13','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'kkkkk',21,'�븳 �떖 �룞�븞 �넀�닔嫄� �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/04/04','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'qwerty',20,'�븳 �떖 �룞�븞 �떎�쉶�슜留덉뒪�겕 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/05/05','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'temp0',22,'�븳 �떖 �룞�븞 �뿉�뼱而� �쟻�젙�삩�룄 �쑀吏��빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/06/06','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'temp1',15,'�븳 �떖 �룞�븞 遺꾨━�닔嫄� 媛숈씠�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/07/07','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'kkkkk',25,'�븳 �떖 �룞�븞 臾쇳떚�뒋 �뜙�궗�슜�빐�슂~','�� �룷�븿 9紐낆씠�꽌 �빀�떆�떎~',to_date('18/08/08','RR/MM/DD'),default,default,9
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',26,'�븳 �떖 �룞�븞 �빖�뱶�룿 �뜙 �궗�슜�빐�슂~','�� �룷�븿 4紐낆씠�꽌 �빀�떆�떎~',to_date('18/09/09','RR/MM/DD'),default,default,4
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'iiiii',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 5紐낆씠�꽌 �빀�떆�떎~',to_date('18/10/01','RR/MM/DD'),default,default,5
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'hhhhh',18,'�븳 �떖 �룞�븞 �옣諛붽뎄�땲 �궗�슜�빐�슂~','�� �룷�븿 6紐낆씠�꽌 �빀�떆�떎~',to_date('18/11/01','RR/MM/DD'),default,default,6
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'bbbbb',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 7紐낆씠�꽌 �빀�떆�떎~',to_date('18/12/01','RR/MM/DD'),default,default,7
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 8紐낆씠�꽌 �빀�떆�떎~',to_date('18/12/12','RR/MM/DD'),default,default,8
);

--�뀒�뒪�듃�슜 �슦由ы� 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_team
values (
seq_a_team_id.nextval,'ddddd',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂1?','遺꾨━�닔嫄�',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'honggd',2,'��釉붾윭 �궗�슜�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'aaaaa',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂2?','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ccccc',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂3?','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ddddd',2,'��釉붾윭 �궗�슜�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'eeeee',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂?4','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'fffff',2,'��釉붾윭 �궗�슜�씠�슂3','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ggggg',2,'��釉붾윭 �궗�슜�씠�슂4','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ccccc',1,'遺꾨━�닔嫄� 吏덈Ц�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'eeeee',1,'遺꾨━�닔嫄� 吏덈Ц�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'fffff',2,'��釉붾윭 吏덈Ц�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'honggd',2,'��釉붾윭 吏덈Ц�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

commit;
--梨뚮┛吏�
select * from challenge;

insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 異쒗눜洹쇱떆 �옄媛��슜 �씠�슜 �븞 �븯湲�', '�삤�뒛 �옄媛��슜 ���떊�뿉 ��以묎탳�넻/ 嫄룰린/ �옄�쟾嫄곕줈 異쒗눜洹� �븯怨� �씤利� �궗吏꾩쓣 �젣異쒗빐二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �솚寃� 蹂댄샇 愿��젴 SNS 肄섑뀗痢� 寃뚯떆', '�삤�뒛 SNS�뿉 �솚寃� 蹂댄샇 愿��젴 肄섑뀗痢좊�� 寃뚯떆�븳 �썑 寃뚯떆臾쇱쓣 罹≪퀜�빐二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 �뿕由щ쿋�씠�꽣 ���떊 怨꾨떒 �씠�슜�븯湲�', '�삤�뒛 �뿕由щ쿋�씠�꽣 ���떊 怨꾨떒 �씠�슜�븯怨� 怨꾨떒怨� �떊諛쒖씠 蹂댁씠�룄濡� �궗吏꾩쓣 李띿뼱 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�삤�뒛 �뾽�궗�씠�겢留곹븯湲�', '�삤�뒛 �뾽�궗�씠�겢�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 援щℓ�떆 �젣濡� �썾�씠�뒪�듃 留ㅼ옣�뿉�꽌 援щℓ�븯湲�', '�삤�뒛 �씪諛� 留ㅼ옣 ���떊 �젣濡� �썾�씠�뒪�듃 留ㅼ옣�뿉�꽌 援щℓ�븯怨� 援щℓ�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �넻吏��꽌, �븞�궡臾� �쟾�옄 臾몄꽌濡� �닔�떊 諛� �뿴�엺 �떊泥��븯湲�', '�삤�뒛 醫낆씠 �슦�렪臾쇱쓣 以꾩씠湲� �쐞�빐�꽌 �넻吏��꽌, �븞�궡臾� �쟾�옄 臾몄꽌濡� �닔�떊 諛� �뿴�엺 �떊泥��븯怨� �떊泥��븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 媛��쟾�젣�뭹 諛� �쟾湲곗슜�뭹 誘� �궗�슜�떆 肄붾뱶 鍮쇨린', '�삤�뒛 媛��쟾�젣�뭹 諛� �쟾湲� �슜�뭹 誘� �궗�슜�떆 肄붾뱶瑜� 鍮쇨퀬 �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.',100 ,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �쓬�떇 �궓湲곗� �븡怨� �떎 癒밴린', '�삤�뒛 �쓬�떇�쓣 �궓湲곗� �븡怨� �떎 癒밴퀬 �떎 癒뱀� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 二쇰Ц�떆 移쒗솚寃� �룷�옣�옱 �궗�슜�븯�뒗 怨녹뿉�꽌 二쇰Ц�븯湲�', '�삤�뒛 移쒗솚寃� �룷�옣�옱 �궗�슜�븯�뒗 怨녹뿉�꽌 二쇰Ц�븳 �뮘 �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�삤�뒛 湲멸굅由� �벐�젅湲� 以띻린', '�삤�뒛 湲멸굅由ъ뿉 �엳�뒗 �벐�젅湲곕�� 以띻퀬 二쇱슫 �벐�젅湲� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 �룷�옣�떆 媛쒖씤�슜湲� �궗�슜�븯湲�', '�삤�뒛 �쓬�떇�쓣 �룷�옣�븷 �븣 媛쒖씤�슜湲곗뿉 �룷�옣�븯怨� �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�솚寃� 罹좏럹�씤 吏묓쉶 李몄뿬', '�삤�뒛 �솚寃� 罹좏럹�씤 吏묓쉶�뿉 李몄뿬�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 硫붿씪�븿 鍮꾩슦湲�', '�삤�뒛 硫붿씪�븿�쓣 鍮꾩슫 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);

--湲곌컙 梨뚮┛吏�
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �씪�쉶�슜�뭹 �궗�슜 理쒖냼�븳�쑝濡� �븯湲�',
'�븳 �떖 �룞�븞 利됱꽍諛� ���떊 諛μ넡�쑝濡� 吏곸젒 諛μ쓣 �빐癒밴굅�굹, �깮�닔 二쇰Ц �떆 鍮� 蹂묒쓣 �쉶�닔�븯�뒗 �깮�닔濡� 二쇰Ц�븯�뒗 �벑 �씪�쉶�슜�뭹�쓣 理쒖냼�븳�쑝濡� �궗�슜�빐 二쇱꽭�슂.', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 遺꾨━�닔嫄� �젣��濡� �븯湲�',
'�븳 �떖 �룞�븞 瑗쇨세�븯寃� 遺꾨━�닔嫄곕�� �빐二쇱꽭�슂. (�씤利� �궗吏� �삁 : 遺꾨━�닔嫄� �븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 3, '移쒗솚寃� �꽭�젣 留뚮뱾�뼱�꽌 �븳 �떖 �뜥蹂닿린', 
'吏곸젒 移쒗솚寃� �꽭�젣瑜� 留뚮뱾怨� 留뚮뱺 �꽭�젣瑜� �븳 �떖 �룞�븞 �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �꽭�젣 留뚮뱶�뒗 �궗吏�, �꽭�젣 �궗�슜 �궗吏�)',700,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 ��釉붾윭 梨숆린怨� �깮�솢�븯湲�',
'�븳 �떖 �룞�븞 �쇅異쒗븷 �븣 ��釉붾윭瑜� 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : ��釉붾윭 �궗�슜�븯�뒗 �궗吏�)',700 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �옣諛붽뎄�땲 梨숆린怨� �깮�솢�븯湲�',
'�븳 �떖 �룞�븞 �쇅異쒗븷 �븣 �옣諛붽뎄�땲瑜� 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �옣諛붽뎄�땲 �궗�슜�븯�뒗 �궗吏�)',500 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �꺎�뫖 ���떊 �꺎�뫖諛� �궗�슜�븯湲�',
'�븳 �떖 �룞�븞 �꺎�뫖 ���떊 �꺎�뫖諛붾�� �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �꺎�뫖諛� �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �떎�쉶�슜 留덉뒪�겕 李⑹슜�븯湲�',
'�븳 �떖 �룞�븞 �씪�쉶�슜 留덉뒪�겕 ���떊 �떎�쉶�슜 留덉뒪�겕瑜� �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �떎�쉶�슜 留덉뒪�겕 �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �쑕吏� ���떊 �넀�닔嫄� �뱾怨� �떎�땲湲�',
'�븳 �떖 �룞�븞 �쑕吏� ���떊 �넀�닔嫄댁쓣 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �넀�닔嫄� �궗�슜�븯�뒗 �궗吏�)', 700,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �뿉�뼱而� �궗�슜�떆 �쟻�젙�삩�룄(26�룄) �쑀吏��븯湲�',
'�븳 �떖 �룞�븞 �뿉�뼱而� �궗�슜 �떆 �쟻�젙�삩�룄(26�룄)濡� �쑀吏��빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �뿉�뼱而� 26�룄濡� 留욎떠吏� �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �궙 �떆媛꾩뿉�뒗 議곕챸 ���떊 �옄�뿰愿� �씠�슜�븯湲�',
'�븳 �떖 �룞�븞 �궙 �떆媛꾩뿉�뒗 議곕챸�쓣 �벐�뒗 ���떊 �옄�뿰愿묒쓣 �씠�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : 議곕챸�쓣 �궎吏� �븡怨� �옄�뿰愿� �씠�슜�븯�뒗 �궗吏�)',600 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 3, '�븳 �떖 �룞�븞 諛곕떖�쓬�떇 以꾩씠湲�',
'�븳 �떖 �룞�븞 諛곕떖�쓬�떇�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : 吏� 諛� 癒밸뒗 �궗吏�)',700 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 臾쇳떚�뒋 �궗�슜 以꾩씠湲�',
'�븳 �떖 �룞�븞 臾쇳떚�뒋 �궗�슜�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : 嫄몃젅�굹 �뻾二� �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �빖�뱶�룿 �뜙 �븯湲�', 
'�븳 �떖 �룞�븞 �빖�뱶�룿 �궗�슜�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : �쑕���룿 �씠�슜 �떆媛� �삱由ш린)', 500,30
);



insert into badge_image values (seq_badge_img_id.nextval, 'Lm1_�씪�쉶�슜以꾩씠湲�' , 'Lm1_�씪�쉶�슜以꾩씠湲�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm2_遺꾨━�닔嫄곗쿇�옱' , 'Lm2_遺꾨━�닔嫄곗쿇�옱.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm3_移쒗솚寃쎌꽭�젣�떖�씤' , 'Lm3_移쒗솚寃쎌꽭�젣�떖�씤.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm4_��釉붾윭' , 'Lm4_��釉붾윭.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm5_�옣諛붽뎄�땲' , 'Lm5_�옣諛붽뎄�땲.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm6_�꺎�뫖諛붿궗�슜�븯湲�' , 'Lm6_�꺎�뫖諛붿궗�슜�븯湲�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm7_�떎�쉶�슜留덉뒪�겕' , 'Lm7_�떎�쉶�슜留덉뒪�겕.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm8_�슦�븘�븯寃뚯넀�닔嫄�' , 'Lm8_�슦�븘�븯寃뚯넀�닔嫄�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm9_�삤議댁링吏��궡�씠' , 'Lm9_�삤議댁링吏��궡�씠.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm10_�옄�뿰愿묒궗�옉�빐!' , 'Lm10_�옄�뿰愿묒궗�옉�빐!.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm11_�솚寃쎌쓽誘쇱”' , 'Lm11_�솚寃쎌쓽誘쇱”.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm12_�뻾二�' , 'Lm12_�뻾二�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm13_�빖�뱶�룿' , 'Lm13_�빖�뱶�룿.png');

rollback;

commit;

select * from badge_image;

insert into badge_image values (seq_badge_img_id.nextval, 'Rm1_媛쒖씤1�쐞' , 'Rm1_媛쒖씤1�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm2_媛쒖씤2�쐞' , 'Rm2_媛쒖씤2�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm3_媛쒖씤3�쐞' , 'Rm3_媛쒖씤3�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm4_媛쒖씤4�쐞' , 'Rm4_媛쒖씤4�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm5_媛쒖씤5�쐞' , 'Rm5_媛쒖씤5�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm1_��1�쐞' , 'Tm1_��1�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm2_��2�쐞' , 'Tm2_��2�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm3_��3�쐞' , 'Tm3_��3�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm4_��4�쐞' , 'Tm4_��4�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm5_��5�쐞' , 'Tm5_��5�쐞.png');



commit;

select * from challenge;
select * from badge_image;



commit;
select *from challenge;
select * from badge_image;

ALTER TABLE challenge ADD(badge_img_id number);
ALTER TABLE challenge
ADD CONSTRAINT fk_badge_img_id  foreign key(badge_img_id) references badge_image(badge_img_id);

foreign key(member_id) references member(member_id
update challenge set badge_img_id =64 where challenge_id=14;

commit;


select *from challenge;
select * from badge;
select * from badge_image;
select * from member;
select * from challenge_join;
update member set member_pw='1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==' where member_id='qwerty';
commit;

--challenge_join
insert into challenge_join values ('honggd', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('honggd', 17, to_date('21/01/23'), trunc(to_date('21/01/23')+30));
insert into challenge_join values ('honggd', 21, to_date('21/02/16'), trunc(to_date('21/01/23')+30));
update challenge_join set confirm_date=to_date('21/02/16') where confirm_date=to_date('22/02/16');
commit;
update challenge_join set end_date=trunc(to_date('21/02/16')+30) where confirm_date=to_date('21/02/16');



insert into challenge_join values ('qwerty', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('qwerty', 17, to_date('21/02/03'), trunc(to_date('21/02/03')+30));
insert into challenge_join values ('qwerty', 21, to_date('21/01/16'), trunc(to_date('21/01/16')+30));
commit;

-- 諭껋� �씠誘몄� insert(challenge_join怨� �뿰寃�)
insert into badge values (seq_badge_id.nextval, 14, 'honggd', 64, sysdate);
insert into badge values (seq_badge_id.nextval, 17, 'honggd', 67, sysdate);
insert into badge values (seq_badge_id.nextval, 21, 'honggd', 71, sysdate);
insert into badge values (seq_badge_id.nextval, 22, 'honggd', 72, sysdate);
insert into challenge_join values ('honggd', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('honggd', 17, to_date('21/01/23'), trunc(to_date('21/01/23')+30));
insert into challenge_join values ('honggd', 21, to_date('21/02/16'), trunc(to_date('21/01/23')+30));
delete from challenge_join where member_id ='honggd' and challenge_id=22;
update challenge_join set confirm_date=to_date('21/02/16') where confirm_date=to_date('22/02/16');


commit;
select *from badge;
select * from challenge_join;
update badge set badge_date=trunc(to_date('21/02/16')+30) where badge_id=45;

insert into badge values (seq_badge_id.nextval, 14, 'qwerty', 64, sysdate+30);
insert into badge values (seq_badge_id.nextval, 17, 'qwerty', 67,  trunc(to_date('21/02/03')+30));
insert into badge values (seq_badge_id.nextval, 21, 'qwerty', 71, trunc(to_date('21/01/16')+30));

commit;


--�빐�떦�떖, �빐�떦 硫ㅻ쾭�쓽 諭껋� �젙蹂�
select * from badge where badge_date between (trunc(to_date('2021-05-24','yy/MM/dd'),'MM')) and (last_day(to_date('2021-05-24','yy/MM/dd'))) and member_id= 'qwerty';
select * from badge_image where badge_img_id in(select badge_img_id from badge where badge_date between trunc(to_date( '2021-02-01' ,'yy/MM/dd'),'MM') and last_day(to_date('2021-02-01','yy/MM/dd')) and member_id= 'honggd');



select * from badge;

select * from badge_image;
select * from badge_image where badge_img_id in (select badge_img_id from badge where badge_date between trunc(to_date('2021-02-01' ,'yy/MM/dd'),'MM') and (last_day(to_date('2021-02-01','yy/MM/dd'))) and member_id= 'qwerty');



commit; values (seq_badge_img_i
--==============================
--�긽�뭹 �옱怨� �뀒�씠釉�
--==============================
create table PRODUCT_STOCK(
    product_id  varchar2(100), 
    p_name  varchar2(100) not null,
    price number not null,
    description  varchar2(100),   
    stock number default 0,
    
    constraint pk_product_product_id primary key(product_id)
);

select * from PRODUCT_STOCK;

insert into PRODUCT_STOCK
values ('nb_ss7','�궪�꽦�끂�듃遺�',1570000,'�떆由ъ쫰 7',55);

insert into PRODUCT_STOCK
values ('nb_macbook_air','留λ턿�뿉�뼱',1200000,'�븷�뵆 �슱�듃�씪遺�',0);

insert into PRODUCT_STOCK
values ('nb_macbook_pro','留λ턿�봽濡�',2200000,'�븷�뵆 �봽濡�',0);

insert into PRODUCT_STOCK
values ('pc_ibm','ibmPC',750000,'windows 8',10);

insert into PRODUCT_STOCK
values ('nb_gram','lg洹몃옩',1600000,'洹몃옩 7',20);
--==============================
--�긽�뭹 �엯異쒓퀬 �뀒�씠釉�
--==============================
create table PRODUCT_IO(
    IO_NO NUMBER,
    PRODUCT_ID VARCHAR2(30),
    IODATE DATE DEFAULT SYSDATE,
    AMOUNT NUMBER,
    STATUS CHAR(1) CHECK (STATUS IN ('I', 'O')),

    constraint pk_product_io_iono primary key(IO_NO),
    constraint fk_product_io_productio foreign key(PRODUCT_ID)
                                        REFERENCES product_stock(PRODUCT_ID)
);

select * from product_io;

create sequence seq_product_io_no;



--==============================
--�긽�뭹�젙蹂� �궘�젣 �듃由ш굅
--==============================
create or replace trigger trg_del_product
    before
    delete on PRODUCT_STOCK    --�긽�뭹�뀒�씠釉붿뿉�꽌 delete �떆
    for each row
begin
    delete from product_io where product_id = :old.product_id;
end;
/





--==============================
--�옱怨좏뀒�씠釉� �닔�웾 蹂�寃� �듃由ш굅
--==============================
create or replace trigger trg_product
    before
    insert on product_io    --�긽�뭹 �엯異쒓퀬 �뀒�씠釉붿뿉�꽌 insert �떆
    for each row
begin
    if :new.status = 'I' then
        update product_stock
        set stock = stock + :new.AMOUNT
        where product_id = :new.product_id;    
    else 
        update product_stock
        set stock = stock - :new.AMOUNT
        where product_id = :new.product_id;   
    end if;
    
    
end;
/
select * from product_io;

select * from product_stock;

insert into product_io
values(seq_product_io_no.nextval, 'nb_macbook_air',sysdate,10,'I');

delete from product_io where product_id ='nb_macbook_pro';

delete from product_stock where product_id ='nb_macbook_pro';
commit;
                                                                                                 
select class_no
from tb_class_professor
where class_no in(
    select class_no
    from tb_class
    where department_no in(
        select department_no
        from tb_department
        where category = '예체능'
));
select * from personal_point;
select (select student_name from tb_student where g.student_no = student_no) 학생이름
    , term_no "term_name"
from tb_grade g
where term_no like '2007%'
    and class_no = (
        select class_no
        from tb_class
        where class_name ='인간관계론'
    );
delete from badge where badge_id=49;
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/03/17') and member_id = 'honggd';
select * from badge b  left join badge_image bimg  on b.badge_img_id = bimg.badge_img_id  left join challenge c on bimg.challenge_id = c.challenge_id
where badge_date = TO_DATE('21/03/18') and member_id = 'honggd';
select *
from tb_grade g
where term_no like '2007%'
    and class_no = (
        select class_no
        from tb_class
        where class_name ='인간관계론'
    );
select *
from role_sys_privs;
select s.department_no
    , round( avg(g.point),1) 전공평점
from tb_student s join tb_grade g
    on s.student_no = g.student_no
where s.department_no in (
    select department_no
    from tb_department
    where category = (
        select category
        from tb_department
        where department_name = '환경조경학과'
    )
)
group by s.department_no;
select * from personal_point where point_date > to_date('21/04/26');
select s.student_no 학번
    , s.student_name 학생이름
    , round(avg(point),1) "전체평점"
from tb_grade g join tb_student s
    on g.student_no = s.student_no
where s.department_no = (
    select department_no
    from tb_department
    where department_name = '음악학과'
    )
group by s.student_no, s.student_name
order by s.student_no;
select * from badge b  left join badge_image bimg  on b.badge_img_id = bimg.badge_img_id  left join challenge c on bimg.challenge_id = c.challenge_id 
where badge_date between trunc(to_date('2021-02-01'),'MM') and (last_day(to_date('2021-02-01'))) and member_id= 'qwerty';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where member_id = 'qwerty';
select * from personal_point where point_date = TO_DATE('2021-04-24','yy/MM/dd');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/22') and member_id = 'honggd';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('2021-04-26');
select * from a_confirm a left join challenge c  on a.challenge_id = c.challenge_id;
select challenge_point from challenge where challenge_id= (select challenge_id from a_confirm  where a_id = 52);
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where member_id = 'qwerty' and point_date = to_date('21/03/17');
select * from personal_point where point_date > to_date('21/04/24');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/24') and member_id = 'honggd';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('2021-04-25');
select * from member;
select * from personal_point where point_date = TO_DATE('2021-04-26','yy/MM/dd');
select * from personal_point order by point_date desc;
select * from personal_point where point_date = sysdate;
select * from personal_point where point_date = TO_DATE('2021-03-02','yy/MM/dd');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = sysdate and member_id = 'honddg';
select * from challenge_join;
select * from a_confirm;
select point_date from personal_point order by point_date desc;
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/17') and member_id = 'honggd';
select * from personal_point where point_date > to_date('21/04/25');
select * from badge b  left join badge_image bimg  on b.badge_img_id = bimg.badge_img_id  left join challenge c on bimg.challenge_id = c.challenge_id 
where badge_date between trunc(to_date('2021-03-01'),'MM') and (last_day(to_date('2021-03-01'))) and member_id= 'honggd';
select * from challenge_join cj left join challenge c on cj.challenge_id = c.challenge_id where sysdate between confirm_date and end_date and member_id='honggd';
select * from personal_point where point_date = TO_DATE('2021-04-25','yy/MM/dd');
select * from personal_point where point_date = TO_DATE('21/04/25','yy/mm/dd');
select * from personal_point where point_date = to_date('21/04/26');
select * from personal_point;
select * from team_point;
select * from badge;




update challenge_join set end_date = trunc(to_date('21/02/02')+30) where member_id='honggd' and challenge_id=23;
update badge set badge_date = trunc(to_date('21/02/02')+30) where member_id='honggd' and challenge_id=23;
commit;

select * from badge b left join badge_image bimg on b.badge_img_id = bimg.badge_img_id;


select * from challenge_join;
select * from personal_point;
select * from badge;
select * from badge_image;
update challenge_join set challenge_id=20 where challenge_id=22;
insert into badge values (seq_badge_id.nextval, 20, 'honggd', 70, to_date('21/03/19'));

commit;


select *from challenge;


--honggd 17(��釉붾윭) 梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/23'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/30'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/31'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/08'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/14'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/22'));
commit;

--honggd 23(遺덈걚湲�)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/13'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/23'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/03/03'));


--honggd 21(�넀�닔嫄�)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/20'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/17'));
commit;

--honggd 20(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/18'));

commit;


--�듅�젙 �궇吏�, �듅�젙 member_id�쓽 諭껋� �씠誘몄�, 梨뚮┛吏� �젙蹂�
select * from badge b  left join badge_image bimg  on b.badge_img_id = bimg.badge_img_id  left join challenge c on bimg.challenge_id = c.challenge_id where badge_date between trunc(to_date(?),'MM') and (last_day(to_date(?))) and member_id= ?;


--�듅�젙 �궇吏�, �듅�젙 member_id�쓽 �룷�씤�듃 �젙蹂�(梨뚮┛吏�
select * from personal_point where member_id = 'honggd' and point_date = to_date('21/03/17');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where member_id = 'qwerty';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/26') and member_id = 'honggd';

select * from challenge;
--吏꾪뻾以묒씤 梨뚮┛吏�(�쁽�옱 �떆�뒪�뀥�씠 confirm ~ end �궗�씠)
select * from challenge_join cj left join challenge c on cj.challenge_id = c.challenge_id where sysdate between confirm_date and end_date and member_id=?;



select * from personal_point;
--qwerty 21(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/30'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/15'));
commit;

select * from personal_point;
--qwerty 17(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/20'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/04'));
commit;


select * from personal_point;
--qwerty 14(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 14,'qwerty',(select challenge_point from challenge where challenge_id=14), to_date('21/04/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 14,'qwerty',(select challenge_point from challenge where challenge_id=14), to_date('21/04/25'));
commit;

select * from badge_image where badge_img_id in (select badge_img_id from badge where);


--trigger
--challenge_join�뿉�꽌 delect �릺硫� 諭껋�媛� 吏�湲됰릺�뒗 �삎�떇?


select * from member;
update member set member_pw = '1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==' where member_id='admin2';
commit;




select * from a_confirm;

select * from challenge_join;
select * from challenge;


insert into challenge_join values ('honggd', 6, sysdate, sysdate); --�떒湲� 梨뚮┛吏�
commit;
insert into challenge_join values ('honggd', 22, sysdate-5, (sysdate-5)+30); --�옣湲� 梨뚮┛吏�


insert into a_confirm (a_id,member_id, challenge_id, confirm_type,a_title,a_content,a_reg_date) values(SEQ_A_CONFIRM_ID.nextval,?,(select challenge_id from challenge where challenge_name =?), ?,?,?,default) ;  

select challenge_id from a_confirm  where a_id = 52;

select * from a_confirm;
select * from personal_point order by point_date desc;
insert into personal_point VALUES (seq_p_point_id.nextval, (select challenge_id from a_confirm  where a_id = ?),? ,(select challenge_point from challenge_join where challenge_id= (select challenge_id from a_confirm  where a_id = ?)), sysdate);


-- �룷�씤�듃 吏�湲� �뿬遺� �뿴異붽�, �젣�빟議곌굔 異붽�
ALTER TABLE a_confirm ADD(point_check char(1) default 'N');
ALTER TABLE a_confirm ADD CONSTRAINT ck_point_check  check(point_check in ('N','Y'));

ALTER TABLE a_confirm drop constraint  ck_point_check;
ALTER TABLE a_confirm drop COLUMN point_check ;
update a_confirm set point_check = 'N';
update a_confirm set point_check =? where a_id =? and member_id=?;

commit;

select * from a_confirm a left join challenge c  on a.challenge_id = c.challenge_id;
select challenge_point from challenge where challenge_id= (select challenge_id from a_confirm  where a_id = 52);
insert into personal_point VALUES (seq_p_point_id.nextval, (select challenge_id from a_confirm  where a_id = ?),? ,(select challenge_point from challenge where challenge_id= (select challenge_id from a_confirm  where a_id = ?)), default);


select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('2021-04-26');


--�듅�젙�궇�옄�쓽 �룷�씤�듃 議고쉶 �뾽臾� �삤瑜�
select * from personal_point order by point_date desc;
select * from personal_point where point_date = to_date('21/04/26');sonal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(sele
select * from personal_point where point_date = TO_DATE('21/04/26','yy/mm/dd');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/26') and member_id = 'honggd';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = sysdate and member_id = 'qwerty';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = sysdate and member_id = 'honggd';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = sysdate and member_id = 'qwerty';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/26') and member_id = 'honggd';
select * from personal_point where point_date = TO_DATE('21/04/26','yy/mm/dd');
select * from personal_point;
select * from team_point;
select * from badge;




update challenge_join set end_date = trunc(to_date('21/02/02')+30) where member_id='honggd' and challenge_id=23;
update badge set badge_date = trunc(to_date('21/02/02')+30) where member_id='honggd' and challenge_id=23;
commit;

select * from badge b left join badge_image bimg on b.badge_img_id = bimg.badge_img_id;


select * from challenge_join;
select * from personal_point;
select * from badge;
select * from badge_image;
update challenge_join set challenge_id=20 where challenge_id=22;
insert into badge values (seq_badge_id.nextval, 20, 'honggd', 70, to_date('21/03/19'));

commit;


select *from challenge;


--honggd 17(��釉붾윭) 梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/23'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/30'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/31'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/08'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/14'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/22'));
commit;

--honggd 23(遺덈걚湲�)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/13'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/23'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/03/03'));


--honggd 21(�넀�닔嫄�)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/20'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/17'));
commit;

--honggd 20(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/18'));

commit;


--�듅�젙 �궇吏�, �듅�젙 member_id�쓽 諭껋� �씠誘몄�, 梨뚮┛吏� �젙蹂�
select * from badge b  left join badge_image bimg  on b.badge_img_id = bimg.badge_img_id  left join challenge c on bimg.challenge_id = c.challenge_id where badge_date between trunc(to_date(?),'MM') and (last_day(to_date(?))) and member_id= ?;


--�듅�젙 �궇吏�, �듅�젙 member_id�쓽 �룷�씤�듃 �젙蹂�(梨뚮┛吏�
select * from personal_point where member_id = 'honggd' and point_date = to_date('21/03/17');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where member_id = 'qwerty';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/26') and member_id = 'honggd';

select * from challenge;
--吏꾪뻾以묒씤 梨뚮┛吏�(�쁽�옱 �떆�뒪�뀥�씠 confirm ~ end �궗�씠)
select * from challenge_join cj left join challenge c on cj.challenge_id = c.challenge_id where sysdate between confirm_date and end_date and member_id=?;



select * from personal_point;
--qwerty 21(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/30'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/15'));
commit;

select * from personal_point;
--qwerty 17(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/20'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/04'));
commit;


select * from personal_point;
--qwerty 14(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 14,'qwerty',(select challenge_point from challenge where challenge_id=14), to_date('21/04/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 14,'qwerty',(select challenge_point from challenge where challenge_id=14), to_date('21/04/25'));
commit;

select * from badge_image where badge_img_id in (select badge_img_id from badge where);


--trigger
--challenge_join�뿉�꽌 delect �릺硫� 諭껋�媛� 吏�湲됰릺�뒗 �삎�떇?


select * from member;
update member set member_pw = '1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==' where member_id='admin2';
commit;




select * from a_confirm;

select * from challenge_join;
select * from challenge;


insert into challenge_join values ('honggd', 6, sysdate, sysdate); --�떒湲� 梨뚮┛吏�
commit;
insert into challenge_join values ('honggd', 22, sysdate-5, (sysdate-5)+30); --�옣湲� 梨뚮┛吏�


insert into a_confirm (a_id,member_id, challenge_id, confirm_type,a_title,a_content,a_reg_date) values(SEQ_A_CONFIRM_ID.nextval,?,(select challenge_id from challenge where challenge_name =?), ?,?,?,default) ;  

select challenge_id from a_confirm  where a_id = 52;

select * from a_confirm;
select * from personal_point order by point_date desc;
insert into personal_point VALUES (seq_p_point_id.nextval, (select challenge_id from a_confirm  where a_id = ?),? ,(select challenge_point from challenge_join where challenge_id= (select challenge_id from a_confirm  where a_id = ?)), sysdate);


-- �룷�씤�듃 吏�湲� �뿬遺� �뿴異붽�, �젣�빟議곌굔 異붽�
ALTER TABLE a_confirm ADD(point_check char(1) default 'N');
ALTER TABLE a_confirm ADD CONSTRAINT ck_point_check  check(point_check in ('N','Y'));

ALTER TABLE a_confirm drop constraint  ck_point_check;
ALTER TABLE a_confirm drop COLUMN point_check ;
update a_confirm set point_check = 'N';
update a_confirm set point_check =? where a_id =? and member_id=?;

commit;

select * from a_confirm a left join challenge c  on a.challenge_id = c.challenge_id;
select challenge_point from challenge where challenge_id= (select challenge_id from a_confirm  where a_id = 52);
insert into personal_point VALUES (seq_p_point_id.nextval, (select challenge_id from a_confirm  where a_id = ?),? ,(select challenge_point from challenge where challenge_id= (select challenge_id from a_confirm  where a_id = ?)), default);


select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('2021-04-26');


--�듅�젙�궇�옄�쓽 �룷�씤�듃 議고쉶 �뾽臾� �삤瑜�
select * from personal_point order by point_date desc;
select * from personal_point where point_date = to_date('21/04/26');sonal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(sele
select * from personal_point where point_date = to_date('21/04/26');
select * from personal_point where point_date = TO_DATE('21/04/25','yy/mm/dd');
select * from personal_point where point_date = TO_DATE('2021-04-25','yy/MM/dd');
select * from challenge_join cj left join challenge c on cj.challenge_id = c.challenge_id where sysdate between confirm_date and end_date and member_id='honggd';
select * from badge b  left join badge_image bimg  on b.badge_img_id = bimg.badge_img_id  left join challenge c on bimg.challenge_id = c.challenge_id 
where badge_date between trunc(to_date('2021-03-01'),'MM') and (last_day(to_date('2021-03-01'))) and member_id= 'honggd';
select * from personal_point where point_date > to_date('21/04/25');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/17') and member_id = 'honggd';
select point_date from personal_point order by point_date desc;
select * from a_confirm;
select * from challenge_join;
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = sysdate and member_id = 'honddg';
select * from personal_point where point_date = TO_DATE('2021-03-02','yy/MM/dd');
select * from personal_point where point_date = sysdate;
select * from personal_point order by point_date desc;
select * from personal_point where point_date = TO_DATE('2021-04-26','yy/MM/dd');
select * from member;
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('2021-04-25');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/24') and member_id = 'honggd';
select * from personal_point where point_date > to_date('21/04/24');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where member_id = 'qwerty' and point_date = to_date('21/03/17');
select challenge_point from challenge where challenge_id= (select challenge_id from a_confirm  where a_id = 52);
select * from a_confirm a left join challenge c  on a.challenge_id = c.challenge_id;
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('2021-04-26');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/22') and member_id = 'honggd';
select * from personal_point where point_date = TO_DATE('2021-04-24','yy/MM/dd');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where member_id = 'qwerty';
select * from badge b  left join badge_image bimg  on b.badge_img_id = bimg.badge_img_id  left join challenge c on bimg.challenge_id = c.challenge_id 
where badge_date between trunc(to_date('2021-02-01'),'MM') and (last_day(to_date('2021-02-01'))) and member_id= 'qwerty';
select s.student_no 학번
    , s.student_name 학생이름
    , round(avg(point),1) "전체평점"
from tb_grade g join tb_student s
    on g.student_no = s.student_no
where s.department_no = (
    select department_no
    from tb_department
    where department_name = '음악학과'
    )
group by s.student_no, s.student_name
order by s.student_no;
select * from personal_point where point_date > to_date('21/04/26');
select s.department_no
    , round( avg(g.point),1) 전공평점
from tb_student s join tb_grade g
    on s.student_no = g.student_no
where s.department_no in (
    select department_no
    from tb_department
    where category = (
        select category
        from tb_department
        where department_name = '환경조경학과'
    )
)
group by s.department_no;
select *
from role_sys_privs;
select *
from tb_grade g
where term_no like '2007%'
    and class_no = (
        select class_no
        from tb_class
        where class_name ='인간관계론'
    );
select * from badge b  left join badge_image bimg  on b.badge_img_id = bimg.badge_img_id  left join challenge c on bimg.challenge_id = c.challenge_id
where badge_date = TO_DATE('21/03/18') and member_id = 'honggd';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/03/17') and member_id = 'honggd';
delete from badge where badge_id=49;
select (select student_name from tb_student where g.student_no = student_no) 학생이름
    , term_no "term_name"
from tb_grade g
where term_no like '2007%'
    and class_no = (
        select class_no
        from tb_class
        where class_name ='인간관계론'
    );
select * from personal_point;
select class_no
from tb_class_professor
where class_no in(
    select class_no
    from tb_class
    where department_no in(
        select department_no
        from tb_department
        where category = '예체능'
));
--==============================
--�긽�뭹 �옱怨� �뀒�씠釉�
--==============================
create table PRODUCT_STOCK(
    product_id  varchar2(100), 
    p_name  varchar2(100) not null,
    price number not null,
    description  varchar2(100),   
    stock number default 0,
    
    constraint pk_product_product_id primary key(product_id)
);

select * from PRODUCT_STOCK;

insert into PRODUCT_STOCK
values ('nb_ss7','�궪�꽦�끂�듃遺�',1570000,'�떆由ъ쫰 7',55);

insert into PRODUCT_STOCK
values ('nb_macbook_air','留λ턿�뿉�뼱',1200000,'�븷�뵆 �슱�듃�씪遺�',0);

insert into PRODUCT_STOCK
values ('nb_macbook_pro','留λ턿�봽濡�',2200000,'�븷�뵆 �봽濡�',0);

insert into PRODUCT_STOCK
values ('pc_ibm','ibmPC',750000,'windows 8',10);

insert into PRODUCT_STOCK
values ('nb_gram','lg洹몃옩',1600000,'洹몃옩 7',20);
--==============================
--�긽�뭹 �엯異쒓퀬 �뀒�씠釉�
--==============================
create table PRODUCT_IO(
    IO_NO NUMBER,
    PRODUCT_ID VARCHAR2(30),
    IODATE DATE DEFAULT SYSDATE,
    AMOUNT NUMBER,
    STATUS CHAR(1) CHECK (STATUS IN ('I', 'O')),

    constraint pk_product_io_iono primary key(IO_NO),
    constraint fk_product_io_productio foreign key(PRODUCT_ID)
                                        REFERENCES product_stock(PRODUCT_ID)
);

select * from product_io;

create sequence seq_product_io_no;



--==============================
--�긽�뭹�젙蹂� �궘�젣 �듃由ш굅
--==============================
create or replace trigger trg_del_product
    before
    delete on PRODUCT_STOCK    --�긽�뭹�뀒�씠釉붿뿉�꽌 delete �떆
    for each row
begin
    delete from product_io where product_id = :old.product_id;
end;
/





--==============================
--�옱怨좏뀒�씠釉� �닔�웾 蹂�寃� �듃由ш굅
--==============================
create or replace trigger trg_product
    before
    insert on product_io    --�긽�뭹 �엯異쒓퀬 �뀒�씠釉붿뿉�꽌 insert �떆
    for each row
begin
    if :new.status = 'I' then
        update product_stock
        set stock = stock + :new.AMOUNT
        where product_id = :new.product_id;    
    else 
        update product_stock
        set stock = stock - :new.AMOUNT
        where product_id = :new.product_id;   
    end if;
    
    
end;
/
select * from product_io;

select * from product_stock;

insert into product_io
values(seq_product_io_no.nextval, 'nb_macbook_air',sysdate,10,'I');

delete from product_io where product_id ='nb_macbook_pro';

delete from product_stock where product_id ='nb_macbook_pro';
commit;
                                                                                                 
--珥� 19媛� �뀒�씠釉�
select * from tabs;
--梨뚮┛吏�
CREATE TABLE challenge (
	challenge_id	number		      NOT NULL,
	challenge_term_type	char(1)		  NOT NULL,
	challenge_level	number	      NOT NULL,
	challenge_name	varchar2(4000)	  NOT NULL,
	challenge_info	varchar2(4000)	  NOT NULL,
	challenge_point	number		      NOT NULL,
	challenge_term	number default 1  NOT NULL,
    
    constraint pk_challenge_id primary key(challenge_id),
    constraint ck_challenge_term_type check(challenge_term_type in ('S','L')),      -- challenge �븯猷�/湲곌컙 援щ텇(S/L)
    constraint ck_challenge_level check(challenge_level in (1,2,3))         -- challenge 媛뺣룄 援щ텇(1-�븯 / 2-以�/ 3-�긽)
);

--�쑀��
CREATE TABLE member (
	member_id varchar2(15)		NOT NULL,
	member_pw 	varchar2(300)		NOT NULL,
	member_name 	varchar2(50)		NOT NULL,
	member_nickname	varchar2(50)		NOT NULL,
	member_email	varchar2(100)		NULL,
	member_phone	char(11)		NOT NULL,
	member_team	char(1)	DEFAULT 'N'	NOT NULL,
	member_picture	varchar2(4000)	DEFAULT '湲곕낯 �씠誘몄�'	NOT NULL,
	member_role	char(1)	DEFAULT 'U'	NOT NULL,
	access_token	varchar2(4000)		NULL,

    constraint pk_member_id primary key(member_id),
    constraint ck_member_team check(member_team in ('N','Y')),      -- ���뿉 �냽�빐�엳吏� �븡�떎('N') / ���뿉 �냽�빐 �엳�떎('Y')
    constraint ck_member_role check(member_role in ('U','A'))         -- 'U' : �씪諛� �궗�슜�옄 / 'A' : 愿�由ъ옄
);

--�룷�씤�듃 (媛쒖씤)
CREATE TABLE personal_point (
	p_point_id	number		    NOT NULL,
	challenge_id	number,
	member_id	varchar2(15)		NOT NULL,
	point	number	DEFAULT 0	NOT NULL,
	point_date	date	DEFAULT sysdate	NOT NULL,
    
    constraint pk_personal_point_id primary key(p_point_id),
    constraint fk_personal_point_member_id foreign key(member_id) references member(member_id) on delete cascade,                       --�깉�눜�떆 �룷�씤�듃 �궘�젣
    constraint fk_personal_point_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null   --梨뚮┛吏� �궘�젣 �떆 洹몃�濡� �궓�븘 �엳�쓬
);

--諭껋�
CREATE TABLE badge (
	badge_id number         NOT NULL,
	challenge_id number,
	member_id	varchar2(15)    NOT NULL,
	badge_img_id	number	NOT NULL,
	badge_date date DEFAULT sysdate	NOT NULL,
    
    constraint pk_badge_id primary key(badge_id),
    constraint fk_badge_member_id foreign key(member_id) references member(member_id) on delete cascade,                     --�궗�슜�옄 �깉�눜�떆 媛숈씠 �궘�젣
    constraint fk_badge_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete  set null,       --梨뚮┛吏� �궘�젣�빐�룄 洹몃�濡� 議댁옱
    constraint fk_badge_badge_img_id foreign key(badge_img_id) references badge_image(badge_img_id) on delete cascade        --諭껋� �씠誘몄� �궘�젣 �떆 媛숈씠 �궘�젣
);
--諭껋� �씠誘몄� ���옣
CREATE TABLE badge_image (
	badge_img_id	number		NOT NULL,
	badge_name	varchar2(100)		NOT NULL,
	badge_img	varchar2(4000)		NOT NULL,       --badge �뙆�씪紐�
    
    constraint pk_badge_img_id primary key(badge_img_id)    
);


COMMENT ON COLUMN badge_image.badge_img IS '�씠誘몄� 寃쎈줈';

--寃뚯떆湲� (怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
CREATE TABLE article (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	a_type	varchar2(15)		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_aritlce_id primary key(a_id),
    constraint fk_member_id foreign key(member_id) references member(member_id) on delete set null          --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
);

--�씤利� 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_confirm (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	challenge_id	number,
	confirm_type	varchar2(10)		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_a_confirm_id primary key(a_id),
    constraint fk_a_confirm_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
    constraint fk_a_confirm__challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null  --梨뚮┛吏� �궘�젣�빐�룄 �� 議댁옱
);

--���썝 李얘린 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_search_team (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	challenge_id	number,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
	s_team_count	number	DEFAULT 4	NOT NULL,
    
    constraint pk_a_search_team_id primary key(a_id),
    constraint fk_a_search_team_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
    constraint fk_a_search_team_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null  --梨뚮┛吏� �궘�젣�빐�룄 �� 議댁옱
);

--�슦由� �� 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_team (
	team_a_id	number		NOT NULL,
	member_id	varchar2(15)		NOT NULL,
	a_id	number		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_a_team_id primary key(team_a_id),
    constraint fk_a_team_member_id foreign key(member_id) references member(member_id) on delete set null,                       --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱                   
    constraint fk_a_team_a_id foreign key(a_id) references a_search_team(a_id) on delete cascade --梨뚮┛吏� �궘�젣(梨뚮┛吏� �걹)�굹硫� 媛숈씠 �궘�젣
);

alter table a_team
modify(member_id null);

commit;

--��
CREATE TABLE team (
	team_id	number		    NOT NULL,
	member_id	varchar2(15)	NOT NULL,
	a_id	number		NOT NULL,
	team_start_day date DEFAULT sysdate	NOT NULL,
    
    constraint pk_team_id primary key(team_id),
    constraint fk_team_member_id foreign key(member_id) references member(member_id) on delete cascade,      --member �깉�눜 �떆 ���룄 媛숈씠 �깉�눜
    constraint fk_team_a_id foreign key(a_id) references a_search_team(a_id)  --李몄“ �떆 遺�紐�(���썝李얘린寃뚯떆湲�) �궘�젣 遺덇�
);

--�룷�씤�듃(��)
CREATE TABLE team_point (
	t_point_id	number		NOT NULL,
	member_id	varchar2(15)		NOT NULL,
	a_id	number		NOT NULL,
	point	number	DEFAULT 0	NOT NULL,
	point_date	date	DEFAULT sysdate	NOT NULL,
    
    constraint pk_team_point_id primary key(t_point_id),
    constraint fk_team_point_member_id foreign key(member_id) references member(member_id) on delete cascade,        --�쉶�썝�깉�눜�떆 媛숈씠 �궘�젣
    constraint fk_team_point_a_id foreign key(a_id) references a_search_team(a_id)   --李몄“ �떆 遺�紐�(���썝李얘린寃뚯떆湲�) �궘�젣 遺덇�
);

--泥⑤��뙆�씪(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
CREATE TABLE attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_attachment_id primary key(attachment_id),
    constraint fk_attachment_a_id foreign key(a_id) references article(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(�씤利�)
CREATE TABLE confirm_attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_confirm_attachment_id primary key(attachment_id),
    constraint fk_confirm_attachment_a_id foreign key(a_id) references a_confirm(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_confirm_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(���썝李얘린) ** ���썝李얘린 = s_
CREATE TABLE s_team_attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_s_team_attachment_id primary key(attachment_id),
    constraint fk_s_team_attachment_a_id foreign key(a_id) references a_search_team(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_s_team_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(�슦由ы� 寃뚯떆湲�) ** �슦由ы� = a_
CREATE TABLE a_team_attachment (
	attachment_id	number		NOT NULL,
	team_a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_a_team_attachment_id primary key(attachment_id),
    constraint fk_a_team_attachment_team_a_id foreign key(team_a_id) references a_team(team_a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_a_team_attachment_status check(attachment_status in ('Y','N'))
);

--�뙎湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
create table a_comment (
    comment_id number not null,
    member_id varchar2(15),
    a_id number not null,
    comment_content varchar2(2000) not null,
    comment_reg_date date default sysdate,
    comment_level number default 1 not null,
    comment_ref number,
    
    constraint pk_a_comment_id primary key(comment_id),
    constraint fk_a_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_a_comment_a_id foreign key(a_id) references article(a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_a_comment_comment_ref foreign key(comment_ref) references a_comment(comment_id) on delete set null        --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)
);

--�뙎湲�(�씤利�)
CREATE TABLE confirm_comment (
	comment_id	number		NOT NULL,
	member_id	varchar2(15),
	a_id	number		NOT NULL,
	comment_content	varchar2(2000)		NOT NULL,
	comment_reg_date	date	DEFAULT sysdate	NOT NULL,
	comment_level	number	DEFAULT 1	NOT NULL,
	comment_ref	number,
    
    constraint pk_confirm_comment_id primary key(comment_id),
    constraint fk_confirm_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                             --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_confirm_comment_a_id foreign key(a_id) references a_confirm(a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_confirm_comment_comment_ref foreign key(comment_ref) references confirm_comment(comment_id) on delete set null        --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)  
);

--�뙎湲�(�슦由ы�)
CREATE TABLE team_comment (
	comment_id	number		NOT NULL,
	team_a_id	number		NOT NULL,
	member_id	varchar2(15),
	comment_content	varchar2(2000)		NOT NULL,
	comment_reg_date	date	DEFAULT sysdate	NOT NULL,
	comment_level	number	DEFAULT 1	NOT NULL,
	comment_ref	number,
    
    constraint pk_comment_id primary key(comment_id),
    constraint fk_comment_team_a_id foreign key(team_a_id) references a_team(team_a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                                         --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_comment_comment_ref foreign key(comment_ref) references team_comment(comment_id) on delete set null                       --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)
);

--�� �떊泥��옄
CREATE TABLE request_team (
	request_id	number		NOT NULL,
	member_id	varchar2(15),
	a_id	number		NOT NULL,
    
    constraint pk_request_team_id primary key(request_id),
    constraint fk_request_team_member_id foreign key(member_id) references member(member_id) on delete set null,          --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_request_team_a_id foreign key(a_id) references a_search_team(a_id)      -- ���썝李얘린 寃뚯떆湲� �궘�젣 紐삵븿
);

--sequence
create sequence seq_team_id;
create sequence seq_a_comment_id;
create sequence seq_p_point_id;
create sequence seq_badge_id;
create sequence seq_badge_img_id;
create sequence seq_attachment_id;
create sequence seq_t_point_id;
create sequence seq_article_id;
create sequence seq_a_confirm_id;
create sequence seq_a_search_team_id;
create sequence seq_confirm_attachment_id;
create sequence seq_search_team_attachment_id;
create sequence seq_confirm_comment_id;
create sequence seq_team_comment_id;
create sequence seq_a_team_id;
create sequence seq_request_id;
create sequence seq_team_attachment_id;
create sequence seq_challenge_id;

--
select * from member; --�궗�슜�옄
select * from article; --寃뚯떆湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
select * from a_confirm; --�씤利� 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from a_search_team; --���썝 李얘린 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from a_team; --�슦由ы� 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from challenge; --梨뚮┛吏�

--�뀒�뒪�듃�슜 �쑀��
insert into member
values (
'honggd', '1234', '�솉湲몃룞', '湲몃룞', 'honggd@naver.com', '01011111111','Y', default, default, 'access_token_1234'
);

insert into member
values (
'qwerty', '1234', '荑좎뼱�떚', '�뼱�떚', 'qwerty@naver.com', '01022222222','N', default, default, 'access_token_2345'
);

insert into member
values (
'aaaaa', '1234', '�븘�븘�븘', '�븘�븘', 'aaaaa@naver.com', '01033333333','Y', default, default, 'access_token_3456'
);

insert into member
values (
'bbbbb', '1234', '鍮꾨퉬鍮�', '鍮꾨퉬', 'bbbbb@naver.com', '01034343434','N', default, default, 'access_token_4567'
);

insert into member
values (
'ccccc', '1234', '�뵪�뵪�뵪', '�뵪�뵪', 'ccccc@naver.com', '01045454545','Y', default, default, 'access_token_5678'
);

insert into member
values (
'ddddd', '1234', '�뵒�뵒�뵒', '�뵒�뵒', 'ddddd@naver.com', '01056565656','Y', default, default, NULL
);

insert into member
values (
'eeeee', '1234', '�씠�씠�씠', '�씠�씠', 'eeeee@naver.com', '01067676767','Y', default, default, NULL
);

insert into member
values (
'fffff', '1234', '�뿉�봽�봽', '�뿉�봽', 'fffff@naver.com', '01078787878','Y', default, default, 'access_token_6789'
);

insert into member
values (
'ggggg', '3456', '伊먯쪖伊�', '伊먯쪖', 'ggggg@naver.com', '01090909090','Y', default, default, 'access_token_0000'
);

insert into member
values (
'hhhhh', '3456', '�뿉�씠移�', '�뿉移�', 'hhhhh@naver.com', '01034561234','N', default, default, 'access_token_0666'
);

insert into member
values (
'iiiii', '3456', '�븘�씠�븘', '�븘�씠', 'iiiii@naver.com', '01011122221','N', default, default, 'access_token_7700'
);

insert into member
values (
'jjjjj', '3456', '�젣�씠�젣', '�젣�씠', 'jjjjj@naver.com', '01037373737','N', default, default, 'access_token_0880'
);

insert into member
values (
'kkkkk', '3456', '耳�耳�耳�', '耳�耳�', 'kkkkk@naver.com', '01023122312','N', default, default, 'access_token_4354'
);

insert into member
values (
'temp0', '3456', '�뀥�봽�쁺', '�뀥0', 'temp0@naver.com', '01012123434','N', default, default, NULL
);

insert into member
values (
'temp1', '3456', '�뀥�봽�씪', '�뀥1', 'temp1@naver.com', '01056567676','N', default, default, NULL
);
insert into member
values (
'admin1', '1234', '愿�由ъ옄1', '愿�由ъ옄2', 'admin1@naver.com', '01044444444',default, '愿�由ъ옄�씠誘몄�', 'A', NULL
);

insert into member
values (
'admin2', '1234', '愿�由ъ옄1', '愿�由ъ옄2', 'admin2@naver.com', '01055555555',default, '愿�由ъ옄�씠誘몄�', 'A', NULL
);

--�뀒�뒪�듃�슜 寃뚯떆湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
insert into article
values (
seq_article_id.nextval,'honggd','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 1','�븞�뀞�븯�꽭�슂 蹂몃Ц - 1', to_date('18/02/14','RR/MM/DD'), default, default
);
insert into article
values (
seq_article_id.nextval,'aaaaa','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 2','�븞�뀞�븯�꽭�슂 蹂몃Ц - 2',to_date('18/03/16','RR/MM/DD'), default, default
);
insert into article
values (
seq_article_id.nextval,'bbbbb','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 3','�븞�뀞�븯�꽭�슂 蹂몃Ц - 3',to_date('18/03/24','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'ccccc','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 4','�븞�뀞�븯�꽭�슂 蹂몃Ц - 4',to_date('18/04/14','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'aaaaa','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 5','�븞�뀞�븯�꽭�슂 蹂몃Ц - 5',to_date('18/04/24','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin1','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 1','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 1',to_date('18/05/08','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'ddddd','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 6','�븞�뀞�븯�꽭�슂 蹂몃Ц - 6',to_date('18/05/25','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 7','�븞�뀞�븯�꽭�슂 蹂몃Ц - 7',to_date('18/06/12','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 8','�븞�뀞�븯�꽭�슂 蹂몃Ц - 8',to_date('18/06/14','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 9','�븞�뀞�븯�꽭�슂 蹂몃Ц - 9',to_date('18/07/10','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin2','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 2','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 2',to_date('18/07/23','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 10','�븞�뀞�븯�꽭�슂 蹂몃Ц - 10',to_date('18/08/18','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 11','�븞�뀞�븯�꽭�슂 蹂몃Ц - 11',to_date('18/09/29','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin2','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 3','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 3',to_date('18/10/10','RR/MM/DD'),default, default
);

--�뀒�뒪�듃�슜 �씤利� 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_confirm
values (
seq_a_confirm_id.nextval,'ggggg',4,'�븯猷�','�뾽�궗�씠�겢留� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �뾽�궗�씠�겢留� �씤利앹엯�땲�떎',to_date('18/01/01','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'qwerty',15,'湲곌컙','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/02/05','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'eeeee',20,'��','�떎�쉶�슜 留덉뒪�겕 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �떎�쉶�슜 留덉뒪�겕 �씤利앹엯�땲�떎',to_date('18/03/22','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ddddd',17,'��','��釉붾윭 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 ��釉붾윭 �씤利앹엯�땲�떎',to_date('18/04/14','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'eeeee',3,'�븯猷�','怨꾨떒 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 怨꾨떒 �씤利앹엯�땲�떎',to_date('18/05/05','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'hhhhh',15,'湲곌컙','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/05/27','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'jjjjj',18,'湲곌컙','�옣諛붽뎄�땲 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �옣諛붽뎄�땲 �씤利앹엯�땲�떎',to_date('18/06/13','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ccccc',10,'�븯猷�','�벐�젅湲� 以띻린 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �벐�젅湲� 以띻린 �씤利앹엯�땲�떎',to_date('18/06/26','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ggggg',15,'��','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/07/02','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'fffff',24,'��','諛곕떖�쓬�떇 以꾩씠湲� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 諛곕떖�쓬�떇 以꾩씠湲� �씤利앹엯�땲�떎',to_date('18/07/17','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ccccc',12,'�븯猷�','�솚寃� 罹좏럹�씤 吏묓쉶 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 吏묓쉶 李몄뿬 �씤利앹엯�땲�떎',to_date('18/08/26','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'honggd',11,'�븯猷�','媛쒖씤 �슜湲� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 媛쒖씤 �슜湲� �씤利앹엯�땲�떎',to_date('18/08/30','RR/MM/DD'),default, default
);

--�뀒�뒪�듃�슜 ���썝 李얘린 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_search_team
values (
seq_a_search_team_id.nextval,'bbbbb',15,'遺꾨━�닔嫄� 媛숈씠 �븯�떎遺�?','遺꾨━�닔嫄� 媛숈씠�빐�슂~ �� �룷�븿 4紐낆씠�꽌 �빀�떆�떎~',to_date('18/01/01','RR/MM/DD'),default,default,default
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'hhhhh',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/02/02','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'iiiii',18,'�븳 �떖 �룞�븞 �옣諛붽뎄�땲 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/03/03','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',24,'�븳 �떖 �룞�븞 諛곕떖�쓬�떇 以꾩엯�떆�떎~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/03/13','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'kkkkk',21,'�븳 �떖 �룞�븞 �넀�닔嫄� �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/04/04','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'qwerty',20,'�븳 �떖 �룞�븞 �떎�쉶�슜留덉뒪�겕 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/05/05','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'temp0',22,'�븳 �떖 �룞�븞 �뿉�뼱而� �쟻�젙�삩�룄 �쑀吏��빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/06/06','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'temp1',15,'�븳 �떖 �룞�븞 遺꾨━�닔嫄� 媛숈씠�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/07/07','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'kkkkk',25,'�븳 �떖 �룞�븞 臾쇳떚�뒋 �뜙�궗�슜�빐�슂~','�� �룷�븿 9紐낆씠�꽌 �빀�떆�떎~',to_date('18/08/08','RR/MM/DD'),default,default,9
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',26,'�븳 �떖 �룞�븞 �빖�뱶�룿 �뜙 �궗�슜�빐�슂~','�� �룷�븿 4紐낆씠�꽌 �빀�떆�떎~',to_date('18/09/09','RR/MM/DD'),default,default,4
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'iiiii',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 5紐낆씠�꽌 �빀�떆�떎~',to_date('18/10/01','RR/MM/DD'),default,default,5
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'hhhhh',18,'�븳 �떖 �룞�븞 �옣諛붽뎄�땲 �궗�슜�빐�슂~','�� �룷�븿 6紐낆씠�꽌 �빀�떆�떎~',to_date('18/11/01','RR/MM/DD'),default,default,6
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'bbbbb',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 7紐낆씠�꽌 �빀�떆�떎~',to_date('18/12/01','RR/MM/DD'),default,default,7
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 8紐낆씠�꽌 �빀�떆�떎~',to_date('18/12/12','RR/MM/DD'),default,default,8
);

--�뀒�뒪�듃�슜 �슦由ы� 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_team
values (
seq_a_team_id.nextval,'ddddd',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂1?','遺꾨━�닔嫄�',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'honggd',2,'��釉붾윭 �궗�슜�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'aaaaa',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂2?','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ccccc',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂3?','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ddddd',2,'��釉붾윭 �궗�슜�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'eeeee',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂?4','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'fffff',2,'��釉붾윭 �궗�슜�씠�슂3','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ggggg',2,'��釉붾윭 �궗�슜�씠�슂4','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ccccc',1,'遺꾨━�닔嫄� 吏덈Ц�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'eeeee',1,'遺꾨━�닔嫄� 吏덈Ц�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'fffff',2,'��釉붾윭 吏덈Ц�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'honggd',2,'��釉붾윭 吏덈Ц�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

commit;
--梨뚮┛吏�
select * from challenge;

insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 異쒗눜洹쇱떆 �옄媛��슜 �씠�슜 �븞 �븯湲�', '�삤�뒛 �옄媛��슜 ���떊�뿉 ��以묎탳�넻/ 嫄룰린/ �옄�쟾嫄곕줈 異쒗눜洹� �븯怨� �씤利� �궗吏꾩쓣 �젣異쒗빐二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �솚寃� 蹂댄샇 愿��젴 SNS 肄섑뀗痢� 寃뚯떆', '�삤�뒛 SNS�뿉 �솚寃� 蹂댄샇 愿��젴 肄섑뀗痢좊�� 寃뚯떆�븳 �썑 寃뚯떆臾쇱쓣 罹≪퀜�빐二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 �뿕由щ쿋�씠�꽣 ���떊 怨꾨떒 �씠�슜�븯湲�', '�삤�뒛 �뿕由щ쿋�씠�꽣 ���떊 怨꾨떒 �씠�슜�븯怨� 怨꾨떒怨� �떊諛쒖씠 蹂댁씠�룄濡� �궗吏꾩쓣 李띿뼱 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�삤�뒛 �뾽�궗�씠�겢留곹븯湲�', '�삤�뒛 �뾽�궗�씠�겢�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 援щℓ�떆 �젣濡� �썾�씠�뒪�듃 留ㅼ옣�뿉�꽌 援щℓ�븯湲�', '�삤�뒛 �씪諛� 留ㅼ옣 ���떊 �젣濡� �썾�씠�뒪�듃 留ㅼ옣�뿉�꽌 援щℓ�븯怨� 援щℓ�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �넻吏��꽌, �븞�궡臾� �쟾�옄 臾몄꽌濡� �닔�떊 諛� �뿴�엺 �떊泥��븯湲�', '�삤�뒛 醫낆씠 �슦�렪臾쇱쓣 以꾩씠湲� �쐞�빐�꽌 �넻吏��꽌, �븞�궡臾� �쟾�옄 臾몄꽌濡� �닔�떊 諛� �뿴�엺 �떊泥��븯怨� �떊泥��븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 媛��쟾�젣�뭹 諛� �쟾湲곗슜�뭹 誘� �궗�슜�떆 肄붾뱶 鍮쇨린', '�삤�뒛 媛��쟾�젣�뭹 諛� �쟾湲� �슜�뭹 誘� �궗�슜�떆 肄붾뱶瑜� 鍮쇨퀬 �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.',100 ,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �쓬�떇 �궓湲곗� �븡怨� �떎 癒밴린', '�삤�뒛 �쓬�떇�쓣 �궓湲곗� �븡怨� �떎 癒밴퀬 �떎 癒뱀� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 二쇰Ц�떆 移쒗솚寃� �룷�옣�옱 �궗�슜�븯�뒗 怨녹뿉�꽌 二쇰Ц�븯湲�', '�삤�뒛 移쒗솚寃� �룷�옣�옱 �궗�슜�븯�뒗 怨녹뿉�꽌 二쇰Ц�븳 �뮘 �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�삤�뒛 湲멸굅由� �벐�젅湲� 以띻린', '�삤�뒛 湲멸굅由ъ뿉 �엳�뒗 �벐�젅湲곕�� 以띻퀬 二쇱슫 �벐�젅湲� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 �룷�옣�떆 媛쒖씤�슜湲� �궗�슜�븯湲�', '�삤�뒛 �쓬�떇�쓣 �룷�옣�븷 �븣 媛쒖씤�슜湲곗뿉 �룷�옣�븯怨� �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�솚寃� 罹좏럹�씤 吏묓쉶 李몄뿬', '�삤�뒛 �솚寃� 罹좏럹�씤 吏묓쉶�뿉 李몄뿬�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 硫붿씪�븿 鍮꾩슦湲�', '�삤�뒛 硫붿씪�븿�쓣 鍮꾩슫 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);

--湲곌컙 梨뚮┛吏�
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �씪�쉶�슜�뭹 �궗�슜 理쒖냼�븳�쑝濡� �븯湲�',
'�븳 �떖 �룞�븞 利됱꽍諛� ���떊 諛μ넡�쑝濡� 吏곸젒 諛μ쓣 �빐癒밴굅�굹, �깮�닔 二쇰Ц �떆 鍮� 蹂묒쓣 �쉶�닔�븯�뒗 �깮�닔濡� 二쇰Ц�븯�뒗 �벑 �씪�쉶�슜�뭹�쓣 理쒖냼�븳�쑝濡� �궗�슜�빐 二쇱꽭�슂.', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 遺꾨━�닔嫄� �젣��濡� �븯湲�',
'�븳 �떖 �룞�븞 瑗쇨세�븯寃� 遺꾨━�닔嫄곕�� �빐二쇱꽭�슂. (�씤利� �궗吏� �삁 : 遺꾨━�닔嫄� �븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 3, '移쒗솚寃� �꽭�젣 留뚮뱾�뼱�꽌 �븳 �떖 �뜥蹂닿린', 
'吏곸젒 移쒗솚寃� �꽭�젣瑜� 留뚮뱾怨� 留뚮뱺 �꽭�젣瑜� �븳 �떖 �룞�븞 �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �꽭�젣 留뚮뱶�뒗 �궗吏�, �꽭�젣 �궗�슜 �궗吏�)',700,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 ��釉붾윭 梨숆린怨� �깮�솢�븯湲�',
'�븳 �떖 �룞�븞 �쇅異쒗븷 �븣 ��釉붾윭瑜� 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : ��釉붾윭 �궗�슜�븯�뒗 �궗吏�)',700 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �옣諛붽뎄�땲 梨숆린怨� �깮�솢�븯湲�',
'�븳 �떖 �룞�븞 �쇅異쒗븷 �븣 �옣諛붽뎄�땲瑜� 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �옣諛붽뎄�땲 �궗�슜�븯�뒗 �궗吏�)',500 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �꺎�뫖 ���떊 �꺎�뫖諛� �궗�슜�븯湲�',
'�븳 �떖 �룞�븞 �꺎�뫖 ���떊 �꺎�뫖諛붾�� �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �꺎�뫖諛� �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �떎�쉶�슜 留덉뒪�겕 李⑹슜�븯湲�',
'�븳 �떖 �룞�븞 �씪�쉶�슜 留덉뒪�겕 ���떊 �떎�쉶�슜 留덉뒪�겕瑜� �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �떎�쉶�슜 留덉뒪�겕 �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �쑕吏� ���떊 �넀�닔嫄� �뱾怨� �떎�땲湲�',
'�븳 �떖 �룞�븞 �쑕吏� ���떊 �넀�닔嫄댁쓣 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �넀�닔嫄� �궗�슜�븯�뒗 �궗吏�)', 700,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �뿉�뼱而� �궗�슜�떆 �쟻�젙�삩�룄(26�룄) �쑀吏��븯湲�',
'�븳 �떖 �룞�븞 �뿉�뼱而� �궗�슜 �떆 �쟻�젙�삩�룄(26�룄)濡� �쑀吏��빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �뿉�뼱而� 26�룄濡� 留욎떠吏� �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �궙 �떆媛꾩뿉�뒗 議곕챸 ���떊 �옄�뿰愿� �씠�슜�븯湲�',
'�븳 �떖 �룞�븞 �궙 �떆媛꾩뿉�뒗 議곕챸�쓣 �벐�뒗 ���떊 �옄�뿰愿묒쓣 �씠�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : 議곕챸�쓣 �궎吏� �븡怨� �옄�뿰愿� �씠�슜�븯�뒗 �궗吏�)',600 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 3, '�븳 �떖 �룞�븞 諛곕떖�쓬�떇 以꾩씠湲�',
'�븳 �떖 �룞�븞 諛곕떖�쓬�떇�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : 吏� 諛� 癒밸뒗 �궗吏�)',700 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 臾쇳떚�뒋 �궗�슜 以꾩씠湲�',
'�븳 �떖 �룞�븞 臾쇳떚�뒋 �궗�슜�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : 嫄몃젅�굹 �뻾二� �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �빖�뱶�룿 �뜙 �븯湲�', 
'�븳 �떖 �룞�븞 �빖�뱶�룿 �궗�슜�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : �쑕���룿 �씠�슜 �떆媛� �삱由ш린)', 500,30
);



insert into badge_image values (seq_badge_img_id.nextval, 'Lm1_�씪�쉶�슜以꾩씠湲�' , 'Lm1_�씪�쉶�슜以꾩씠湲�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm2_遺꾨━�닔嫄곗쿇�옱' , 'Lm2_遺꾨━�닔嫄곗쿇�옱.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm3_移쒗솚寃쎌꽭�젣�떖�씤' , 'Lm3_移쒗솚寃쎌꽭�젣�떖�씤.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm4_��釉붾윭' , 'Lm4_��釉붾윭.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm5_�옣諛붽뎄�땲' , 'Lm5_�옣諛붽뎄�땲.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm6_�꺎�뫖諛붿궗�슜�븯湲�' , 'Lm6_�꺎�뫖諛붿궗�슜�븯湲�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm7_�떎�쉶�슜留덉뒪�겕' , 'Lm7_�떎�쉶�슜留덉뒪�겕.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm8_�슦�븘�븯寃뚯넀�닔嫄�' , 'Lm8_�슦�븘�븯寃뚯넀�닔嫄�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm9_�삤議댁링吏��궡�씠' , 'Lm9_�삤議댁링吏��궡�씠.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm10_�옄�뿰愿묒궗�옉�빐!' , 'Lm10_�옄�뿰愿묒궗�옉�빐!.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm11_�솚寃쎌쓽誘쇱”' , 'Lm11_�솚寃쎌쓽誘쇱”.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm12_�뻾二�' , 'Lm12_�뻾二�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm13_�빖�뱶�룿' , 'Lm13_�빖�뱶�룿.png');

rollback;

commit;

select * from badge_image;

insert into badge_image values (seq_badge_img_id.nextval, 'Rm1_媛쒖씤1�쐞' , 'Rm1_媛쒖씤1�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm2_媛쒖씤2�쐞' , 'Rm2_媛쒖씤2�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm3_媛쒖씤3�쐞' , 'Rm3_媛쒖씤3�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm4_媛쒖씤4�쐞' , 'Rm4_媛쒖씤4�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm5_媛쒖씤5�쐞' , 'Rm5_媛쒖씤5�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm1_��1�쐞' , 'Tm1_��1�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm2_��2�쐞' , 'Tm2_��2�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm3_��3�쐞' , 'Tm3_��3�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm4_��4�쐞' , 'Tm4_��4�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm5_��5�쐞' , 'Tm5_��5�쐞.png');



commit;

select * from challenge;
select * from badge_image;



commit;
select *from challenge;
select * from badge_image;

ALTER TABLE challenge ADD(badge_img_id number);
ALTER TABLE challenge
ADD CONSTRAINT fk_badge_img_id  foreign key(badge_img_id) references badge_image(badge_img_id);

foreign key(member_id) references member(member_id
update challenge set badge_img_id =64 where challenge_id=14;

commit;


select *from challenge;
select * from badge;
select * from badge_image;
select * from member;
select * from challenge_join;
update member set member_pw='1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==' where member_id='qwerty';
commit;

--challenge_join
insert into challenge_join values ('honggd', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('honggd', 17, to_date('21/01/23'), trunc(to_date('21/01/23')+30));
insert into challenge_join values ('honggd', 21, to_date('21/02/16'), trunc(to_date('21/01/23')+30));
update challenge_join set confirm_date=to_date('21/02/16') where confirm_date=to_date('22/02/16');
commit;
update challenge_join set end_date=trunc(to_date('21/02/16')+30) where confirm_date=to_date('21/02/16');



insert into challenge_join values ('qwerty', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('qwerty', 17, to_date('21/02/03'), trunc(to_date('21/02/03')+30));
insert into challenge_join values ('qwerty', 21, to_date('21/01/16'), trunc(to_date('21/01/16')+30));
commit;

-- 諭껋� �씠誘몄� insert(challenge_join怨� �뿰寃�)
insert into badge values (seq_badge_id.nextval, 14, 'honggd', 64, sysdate);
insert into badge values (seq_badge_id.nextval, 17, 'honggd', 67, sysdate);
insert into badge values (seq_badge_id.nextval, 21, 'honggd', 71, sysdate);
insert into badge values (seq_badge_id.nextval, 22, 'honggd', 72, sysdate);
insert into challenge_join values ('honggd', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('honggd', 17, to_date('21/01/23'), trunc(to_date('21/01/23')+30));
insert into challenge_join values ('honggd', 21, to_date('21/02/16'), trunc(to_date('21/01/23')+30));
delete from challenge_join where member_id ='honggd' and challenge_id=22;
update challenge_join set confirm_date=to_date('21/02/16') where confirm_date=to_date('22/02/16');


commit;
select *from badge;
select * from challenge_join;
update badge set badge_date=trunc(to_date('21/02/16')+30) where badge_id=45;

insert into badge values (seq_badge_id.nextval, 14, 'qwerty', 64, sysdate+30);
insert into badge values (seq_badge_id.nextval, 17, 'qwerty', 67,  trunc(to_date('21/02/03')+30));
insert into badge values (seq_badge_id.nextval, 21, 'qwerty', 71, trunc(to_date('21/01/16')+30));

commit;


--�빐�떦�떖, �빐�떦 硫ㅻ쾭�쓽 諭껋� �젙蹂�
select * from badge where badge_date between (trunc(to_date('2021-05-24','yy/MM/dd'),'MM')) and (last_day(to_date('2021-05-24','yy/MM/dd'))) and member_id= 'qwerty';
select * from badge_image where badge_img_id in(select badge_img_id from badge where badge_date between trunc(to_date( '2021-02-01' ,'yy/MM/dd'),'MM') and last_day(to_date('2021-02-01','yy/MM/dd')) and member_id= 'honggd');



select * from badge;

select * from badge_image;
select * from badge_image where badge_img_id in (select badge_img_id from badge where badge_date between trunc(to_date('2021-02-01' ,'yy/MM/dd'),'MM') and (last_day(to_date('2021-02-01','yy/MM/dd'))) and member_id= 'qwerty');



commit; values (seq_badge_img_i
select d.department_name "계열 학과명"
    , round(avg(g.point),1) 전공평점
from tb_student s 
    join tb_grade g
        on s.student_no = g.student_no
    join tb_department d
        on s.department_no = d.department_no

group by s.department_no, d.department_name
order by "계열 학과명";
select g.student_no 학번, avg(point) 평점
from tb_grade g join tb_student s
    on g.student_no = s.student_no
where s.absence_yn ='N'
group by g.student_no having avg(point) > 4;
--珥� 19媛� �뀒�씠釉�
select * from tabs;
--梨뚮┛吏�
CREATE TABLE challenge (
	challenge_id	number		      NOT NULL,
	challenge_term_type	char(1)		  NOT NULL,
	challenge_level	number	      NOT NULL,
	challenge_name	varchar2(4000)	  NOT NULL,
	challenge_info	varchar2(4000)	  NOT NULL,
	challenge_point	number		      NOT NULL,
	challenge_term	number default 1  NOT NULL,
    
    constraint pk_challenge_id primary key(challenge_id),
    constraint ck_challenge_term_type check(challenge_term_type in ('S','L')),      -- challenge �븯猷�/湲곌컙 援щ텇(S/L)
    constraint ck_challenge_level check(challenge_level in (1,2,3))         -- challenge 媛뺣룄 援щ텇(1-�븯 / 2-以�/ 3-�긽)
);

--�쑀��
CREATE TABLE member (
	member_id varchar2(15)		NOT NULL,
	member_pw 	varchar2(300)		NOT NULL,
	member_name 	varchar2(50)		NOT NULL,
	member_nickname	varchar2(50)		NOT NULL,
	member_email	varchar2(100)		NULL,
	member_phone	char(11)		NOT NULL,
	member_team	char(1)	DEFAULT 'N'	NOT NULL,
	member_picture	varchar2(4000)	DEFAULT '湲곕낯 �씠誘몄�'	NOT NULL,
	member_role	char(1)	DEFAULT 'U'	NOT NULL,
	access_token	varchar2(4000)		NULL,

    constraint pk_member_id primary key(member_id),
    constraint ck_member_team check(member_team in ('N','Y')),      -- ���뿉 �냽�빐�엳吏� �븡�떎('N') / ���뿉 �냽�빐 �엳�떎('Y')
    constraint ck_member_role check(member_role in ('U','A'))         -- 'U' : �씪諛� �궗�슜�옄 / 'A' : 愿�由ъ옄
);

--�룷�씤�듃 (媛쒖씤)
CREATE TABLE personal_point (
	p_point_id	number		    NOT NULL,
	challenge_id	number,
	member_id	varchar2(15)		NOT NULL,
	point	number	DEFAULT 0	NOT NULL,
	point_date	date	DEFAULT sysdate	NOT NULL,
    
    constraint pk_personal_point_id primary key(p_point_id),
    constraint fk_personal_point_member_id foreign key(member_id) references member(member_id) on delete cascade,                       --�깉�눜�떆 �룷�씤�듃 �궘�젣
    constraint fk_personal_point_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null   --梨뚮┛吏� �궘�젣 �떆 洹몃�濡� �궓�븘 �엳�쓬
);

--諭껋�
CREATE TABLE badge (
	badge_id number         NOT NULL,
	challenge_id number,
	member_id	varchar2(15)    NOT NULL,
	badge_img_id	number	NOT NULL,
	badge_date date DEFAULT sysdate	NOT NULL,
    
    constraint pk_badge_id primary key(badge_id),
    constraint fk_badge_member_id foreign key(member_id) references member(member_id) on delete cascade,                     --�궗�슜�옄 �깉�눜�떆 媛숈씠 �궘�젣
    constraint fk_badge_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete  set null,       --梨뚮┛吏� �궘�젣�빐�룄 洹몃�濡� 議댁옱
    constraint fk_badge_badge_img_id foreign key(badge_img_id) references badge_image(badge_img_id) on delete cascade        --諭껋� �씠誘몄� �궘�젣 �떆 媛숈씠 �궘�젣
);
--諭껋� �씠誘몄� ���옣
CREATE TABLE badge_image (
	badge_img_id	number		NOT NULL,
	badge_name	varchar2(100)		NOT NULL,
	badge_img	varchar2(4000)		NOT NULL,       --badge �뙆�씪紐�
    
    constraint pk_badge_img_id primary key(badge_img_id)    
);


COMMENT ON COLUMN badge_image.badge_img IS '�씠誘몄� 寃쎈줈';

--寃뚯떆湲� (怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
CREATE TABLE article (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	a_type	varchar2(15)		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_aritlce_id primary key(a_id),
    constraint fk_member_id foreign key(member_id) references member(member_id) on delete set null          --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
);

--�씤利� 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_confirm (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	challenge_id	number,
	confirm_type	varchar2(10)		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_a_confirm_id primary key(a_id),
    constraint fk_a_confirm_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
    constraint fk_a_confirm__challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null  --梨뚮┛吏� �궘�젣�빐�룄 �� 議댁옱
);

--���썝 李얘린 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_search_team (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	challenge_id	number,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
	s_team_count	number	DEFAULT 4	NOT NULL,
    
    constraint pk_a_search_team_id primary key(a_id),
    constraint fk_a_search_team_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
    constraint fk_a_search_team_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null  --梨뚮┛吏� �궘�젣�빐�룄 �� 議댁옱
);

--�슦由� �� 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_team (
	team_a_id	number		NOT NULL,
	member_id	varchar2(15)		NOT NULL,
	a_id	number		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_a_team_id primary key(team_a_id),
    constraint fk_a_team_member_id foreign key(member_id) references member(member_id) on delete set null,                       --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱                   
    constraint fk_a_team_a_id foreign key(a_id) references a_search_team(a_id) on delete cascade --梨뚮┛吏� �궘�젣(梨뚮┛吏� �걹)�굹硫� 媛숈씠 �궘�젣
);

alter table a_team
modify(member_id null);

commit;

--��
CREATE TABLE team (
	team_id	number		    NOT NULL,
	member_id	varchar2(15)	NOT NULL,
	a_id	number		NOT NULL,
	team_start_day date DEFAULT sysdate	NOT NULL,
    
    constraint pk_team_id primary key(team_id),
    constraint fk_team_member_id foreign key(member_id) references member(member_id) on delete cascade,      --member �깉�눜 �떆 ���룄 媛숈씠 �깉�눜
    constraint fk_team_a_id foreign key(a_id) references a_search_team(a_id)  --李몄“ �떆 遺�紐�(���썝李얘린寃뚯떆湲�) �궘�젣 遺덇�
);

--�룷�씤�듃(��)
CREATE TABLE team_point (
	t_point_id	number		NOT NULL,
	member_id	varchar2(15)		NOT NULL,
	a_id	number		NOT NULL,
	point	number	DEFAULT 0	NOT NULL,
	point_date	date	DEFAULT sysdate	NOT NULL,
    
    constraint pk_team_point_id primary key(t_point_id),
    constraint fk_team_point_member_id foreign key(member_id) references member(member_id) on delete cascade,        --�쉶�썝�깉�눜�떆 媛숈씠 �궘�젣
    constraint fk_team_point_a_id foreign key(a_id) references a_search_team(a_id)   --李몄“ �떆 遺�紐�(���썝李얘린寃뚯떆湲�) �궘�젣 遺덇�
);

--泥⑤��뙆�씪(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
CREATE TABLE attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_attachment_id primary key(attachment_id),
    constraint fk_attachment_a_id foreign key(a_id) references article(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(�씤利�)
CREATE TABLE confirm_attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_confirm_attachment_id primary key(attachment_id),
    constraint fk_confirm_attachment_a_id foreign key(a_id) references a_confirm(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_confirm_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(���썝李얘린) ** ���썝李얘린 = s_
CREATE TABLE s_team_attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_s_team_attachment_id primary key(attachment_id),
    constraint fk_s_team_attachment_a_id foreign key(a_id) references a_search_team(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_s_team_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(�슦由ы� 寃뚯떆湲�) ** �슦由ы� = a_
CREATE TABLE a_team_attachment (
	attachment_id	number		NOT NULL,
	team_a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_a_team_attachment_id primary key(attachment_id),
    constraint fk_a_team_attachment_team_a_id foreign key(team_a_id) references a_team(team_a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_a_team_attachment_status check(attachment_status in ('Y','N'))
);

--�뙎湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
create table a_comment (
    comment_id number not null,
    member_id varchar2(15),
    a_id number not null,
    comment_content varchar2(2000) not null,
    comment_reg_date date default sysdate,
    comment_level number default 1 not null,
    comment_ref number,
    
    constraint pk_a_comment_id primary key(comment_id),
    constraint fk_a_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_a_comment_a_id foreign key(a_id) references article(a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_a_comment_comment_ref foreign key(comment_ref) references a_comment(comment_id) on delete set null        --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)
);

--�뙎湲�(�씤利�)
CREATE TABLE confirm_comment (
	comment_id	number		NOT NULL,
	member_id	varchar2(15),
	a_id	number		NOT NULL,
	comment_content	varchar2(2000)		NOT NULL,
	comment_reg_date	date	DEFAULT sysdate	NOT NULL,
	comment_level	number	DEFAULT 1	NOT NULL,
	comment_ref	number,
    
    constraint pk_confirm_comment_id primary key(comment_id),
    constraint fk_confirm_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                             --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_confirm_comment_a_id foreign key(a_id) references a_confirm(a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_confirm_comment_comment_ref foreign key(comment_ref) references confirm_comment(comment_id) on delete set null        --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)  
);

--�뙎湲�(�슦由ы�)
CREATE TABLE team_comment (
	comment_id	number		NOT NULL,
	team_a_id	number		NOT NULL,
	member_id	varchar2(15),
	comment_content	varchar2(2000)		NOT NULL,
	comment_reg_date	date	DEFAULT sysdate	NOT NULL,
	comment_level	number	DEFAULT 1	NOT NULL,
	comment_ref	number,
    
    constraint pk_comment_id primary key(comment_id),
    constraint fk_comment_team_a_id foreign key(team_a_id) references a_team(team_a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                                         --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_comment_comment_ref foreign key(comment_ref) references team_comment(comment_id) on delete set null                       --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)
);

--�� �떊泥��옄
CREATE TABLE request_team (
	request_id	number		NOT NULL,
	member_id	varchar2(15),
	a_id	number		NOT NULL,
    
    constraint pk_request_team_id primary key(request_id),
    constraint fk_request_team_member_id foreign key(member_id) references member(member_id) on delete set null,          --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_request_team_a_id foreign key(a_id) references a_search_team(a_id)      -- ���썝李얘린 寃뚯떆湲� �궘�젣 紐삵븿
);

--sequence
create sequence seq_team_id;
create sequence seq_a_comment_id;
create sequence seq_p_point_id;
create sequence seq_badge_id;
create sequence seq_badge_img_id;
create sequence seq_attachment_id;
create sequence seq_t_point_id;
create sequence seq_article_id;
create sequence seq_a_confirm_id;
create sequence seq_a_search_team_id;
create sequence seq_confirm_attachment_id;
create sequence seq_search_team_attachment_id;
create sequence seq_confirm_comment_id;
create sequence seq_team_comment_id;
create sequence seq_a_team_id;
create sequence seq_request_id;
create sequence seq_team_attachment_id;
create sequence seq_challenge_id;

--
select * from member; --�궗�슜�옄
select * from article; --寃뚯떆湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
select * from a_confirm; --�씤利� 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from a_search_team; --���썝 李얘린 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from a_team; --�슦由ы� 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from challenge; --梨뚮┛吏�

--�뀒�뒪�듃�슜 �쑀��
insert into member
values (
'honggd', '1234', '�솉湲몃룞', '湲몃룞', 'honggd@naver.com', '01011111111','Y', default, default, 'access_token_1234'
);

insert into member
values (
'qwerty', '1234', '荑좎뼱�떚', '�뼱�떚', 'qwerty@naver.com', '01022222222','N', default, default, 'access_token_2345'
);

insert into member
values (
'aaaaa', '1234', '�븘�븘�븘', '�븘�븘', 'aaaaa@naver.com', '01033333333','Y', default, default, 'access_token_3456'
);

insert into member
values (
'bbbbb', '1234', '鍮꾨퉬鍮�', '鍮꾨퉬', 'bbbbb@naver.com', '01034343434','N', default, default, 'access_token_4567'
);

insert into member
values (
'ccccc', '1234', '�뵪�뵪�뵪', '�뵪�뵪', 'ccccc@naver.com', '01045454545','Y', default, default, 'access_token_5678'
);

insert into member
values (
'ddddd', '1234', '�뵒�뵒�뵒', '�뵒�뵒', 'ddddd@naver.com', '01056565656','Y', default, default, NULL
);

insert into member
values (
'eeeee', '1234', '�씠�씠�씠', '�씠�씠', 'eeeee@naver.com', '01067676767','Y', default, default, NULL
);

insert into member
values (
'fffff', '1234', '�뿉�봽�봽', '�뿉�봽', 'fffff@naver.com', '01078787878','Y', default, default, 'access_token_6789'
);

insert into member
values (
'ggggg', '3456', '伊먯쪖伊�', '伊먯쪖', 'ggggg@naver.com', '01090909090','Y', default, default, 'access_token_0000'
);

insert into member
values (
'hhhhh', '3456', '�뿉�씠移�', '�뿉移�', 'hhhhh@naver.com', '01034561234','N', default, default, 'access_token_0666'
);

insert into member
values (
'iiiii', '3456', '�븘�씠�븘', '�븘�씠', 'iiiii@naver.com', '01011122221','N', default, default, 'access_token_7700'
);

insert into member
values (
'jjjjj', '3456', '�젣�씠�젣', '�젣�씠', 'jjjjj@naver.com', '01037373737','N', default, default, 'access_token_0880'
);

insert into member
values (
'kkkkk', '3456', '耳�耳�耳�', '耳�耳�', 'kkkkk@naver.com', '01023122312','N', default, default, 'access_token_4354'
);

insert into member
values (
'temp0', '3456', '�뀥�봽�쁺', '�뀥0', 'temp0@naver.com', '01012123434','N', default, default, NULL
);

insert into member
values (
'temp1', '3456', '�뀥�봽�씪', '�뀥1', 'temp1@naver.com', '01056567676','N', default, default, NULL
);
insert into member
values (
'admin1', '1234', '愿�由ъ옄1', '愿�由ъ옄2', 'admin1@naver.com', '01044444444',default, '愿�由ъ옄�씠誘몄�', 'A', NULL
);

insert into member
values (
'admin2', '1234', '愿�由ъ옄1', '愿�由ъ옄2', 'admin2@naver.com', '01055555555',default, '愿�由ъ옄�씠誘몄�', 'A', NULL
);

--�뀒�뒪�듃�슜 寃뚯떆湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
insert into article
values (
seq_article_id.nextval,'honggd','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 1','�븞�뀞�븯�꽭�슂 蹂몃Ц - 1', to_date('18/02/14','RR/MM/DD'), default, default
);
insert into article
values (
seq_article_id.nextval,'aaaaa','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 2','�븞�뀞�븯�꽭�슂 蹂몃Ц - 2',to_date('18/03/16','RR/MM/DD'), default, default
);
insert into article
values (
seq_article_id.nextval,'bbbbb','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 3','�븞�뀞�븯�꽭�슂 蹂몃Ц - 3',to_date('18/03/24','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'ccccc','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 4','�븞�뀞�븯�꽭�슂 蹂몃Ц - 4',to_date('18/04/14','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'aaaaa','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 5','�븞�뀞�븯�꽭�슂 蹂몃Ц - 5',to_date('18/04/24','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin1','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 1','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 1',to_date('18/05/08','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'ddddd','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 6','�븞�뀞�븯�꽭�슂 蹂몃Ц - 6',to_date('18/05/25','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 7','�븞�뀞�븯�꽭�슂 蹂몃Ц - 7',to_date('18/06/12','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 8','�븞�뀞�븯�꽭�슂 蹂몃Ц - 8',to_date('18/06/14','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 9','�븞�뀞�븯�꽭�슂 蹂몃Ц - 9',to_date('18/07/10','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin2','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 2','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 2',to_date('18/07/23','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 10','�븞�뀞�븯�꽭�슂 蹂몃Ц - 10',to_date('18/08/18','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 11','�븞�뀞�븯�꽭�슂 蹂몃Ц - 11',to_date('18/09/29','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin2','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 3','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 3',to_date('18/10/10','RR/MM/DD'),default, default
);

--�뀒�뒪�듃�슜 �씤利� 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_confirm
values (
seq_a_confirm_id.nextval,'ggggg',4,'�븯猷�','�뾽�궗�씠�겢留� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �뾽�궗�씠�겢留� �씤利앹엯�땲�떎',to_date('18/01/01','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'qwerty',15,'湲곌컙','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/02/05','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'eeeee',20,'��','�떎�쉶�슜 留덉뒪�겕 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �떎�쉶�슜 留덉뒪�겕 �씤利앹엯�땲�떎',to_date('18/03/22','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ddddd',17,'��','��釉붾윭 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 ��釉붾윭 �씤利앹엯�땲�떎',to_date('18/04/14','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'eeeee',3,'�븯猷�','怨꾨떒 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 怨꾨떒 �씤利앹엯�땲�떎',to_date('18/05/05','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'hhhhh',15,'湲곌컙','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/05/27','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'jjjjj',18,'湲곌컙','�옣諛붽뎄�땲 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �옣諛붽뎄�땲 �씤利앹엯�땲�떎',to_date('18/06/13','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ccccc',10,'�븯猷�','�벐�젅湲� 以띻린 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �벐�젅湲� 以띻린 �씤利앹엯�땲�떎',to_date('18/06/26','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ggggg',15,'��','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/07/02','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'fffff',24,'��','諛곕떖�쓬�떇 以꾩씠湲� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 諛곕떖�쓬�떇 以꾩씠湲� �씤利앹엯�땲�떎',to_date('18/07/17','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ccccc',12,'�븯猷�','�솚寃� 罹좏럹�씤 吏묓쉶 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 吏묓쉶 李몄뿬 �씤利앹엯�땲�떎',to_date('18/08/26','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'honggd',11,'�븯猷�','媛쒖씤 �슜湲� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 媛쒖씤 �슜湲� �씤利앹엯�땲�떎',to_date('18/08/30','RR/MM/DD'),default, default
);

--�뀒�뒪�듃�슜 ���썝 李얘린 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_search_team
values (
seq_a_search_team_id.nextval,'bbbbb',15,'遺꾨━�닔嫄� 媛숈씠 �븯�떎遺�?','遺꾨━�닔嫄� 媛숈씠�빐�슂~ �� �룷�븿 4紐낆씠�꽌 �빀�떆�떎~',to_date('18/01/01','RR/MM/DD'),default,default,default
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'hhhhh',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/02/02','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'iiiii',18,'�븳 �떖 �룞�븞 �옣諛붽뎄�땲 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/03/03','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',24,'�븳 �떖 �룞�븞 諛곕떖�쓬�떇 以꾩엯�떆�떎~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/03/13','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'kkkkk',21,'�븳 �떖 �룞�븞 �넀�닔嫄� �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/04/04','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'qwerty',20,'�븳 �떖 �룞�븞 �떎�쉶�슜留덉뒪�겕 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/05/05','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'temp0',22,'�븳 �떖 �룞�븞 �뿉�뼱而� �쟻�젙�삩�룄 �쑀吏��빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/06/06','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'temp1',15,'�븳 �떖 �룞�븞 遺꾨━�닔嫄� 媛숈씠�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/07/07','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'kkkkk',25,'�븳 �떖 �룞�븞 臾쇳떚�뒋 �뜙�궗�슜�빐�슂~','�� �룷�븿 9紐낆씠�꽌 �빀�떆�떎~',to_date('18/08/08','RR/MM/DD'),default,default,9
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',26,'�븳 �떖 �룞�븞 �빖�뱶�룿 �뜙 �궗�슜�빐�슂~','�� �룷�븿 4紐낆씠�꽌 �빀�떆�떎~',to_date('18/09/09','RR/MM/DD'),default,default,4
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'iiiii',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 5紐낆씠�꽌 �빀�떆�떎~',to_date('18/10/01','RR/MM/DD'),default,default,5
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'hhhhh',18,'�븳 �떖 �룞�븞 �옣諛붽뎄�땲 �궗�슜�빐�슂~','�� �룷�븿 6紐낆씠�꽌 �빀�떆�떎~',to_date('18/11/01','RR/MM/DD'),default,default,6
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'bbbbb',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 7紐낆씠�꽌 �빀�떆�떎~',to_date('18/12/01','RR/MM/DD'),default,default,7
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 8紐낆씠�꽌 �빀�떆�떎~',to_date('18/12/12','RR/MM/DD'),default,default,8
);

--�뀒�뒪�듃�슜 �슦由ы� 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_team
values (
seq_a_team_id.nextval,'ddddd',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂1?','遺꾨━�닔嫄�',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'honggd',2,'��釉붾윭 �궗�슜�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'aaaaa',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂2?','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ccccc',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂3?','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ddddd',2,'��釉붾윭 �궗�슜�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'eeeee',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂?4','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'fffff',2,'��釉붾윭 �궗�슜�씠�슂3','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ggggg',2,'��釉붾윭 �궗�슜�씠�슂4','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ccccc',1,'遺꾨━�닔嫄� 吏덈Ц�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'eeeee',1,'遺꾨━�닔嫄� 吏덈Ц�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'fffff',2,'��釉붾윭 吏덈Ц�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'honggd',2,'��釉붾윭 吏덈Ц�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

commit;
--梨뚮┛吏�
select * from challenge;

insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 異쒗눜洹쇱떆 �옄媛��슜 �씠�슜 �븞 �븯湲�', '�삤�뒛 �옄媛��슜 ���떊�뿉 ��以묎탳�넻/ 嫄룰린/ �옄�쟾嫄곕줈 異쒗눜洹� �븯怨� �씤利� �궗吏꾩쓣 �젣異쒗빐二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �솚寃� 蹂댄샇 愿��젴 SNS 肄섑뀗痢� 寃뚯떆', '�삤�뒛 SNS�뿉 �솚寃� 蹂댄샇 愿��젴 肄섑뀗痢좊�� 寃뚯떆�븳 �썑 寃뚯떆臾쇱쓣 罹≪퀜�빐二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 �뿕由щ쿋�씠�꽣 ���떊 怨꾨떒 �씠�슜�븯湲�', '�삤�뒛 �뿕由щ쿋�씠�꽣 ���떊 怨꾨떒 �씠�슜�븯怨� 怨꾨떒怨� �떊諛쒖씠 蹂댁씠�룄濡� �궗吏꾩쓣 李띿뼱 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�삤�뒛 �뾽�궗�씠�겢留곹븯湲�', '�삤�뒛 �뾽�궗�씠�겢�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 援щℓ�떆 �젣濡� �썾�씠�뒪�듃 留ㅼ옣�뿉�꽌 援щℓ�븯湲�', '�삤�뒛 �씪諛� 留ㅼ옣 ���떊 �젣濡� �썾�씠�뒪�듃 留ㅼ옣�뿉�꽌 援щℓ�븯怨� 援щℓ�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �넻吏��꽌, �븞�궡臾� �쟾�옄 臾몄꽌濡� �닔�떊 諛� �뿴�엺 �떊泥��븯湲�', '�삤�뒛 醫낆씠 �슦�렪臾쇱쓣 以꾩씠湲� �쐞�빐�꽌 �넻吏��꽌, �븞�궡臾� �쟾�옄 臾몄꽌濡� �닔�떊 諛� �뿴�엺 �떊泥��븯怨� �떊泥��븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 媛��쟾�젣�뭹 諛� �쟾湲곗슜�뭹 誘� �궗�슜�떆 肄붾뱶 鍮쇨린', '�삤�뒛 媛��쟾�젣�뭹 諛� �쟾湲� �슜�뭹 誘� �궗�슜�떆 肄붾뱶瑜� 鍮쇨퀬 �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.',100 ,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �쓬�떇 �궓湲곗� �븡怨� �떎 癒밴린', '�삤�뒛 �쓬�떇�쓣 �궓湲곗� �븡怨� �떎 癒밴퀬 �떎 癒뱀� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 二쇰Ц�떆 移쒗솚寃� �룷�옣�옱 �궗�슜�븯�뒗 怨녹뿉�꽌 二쇰Ц�븯湲�', '�삤�뒛 移쒗솚寃� �룷�옣�옱 �궗�슜�븯�뒗 怨녹뿉�꽌 二쇰Ц�븳 �뮘 �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�삤�뒛 湲멸굅由� �벐�젅湲� 以띻린', '�삤�뒛 湲멸굅由ъ뿉 �엳�뒗 �벐�젅湲곕�� 以띻퀬 二쇱슫 �벐�젅湲� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 �룷�옣�떆 媛쒖씤�슜湲� �궗�슜�븯湲�', '�삤�뒛 �쓬�떇�쓣 �룷�옣�븷 �븣 媛쒖씤�슜湲곗뿉 �룷�옣�븯怨� �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�솚寃� 罹좏럹�씤 吏묓쉶 李몄뿬', '�삤�뒛 �솚寃� 罹좏럹�씤 吏묓쉶�뿉 李몄뿬�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 硫붿씪�븿 鍮꾩슦湲�', '�삤�뒛 硫붿씪�븿�쓣 鍮꾩슫 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);

--湲곌컙 梨뚮┛吏�
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �씪�쉶�슜�뭹 �궗�슜 理쒖냼�븳�쑝濡� �븯湲�',
'�븳 �떖 �룞�븞 利됱꽍諛� ���떊 諛μ넡�쑝濡� 吏곸젒 諛μ쓣 �빐癒밴굅�굹, �깮�닔 二쇰Ц �떆 鍮� 蹂묒쓣 �쉶�닔�븯�뒗 �깮�닔濡� 二쇰Ц�븯�뒗 �벑 �씪�쉶�슜�뭹�쓣 理쒖냼�븳�쑝濡� �궗�슜�빐 二쇱꽭�슂.', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 遺꾨━�닔嫄� �젣��濡� �븯湲�',
'�븳 �떖 �룞�븞 瑗쇨세�븯寃� 遺꾨━�닔嫄곕�� �빐二쇱꽭�슂. (�씤利� �궗吏� �삁 : 遺꾨━�닔嫄� �븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 3, '移쒗솚寃� �꽭�젣 留뚮뱾�뼱�꽌 �븳 �떖 �뜥蹂닿린', 
'吏곸젒 移쒗솚寃� �꽭�젣瑜� 留뚮뱾怨� 留뚮뱺 �꽭�젣瑜� �븳 �떖 �룞�븞 �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �꽭�젣 留뚮뱶�뒗 �궗吏�, �꽭�젣 �궗�슜 �궗吏�)',700,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 ��釉붾윭 梨숆린怨� �깮�솢�븯湲�',
'�븳 �떖 �룞�븞 �쇅異쒗븷 �븣 ��釉붾윭瑜� 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : ��釉붾윭 �궗�슜�븯�뒗 �궗吏�)',700 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �옣諛붽뎄�땲 梨숆린怨� �깮�솢�븯湲�',
'�븳 �떖 �룞�븞 �쇅異쒗븷 �븣 �옣諛붽뎄�땲瑜� 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �옣諛붽뎄�땲 �궗�슜�븯�뒗 �궗吏�)',500 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �꺎�뫖 ���떊 �꺎�뫖諛� �궗�슜�븯湲�',
'�븳 �떖 �룞�븞 �꺎�뫖 ���떊 �꺎�뫖諛붾�� �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �꺎�뫖諛� �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �떎�쉶�슜 留덉뒪�겕 李⑹슜�븯湲�',
'�븳 �떖 �룞�븞 �씪�쉶�슜 留덉뒪�겕 ���떊 �떎�쉶�슜 留덉뒪�겕瑜� �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �떎�쉶�슜 留덉뒪�겕 �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �쑕吏� ���떊 �넀�닔嫄� �뱾怨� �떎�땲湲�',
'�븳 �떖 �룞�븞 �쑕吏� ���떊 �넀�닔嫄댁쓣 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �넀�닔嫄� �궗�슜�븯�뒗 �궗吏�)', 700,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �뿉�뼱而� �궗�슜�떆 �쟻�젙�삩�룄(26�룄) �쑀吏��븯湲�',
'�븳 �떖 �룞�븞 �뿉�뼱而� �궗�슜 �떆 �쟻�젙�삩�룄(26�룄)濡� �쑀吏��빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �뿉�뼱而� 26�룄濡� 留욎떠吏� �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �궙 �떆媛꾩뿉�뒗 議곕챸 ���떊 �옄�뿰愿� �씠�슜�븯湲�',
'�븳 �떖 �룞�븞 �궙 �떆媛꾩뿉�뒗 議곕챸�쓣 �벐�뒗 ���떊 �옄�뿰愿묒쓣 �씠�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : 議곕챸�쓣 �궎吏� �븡怨� �옄�뿰愿� �씠�슜�븯�뒗 �궗吏�)',600 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 3, '�븳 �떖 �룞�븞 諛곕떖�쓬�떇 以꾩씠湲�',
'�븳 �떖 �룞�븞 諛곕떖�쓬�떇�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : 吏� 諛� 癒밸뒗 �궗吏�)',700 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 臾쇳떚�뒋 �궗�슜 以꾩씠湲�',
'�븳 �떖 �룞�븞 臾쇳떚�뒋 �궗�슜�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : 嫄몃젅�굹 �뻾二� �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �빖�뱶�룿 �뜙 �븯湲�', 
'�븳 �떖 �룞�븞 �빖�뱶�룿 �궗�슜�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : �쑕���룿 �씠�슜 �떆媛� �삱由ш린)', 500,30
);



insert into badge_image values (seq_badge_img_id.nextval, 'Lm1_�씪�쉶�슜以꾩씠湲�' , 'Lm1_�씪�쉶�슜以꾩씠湲�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm2_遺꾨━�닔嫄곗쿇�옱' , 'Lm2_遺꾨━�닔嫄곗쿇�옱.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm3_移쒗솚寃쎌꽭�젣�떖�씤' , 'Lm3_移쒗솚寃쎌꽭�젣�떖�씤.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm4_��釉붾윭' , 'Lm4_��釉붾윭.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm5_�옣諛붽뎄�땲' , 'Lm5_�옣諛붽뎄�땲.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm6_�꺎�뫖諛붿궗�슜�븯湲�' , 'Lm6_�꺎�뫖諛붿궗�슜�븯湲�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm7_�떎�쉶�슜留덉뒪�겕' , 'Lm7_�떎�쉶�슜留덉뒪�겕.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm8_�슦�븘�븯寃뚯넀�닔嫄�' , 'Lm8_�슦�븘�븯寃뚯넀�닔嫄�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm9_�삤議댁링吏��궡�씠' , 'Lm9_�삤議댁링吏��궡�씠.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm10_�옄�뿰愿묒궗�옉�빐!' , 'Lm10_�옄�뿰愿묒궗�옉�빐!.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm11_�솚寃쎌쓽誘쇱”' , 'Lm11_�솚寃쎌쓽誘쇱”.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm12_�뻾二�' , 'Lm12_�뻾二�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm13_�빖�뱶�룿' , 'Lm13_�빖�뱶�룿.png');

rollback;

commit;

select * from badge_image;

insert into badge_image values (seq_badge_img_id.nextval, 'Rm1_媛쒖씤1�쐞' , 'Rm1_媛쒖씤1�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm2_媛쒖씤2�쐞' , 'Rm2_媛쒖씤2�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm3_媛쒖씤3�쐞' , 'Rm3_媛쒖씤3�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm4_媛쒖씤4�쐞' , 'Rm4_媛쒖씤4�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm5_媛쒖씤5�쐞' , 'Rm5_媛쒖씤5�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm1_��1�쐞' , 'Tm1_��1�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm2_��2�쐞' , 'Tm2_��2�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm3_��3�쐞' , 'Tm3_��3�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm4_��4�쐞' , 'Tm4_��4�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm5_��5�쐞' , 'Tm5_��5�쐞.png');



commit;

select * from challenge;
select * from badge_image;



commit;
select *from challenge;
select * from badge_image;

ALTER TABLE challenge ADD(badge_img_id number);
ALTER TABLE challenge
ADD CONSTRAINT fk_badge_img_id  foreign key(badge_img_id) references badge_image(badge_img_id);

foreign key(member_id) references member(member_id
update challenge set badge_img_id =64 where challenge_id=14;

commit;


select *from challenge;
select * from badge;
select * from badge_image;
select * from member;
select * from challenge_join;
update member set member_pw='1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==' where member_id='qwerty';
commit;

--challenge_join
insert into challenge_join values ('honggd', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('honggd', 17, to_date('21/01/23'), trunc(to_date('21/01/23')+30));
insert into challenge_join values ('honggd', 21, to_date('21/02/16'), trunc(to_date('21/01/23')+30));
update challenge_join set confirm_date=to_date('21/02/16') where confirm_date=to_date('22/02/16');
commit;
update challenge_join set end_date=trunc(to_date('21/02/16')+30) where confirm_date=to_date('21/02/16');



insert into challenge_join values ('qwerty', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('qwerty', 17, to_date('21/02/03'), trunc(to_date('21/02/03')+30));
insert into challenge_join values ('qwerty', 21, to_date('21/01/16'), trunc(to_date('21/01/16')+30));
commit;

-- 諭껋� �씠誘몄� insert(challenge_join怨� �뿰寃�)
insert into badge values (seq_badge_id.nextval, 14, 'honggd', 64, sysdate);
insert into badge values (seq_badge_id.nextval, 17, 'honggd', 67, sysdate);
insert into badge values (seq_badge_id.nextval, 21, 'honggd', 71, sysdate);
insert into badge values (seq_badge_id.nextval, 22, 'honggd', 72, sysdate);
insert into challenge_join values ('honggd', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('honggd', 17, to_date('21/01/23'), trunc(to_date('21/01/23')+30));
insert into challenge_join values ('honggd', 21, to_date('21/02/16'), trunc(to_date('21/01/23')+30));
delete from challenge_join where member_id ='honggd' and challenge_id=22;
update challenge_join set confirm_date=to_date('21/02/16') where confirm_date=to_date('22/02/16');


commit;
select *from badge;
select * from challenge_join;
update badge set badge_date=trunc(to_date('21/02/16')+30) where badge_id=45;

insert into badge values (seq_badge_id.nextval, 14, 'qwerty', 64, sysdate+30);
insert into badge values (seq_badge_id.nextval, 17, 'qwerty', 67,  trunc(to_date('21/02/03')+30));
insert into badge values (seq_badge_id.nextval, 21, 'qwerty', 71, trunc(to_date('21/01/16')+30));

commit;


--�빐�떦�떖, �빐�떦 硫ㅻ쾭�쓽 諭껋� �젙蹂�
select * from badge where badge_date between (trunc(to_date('2021-05-24','yy/MM/dd'),'MM')) and (last_day(to_date('2021-05-24','yy/MM/dd'))) and member_id= 'qwerty';
select * from badge_image where badge_img_id in(select badge_img_id from badge where badge_date between trunc(to_date( '2021-02-01' ,'yy/MM/dd'),'MM') and last_day(to_date('2021-02-01','yy/MM/dd')) and member_id= 'honggd');



select * from badge;

select * from badge_image;
select * from badge_image where badge_img_id in (select badge_img_id from badge where badge_date between trunc(to_date('2021-02-01' ,'yy/MM/dd'),'MM') and (last_day(to_date('2021-02-01','yy/MM/dd'))) and member_id= 'qwerty');



commit; values (seq_badge_img_i
SELECT EMP_ID, EMP_NAME, nvl(DEPT_CODE,'부서미지정'), salary
FROM EMPloyee
WHERE (nvl(DEPT_CODE,'부서미지정'), salary) IN (
    SELECT nvl(DEPT_CODE,'부서미지정'), MAX(salary)
    FROM EMPloyee
    GROUP BY DEPT_CODE)
ORDER BY DEPT_CODE;
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('2021-04-26') and member_id = 'honggd';
select *  
from ( 
    select row_number() over(order by reg_date desc) rnum, b.*, a.no attach_no, a.original_filename, a.renamed_filename, a.status 
    from board b  
        left join attachment a 
            on b.no = a.board_no
         and a.status='Y'
    ) B 
where rnum between 10 and 20;
select *
from user_constraints
where table_name = 'EMPLOYEE';
select * from badge
where badge_date 
between (to_char(trunc(to_date('21/05/01'),'MM'),'yy/MM/dd') ) and (last_day(to_date('21/05/01')))
and member_id= 'honggd';
select student_no 학번
    , (select student_name from tb_student where g.student_no = student_no) 학생이름
    , round(avg(point),1) "전체평점"
from tb_grade g
where student_no in (
    select student_no
    from tb_student
    where department_no = (
        select department_no
        from tb_department
        where department_name = '음악학과'
        )
)
group by student_no;
select class_no
from tb_class
where department_no in(
    select department_no
    from tb_department
    where category = '예체능'
)
MINUS

--담당교수 존재하는 과목
select class_no
from tb_class_professor
where class_no in(
    select class_no
    from tb_class
    where department_no in(
        select department_no
        from tb_department
        where category = '예체능'
    )
);
select * from challenge;
select (select class_name from tb_class where class_no = cp.class_no) ,
    (select department_name from tb_department where department_no = (
        select department_no from tb_class where class_no = cp.class_no
    ))
from tb_class_professor cp
where class_no in(
    select class_no
    from tb_class
    where department_no in(
        select department_no
        from tb_department
        where category = '예체능'
    )
);
select class_no
from tb_class
where department_no = (
    select department_no
    from tb_department
    where department_name = '환경조경학과'
);
select * from badge_image where badge_img_id in (select badge_img_id from badge where badge_date between trunc(to_date( '2021-02-01' ,'yy/MM/dd'),'MM') and (last_day(to_date('2021-02-01','yy/MM/dd'))) and member_id= 'qwerty');
update badge set badge_date = trunc(to_date('21/02/02')+30) where member_id='honggd' and challenge_id=23;
select *
from tb_class_professor cp 
    left join tb_class c
        on cp.class_no = c.class_no;
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
select *from member_del;
select * 
  from (
     select row_number() over(order by reg_date desc) rnum, b.*, a.no attach_no, a.original_filename, a.renamed_filename, a.status 
     from board b  left join attachment a on b.no = a.board_no) B where rnum between 6 and 10
select * from badge;
select * from badge b left join badge_image bimg on b.badge_img_id = bimg.badge_img_id where badge_date = TO_DATE('2021-03-04', 'yy/mm/dd') and member_id = 'honggd';
select lpad('',level-1),
        level, bc.*
from board_comment bc
start with comment_level =1 
connect by prior no=comment_ref;
select * 
from badge b 
    left join badge_image bimg 
        on b.badge_img_id = bimg.badge_img_id 
    left join challenge c
        on bimg.challenge_id = c.challenge_id;
select *
from tb_class_professor
where class_no not in(
    select class_no
    from tb_class
    where department_no in(
        select department_no
        from tb_department
        where category = '예체능'
    )

);
select student_no, point
from tb_grade
where term_no = '200402'
      and class_no = 'C3118100'
order by point desc, student_no asc;
select * from challenge_join cj left join challenge c on cj.challenge_id = c.challenge_id where member_id = 'honggd' and sysdate BETWEEN cj.confirm_date and cj.end_date;
select *from job_copy;
select * from badge_image where badge_img_id in(select badge_img_id from badge where badge_date between trunc(to_date( '2021-02-01' ,'yy/MM/dd'),'MM') and last_day(to_date('2021-02-01','yy/MM/dd')) and member_id= 'honggd');
select department_name, department_no
    from tb_department
    where department_name = '환경조경학과';
select *
from user_tab_cols
where table_name = 'EMP_COPY';
select * from emp_copy;
select * from badge
where badge_date 
between (to_char(trunc(to_date('21/05/25'),'MM'),'yy/MM/dd') ) and (last_day(to_date('21/05/01')))
and member_id= 'qwerty';
select badge_img_id from badge where badge_date between trunc(to_date('2021-03-01'),'MM') and last_day(to_date('2021-03-01')) and member_id= 'honggd';
select *
from tb_class c join tb_class_professor cp
    on c.class_no = cp.class_no;
select bc.* from board_comment bc where board_no = 143 start with comment_level =1  connect by prior no=comment_ref order siblings by reg_date;
select * from badge_image where badge_img_id in (select badge_img_id from badge where badge_date between (trunc(to_date('2021-03-01'),'MM')) and (LAST_DAY(to_date('2021-03-01'))) and member_id= 'honggd');
grant resource,connect to eco_individual;
select * from badge
where badge_date 
between (to_char(trunc(to_date('21/02/01'),'MM'),'yy/MM/dd') ) and (last_day(to_date('21/02/01')));
select *  from ( 
select row_number() over(order by reg_date desc) rnum, b.*, a.no attach_no, a.original_filename, a.renamed_filename, a.status   
    from board b  
    left join attachment a
    on b.no = a.board_no and a.status='Y'
    left join (select board_no, count(board_no) cnt
                from board_comment
                group by board_no) bc
    on b.no = bc.board_no) B 
where rnum between 1 and 20;
select * from tbl_files;
select *from product_io;
select g.student_no 학번, avg(point) 평점
from tb_grade g join tb_student s
    on g.student_no = s.student_no
group by g.student_no having avg(point) > 4;
select * from personal_point where point_date = TO_DATE('2021-03-18','yy/MM/dd');
select *
from tb_class 
    left join tb_class_professor using(class_no)
    left join tb_department using(department_no)
where category = '예체능'
    and professor_no is null;
select * from PRODUCT_STOCK;
select * from personal_point order by point_date;
select department_name
from tb_department
where category = '예체능';
select *  
from ( 
    select row_number() over(order by reg_date desc) rnum, b.*, a.no attach_no, a.original_filename, a.renamed_filename, a.status   
    from board b  
        left join attachment a 
            on b.no = a.board_no and a.status='Y'

    ) B 
where rnum between 10 and 20;
select * from personal_point where to_char(point_date,'yy/MM/dd') = ('21/04/25');
select * from personal_point where to_char(point_date,'yy/MM/dd') = ('21/04/26');
select * from personal_point where to_char(point_date,'yy/MM/dd') = to_char('21/04/26') and member_id = 'honggd';
select * from personal_point where to_char(point_date,'yyyy-MM-dd') = to_char('2021-04-26') and member_id = 'honggd';
select * from team_point;
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id left join team_point tp on pp.member_id= tp.member_id;
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id left join team_point tp on pp.member_id= tp.member_id;
select * from team_point;
select * from personal_point where to_char(point_date,'yyyy-MM-dd') = to_char('2021-04-26') and member_id = 'honggd';
select * from personal_point where to_char(point_date,'yy/MM/dd') = to_char('21/04/26') and member_id = 'honggd';
select * from personal_point where to_char(point_date,'yy/MM/dd') = ('21/04/26');
select * from personal_point where to_char(point_date,'yy/MM/dd') = ('21/04/25');
select *  
from ( 
    select row_number() over(order by reg_date desc) rnum, b.*, a.no attach_no, a.original_filename, a.renamed_filename, a.status   
    from board b  
        left join attachment a 
            on b.no = a.board_no and a.status='Y'

    ) B 
where rnum between 10 and 20;
select department_name
from tb_department
where category = '예체능';
select * from personal_point order by point_date;
select * from PRODUCT_STOCK;
select *
from tb_class 
    left join tb_class_professor using(class_no)
    left join tb_department using(department_no)
where category = '예체능'
    and professor_no is null;
select * from personal_point where point_date = TO_DATE('2021-03-18','yy/MM/dd');
select g.student_no 학번, avg(point) 평점
from tb_grade g join tb_student s
    on g.student_no = s.student_no
group by g.student_no having avg(point) > 4;
select *from product_io;
select * from tbl_files;
select *  from ( 
select row_number() over(order by reg_date desc) rnum, b.*, a.no attach_no, a.original_filename, a.renamed_filename, a.status   
    from board b  
    left join attachment a
    on b.no = a.board_no and a.status='Y'
    left join (select board_no, count(board_no) cnt
                from board_comment
                group by board_no) bc
    on b.no = bc.board_no) B 
where rnum between 1 and 20;
select * from badge
where badge_date 
between (to_char(trunc(to_date('21/02/01'),'MM'),'yy/MM/dd') ) and (last_day(to_date('21/02/01')));
grant resource,connect to eco_individual;
select * from badge_image where badge_img_id in (select badge_img_id from badge where badge_date between (trunc(to_date('2021-03-01'),'MM')) and (LAST_DAY(to_date('2021-03-01'))) and member_id= 'honggd');
select bc.* from board_comment bc where board_no = 143 start with comment_level =1  connect by prior no=comment_ref order siblings by reg_date;
select *
from tb_class c join tb_class_professor cp
    on c.class_no = cp.class_no;
select badge_img_id from badge where badge_date between trunc(to_date('2021-03-01'),'MM') and last_day(to_date('2021-03-01')) and member_id= 'honggd';
select * from badge
where badge_date 
between (to_char(trunc(to_date('21/05/25'),'MM'),'yy/MM/dd') ) and (last_day(to_date('21/05/01')))
and member_id= 'qwerty';
select * from emp_copy;
select *
from user_tab_cols
where table_name = 'EMP_COPY';
select department_name, department_no
    from tb_department
    where department_name = '환경조경학과';
select * from badge_image where badge_img_id in(select badge_img_id from badge where badge_date between trunc(to_date( '2021-02-01' ,'yy/MM/dd'),'MM') and last_day(to_date('2021-02-01','yy/MM/dd')) and member_id= 'honggd');
select *from job_copy;
select * from challenge_join cj left join challenge c on cj.challenge_id = c.challenge_id where member_id = 'honggd' and sysdate BETWEEN cj.confirm_date and cj.end_date;
select student_no, point
from tb_grade
where term_no = '200402'
      and class_no = 'C3118100'
order by point desc, student_no asc;
select *
from tb_class_professor
where class_no not in(
    select class_no
    from tb_class
    where department_no in(
        select department_no
        from tb_department
        where category = '예체능'
    )

);
select * 
from badge b 
    left join badge_image bimg 
        on b.badge_img_id = bimg.badge_img_id 
    left join challenge c
        on bimg.challenge_id = c.challenge_id;
select lpad('',level-1),
        level, bc.*
from board_comment bc
start with comment_level =1 
connect by prior no=comment_ref;
select * from badge b left join badge_image bimg on b.badge_img_id = bimg.badge_img_id where badge_date = TO_DATE('2021-03-04', 'yy/mm/dd') and member_id = 'honggd';
select * from badge;
select * 
  from (
     select row_number() over(order by reg_date desc) rnum, b.*, a.no attach_no, a.original_filename, a.renamed_filename, a.status 
     from board b  left join attachment a on b.no = a.board_no) B where rnum between 6 and 10
select *from member_del;
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
select *
from tb_class_professor cp 
    left join tb_class c
        on cp.class_no = c.class_no;
update badge set badge_date = trunc(to_date('21/02/02')+30) where member_id='honggd' and challenge_id=23;
select * from badge_image where badge_img_id in (select badge_img_id from badge where badge_date between trunc(to_date( '2021-02-01' ,'yy/MM/dd'),'MM') and (last_day(to_date('2021-02-01','yy/MM/dd'))) and member_id= 'qwerty');
select class_no
from tb_class
where department_no = (
    select department_no
    from tb_department
    where department_name = '환경조경학과'
);
select (select class_name from tb_class where class_no = cp.class_no) ,
    (select department_name from tb_department where department_no = (
        select department_no from tb_class where class_no = cp.class_no
    ))
from tb_class_professor cp
where class_no in(
    select class_no
    from tb_class
    where department_no in(
        select department_no
        from tb_department
        where category = '예체능'
    )
);
select * from challenge;
select class_no
from tb_class
where department_no in(
    select department_no
    from tb_department
    where category = '예체능'
)
MINUS

--담당교수 존재하는 과목
select class_no
from tb_class_professor
where class_no in(
    select class_no
    from tb_class
    where department_no in(
        select department_no
        from tb_department
        where category = '예체능'
    )
);
select student_no 학번
    , (select student_name from tb_student where g.student_no = student_no) 학생이름
    , round(avg(point),1) "전체평점"
from tb_grade g
where student_no in (
    select student_no
    from tb_student
    where department_no = (
        select department_no
        from tb_department
        where department_name = '음악학과'
        )
)
group by student_no;
select * from badge
where badge_date 
between (to_char(trunc(to_date('21/05/01'),'MM'),'yy/MM/dd') ) and (last_day(to_date('21/05/01')))
and member_id= 'honggd';
select *
from user_constraints
where table_name = 'EMPLOYEE';
select *  
from ( 
    select row_number() over(order by reg_date desc) rnum, b.*, a.no attach_no, a.original_filename, a.renamed_filename, a.status 
    from board b  
        left join attachment a 
            on b.no = a.board_no
         and a.status='Y'
    ) B 
where rnum between 10 and 20;
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('2021-04-26') and member_id = 'honggd';
SELECT EMP_ID, EMP_NAME, nvl(DEPT_CODE,'부서미지정'), salary
FROM EMPloyee
WHERE (nvl(DEPT_CODE,'부서미지정'), salary) IN (
    SELECT nvl(DEPT_CODE,'부서미지정'), MAX(salary)
    FROM EMPloyee
    GROUP BY DEPT_CODE)
ORDER BY DEPT_CODE;
--珥� 19媛� �뀒�씠釉�
select * from tabs;
--梨뚮┛吏�
CREATE TABLE challenge (
	challenge_id	number		      NOT NULL,
	challenge_term_type	char(1)		  NOT NULL,
	challenge_level	number	      NOT NULL,
	challenge_name	varchar2(4000)	  NOT NULL,
	challenge_info	varchar2(4000)	  NOT NULL,
	challenge_point	number		      NOT NULL,
	challenge_term	number default 1  NOT NULL,
    
    constraint pk_challenge_id primary key(challenge_id),
    constraint ck_challenge_term_type check(challenge_term_type in ('S','L')),      -- challenge �븯猷�/湲곌컙 援щ텇(S/L)
    constraint ck_challenge_level check(challenge_level in (1,2,3))         -- challenge 媛뺣룄 援щ텇(1-�븯 / 2-以�/ 3-�긽)
);

--�쑀��
CREATE TABLE member (
	member_id varchar2(15)		NOT NULL,
	member_pw 	varchar2(300)		NOT NULL,
	member_name 	varchar2(50)		NOT NULL,
	member_nickname	varchar2(50)		NOT NULL,
	member_email	varchar2(100)		NULL,
	member_phone	char(11)		NOT NULL,
	member_team	char(1)	DEFAULT 'N'	NOT NULL,
	member_picture	varchar2(4000)	DEFAULT '湲곕낯 �씠誘몄�'	NOT NULL,
	member_role	char(1)	DEFAULT 'U'	NOT NULL,
	access_token	varchar2(4000)		NULL,

    constraint pk_member_id primary key(member_id),
    constraint ck_member_team check(member_team in ('N','Y')),      -- ���뿉 �냽�빐�엳吏� �븡�떎('N') / ���뿉 �냽�빐 �엳�떎('Y')
    constraint ck_member_role check(member_role in ('U','A'))         -- 'U' : �씪諛� �궗�슜�옄 / 'A' : 愿�由ъ옄
);

--�룷�씤�듃 (媛쒖씤)
CREATE TABLE personal_point (
	p_point_id	number		    NOT NULL,
	challenge_id	number,
	member_id	varchar2(15)		NOT NULL,
	point	number	DEFAULT 0	NOT NULL,
	point_date	date	DEFAULT sysdate	NOT NULL,
    
    constraint pk_personal_point_id primary key(p_point_id),
    constraint fk_personal_point_member_id foreign key(member_id) references member(member_id) on delete cascade,                       --�깉�눜�떆 �룷�씤�듃 �궘�젣
    constraint fk_personal_point_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null   --梨뚮┛吏� �궘�젣 �떆 洹몃�濡� �궓�븘 �엳�쓬
);

--諭껋�
CREATE TABLE badge (
	badge_id number         NOT NULL,
	challenge_id number,
	member_id	varchar2(15)    NOT NULL,
	badge_img_id	number	NOT NULL,
	badge_date date DEFAULT sysdate	NOT NULL,
    
    constraint pk_badge_id primary key(badge_id),
    constraint fk_badge_member_id foreign key(member_id) references member(member_id) on delete cascade,                     --�궗�슜�옄 �깉�눜�떆 媛숈씠 �궘�젣
    constraint fk_badge_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete  set null,       --梨뚮┛吏� �궘�젣�빐�룄 洹몃�濡� 議댁옱
    constraint fk_badge_badge_img_id foreign key(badge_img_id) references badge_image(badge_img_id) on delete cascade        --諭껋� �씠誘몄� �궘�젣 �떆 媛숈씠 �궘�젣
);
--諭껋� �씠誘몄� ���옣
CREATE TABLE badge_image (
	badge_img_id	number		NOT NULL,
	badge_name	varchar2(100)		NOT NULL,
	badge_img	varchar2(4000)		NOT NULL,       --badge �뙆�씪紐�
    
    constraint pk_badge_img_id primary key(badge_img_id)    
);


COMMENT ON COLUMN badge_image.badge_img IS '�씠誘몄� 寃쎈줈';

--寃뚯떆湲� (怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
CREATE TABLE article (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	a_type	varchar2(15)		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_aritlce_id primary key(a_id),
    constraint fk_member_id foreign key(member_id) references member(member_id) on delete set null          --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
);

--�씤利� 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_confirm (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	challenge_id	number,
	confirm_type	varchar2(10)		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_a_confirm_id primary key(a_id),
    constraint fk_a_confirm_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
    constraint fk_a_confirm__challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null  --梨뚮┛吏� �궘�젣�빐�룄 �� 議댁옱
);

--���썝 李얘린 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_search_team (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	challenge_id	number,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
	s_team_count	number	DEFAULT 4	NOT NULL,
    
    constraint pk_a_search_team_id primary key(a_id),
    constraint fk_a_search_team_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
    constraint fk_a_search_team_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null  --梨뚮┛吏� �궘�젣�빐�룄 �� 議댁옱
);

--�슦由� �� 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_team (
	team_a_id	number		NOT NULL,
	member_id	varchar2(15)		NOT NULL,
	a_id	number		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_a_team_id primary key(team_a_id),
    constraint fk_a_team_member_id foreign key(member_id) references member(member_id) on delete set null,                       --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱                   
    constraint fk_a_team_a_id foreign key(a_id) references a_search_team(a_id) on delete cascade --梨뚮┛吏� �궘�젣(梨뚮┛吏� �걹)�굹硫� 媛숈씠 �궘�젣
);

alter table a_team
modify(member_id null);

commit;

--��
CREATE TABLE team (
	team_id	number		    NOT NULL,
	member_id	varchar2(15)	NOT NULL,
	a_id	number		NOT NULL,
	team_start_day date DEFAULT sysdate	NOT NULL,
    
    constraint pk_team_id primary key(team_id),
    constraint fk_team_member_id foreign key(member_id) references member(member_id) on delete cascade,      --member �깉�눜 �떆 ���룄 媛숈씠 �깉�눜
    constraint fk_team_a_id foreign key(a_id) references a_search_team(a_id)  --李몄“ �떆 遺�紐�(���썝李얘린寃뚯떆湲�) �궘�젣 遺덇�
);

--�룷�씤�듃(��)
CREATE TABLE team_point (
	t_point_id	number		NOT NULL,
	member_id	varchar2(15)		NOT NULL,
	a_id	number		NOT NULL,
	point	number	DEFAULT 0	NOT NULL,
	point_date	date	DEFAULT sysdate	NOT NULL,
    
    constraint pk_team_point_id primary key(t_point_id),
    constraint fk_team_point_member_id foreign key(member_id) references member(member_id) on delete cascade,        --�쉶�썝�깉�눜�떆 媛숈씠 �궘�젣
    constraint fk_team_point_a_id foreign key(a_id) references a_search_team(a_id)   --李몄“ �떆 遺�紐�(���썝李얘린寃뚯떆湲�) �궘�젣 遺덇�
);

--泥⑤��뙆�씪(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
CREATE TABLE attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_attachment_id primary key(attachment_id),
    constraint fk_attachment_a_id foreign key(a_id) references article(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(�씤利�)
CREATE TABLE confirm_attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_confirm_attachment_id primary key(attachment_id),
    constraint fk_confirm_attachment_a_id foreign key(a_id) references a_confirm(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_confirm_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(���썝李얘린) ** ���썝李얘린 = s_
CREATE TABLE s_team_attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_s_team_attachment_id primary key(attachment_id),
    constraint fk_s_team_attachment_a_id foreign key(a_id) references a_search_team(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_s_team_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(�슦由ы� 寃뚯떆湲�) ** �슦由ы� = a_
CREATE TABLE a_team_attachment (
	attachment_id	number		NOT NULL,
	team_a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_a_team_attachment_id primary key(attachment_id),
    constraint fk_a_team_attachment_team_a_id foreign key(team_a_id) references a_team(team_a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_a_team_attachment_status check(attachment_status in ('Y','N'))
);

--�뙎湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
create table a_comment (
    comment_id number not null,
    member_id varchar2(15),
    a_id number not null,
    comment_content varchar2(2000) not null,
    comment_reg_date date default sysdate,
    comment_level number default 1 not null,
    comment_ref number,
    
    constraint pk_a_comment_id primary key(comment_id),
    constraint fk_a_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_a_comment_a_id foreign key(a_id) references article(a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_a_comment_comment_ref foreign key(comment_ref) references a_comment(comment_id) on delete set null        --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)
);

--�뙎湲�(�씤利�)
CREATE TABLE confirm_comment (
	comment_id	number		NOT NULL,
	member_id	varchar2(15),
	a_id	number		NOT NULL,
	comment_content	varchar2(2000)		NOT NULL,
	comment_reg_date	date	DEFAULT sysdate	NOT NULL,
	comment_level	number	DEFAULT 1	NOT NULL,
	comment_ref	number,
    
    constraint pk_confirm_comment_id primary key(comment_id),
    constraint fk_confirm_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                             --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_confirm_comment_a_id foreign key(a_id) references a_confirm(a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_confirm_comment_comment_ref foreign key(comment_ref) references confirm_comment(comment_id) on delete set null        --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)  
);

--�뙎湲�(�슦由ы�)
CREATE TABLE team_comment (
	comment_id	number		NOT NULL,
	team_a_id	number		NOT NULL,
	member_id	varchar2(15),
	comment_content	varchar2(2000)		NOT NULL,
	comment_reg_date	date	DEFAULT sysdate	NOT NULL,
	comment_level	number	DEFAULT 1	NOT NULL,
	comment_ref	number,
    
    constraint pk_comment_id primary key(comment_id),
    constraint fk_comment_team_a_id foreign key(team_a_id) references a_team(team_a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                                         --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_comment_comment_ref foreign key(comment_ref) references team_comment(comment_id) on delete set null                       --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)
);

--�� �떊泥��옄
CREATE TABLE request_team (
	request_id	number		NOT NULL,
	member_id	varchar2(15),
	a_id	number		NOT NULL,
    
    constraint pk_request_team_id primary key(request_id),
    constraint fk_request_team_member_id foreign key(member_id) references member(member_id) on delete set null,          --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_request_team_a_id foreign key(a_id) references a_search_team(a_id)      -- ���썝李얘린 寃뚯떆湲� �궘�젣 紐삵븿
);

--sequence
create sequence seq_team_id;
create sequence seq_a_comment_id;
create sequence seq_p_point_id;
create sequence seq_badge_id;
create sequence seq_badge_img_id;
create sequence seq_attachment_id;
create sequence seq_t_point_id;
create sequence seq_article_id;
create sequence seq_a_confirm_id;
create sequence seq_a_search_team_id;
create sequence seq_confirm_attachment_id;
create sequence seq_search_team_attachment_id;
create sequence seq_confirm_comment_id;
create sequence seq_team_comment_id;
create sequence seq_a_team_id;
create sequence seq_request_id;
create sequence seq_team_attachment_id;
create sequence seq_challenge_id;

--
select * from member; --�궗�슜�옄
select * from article; --寃뚯떆湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
select * from a_confirm; --�씤利� 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from a_search_team; --���썝 李얘린 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from a_team; --�슦由ы� 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from challenge; --梨뚮┛吏�

--�뀒�뒪�듃�슜 �쑀��
insert into member
values (
'honggd', '1234', '�솉湲몃룞', '湲몃룞', 'honggd@naver.com', '01011111111','Y', default, default, 'access_token_1234'
);

insert into member
values (
'qwerty', '1234', '荑좎뼱�떚', '�뼱�떚', 'qwerty@naver.com', '01022222222','N', default, default, 'access_token_2345'
);

insert into member
values (
'aaaaa', '1234', '�븘�븘�븘', '�븘�븘', 'aaaaa@naver.com', '01033333333','Y', default, default, 'access_token_3456'
);

insert into member
values (
'bbbbb', '1234', '鍮꾨퉬鍮�', '鍮꾨퉬', 'bbbbb@naver.com', '01034343434','N', default, default, 'access_token_4567'
);

insert into member
values (
'ccccc', '1234', '�뵪�뵪�뵪', '�뵪�뵪', 'ccccc@naver.com', '01045454545','Y', default, default, 'access_token_5678'
);

insert into member
values (
'ddddd', '1234', '�뵒�뵒�뵒', '�뵒�뵒', 'ddddd@naver.com', '01056565656','Y', default, default, NULL
);

insert into member
values (
'eeeee', '1234', '�씠�씠�씠', '�씠�씠', 'eeeee@naver.com', '01067676767','Y', default, default, NULL
);

insert into member
values (
'fffff', '1234', '�뿉�봽�봽', '�뿉�봽', 'fffff@naver.com', '01078787878','Y', default, default, 'access_token_6789'
);

insert into member
values (
'ggggg', '3456', '伊먯쪖伊�', '伊먯쪖', 'ggggg@naver.com', '01090909090','Y', default, default, 'access_token_0000'
);

insert into member
values (
'hhhhh', '3456', '�뿉�씠移�', '�뿉移�', 'hhhhh@naver.com', '01034561234','N', default, default, 'access_token_0666'
);

insert into member
values (
'iiiii', '3456', '�븘�씠�븘', '�븘�씠', 'iiiii@naver.com', '01011122221','N', default, default, 'access_token_7700'
);

insert into member
values (
'jjjjj', '3456', '�젣�씠�젣', '�젣�씠', 'jjjjj@naver.com', '01037373737','N', default, default, 'access_token_0880'
);

insert into member
values (
'kkkkk', '3456', '耳�耳�耳�', '耳�耳�', 'kkkkk@naver.com', '01023122312','N', default, default, 'access_token_4354'
);

insert into member
values (
'temp0', '3456', '�뀥�봽�쁺', '�뀥0', 'temp0@naver.com', '01012123434','N', default, default, NULL
);

insert into member
values (
'temp1', '3456', '�뀥�봽�씪', '�뀥1', 'temp1@naver.com', '01056567676','N', default, default, NULL
);
insert into member
values (
'admin1', '1234', '愿�由ъ옄1', '愿�由ъ옄2', 'admin1@naver.com', '01044444444',default, '愿�由ъ옄�씠誘몄�', 'A', NULL
);

insert into member
values (
'admin2', '1234', '愿�由ъ옄1', '愿�由ъ옄2', 'admin2@naver.com', '01055555555',default, '愿�由ъ옄�씠誘몄�', 'A', NULL
);

--�뀒�뒪�듃�슜 寃뚯떆湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
insert into article
values (
seq_article_id.nextval,'honggd','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 1','�븞�뀞�븯�꽭�슂 蹂몃Ц - 1', to_date('18/02/14','RR/MM/DD'), default, default
);
insert into article
values (
seq_article_id.nextval,'aaaaa','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 2','�븞�뀞�븯�꽭�슂 蹂몃Ц - 2',to_date('18/03/16','RR/MM/DD'), default, default
);
insert into article
values (
seq_article_id.nextval,'bbbbb','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 3','�븞�뀞�븯�꽭�슂 蹂몃Ц - 3',to_date('18/03/24','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'ccccc','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 4','�븞�뀞�븯�꽭�슂 蹂몃Ц - 4',to_date('18/04/14','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'aaaaa','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 5','�븞�뀞�븯�꽭�슂 蹂몃Ц - 5',to_date('18/04/24','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin1','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 1','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 1',to_date('18/05/08','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'ddddd','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 6','�븞�뀞�븯�꽭�슂 蹂몃Ц - 6',to_date('18/05/25','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 7','�븞�뀞�븯�꽭�슂 蹂몃Ц - 7',to_date('18/06/12','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 8','�븞�뀞�븯�꽭�슂 蹂몃Ц - 8',to_date('18/06/14','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 9','�븞�뀞�븯�꽭�슂 蹂몃Ц - 9',to_date('18/07/10','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin2','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 2','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 2',to_date('18/07/23','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 10','�븞�뀞�븯�꽭�슂 蹂몃Ц - 10',to_date('18/08/18','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 11','�븞�뀞�븯�꽭�슂 蹂몃Ц - 11',to_date('18/09/29','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin2','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 3','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 3',to_date('18/10/10','RR/MM/DD'),default, default
);

--�뀒�뒪�듃�슜 �씤利� 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_confirm
values (
seq_a_confirm_id.nextval,'ggggg',4,'�븯猷�','�뾽�궗�씠�겢留� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �뾽�궗�씠�겢留� �씤利앹엯�땲�떎',to_date('18/01/01','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'qwerty',15,'湲곌컙','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/02/05','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'eeeee',20,'��','�떎�쉶�슜 留덉뒪�겕 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �떎�쉶�슜 留덉뒪�겕 �씤利앹엯�땲�떎',to_date('18/03/22','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ddddd',17,'��','��釉붾윭 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 ��釉붾윭 �씤利앹엯�땲�떎',to_date('18/04/14','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'eeeee',3,'�븯猷�','怨꾨떒 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 怨꾨떒 �씤利앹엯�땲�떎',to_date('18/05/05','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'hhhhh',15,'湲곌컙','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/05/27','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'jjjjj',18,'湲곌컙','�옣諛붽뎄�땲 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �옣諛붽뎄�땲 �씤利앹엯�땲�떎',to_date('18/06/13','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ccccc',10,'�븯猷�','�벐�젅湲� 以띻린 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �벐�젅湲� 以띻린 �씤利앹엯�땲�떎',to_date('18/06/26','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ggggg',15,'��','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/07/02','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'fffff',24,'��','諛곕떖�쓬�떇 以꾩씠湲� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 諛곕떖�쓬�떇 以꾩씠湲� �씤利앹엯�땲�떎',to_date('18/07/17','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ccccc',12,'�븯猷�','�솚寃� 罹좏럹�씤 吏묓쉶 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 吏묓쉶 李몄뿬 �씤利앹엯�땲�떎',to_date('18/08/26','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'honggd',11,'�븯猷�','媛쒖씤 �슜湲� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 媛쒖씤 �슜湲� �씤利앹엯�땲�떎',to_date('18/08/30','RR/MM/DD'),default, default
);

--�뀒�뒪�듃�슜 ���썝 李얘린 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_search_team
values (
seq_a_search_team_id.nextval,'bbbbb',15,'遺꾨━�닔嫄� 媛숈씠 �븯�떎遺�?','遺꾨━�닔嫄� 媛숈씠�빐�슂~ �� �룷�븿 4紐낆씠�꽌 �빀�떆�떎~',to_date('18/01/01','RR/MM/DD'),default,default,default
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'hhhhh',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/02/02','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'iiiii',18,'�븳 �떖 �룞�븞 �옣諛붽뎄�땲 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/03/03','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',24,'�븳 �떖 �룞�븞 諛곕떖�쓬�떇 以꾩엯�떆�떎~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/03/13','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'kkkkk',21,'�븳 �떖 �룞�븞 �넀�닔嫄� �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/04/04','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'qwerty',20,'�븳 �떖 �룞�븞 �떎�쉶�슜留덉뒪�겕 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/05/05','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'temp0',22,'�븳 �떖 �룞�븞 �뿉�뼱而� �쟻�젙�삩�룄 �쑀吏��빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/06/06','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'temp1',15,'�븳 �떖 �룞�븞 遺꾨━�닔嫄� 媛숈씠�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/07/07','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'kkkkk',25,'�븳 �떖 �룞�븞 臾쇳떚�뒋 �뜙�궗�슜�빐�슂~','�� �룷�븿 9紐낆씠�꽌 �빀�떆�떎~',to_date('18/08/08','RR/MM/DD'),default,default,9
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',26,'�븳 �떖 �룞�븞 �빖�뱶�룿 �뜙 �궗�슜�빐�슂~','�� �룷�븿 4紐낆씠�꽌 �빀�떆�떎~',to_date('18/09/09','RR/MM/DD'),default,default,4
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'iiiii',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 5紐낆씠�꽌 �빀�떆�떎~',to_date('18/10/01','RR/MM/DD'),default,default,5
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'hhhhh',18,'�븳 �떖 �룞�븞 �옣諛붽뎄�땲 �궗�슜�빐�슂~','�� �룷�븿 6紐낆씠�꽌 �빀�떆�떎~',to_date('18/11/01','RR/MM/DD'),default,default,6
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'bbbbb',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 7紐낆씠�꽌 �빀�떆�떎~',to_date('18/12/01','RR/MM/DD'),default,default,7
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 8紐낆씠�꽌 �빀�떆�떎~',to_date('18/12/12','RR/MM/DD'),default,default,8
);

--�뀒�뒪�듃�슜 �슦由ы� 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_team
values (
seq_a_team_id.nextval,'ddddd',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂1?','遺꾨━�닔嫄�',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'honggd',2,'��釉붾윭 �궗�슜�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'aaaaa',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂2?','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ccccc',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂3?','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ddddd',2,'��釉붾윭 �궗�슜�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'eeeee',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂?4','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'fffff',2,'��釉붾윭 �궗�슜�씠�슂3','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ggggg',2,'��釉붾윭 �궗�슜�씠�슂4','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ccccc',1,'遺꾨━�닔嫄� 吏덈Ц�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'eeeee',1,'遺꾨━�닔嫄� 吏덈Ц�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'fffff',2,'��釉붾윭 吏덈Ц�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'honggd',2,'��釉붾윭 吏덈Ц�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

commit;
--梨뚮┛吏�
select * from challenge;

insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 異쒗눜洹쇱떆 �옄媛��슜 �씠�슜 �븞 �븯湲�', '�삤�뒛 �옄媛��슜 ���떊�뿉 ��以묎탳�넻/ 嫄룰린/ �옄�쟾嫄곕줈 異쒗눜洹� �븯怨� �씤利� �궗吏꾩쓣 �젣異쒗빐二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �솚寃� 蹂댄샇 愿��젴 SNS 肄섑뀗痢� 寃뚯떆', '�삤�뒛 SNS�뿉 �솚寃� 蹂댄샇 愿��젴 肄섑뀗痢좊�� 寃뚯떆�븳 �썑 寃뚯떆臾쇱쓣 罹≪퀜�빐二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 �뿕由щ쿋�씠�꽣 ���떊 怨꾨떒 �씠�슜�븯湲�', '�삤�뒛 �뿕由щ쿋�씠�꽣 ���떊 怨꾨떒 �씠�슜�븯怨� 怨꾨떒怨� �떊諛쒖씠 蹂댁씠�룄濡� �궗吏꾩쓣 李띿뼱 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�삤�뒛 �뾽�궗�씠�겢留곹븯湲�', '�삤�뒛 �뾽�궗�씠�겢�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 援щℓ�떆 �젣濡� �썾�씠�뒪�듃 留ㅼ옣�뿉�꽌 援щℓ�븯湲�', '�삤�뒛 �씪諛� 留ㅼ옣 ���떊 �젣濡� �썾�씠�뒪�듃 留ㅼ옣�뿉�꽌 援щℓ�븯怨� 援щℓ�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �넻吏��꽌, �븞�궡臾� �쟾�옄 臾몄꽌濡� �닔�떊 諛� �뿴�엺 �떊泥��븯湲�', '�삤�뒛 醫낆씠 �슦�렪臾쇱쓣 以꾩씠湲� �쐞�빐�꽌 �넻吏��꽌, �븞�궡臾� �쟾�옄 臾몄꽌濡� �닔�떊 諛� �뿴�엺 �떊泥��븯怨� �떊泥��븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 媛��쟾�젣�뭹 諛� �쟾湲곗슜�뭹 誘� �궗�슜�떆 肄붾뱶 鍮쇨린', '�삤�뒛 媛��쟾�젣�뭹 諛� �쟾湲� �슜�뭹 誘� �궗�슜�떆 肄붾뱶瑜� 鍮쇨퀬 �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.',100 ,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �쓬�떇 �궓湲곗� �븡怨� �떎 癒밴린', '�삤�뒛 �쓬�떇�쓣 �궓湲곗� �븡怨� �떎 癒밴퀬 �떎 癒뱀� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 二쇰Ц�떆 移쒗솚寃� �룷�옣�옱 �궗�슜�븯�뒗 怨녹뿉�꽌 二쇰Ц�븯湲�', '�삤�뒛 移쒗솚寃� �룷�옣�옱 �궗�슜�븯�뒗 怨녹뿉�꽌 二쇰Ц�븳 �뮘 �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�삤�뒛 湲멸굅由� �벐�젅湲� 以띻린', '�삤�뒛 湲멸굅由ъ뿉 �엳�뒗 �벐�젅湲곕�� 以띻퀬 二쇱슫 �벐�젅湲� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 �룷�옣�떆 媛쒖씤�슜湲� �궗�슜�븯湲�', '�삤�뒛 �쓬�떇�쓣 �룷�옣�븷 �븣 媛쒖씤�슜湲곗뿉 �룷�옣�븯怨� �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�솚寃� 罹좏럹�씤 吏묓쉶 李몄뿬', '�삤�뒛 �솚寃� 罹좏럹�씤 吏묓쉶�뿉 李몄뿬�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 硫붿씪�븿 鍮꾩슦湲�', '�삤�뒛 硫붿씪�븿�쓣 鍮꾩슫 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);

--湲곌컙 梨뚮┛吏�
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �씪�쉶�슜�뭹 �궗�슜 理쒖냼�븳�쑝濡� �븯湲�',
'�븳 �떖 �룞�븞 利됱꽍諛� ���떊 諛μ넡�쑝濡� 吏곸젒 諛μ쓣 �빐癒밴굅�굹, �깮�닔 二쇰Ц �떆 鍮� 蹂묒쓣 �쉶�닔�븯�뒗 �깮�닔濡� 二쇰Ц�븯�뒗 �벑 �씪�쉶�슜�뭹�쓣 理쒖냼�븳�쑝濡� �궗�슜�빐 二쇱꽭�슂.', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 遺꾨━�닔嫄� �젣��濡� �븯湲�',
'�븳 �떖 �룞�븞 瑗쇨세�븯寃� 遺꾨━�닔嫄곕�� �빐二쇱꽭�슂. (�씤利� �궗吏� �삁 : 遺꾨━�닔嫄� �븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 3, '移쒗솚寃� �꽭�젣 留뚮뱾�뼱�꽌 �븳 �떖 �뜥蹂닿린', 
'吏곸젒 移쒗솚寃� �꽭�젣瑜� 留뚮뱾怨� 留뚮뱺 �꽭�젣瑜� �븳 �떖 �룞�븞 �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �꽭�젣 留뚮뱶�뒗 �궗吏�, �꽭�젣 �궗�슜 �궗吏�)',700,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 ��釉붾윭 梨숆린怨� �깮�솢�븯湲�',
'�븳 �떖 �룞�븞 �쇅異쒗븷 �븣 ��釉붾윭瑜� 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : ��釉붾윭 �궗�슜�븯�뒗 �궗吏�)',700 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �옣諛붽뎄�땲 梨숆린怨� �깮�솢�븯湲�',
'�븳 �떖 �룞�븞 �쇅異쒗븷 �븣 �옣諛붽뎄�땲瑜� 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �옣諛붽뎄�땲 �궗�슜�븯�뒗 �궗吏�)',500 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �꺎�뫖 ���떊 �꺎�뫖諛� �궗�슜�븯湲�',
'�븳 �떖 �룞�븞 �꺎�뫖 ���떊 �꺎�뫖諛붾�� �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �꺎�뫖諛� �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �떎�쉶�슜 留덉뒪�겕 李⑹슜�븯湲�',
'�븳 �떖 �룞�븞 �씪�쉶�슜 留덉뒪�겕 ���떊 �떎�쉶�슜 留덉뒪�겕瑜� �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �떎�쉶�슜 留덉뒪�겕 �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �쑕吏� ���떊 �넀�닔嫄� �뱾怨� �떎�땲湲�',
'�븳 �떖 �룞�븞 �쑕吏� ���떊 �넀�닔嫄댁쓣 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �넀�닔嫄� �궗�슜�븯�뒗 �궗吏�)', 700,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �뿉�뼱而� �궗�슜�떆 �쟻�젙�삩�룄(26�룄) �쑀吏��븯湲�',
'�븳 �떖 �룞�븞 �뿉�뼱而� �궗�슜 �떆 �쟻�젙�삩�룄(26�룄)濡� �쑀吏��빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �뿉�뼱而� 26�룄濡� 留욎떠吏� �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �궙 �떆媛꾩뿉�뒗 議곕챸 ���떊 �옄�뿰愿� �씠�슜�븯湲�',
'�븳 �떖 �룞�븞 �궙 �떆媛꾩뿉�뒗 議곕챸�쓣 �벐�뒗 ���떊 �옄�뿰愿묒쓣 �씠�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : 議곕챸�쓣 �궎吏� �븡怨� �옄�뿰愿� �씠�슜�븯�뒗 �궗吏�)',600 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 3, '�븳 �떖 �룞�븞 諛곕떖�쓬�떇 以꾩씠湲�',
'�븳 �떖 �룞�븞 諛곕떖�쓬�떇�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : 吏� 諛� 癒밸뒗 �궗吏�)',700 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 臾쇳떚�뒋 �궗�슜 以꾩씠湲�',
'�븳 �떖 �룞�븞 臾쇳떚�뒋 �궗�슜�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : 嫄몃젅�굹 �뻾二� �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �빖�뱶�룿 �뜙 �븯湲�', 
'�븳 �떖 �룞�븞 �빖�뱶�룿 �궗�슜�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : �쑕���룿 �씠�슜 �떆媛� �삱由ш린)', 500,30
);



insert into badge_image values (seq_badge_img_id.nextval, 'Lm1_�씪�쉶�슜以꾩씠湲�' , 'Lm1_�씪�쉶�슜以꾩씠湲�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm2_遺꾨━�닔嫄곗쿇�옱' , 'Lm2_遺꾨━�닔嫄곗쿇�옱.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm3_移쒗솚寃쎌꽭�젣�떖�씤' , 'Lm3_移쒗솚寃쎌꽭�젣�떖�씤.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm4_��釉붾윭' , 'Lm4_��釉붾윭.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm5_�옣諛붽뎄�땲' , 'Lm5_�옣諛붽뎄�땲.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm6_�꺎�뫖諛붿궗�슜�븯湲�' , 'Lm6_�꺎�뫖諛붿궗�슜�븯湲�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm7_�떎�쉶�슜留덉뒪�겕' , 'Lm7_�떎�쉶�슜留덉뒪�겕.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm8_�슦�븘�븯寃뚯넀�닔嫄�' , 'Lm8_�슦�븘�븯寃뚯넀�닔嫄�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm9_�삤議댁링吏��궡�씠' , 'Lm9_�삤議댁링吏��궡�씠.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm10_�옄�뿰愿묒궗�옉�빐!' , 'Lm10_�옄�뿰愿묒궗�옉�빐!.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm11_�솚寃쎌쓽誘쇱”' , 'Lm11_�솚寃쎌쓽誘쇱”.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm12_�뻾二�' , 'Lm12_�뻾二�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm13_�빖�뱶�룿' , 'Lm13_�빖�뱶�룿.png');

rollback;

commit;

select * from badge_image;

insert into badge_image values (seq_badge_img_id.nextval, 'Rm1_媛쒖씤1�쐞' , 'Rm1_媛쒖씤1�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm2_媛쒖씤2�쐞' , 'Rm2_媛쒖씤2�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm3_媛쒖씤3�쐞' , 'Rm3_媛쒖씤3�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm4_媛쒖씤4�쐞' , 'Rm4_媛쒖씤4�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm5_媛쒖씤5�쐞' , 'Rm5_媛쒖씤5�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm1_��1�쐞' , 'Tm1_��1�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm2_��2�쐞' , 'Tm2_��2�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm3_��3�쐞' , 'Tm3_��3�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm4_��4�쐞' , 'Tm4_��4�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm5_��5�쐞' , 'Tm5_��5�쐞.png');



commit;

select * from challenge;
select * from badge_image;



commit;
select *from challenge;
select * from badge_image;

ALTER TABLE challenge ADD(badge_img_id number);
ALTER TABLE challenge
ADD CONSTRAINT fk_badge_img_id  foreign key(badge_img_id) references badge_image(badge_img_id);

foreign key(member_id) references member(member_id
update challenge set badge_img_id =64 where challenge_id=14;

commit;


select *from challenge;
select * from badge;
select * from badge_image;
select * from member;
select * from challenge_join;
update member set member_pw='1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==' where member_id='qwerty';
commit;

--challenge_join
insert into challenge_join values ('honggd', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('honggd', 17, to_date('21/01/23'), trunc(to_date('21/01/23')+30));
insert into challenge_join values ('honggd', 21, to_date('21/02/16'), trunc(to_date('21/01/23')+30));
update challenge_join set confirm_date=to_date('21/02/16') where confirm_date=to_date('22/02/16');
commit;
update challenge_join set end_date=trunc(to_date('21/02/16')+30) where confirm_date=to_date('21/02/16');



insert into challenge_join values ('qwerty', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('qwerty', 17, to_date('21/02/03'), trunc(to_date('21/02/03')+30));
insert into challenge_join values ('qwerty', 21, to_date('21/01/16'), trunc(to_date('21/01/16')+30));
commit;

-- 諭껋� �씠誘몄� insert(challenge_join怨� �뿰寃�)
insert into badge values (seq_badge_id.nextval, 14, 'honggd', 64, sysdate);
insert into badge values (seq_badge_id.nextval, 17, 'honggd', 67, sysdate);
insert into badge values (seq_badge_id.nextval, 21, 'honggd', 71, sysdate);
insert into badge values (seq_badge_id.nextval, 22, 'honggd', 72, sysdate);
insert into challenge_join values ('honggd', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('honggd', 17, to_date('21/01/23'), trunc(to_date('21/01/23')+30));
insert into challenge_join values ('honggd', 21, to_date('21/02/16'), trunc(to_date('21/01/23')+30));
delete from challenge_join where member_id ='honggd' and challenge_id=22;
update challenge_join set confirm_date=to_date('21/02/16') where confirm_date=to_date('22/02/16');


commit;
select *from badge;
select * from challenge_join;
update badge set badge_date=trunc(to_date('21/02/16')+30) where badge_id=45;

insert into badge values (seq_badge_id.nextval, 14, 'qwerty', 64, sysdate+30);
insert into badge values (seq_badge_id.nextval, 17, 'qwerty', 67,  trunc(to_date('21/02/03')+30));
insert into badge values (seq_badge_id.nextval, 21, 'qwerty', 71, trunc(to_date('21/01/16')+30));

commit;


--�빐�떦�떖, �빐�떦 硫ㅻ쾭�쓽 諭껋� �젙蹂�
select * from badge where badge_date between (trunc(to_date('2021-05-24','yy/MM/dd'),'MM')) and (last_day(to_date('2021-05-24','yy/MM/dd'))) and member_id= 'qwerty';
select * from badge_image where badge_img_id in(select badge_img_id from badge where badge_date between trunc(to_date( '2021-02-01' ,'yy/MM/dd'),'MM') and last_day(to_date('2021-02-01','yy/MM/dd')) and member_id= 'honggd');



select * from badge;

select * from badge_image;
select * from badge_image where badge_img_id in (select badge_img_id from badge where badge_date between trunc(to_date('2021-02-01' ,'yy/MM/dd'),'MM') and (last_day(to_date('2021-02-01','yy/MM/dd'))) and member_id= 'qwerty');



commit; values (seq_badge_img_i
select g.student_no 학번, avg(point) 평점
from tb_grade g join tb_student s
    on g.student_no = s.student_no
where s.absence_yn ='N'
group by g.student_no having avg(point) > 4;
select d.department_name "계열 학과명"
    , round(avg(g.point),1) 전공평점
from tb_student s 
    join tb_grade g
        on s.student_no = g.student_no
    join tb_department d
        on s.department_no = d.department_no

group by s.department_no, d.department_name
order by "계열 학과명";
--珥� 19媛� �뀒�씠釉�
select * from tabs;
--梨뚮┛吏�
CREATE TABLE challenge (
	challenge_id	number		      NOT NULL,
	challenge_term_type	char(1)		  NOT NULL,
	challenge_level	number	      NOT NULL,
	challenge_name	varchar2(4000)	  NOT NULL,
	challenge_info	varchar2(4000)	  NOT NULL,
	challenge_point	number		      NOT NULL,
	challenge_term	number default 1  NOT NULL,
    
    constraint pk_challenge_id primary key(challenge_id),
    constraint ck_challenge_term_type check(challenge_term_type in ('S','L')),      -- challenge �븯猷�/湲곌컙 援щ텇(S/L)
    constraint ck_challenge_level check(challenge_level in (1,2,3))         -- challenge 媛뺣룄 援щ텇(1-�븯 / 2-以�/ 3-�긽)
);

--�쑀��
CREATE TABLE member (
	member_id varchar2(15)		NOT NULL,
	member_pw 	varchar2(300)		NOT NULL,
	member_name 	varchar2(50)		NOT NULL,
	member_nickname	varchar2(50)		NOT NULL,
	member_email	varchar2(100)		NULL,
	member_phone	char(11)		NOT NULL,
	member_team	char(1)	DEFAULT 'N'	NOT NULL,
	member_picture	varchar2(4000)	DEFAULT '湲곕낯 �씠誘몄�'	NOT NULL,
	member_role	char(1)	DEFAULT 'U'	NOT NULL,
	access_token	varchar2(4000)		NULL,

    constraint pk_member_id primary key(member_id),
    constraint ck_member_team check(member_team in ('N','Y')),      -- ���뿉 �냽�빐�엳吏� �븡�떎('N') / ���뿉 �냽�빐 �엳�떎('Y')
    constraint ck_member_role check(member_role in ('U','A'))         -- 'U' : �씪諛� �궗�슜�옄 / 'A' : 愿�由ъ옄
);

--�룷�씤�듃 (媛쒖씤)
CREATE TABLE personal_point (
	p_point_id	number		    NOT NULL,
	challenge_id	number,
	member_id	varchar2(15)		NOT NULL,
	point	number	DEFAULT 0	NOT NULL,
	point_date	date	DEFAULT sysdate	NOT NULL,
    
    constraint pk_personal_point_id primary key(p_point_id),
    constraint fk_personal_point_member_id foreign key(member_id) references member(member_id) on delete cascade,                       --�깉�눜�떆 �룷�씤�듃 �궘�젣
    constraint fk_personal_point_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null   --梨뚮┛吏� �궘�젣 �떆 洹몃�濡� �궓�븘 �엳�쓬
);

--諭껋�
CREATE TABLE badge (
	badge_id number         NOT NULL,
	challenge_id number,
	member_id	varchar2(15)    NOT NULL,
	badge_img_id	number	NOT NULL,
	badge_date date DEFAULT sysdate	NOT NULL,
    
    constraint pk_badge_id primary key(badge_id),
    constraint fk_badge_member_id foreign key(member_id) references member(member_id) on delete cascade,                     --�궗�슜�옄 �깉�눜�떆 媛숈씠 �궘�젣
    constraint fk_badge_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete  set null,       --梨뚮┛吏� �궘�젣�빐�룄 洹몃�濡� 議댁옱
    constraint fk_badge_badge_img_id foreign key(badge_img_id) references badge_image(badge_img_id) on delete cascade        --諭껋� �씠誘몄� �궘�젣 �떆 媛숈씠 �궘�젣
);
--諭껋� �씠誘몄� ���옣
CREATE TABLE badge_image (
	badge_img_id	number		NOT NULL,
	badge_name	varchar2(100)		NOT NULL,
	badge_img	varchar2(4000)		NOT NULL,       --badge �뙆�씪紐�
    
    constraint pk_badge_img_id primary key(badge_img_id)    
);


COMMENT ON COLUMN badge_image.badge_img IS '�씠誘몄� 寃쎈줈';

--寃뚯떆湲� (怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
CREATE TABLE article (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	a_type	varchar2(15)		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_aritlce_id primary key(a_id),
    constraint fk_member_id foreign key(member_id) references member(member_id) on delete set null          --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
);

--�씤利� 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_confirm (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	challenge_id	number,
	confirm_type	varchar2(10)		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_a_confirm_id primary key(a_id),
    constraint fk_a_confirm_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
    constraint fk_a_confirm__challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null  --梨뚮┛吏� �궘�젣�빐�룄 �� 議댁옱
);

--���썝 李얘린 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_search_team (
	a_id	number		NOT NULL,
	member_id	varchar2(15),
	challenge_id	number,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
	s_team_count	number	DEFAULT 4	NOT NULL,
    
    constraint pk_a_search_team_id primary key(a_id),
    constraint fk_a_search_team_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱
    constraint fk_a_search_team_challenge_id foreign key(challenge_id) references challenge(challenge_id) on delete set null  --梨뚮┛吏� �궘�젣�빐�룄 �� 議댁옱
);

--�슦由� �� 寃뚯떆�뙋 寃뚯떆湲�
CREATE TABLE a_team (
	team_a_id	number		NOT NULL,
	member_id	varchar2(15)		NOT NULL,
	a_id	number		NOT NULL,
	a_title	varchar2(1000)		NOT NULL,
	a_content	varchar2(4000)		NOT NULL,
	a_reg_date	date	DEFAULT sysdate	NOT NULL,
	a_read_count	number	DEFAULT 0	NOT NULL,
	a_like	number	DEFAULT 0	NOT NULL,
    
    constraint pk_a_team_id primary key(team_a_id),
    constraint fk_a_team_member_id foreign key(member_id) references member(member_id) on delete set null,                       --�궗�슜�옄 �깉�눜�빐�룄 洹몃�濡� 議댁옱                   
    constraint fk_a_team_a_id foreign key(a_id) references a_search_team(a_id) on delete cascade --梨뚮┛吏� �궘�젣(梨뚮┛吏� �걹)�굹硫� 媛숈씠 �궘�젣
);

alter table a_team
modify(member_id null);

commit;

--��
CREATE TABLE team (
	team_id	number		    NOT NULL,
	member_id	varchar2(15)	NOT NULL,
	a_id	number		NOT NULL,
	team_start_day date DEFAULT sysdate	NOT NULL,
    
    constraint pk_team_id primary key(team_id),
    constraint fk_team_member_id foreign key(member_id) references member(member_id) on delete cascade,      --member �깉�눜 �떆 ���룄 媛숈씠 �깉�눜
    constraint fk_team_a_id foreign key(a_id) references a_search_team(a_id)  --李몄“ �떆 遺�紐�(���썝李얘린寃뚯떆湲�) �궘�젣 遺덇�
);

--�룷�씤�듃(��)
CREATE TABLE team_point (
	t_point_id	number		NOT NULL,
	member_id	varchar2(15)		NOT NULL,
	a_id	number		NOT NULL,
	point	number	DEFAULT 0	NOT NULL,
	point_date	date	DEFAULT sysdate	NOT NULL,
    
    constraint pk_team_point_id primary key(t_point_id),
    constraint fk_team_point_member_id foreign key(member_id) references member(member_id) on delete cascade,        --�쉶�썝�깉�눜�떆 媛숈씠 �궘�젣
    constraint fk_team_point_a_id foreign key(a_id) references a_search_team(a_id)   --李몄“ �떆 遺�紐�(���썝李얘린寃뚯떆湲�) �궘�젣 遺덇�
);

--泥⑤��뙆�씪(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
CREATE TABLE attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_attachment_id primary key(attachment_id),
    constraint fk_attachment_a_id foreign key(a_id) references article(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(�씤利�)
CREATE TABLE confirm_attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_confirm_attachment_id primary key(attachment_id),
    constraint fk_confirm_attachment_a_id foreign key(a_id) references a_confirm(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_confirm_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(���썝李얘린) ** ���썝李얘린 = s_
CREATE TABLE s_team_attachment (
	attachment_id	number		NOT NULL,
	a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_s_team_attachment_id primary key(attachment_id),
    constraint fk_s_team_attachment_a_id foreign key(a_id) references a_search_team(a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_s_team_attachment_status check(attachment_status in ('Y','N'))
);

--泥⑤��뙆�씪(�슦由ы� 寃뚯떆湲�) ** �슦由ы� = a_
CREATE TABLE a_team_attachment (
	attachment_id	number		NOT NULL,
	team_a_id	number		NOT NULL,
	original_filename	varchar2(255)		NOT NULL,
	renamed_filename	varchar2(255)		NOT NULL,
	attachment_status	char(1)	DEFAULT 'Y'	NOT NULL,
    
    constraint pk_a_team_attachment_id primary key(attachment_id),
    constraint fk_a_team_attachment_team_a_id foreign key(team_a_id) references a_team(team_a_id) on delete cascade,   --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
	constraint ck_a_team_attachment_status check(attachment_status in ('Y','N'))
);

--�뙎湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
create table a_comment (
    comment_id number not null,
    member_id varchar2(15),
    a_id number not null,
    comment_content varchar2(2000) not null,
    comment_reg_date date default sysdate,
    comment_level number default 1 not null,
    comment_ref number,
    
    constraint pk_a_comment_id primary key(comment_id),
    constraint fk_a_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                     --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_a_comment_a_id foreign key(a_id) references article(a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_a_comment_comment_ref foreign key(comment_ref) references a_comment(comment_id) on delete set null        --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)
);

--�뙎湲�(�씤利�)
CREATE TABLE confirm_comment (
	comment_id	number		NOT NULL,
	member_id	varchar2(15),
	a_id	number		NOT NULL,
	comment_content	varchar2(2000)		NOT NULL,
	comment_reg_date	date	DEFAULT sysdate	NOT NULL,
	comment_level	number	DEFAULT 1	NOT NULL,
	comment_ref	number,
    
    constraint pk_confirm_comment_id primary key(comment_id),
    constraint fk_confirm_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                             --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_confirm_comment_a_id foreign key(a_id) references a_confirm(a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_confirm_comment_comment_ref foreign key(comment_ref) references confirm_comment(comment_id) on delete set null        --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)  
);

--�뙎湲�(�슦由ы�)
CREATE TABLE team_comment (
	comment_id	number		NOT NULL,
	team_a_id	number		NOT NULL,
	member_id	varchar2(15),
	comment_content	varchar2(2000)		NOT NULL,
	comment_reg_date	date	DEFAULT sysdate	NOT NULL,
	comment_level	number	DEFAULT 1	NOT NULL,
	comment_ref	number,
    
    constraint pk_comment_id primary key(comment_id),
    constraint fk_comment_team_a_id foreign key(team_a_id) references a_team(team_a_id) on delete cascade,          --寃뚯떆湲� �궘�젣�떆 媛숈씠 �궘�젣
    constraint fk_comment_member_id foreign key(member_id) references member(member_id) on delete set null,                                         --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_comment_comment_ref foreign key(comment_ref) references team_comment(comment_id) on delete set null                       --李몄“ �뙎湲� �궘�젣�빐�룄 洹몃�濡�.(null泥섎━)
);

--�� �떊泥��옄
CREATE TABLE request_team (
	request_id	number		NOT NULL,
	member_id	varchar2(15),
	a_id	number		NOT NULL,
    
    constraint pk_request_team_id primary key(request_id),
    constraint fk_request_team_member_id foreign key(member_id) references member(member_id) on delete set null,          --�궗�슜�옄 �깉�눜�떆 null 泥섎━
    constraint fk_request_team_a_id foreign key(a_id) references a_search_team(a_id)      -- ���썝李얘린 寃뚯떆湲� �궘�젣 紐삵븿
);

--sequence
create sequence seq_team_id;
create sequence seq_a_comment_id;
create sequence seq_p_point_id;
create sequence seq_badge_id;
create sequence seq_badge_img_id;
create sequence seq_attachment_id;
create sequence seq_t_point_id;
create sequence seq_article_id;
create sequence seq_a_confirm_id;
create sequence seq_a_search_team_id;
create sequence seq_confirm_attachment_id;
create sequence seq_search_team_attachment_id;
create sequence seq_confirm_comment_id;
create sequence seq_team_comment_id;
create sequence seq_a_team_id;
create sequence seq_request_id;
create sequence seq_team_attachment_id;
create sequence seq_challenge_id;

--
select * from member; --�궗�슜�옄
select * from article; --寃뚯떆湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
select * from a_confirm; --�씤利� 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from a_search_team; --���썝 李얘린 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from a_team; --�슦由ы� 寃뚯떆�뙋�쓽 寃뚯떆湲�
select * from challenge; --梨뚮┛吏�

--�뀒�뒪�듃�슜 �쑀��
insert into member
values (
'honggd', '1234', '�솉湲몃룞', '湲몃룞', 'honggd@naver.com', '01011111111','Y', default, default, 'access_token_1234'
);

insert into member
values (
'qwerty', '1234', '荑좎뼱�떚', '�뼱�떚', 'qwerty@naver.com', '01022222222','N', default, default, 'access_token_2345'
);

insert into member
values (
'aaaaa', '1234', '�븘�븘�븘', '�븘�븘', 'aaaaa@naver.com', '01033333333','Y', default, default, 'access_token_3456'
);

insert into member
values (
'bbbbb', '1234', '鍮꾨퉬鍮�', '鍮꾨퉬', 'bbbbb@naver.com', '01034343434','N', default, default, 'access_token_4567'
);

insert into member
values (
'ccccc', '1234', '�뵪�뵪�뵪', '�뵪�뵪', 'ccccc@naver.com', '01045454545','Y', default, default, 'access_token_5678'
);

insert into member
values (
'ddddd', '1234', '�뵒�뵒�뵒', '�뵒�뵒', 'ddddd@naver.com', '01056565656','Y', default, default, NULL
);

insert into member
values (
'eeeee', '1234', '�씠�씠�씠', '�씠�씠', 'eeeee@naver.com', '01067676767','Y', default, default, NULL
);

insert into member
values (
'fffff', '1234', '�뿉�봽�봽', '�뿉�봽', 'fffff@naver.com', '01078787878','Y', default, default, 'access_token_6789'
);

insert into member
values (
'ggggg', '3456', '伊먯쪖伊�', '伊먯쪖', 'ggggg@naver.com', '01090909090','Y', default, default, 'access_token_0000'
);

insert into member
values (
'hhhhh', '3456', '�뿉�씠移�', '�뿉移�', 'hhhhh@naver.com', '01034561234','N', default, default, 'access_token_0666'
);

insert into member
values (
'iiiii', '3456', '�븘�씠�븘', '�븘�씠', 'iiiii@naver.com', '01011122221','N', default, default, 'access_token_7700'
);

insert into member
values (
'jjjjj', '3456', '�젣�씠�젣', '�젣�씠', 'jjjjj@naver.com', '01037373737','N', default, default, 'access_token_0880'
);

insert into member
values (
'kkkkk', '3456', '耳�耳�耳�', '耳�耳�', 'kkkkk@naver.com', '01023122312','N', default, default, 'access_token_4354'
);

insert into member
values (
'temp0', '3456', '�뀥�봽�쁺', '�뀥0', 'temp0@naver.com', '01012123434','N', default, default, NULL
);

insert into member
values (
'temp1', '3456', '�뀥�봽�씪', '�뀥1', 'temp1@naver.com', '01056567676','N', default, default, NULL
);
insert into member
values (
'admin1', '1234', '愿�由ъ옄1', '愿�由ъ옄2', 'admin1@naver.com', '01044444444',default, '愿�由ъ옄�씠誘몄�', 'A', NULL
);

insert into member
values (
'admin2', '1234', '愿�由ъ옄1', '愿�由ъ옄2', 'admin2@naver.com', '01055555555',default, '愿�由ъ옄�씠誘몄�', 'A', NULL
);

--�뀒�뒪�듃�슜 寃뚯떆湲�(怨듭��궗�빆/而ㅻ�ㅻ땲�떚)
insert into article
values (
seq_article_id.nextval,'honggd','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 1','�븞�뀞�븯�꽭�슂 蹂몃Ц - 1', to_date('18/02/14','RR/MM/DD'), default, default
);
insert into article
values (
seq_article_id.nextval,'aaaaa','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 2','�븞�뀞�븯�꽭�슂 蹂몃Ц - 2',to_date('18/03/16','RR/MM/DD'), default, default
);
insert into article
values (
seq_article_id.nextval,'bbbbb','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 3','�븞�뀞�븯�꽭�슂 蹂몃Ц - 3',to_date('18/03/24','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'ccccc','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 4','�븞�뀞�븯�꽭�슂 蹂몃Ц - 4',to_date('18/04/14','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'aaaaa','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 5','�븞�뀞�븯�꽭�슂 蹂몃Ц - 5',to_date('18/04/24','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin1','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 1','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 1',to_date('18/05/08','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'ddddd','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 6','�븞�뀞�븯�꽭�슂 蹂몃Ц - 6',to_date('18/05/25','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 7','�븞�뀞�븯�꽭�슂 蹂몃Ц - 7',to_date('18/06/12','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 8','�븞�뀞�븯�꽭�슂 蹂몃Ц - 8',to_date('18/06/14','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 9','�븞�뀞�븯�꽭�슂 蹂몃Ц - 9',to_date('18/07/10','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin2','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 2','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 2',to_date('18/07/23','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 10','�븞�뀞�븯�꽭�슂 蹂몃Ц - 10',to_date('18/08/18','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'eeeee','而ㅻ�ㅻ땲�떚','�븞�뀞�븯�꽭�슂, 寃뚯떆�뙋�엯�땲�떎 - 11','�븞�뀞�븯�꽭�슂 蹂몃Ц - 11',to_date('18/09/29','RR/MM/DD'),default, default
);
insert into article
values (
seq_article_id.nextval,'admin2','怨듭��궗�빆','�븞�뀞�븯�꽭�슂, 怨듭��궗�빆�엯�땲�떎 - 3','�븞�뀞�븯�꽭�슂 怨듭� 蹂몃Ц - 3',to_date('18/10/10','RR/MM/DD'),default, default
);

--�뀒�뒪�듃�슜 �씤利� 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_confirm
values (
seq_a_confirm_id.nextval,'ggggg',4,'�븯猷�','�뾽�궗�씠�겢留� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �뾽�궗�씠�겢留� �씤利앹엯�땲�떎',to_date('18/01/01','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'qwerty',15,'湲곌컙','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/02/05','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'eeeee',20,'��','�떎�쉶�슜 留덉뒪�겕 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �떎�쉶�슜 留덉뒪�겕 �씤利앹엯�땲�떎',to_date('18/03/22','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ddddd',17,'��','��釉붾윭 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 ��釉붾윭 �씤利앹엯�땲�떎',to_date('18/04/14','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'eeeee',3,'�븯猷�','怨꾨떒 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 怨꾨떒 �씤利앹엯�땲�떎',to_date('18/05/05','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'hhhhh',15,'湲곌컙','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/05/27','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'jjjjj',18,'湲곌컙','�옣諛붽뎄�땲 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �옣諛붽뎄�땲 �씤利앹엯�땲�떎',to_date('18/06/13','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ccccc',10,'�븯猷�','�벐�젅湲� 以띻린 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 �벐�젅湲� 以띻린 �씤利앹엯�땲�떎',to_date('18/06/26','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ggggg',15,'��','遺꾨━�닔嫄� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 遺꾨━�닔嫄� �씤利앹엯�땲�떎',to_date('18/07/02','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'fffff',24,'��','諛곕떖�쓬�떇 以꾩씠湲� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 諛곕떖�쓬�떇 以꾩씠湲� �씤利앹엯�땲�떎',to_date('18/07/17','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'ccccc',12,'�븯猷�','�솚寃� 罹좏럹�씤 吏묓쉶 �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 吏묓쉶 李몄뿬 �씤利앹엯�땲�떎',to_date('18/08/26','RR/MM/DD'),default, default
);

insert into a_confirm
values (
seq_a_confirm_id.nextval,'honggd',11,'�븯猷�','媛쒖씤 �슜湲� �씤利앹씠�슂','�븞�뀞�븯�꽭�슂 媛쒖씤 �슜湲� �씤利앹엯�땲�떎',to_date('18/08/30','RR/MM/DD'),default, default
);

--�뀒�뒪�듃�슜 ���썝 李얘린 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_search_team
values (
seq_a_search_team_id.nextval,'bbbbb',15,'遺꾨━�닔嫄� 媛숈씠 �븯�떎遺�?','遺꾨━�닔嫄� 媛숈씠�빐�슂~ �� �룷�븿 4紐낆씠�꽌 �빀�떆�떎~',to_date('18/01/01','RR/MM/DD'),default,default,default
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'hhhhh',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/02/02','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'iiiii',18,'�븳 �떖 �룞�븞 �옣諛붽뎄�땲 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/03/03','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',24,'�븳 �떖 �룞�븞 諛곕떖�쓬�떇 以꾩엯�떆�떎~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/03/13','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'kkkkk',21,'�븳 �떖 �룞�븞 �넀�닔嫄� �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/04/04','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'qwerty',20,'�븳 �떖 �룞�븞 �떎�쉶�슜留덉뒪�겕 �궗�슜�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/05/05','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'temp0',22,'�븳 �떖 �룞�븞 �뿉�뼱而� �쟻�젙�삩�룄 �쑀吏��빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/06/06','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'temp1',15,'�븳 �떖 �룞�븞 遺꾨━�닔嫄� 媛숈씠�빐�슂~','�� �룷�븿 10紐낆씠�꽌 �빀�떆�떎~',to_date('18/07/07','RR/MM/DD'),default,default,10
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'kkkkk',25,'�븳 �떖 �룞�븞 臾쇳떚�뒋 �뜙�궗�슜�빐�슂~','�� �룷�븿 9紐낆씠�꽌 �빀�떆�떎~',to_date('18/08/08','RR/MM/DD'),default,default,9
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',26,'�븳 �떖 �룞�븞 �빖�뱶�룿 �뜙 �궗�슜�빐�슂~','�� �룷�븿 4紐낆씠�꽌 �빀�떆�떎~',to_date('18/09/09','RR/MM/DD'),default,default,4
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'iiiii',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 5紐낆씠�꽌 �빀�떆�떎~',to_date('18/10/01','RR/MM/DD'),default,default,5
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'hhhhh',18,'�븳 �떖 �룞�븞 �옣諛붽뎄�땲 �궗�슜�빐�슂~','�� �룷�븿 6紐낆씠�꽌 �빀�떆�떎~',to_date('18/11/01','RR/MM/DD'),default,default,6
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'bbbbb',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 7紐낆씠�꽌 �빀�떆�떎~',to_date('18/12/01','RR/MM/DD'),default,default,7
);

insert into a_search_team
values (
seq_a_search_team_id.nextval,'jjjjj',17,'�븳 �떖 �룞�븞 ��釉붾윭 �궗�슜�빐�슂~','�� �룷�븿 8紐낆씠�꽌 �빀�떆�떎~',to_date('18/12/12','RR/MM/DD'),default,default,8
);

--�뀒�뒪�듃�슜 �슦由ы� 寃뚯떆�뙋�쓽 寃뚯떆湲�
insert into a_team
values (
seq_a_team_id.nextval,'ddddd',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂1?','遺꾨━�닔嫄�',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'honggd',2,'��釉붾윭 �궗�슜�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'aaaaa',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂2?','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ccccc',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂3?','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ddddd',2,'��釉붾윭 �궗�슜�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'eeeee',1,'遺꾨━�닔嫄� �옒 �븯怨� 怨꾩꽭�슂?4','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'fffff',2,'��釉붾윭 �궗�슜�씠�슂3','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ggggg',2,'��釉붾윭 �궗�슜�씠�슂4','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'ccccc',1,'遺꾨━�닔嫄� 吏덈Ц�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'eeeee',1,'遺꾨━�닔嫄� 吏덈Ц�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'fffff',2,'��釉붾윭 吏덈Ц�씠�슂1','�븞�뀞�븯�꽭�슂~',default,default,default
);

insert into a_team
values (
seq_a_team_id.nextval,'honggd',2,'��釉붾윭 吏덈Ц�씠�슂2','�븞�뀞�븯�꽭�슂~',default,default,default
);

commit;
--梨뚮┛吏�
select * from challenge;

insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 異쒗눜洹쇱떆 �옄媛��슜 �씠�슜 �븞 �븯湲�', '�삤�뒛 �옄媛��슜 ���떊�뿉 ��以묎탳�넻/ 嫄룰린/ �옄�쟾嫄곕줈 異쒗눜洹� �븯怨� �씤利� �궗吏꾩쓣 �젣異쒗빐二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �솚寃� 蹂댄샇 愿��젴 SNS 肄섑뀗痢� 寃뚯떆', '�삤�뒛 SNS�뿉 �솚寃� 蹂댄샇 愿��젴 肄섑뀗痢좊�� 寃뚯떆�븳 �썑 寃뚯떆臾쇱쓣 罹≪퀜�빐二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 �뿕由щ쿋�씠�꽣 ���떊 怨꾨떒 �씠�슜�븯湲�', '�삤�뒛 �뿕由щ쿋�씠�꽣 ���떊 怨꾨떒 �씠�슜�븯怨� 怨꾨떒怨� �떊諛쒖씠 蹂댁씠�룄濡� �궗吏꾩쓣 李띿뼱 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�삤�뒛 �뾽�궗�씠�겢留곹븯湲�', '�삤�뒛 �뾽�궗�씠�겢�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 援щℓ�떆 �젣濡� �썾�씠�뒪�듃 留ㅼ옣�뿉�꽌 援щℓ�븯湲�', '�삤�뒛 �씪諛� 留ㅼ옣 ���떊 �젣濡� �썾�씠�뒪�듃 留ㅼ옣�뿉�꽌 援щℓ�븯怨� 援щℓ�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �넻吏��꽌, �븞�궡臾� �쟾�옄 臾몄꽌濡� �닔�떊 諛� �뿴�엺 �떊泥��븯湲�', '�삤�뒛 醫낆씠 �슦�렪臾쇱쓣 以꾩씠湲� �쐞�빐�꽌 �넻吏��꽌, �븞�궡臾� �쟾�옄 臾몄꽌濡� �닔�떊 諛� �뿴�엺 �떊泥��븯怨� �떊泥��븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 媛��쟾�젣�뭹 諛� �쟾湲곗슜�뭹 誘� �궗�슜�떆 肄붾뱶 鍮쇨린', '�삤�뒛 媛��쟾�젣�뭹 諛� �쟾湲� �슜�뭹 誘� �궗�슜�떆 肄붾뱶瑜� 鍮쇨퀬 �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.',100 ,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 1, '�삤�뒛 �쓬�떇 �궓湲곗� �븡怨� �떎 癒밴린', '�삤�뒛 �쓬�떇�쓣 �궓湲곗� �븡怨� �떎 癒밴퀬 �떎 癒뱀� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 100,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 二쇰Ц�떆 移쒗솚寃� �룷�옣�옱 �궗�슜�븯�뒗 怨녹뿉�꽌 二쇰Ц�븯湲�', '�삤�뒛 移쒗솚寃� �룷�옣�옱 �궗�슜�븯�뒗 怨녹뿉�꽌 二쇰Ц�븳 �뮘 �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�삤�뒛 湲멸굅由� �벐�젅湲� 以띻린', '�삤�뒛 湲멸굅由ъ뿉 �엳�뒗 �벐�젅湲곕�� 以띻퀬 二쇱슫 �벐�젅湲� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 �룷�옣�떆 媛쒖씤�슜湲� �궗�슜�븯湲�', '�삤�뒛 �쓬�떇�쓣 �룷�옣�븷 �븣 媛쒖씤�슜湲곗뿉 �룷�옣�븯怨� �씤利� �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 3, '�솚寃� 罹좏럹�씤 吏묓쉶 李몄뿬', '�삤�뒛 �솚寃� 罹좏럹�씤 吏묓쉶�뿉 李몄뿬�븳 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 300,1
);
insert into challenge
values (
seq_challenge_id.nextval, 'S', 2, '�삤�뒛 硫붿씪�븿 鍮꾩슦湲�', '�삤�뒛 硫붿씪�븿�쓣 鍮꾩슫 �궗吏꾩쓣 �삱�젮二쇱꽭�슂.', 200,1
);

--湲곌컙 梨뚮┛吏�
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �씪�쉶�슜�뭹 �궗�슜 理쒖냼�븳�쑝濡� �븯湲�',
'�븳 �떖 �룞�븞 利됱꽍諛� ���떊 諛μ넡�쑝濡� 吏곸젒 諛μ쓣 �빐癒밴굅�굹, �깮�닔 二쇰Ц �떆 鍮� 蹂묒쓣 �쉶�닔�븯�뒗 �깮�닔濡� 二쇰Ц�븯�뒗 �벑 �씪�쉶�슜�뭹�쓣 理쒖냼�븳�쑝濡� �궗�슜�빐 二쇱꽭�슂.', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 遺꾨━�닔嫄� �젣��濡� �븯湲�',
'�븳 �떖 �룞�븞 瑗쇨세�븯寃� 遺꾨━�닔嫄곕�� �빐二쇱꽭�슂. (�씤利� �궗吏� �삁 : 遺꾨━�닔嫄� �븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 3, '移쒗솚寃� �꽭�젣 留뚮뱾�뼱�꽌 �븳 �떖 �뜥蹂닿린', 
'吏곸젒 移쒗솚寃� �꽭�젣瑜� 留뚮뱾怨� 留뚮뱺 �꽭�젣瑜� �븳 �떖 �룞�븞 �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �꽭�젣 留뚮뱶�뒗 �궗吏�, �꽭�젣 �궗�슜 �궗吏�)',700,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 ��釉붾윭 梨숆린怨� �깮�솢�븯湲�',
'�븳 �떖 �룞�븞 �쇅異쒗븷 �븣 ��釉붾윭瑜� 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : ��釉붾윭 �궗�슜�븯�뒗 �궗吏�)',700 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �옣諛붽뎄�땲 梨숆린怨� �깮�솢�븯湲�',
'�븳 �떖 �룞�븞 �쇅異쒗븷 �븣 �옣諛붽뎄�땲瑜� 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �옣諛붽뎄�땲 �궗�슜�븯�뒗 �궗吏�)',500 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �꺎�뫖 ���떊 �꺎�뫖諛� �궗�슜�븯湲�',
'�븳 �떖 �룞�븞 �꺎�뫖 ���떊 �꺎�뫖諛붾�� �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �꺎�뫖諛� �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �떎�쉶�슜 留덉뒪�겕 李⑹슜�븯湲�',
'�븳 �떖 �룞�븞 �씪�쉶�슜 留덉뒪�겕 ���떊 �떎�쉶�슜 留덉뒪�겕瑜� �궗�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �떎�쉶�슜 留덉뒪�겕 �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �쑕吏� ���떊 �넀�닔嫄� �뱾怨� �떎�땲湲�',
'�븳 �떖 �룞�븞 �쑕吏� ���떊 �넀�닔嫄댁쓣 梨숆린怨� �쇅異쒗빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �넀�닔嫄� �궗�슜�븯�뒗 �궗吏�)', 700,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �뿉�뼱而� �궗�슜�떆 �쟻�젙�삩�룄(26�룄) �쑀吏��븯湲�',
'�븳 �떖 �룞�븞 �뿉�뼱而� �궗�슜 �떆 �쟻�젙�삩�룄(26�룄)濡� �쑀吏��빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : �뿉�뼱而� 26�룄濡� 留욎떠吏� �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 �궙 �떆媛꾩뿉�뒗 議곕챸 ���떊 �옄�뿰愿� �씠�슜�븯湲�',
'�븳 �떖 �룞�븞 �궙 �떆媛꾩뿉�뒗 議곕챸�쓣 �벐�뒗 ���떊 �옄�뿰愿묒쓣 �씠�슜�빐 二쇱꽭�슂. (�씤利� �궗吏� �삁 : 議곕챸�쓣 �궎吏� �븡怨� �옄�뿰愿� �씠�슜�븯�뒗 �궗吏�)',600 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 3, '�븳 �떖 �룞�븞 諛곕떖�쓬�떇 以꾩씠湲�',
'�븳 �떖 �룞�븞 諛곕떖�쓬�떇�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : 吏� 諛� 癒밸뒗 �궗吏�)',700 ,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 2, '�븳 �떖 �룞�븞 臾쇳떚�뒋 �궗�슜 以꾩씠湲�',
'�븳 �떖 �룞�븞 臾쇳떚�뒋 �궗�슜�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : 嫄몃젅�굹 �뻾二� �궗�슜�븯�뒗 �궗吏�)', 600,30
);
insert into challenge
values (
seq_challenge_id.nextval, 'L', 1, '�븳 �떖 �룞�븞 �빖�뱶�룿 �뜙 �븯湲�', 
'�븳 �떖 �룞�븞 �빖�뱶�룿 �궗�슜�쓣 以꾩뿬二쇱꽭�슂. (�씤利� �궗吏� �삁 : �쑕���룿 �씠�슜 �떆媛� �삱由ш린)', 500,30
);



insert into badge_image values (seq_badge_img_id.nextval, 'Lm1_�씪�쉶�슜以꾩씠湲�' , 'Lm1_�씪�쉶�슜以꾩씠湲�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm2_遺꾨━�닔嫄곗쿇�옱' , 'Lm2_遺꾨━�닔嫄곗쿇�옱.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm3_移쒗솚寃쎌꽭�젣�떖�씤' , 'Lm3_移쒗솚寃쎌꽭�젣�떖�씤.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm4_��釉붾윭' , 'Lm4_��釉붾윭.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm5_�옣諛붽뎄�땲' , 'Lm5_�옣諛붽뎄�땲.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm6_�꺎�뫖諛붿궗�슜�븯湲�' , 'Lm6_�꺎�뫖諛붿궗�슜�븯湲�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm7_�떎�쉶�슜留덉뒪�겕' , 'Lm7_�떎�쉶�슜留덉뒪�겕.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm8_�슦�븘�븯寃뚯넀�닔嫄�' , 'Lm8_�슦�븘�븯寃뚯넀�닔嫄�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm9_�삤議댁링吏��궡�씠' , 'Lm9_�삤議댁링吏��궡�씠.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm10_�옄�뿰愿묒궗�옉�빐!' , 'Lm10_�옄�뿰愿묒궗�옉�빐!.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm11_�솚寃쎌쓽誘쇱”' , 'Lm11_�솚寃쎌쓽誘쇱”.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm12_�뻾二�' , 'Lm12_�뻾二�.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Lm13_�빖�뱶�룿' , 'Lm13_�빖�뱶�룿.png');

rollback;

commit;

select * from badge_image;

insert into badge_image values (seq_badge_img_id.nextval, 'Rm1_媛쒖씤1�쐞' , 'Rm1_媛쒖씤1�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm2_媛쒖씤2�쐞' , 'Rm2_媛쒖씤2�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm3_媛쒖씤3�쐞' , 'Rm3_媛쒖씤3�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm4_媛쒖씤4�쐞' , 'Rm4_媛쒖씤4�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Rm5_媛쒖씤5�쐞' , 'Rm5_媛쒖씤5�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm1_��1�쐞' , 'Tm1_��1�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm2_��2�쐞' , 'Tm2_��2�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm3_��3�쐞' , 'Tm3_��3�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm4_��4�쐞' , 'Tm4_��4�쐞.png');
insert into badge_image values (seq_badge_img_id.nextval, 'Tm5_��5�쐞' , 'Tm5_��5�쐞.png');



commit;

select * from challenge;
select * from badge_image;



commit;
select *from challenge;
select * from badge_image;

ALTER TABLE challenge ADD(badge_img_id number);
ALTER TABLE challenge
ADD CONSTRAINT fk_badge_img_id  foreign key(badge_img_id) references badge_image(badge_img_id);

foreign key(member_id) references member(member_id
update challenge set badge_img_id =64 where challenge_id=14;

commit;


select *from challenge;
select * from badge;
select * from badge_image;
select * from member;
select * from challenge_join;
update member set member_pw='1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==' where member_id='qwerty';
commit;

--challenge_join
insert into challenge_join values ('honggd', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('honggd', 17, to_date('21/01/23'), trunc(to_date('21/01/23')+30));
insert into challenge_join values ('honggd', 21, to_date('21/02/16'), trunc(to_date('21/01/23')+30));
update challenge_join set confirm_date=to_date('21/02/16') where confirm_date=to_date('22/02/16');
commit;
update challenge_join set end_date=trunc(to_date('21/02/16')+30) where confirm_date=to_date('21/02/16');



insert into challenge_join values ('qwerty', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('qwerty', 17, to_date('21/02/03'), trunc(to_date('21/02/03')+30));
insert into challenge_join values ('qwerty', 21, to_date('21/01/16'), trunc(to_date('21/01/16')+30));
commit;

-- 諭껋� �씠誘몄� insert(challenge_join怨� �뿰寃�)
insert into badge values (seq_badge_id.nextval, 14, 'honggd', 64, sysdate);
insert into badge values (seq_badge_id.nextval, 17, 'honggd', 67, sysdate);
insert into badge values (seq_badge_id.nextval, 21, 'honggd', 71, sysdate);
insert into badge values (seq_badge_id.nextval, 22, 'honggd', 72, sysdate);
insert into challenge_join values ('honggd', 14, sysdate, trunc(sysdate+30));
insert into challenge_join values ('honggd', 17, to_date('21/01/23'), trunc(to_date('21/01/23')+30));
insert into challenge_join values ('honggd', 21, to_date('21/02/16'), trunc(to_date('21/01/23')+30));
delete from challenge_join where member_id ='honggd' and challenge_id=22;
update challenge_join set confirm_date=to_date('21/02/16') where confirm_date=to_date('22/02/16');


commit;
select *from badge;
select * from challenge_join;
update badge set badge_date=trunc(to_date('21/02/16')+30) where badge_id=45;

insert into badge values (seq_badge_id.nextval, 14, 'qwerty', 64, sysdate+30);
insert into badge values (seq_badge_id.nextval, 17, 'qwerty', 67,  trunc(to_date('21/02/03')+30));
insert into badge values (seq_badge_id.nextval, 21, 'qwerty', 71, trunc(to_date('21/01/16')+30));

commit;


--�빐�떦�떖, �빐�떦 硫ㅻ쾭�쓽 諭껋� �젙蹂�
select * from badge where badge_date between (trunc(to_date('2021-05-24','yy/MM/dd'),'MM')) and (last_day(to_date('2021-05-24','yy/MM/dd'))) and member_id= 'qwerty';
select * from badge_image where badge_img_id in(select badge_img_id from badge where badge_date between trunc(to_date( '2021-02-01' ,'yy/MM/dd'),'MM') and last_day(to_date('2021-02-01','yy/MM/dd')) and member_id= 'honggd');



select * from badge;

select * from badge_image;
select * from badge_image where badge_img_id in (select badge_img_id from badge where badge_date between trunc(to_date('2021-02-01' ,'yy/MM/dd'),'MM') and (last_day(to_date('2021-02-01','yy/MM/dd'))) and member_id= 'qwerty');



commit; values (seq_badge_img_i
--==============================
--�긽�뭹 �옱怨� �뀒�씠釉�
--==============================
create table PRODUCT_STOCK(
    product_id  varchar2(100), 
    p_name  varchar2(100) not null,
    price number not null,
    description  varchar2(100),   
    stock number default 0,
    
    constraint pk_product_product_id primary key(product_id)
);

select * from PRODUCT_STOCK;

insert into PRODUCT_STOCK
values ('nb_ss7','�궪�꽦�끂�듃遺�',1570000,'�떆由ъ쫰 7',55);

insert into PRODUCT_STOCK
values ('nb_macbook_air','留λ턿�뿉�뼱',1200000,'�븷�뵆 �슱�듃�씪遺�',0);

insert into PRODUCT_STOCK
values ('nb_macbook_pro','留λ턿�봽濡�',2200000,'�븷�뵆 �봽濡�',0);

insert into PRODUCT_STOCK
values ('pc_ibm','ibmPC',750000,'windows 8',10);

insert into PRODUCT_STOCK
values ('nb_gram','lg洹몃옩',1600000,'洹몃옩 7',20);
--==============================
--�긽�뭹 �엯異쒓퀬 �뀒�씠釉�
--==============================
create table PRODUCT_IO(
    IO_NO NUMBER,
    PRODUCT_ID VARCHAR2(30),
    IODATE DATE DEFAULT SYSDATE,
    AMOUNT NUMBER,
    STATUS CHAR(1) CHECK (STATUS IN ('I', 'O')),

    constraint pk_product_io_iono primary key(IO_NO),
    constraint fk_product_io_productio foreign key(PRODUCT_ID)
                                        REFERENCES product_stock(PRODUCT_ID)
);

select * from product_io;

create sequence seq_product_io_no;



--==============================
--�긽�뭹�젙蹂� �궘�젣 �듃由ш굅
--==============================
create or replace trigger trg_del_product
    before
    delete on PRODUCT_STOCK    --�긽�뭹�뀒�씠釉붿뿉�꽌 delete �떆
    for each row
begin
    delete from product_io where product_id = :old.product_id;
end;
/





--==============================
--�옱怨좏뀒�씠釉� �닔�웾 蹂�寃� �듃由ш굅
--==============================
create or replace trigger trg_product
    before
    insert on product_io    --�긽�뭹 �엯異쒓퀬 �뀒�씠釉붿뿉�꽌 insert �떆
    for each row
begin
    if :new.status = 'I' then
        update product_stock
        set stock = stock + :new.AMOUNT
        where product_id = :new.product_id;    
    else 
        update product_stock
        set stock = stock - :new.AMOUNT
        where product_id = :new.product_id;   
    end if;
    
    
end;
/
select * from product_io;

select * from product_stock;

insert into product_io
values(seq_product_io_no.nextval, 'nb_macbook_air',sysdate,10,'I');

delete from product_io where product_id ='nb_macbook_pro';

delete from product_stock where product_id ='nb_macbook_pro';
commit;
                                                                                                 
select class_no
from tb_class_professor
where class_no in(
    select class_no
    from tb_class
    where department_no in(
        select department_no
        from tb_department
        where category = '예체능'
));
select * from personal_point;
select (select student_name from tb_student where g.student_no = student_no) 학생이름
    , term_no "term_name"
from tb_grade g
where term_no like '2007%'
    and class_no = (
        select class_no
        from tb_class
        where class_name ='인간관계론'
    );
delete from badge where badge_id=49;
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/03/17') and member_id = 'honggd';
select * from badge b  left join badge_image bimg  on b.badge_img_id = bimg.badge_img_id  left join challenge c on bimg.challenge_id = c.challenge_id
where badge_date = TO_DATE('21/03/18') and member_id = 'honggd';
select *
from tb_grade g
where term_no like '2007%'
    and class_no = (
        select class_no
        from tb_class
        where class_name ='인간관계론'
    );
select *
from role_sys_privs;
select s.department_no
    , round( avg(g.point),1) 전공평점
from tb_student s join tb_grade g
    on s.student_no = g.student_no
where s.department_no in (
    select department_no
    from tb_department
    where category = (
        select category
        from tb_department
        where department_name = '환경조경학과'
    )
)
group by s.department_no;
select * from personal_point where point_date > to_date('21/04/26');
select s.student_no 학번
    , s.student_name 학생이름
    , round(avg(point),1) "전체평점"
from tb_grade g join tb_student s
    on g.student_no = s.student_no
where s.department_no = (
    select department_no
    from tb_department
    where department_name = '음악학과'
    )
group by s.student_no, s.student_name
order by s.student_no;
select * from badge b  left join badge_image bimg  on b.badge_img_id = bimg.badge_img_id  left join challenge c on bimg.challenge_id = c.challenge_id 
where badge_date between trunc(to_date('2021-02-01'),'MM') and (last_day(to_date('2021-02-01'))) and member_id= 'qwerty';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where member_id = 'qwerty';
select * from personal_point where point_date = TO_DATE('2021-04-24','yy/MM/dd');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/22') and member_id = 'honggd';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('2021-04-26');
select * from a_confirm a left join challenge c  on a.challenge_id = c.challenge_id;
select challenge_point from challenge where challenge_id= (select challenge_id from a_confirm  where a_id = 52);
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where member_id = 'qwerty' and point_date = to_date('21/03/17');
select * from personal_point where point_date > to_date('21/04/24');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/24') and member_id = 'honggd';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('2021-04-25');
select * from member;
select * from personal_point where point_date = TO_DATE('2021-04-26','yy/MM/dd');
select * from personal_point order by point_date desc;
select * from personal_point where point_date = sysdate;
select * from personal_point where point_date = TO_DATE('2021-03-02','yy/MM/dd');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = sysdate and member_id = 'honddg';
select * from challenge_join;
select * from a_confirm;
select point_date from personal_point order by point_date desc;
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/17') and member_id = 'honggd';
select * from personal_point where point_date > to_date('21/04/25');
select * from badge b  left join badge_image bimg  on b.badge_img_id = bimg.badge_img_id  left join challenge c on bimg.challenge_id = c.challenge_id 
where badge_date between trunc(to_date('2021-03-01'),'MM') and (last_day(to_date('2021-03-01'))) and member_id= 'honggd';
select * from challenge_join cj left join challenge c on cj.challenge_id = c.challenge_id where sysdate between confirm_date and end_date and member_id='honggd';
select * from personal_point where point_date = TO_DATE('2021-04-25','yy/MM/dd');
select * from personal_point where point_date = TO_DATE('21/04/25','yy/mm/dd');
select * from personal_point where point_date = to_date('21/04/26');
select * from personal_point;
select * from team_point;
select * from badge;




update challenge_join set end_date = trunc(to_date('21/02/02')+30) where member_id='honggd' and challenge_id=23;
update badge set badge_date = trunc(to_date('21/02/02')+30) where member_id='honggd' and challenge_id=23;
commit;

select * from badge b left join badge_image bimg on b.badge_img_id = bimg.badge_img_id;


select * from challenge_join;
select * from personal_point;
select * from badge;
select * from badge_image;
update challenge_join set challenge_id=20 where challenge_id=22;
insert into badge values (seq_badge_id.nextval, 20, 'honggd', 70, to_date('21/03/19'));

commit;


select *from challenge;


--honggd 17(��釉붾윭) 梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/23'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/30'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/31'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/08'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/14'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/22'));
commit;

--honggd 23(遺덈걚湲�)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/13'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/23'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/03/03'));


--honggd 21(�넀�닔嫄�)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/20'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/17'));
commit;

--honggd 20(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/18'));

commit;


--�듅�젙 �궇吏�, �듅�젙 member_id�쓽 諭껋� �씠誘몄�, 梨뚮┛吏� �젙蹂�
select * from badge b  left join badge_image bimg  on b.badge_img_id = bimg.badge_img_id  left join challenge c on bimg.challenge_id = c.challenge_id where badge_date between trunc(to_date(?),'MM') and (last_day(to_date(?))) and member_id= ?;


--�듅�젙 �궇吏�, �듅�젙 member_id�쓽 �룷�씤�듃 �젙蹂�(梨뚮┛吏�
select * from personal_point where member_id = 'honggd' and point_date = to_date('21/03/17');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where member_id = 'qwerty';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/26') and member_id = 'honggd';

select * from challenge;
--吏꾪뻾以묒씤 梨뚮┛吏�(�쁽�옱 �떆�뒪�뀥�씠 confirm ~ end �궗�씠)
select * from challenge_join cj left join challenge c on cj.challenge_id = c.challenge_id where sysdate between confirm_date and end_date and member_id=?;



select * from personal_point;
--qwerty 21(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/30'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/15'));
commit;

select * from personal_point;
--qwerty 17(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/20'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/04'));
commit;


select * from personal_point;
--qwerty 14(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 14,'qwerty',(select challenge_point from challenge where challenge_id=14), to_date('21/04/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 14,'qwerty',(select challenge_point from challenge where challenge_id=14), to_date('21/04/25'));
commit;

select * from badge_image where badge_img_id in (select badge_img_id from badge where);


--trigger
--challenge_join�뿉�꽌 delect �릺硫� 諭껋�媛� 吏�湲됰릺�뒗 �삎�떇?


select * from member;
update member set member_pw = '1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==' where member_id='admin2';
commit;




select * from a_confirm;

select * from challenge_join;
select * from challenge;


insert into challenge_join values ('honggd', 6, sysdate, sysdate); --�떒湲� 梨뚮┛吏�
commit;
insert into challenge_join values ('honggd', 22, sysdate-5, (sysdate-5)+30); --�옣湲� 梨뚮┛吏�


insert into a_confirm (a_id,member_id, challenge_id, confirm_type,a_title,a_content,a_reg_date) values(SEQ_A_CONFIRM_ID.nextval,?,(select challenge_id from challenge where challenge_name =?), ?,?,?,default) ;  

select challenge_id from a_confirm  where a_id = 52;

select * from a_confirm;
select * from personal_point order by point_date desc;
insert into personal_point VALUES (seq_p_point_id.nextval, (select challenge_id from a_confirm  where a_id = ?),? ,(select challenge_point from challenge_join where challenge_id= (select challenge_id from a_confirm  where a_id = ?)), sysdate);


-- �룷�씤�듃 吏�湲� �뿬遺� �뿴異붽�, �젣�빟議곌굔 異붽�
ALTER TABLE a_confirm ADD(point_check char(1) default 'N');
ALTER TABLE a_confirm ADD CONSTRAINT ck_point_check  check(point_check in ('N','Y'));

ALTER TABLE a_confirm drop constraint  ck_point_check;
ALTER TABLE a_confirm drop COLUMN point_check ;
update a_confirm set point_check = 'N';
update a_confirm set point_check =? where a_id =? and member_id=?;

commit;

select * from a_confirm a left join challenge c  on a.challenge_id = c.challenge_id;
select challenge_point from challenge where challenge_id= (select challenge_id from a_confirm  where a_id = 52);
insert into personal_point VALUES (seq_p_point_id.nextval, (select challenge_id from a_confirm  where a_id = ?),? ,(select challenge_point from challenge where challenge_id= (select challenge_id from a_confirm  where a_id = ?)), default);


select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('2021-04-26');


--�듅�젙�궇�옄�쓽 �룷�씤�듃 議고쉶 �뾽臾� �삤瑜�
select * from personal_point order by point_date desc;
select * from personal_point where point_date = to_date('21/04/26');sonal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(sele
select * from personal_point where point_date = TO_DATE('21/04/26','yy/mm/dd');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/26') and member_id = 'honggd';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = sysdate and member_id = 'qwerty';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = sysdate and member_id = 'honggd';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = sysdate and member_id = 'qwerty';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/26') and member_id = 'honggd';
select * from personal_point where point_date = TO_DATE('21/04/26','yy/mm/dd');
select * from personal_point;
select * from team_point;
select * from badge;




update challenge_join set end_date = trunc(to_date('21/02/02')+30) where member_id='honggd' and challenge_id=23;
update badge set badge_date = trunc(to_date('21/02/02')+30) where member_id='honggd' and challenge_id=23;
commit;

select * from badge b left join badge_image bimg on b.badge_img_id = bimg.badge_img_id;


select * from challenge_join;
select * from personal_point;
select * from badge;
select * from badge_image;
update challenge_join set challenge_id=20 where challenge_id=22;
insert into badge values (seq_badge_id.nextval, 20, 'honggd', 70, to_date('21/03/19'));

commit;


select *from challenge;


--honggd 17(��釉붾윭) 梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/23'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/30'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/31'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/08'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/14'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/22'));
commit;

--honggd 23(遺덈걚湲�)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/13'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/23'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/03/03'));


--honggd 21(�넀�닔嫄�)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/20'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/17'));
commit;

--honggd 20(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/18'));

commit;


--�듅�젙 �궇吏�, �듅�젙 member_id�쓽 諭껋� �씠誘몄�, 梨뚮┛吏� �젙蹂�
select * from badge b  left join badge_image bimg  on b.badge_img_id = bimg.badge_img_id  left join challenge c on bimg.challenge_id = c.challenge_id where badge_date between trunc(to_date(?),'MM') and (last_day(to_date(?))) and member_id= ?;


--�듅�젙 �궇吏�, �듅�젙 member_id�쓽 �룷�씤�듃 �젙蹂�(梨뚮┛吏�
select * from personal_point where member_id = 'honggd' and point_date = to_date('21/03/17');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where member_id = 'qwerty';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/26') and member_id = 'honggd';

select * from challenge;
--吏꾪뻾以묒씤 梨뚮┛吏�(�쁽�옱 �떆�뒪�뀥�씠 confirm ~ end �궗�씠)
select * from challenge_join cj left join challenge c on cj.challenge_id = c.challenge_id where sysdate between confirm_date and end_date and member_id=?;



select * from personal_point;
--qwerty 21(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/30'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/15'));
commit;

select * from personal_point;
--qwerty 17(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/20'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/04'));
commit;


select * from personal_point;
--qwerty 14(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 14,'qwerty',(select challenge_point from challenge where challenge_id=14), to_date('21/04/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 14,'qwerty',(select challenge_point from challenge where challenge_id=14), to_date('21/04/25'));
commit;

select * from badge_image where badge_img_id in (select badge_img_id from badge where);


--trigger
--challenge_join�뿉�꽌 delect �릺硫� 諭껋�媛� 吏�湲됰릺�뒗 �삎�떇?


select * from member;
update member set member_pw = '1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==' where member_id='admin2';
commit;




select * from a_confirm;

select * from challenge_join;
select * from challenge;


insert into challenge_join values ('honggd', 6, sysdate, sysdate); --�떒湲� 梨뚮┛吏�
commit;
insert into challenge_join values ('honggd', 22, sysdate-5, (sysdate-5)+30); --�옣湲� 梨뚮┛吏�


insert into a_confirm (a_id,member_id, challenge_id, confirm_type,a_title,a_content,a_reg_date) values(SEQ_A_CONFIRM_ID.nextval,?,(select challenge_id from challenge where challenge_name =?), ?,?,?,default) ;  

select challenge_id from a_confirm  where a_id = 52;

select * from a_confirm;
select * from personal_point order by point_date desc;
insert into personal_point VALUES (seq_p_point_id.nextval, (select challenge_id from a_confirm  where a_id = ?),? ,(select challenge_point from challenge_join where challenge_id= (select challenge_id from a_confirm  where a_id = ?)), sysdate);


-- �룷�씤�듃 吏�湲� �뿬遺� �뿴異붽�, �젣�빟議곌굔 異붽�
ALTER TABLE a_confirm ADD(point_check char(1) default 'N');
ALTER TABLE a_confirm ADD CONSTRAINT ck_point_check  check(point_check in ('N','Y'));

ALTER TABLE a_confirm drop constraint  ck_point_check;
ALTER TABLE a_confirm drop COLUMN point_check ;
update a_confirm set point_check = 'N';
update a_confirm set point_check =? where a_id =? and member_id=?;

commit;

select * from a_confirm a left join challenge c  on a.challenge_id = c.challenge_id;
select challenge_point from challenge where challenge_id= (select challenge_id from a_confirm  where a_id = 52);
insert into personal_point VALUES (seq_p_point_id.nextval, (select challenge_id from a_confirm  where a_id = ?),? ,(select challenge_point from challenge where challenge_id= (select challenge_id from a_confirm  where a_id = ?)), default);


select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('2021-04-26');


--�듅�젙�궇�옄�쓽 �룷�씤�듃 議고쉶 �뾽臾� �삤瑜�
select * from personal_point order by point_date desc;
select * from personal_point where point_date = to_date('21/04/26');sonal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(sele
select * from personal_point where point_date = to_date('21/04/26');
select * from personal_point where point_date = TO_DATE('21/04/25','yy/mm/dd');
select * from personal_point where point_date = TO_DATE('2021-04-25','yy/MM/dd');
select * from personal_point where point_date = TO_DATE('21/04/25','yy/mm/dd');
select * from personal_point where point_date = to_date('21/04/26');
select * from personal_point;
select * from team_point;
select * from badge;




update challenge_join set end_date = trunc(to_date('21/02/02')+30) where member_id='honggd' and challenge_id=23;
update badge set badge_date = trunc(to_date('21/02/02')+30) where member_id='honggd' and challenge_id=23;
commit;

select * from badge b left join badge_image bimg on b.badge_img_id = bimg.badge_img_id;


select * from challenge_join;
select * from personal_point;
select * from badge;
select * from badge_image;
update challenge_join set challenge_id=20 where challenge_id=22;
insert into badge values (seq_badge_id.nextval, 20, 'honggd', 70, to_date('21/03/19'));

commit;


select *from challenge;


--honggd 17(��釉붾윭) 梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/23'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/30'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/01/31'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/08'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/14'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'honggd',(select challenge_point from challenge where challenge_id=17), to_date('21/02/22'));
commit;

--honggd 23(遺덈걚湲�)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/13'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/23'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/02/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 23,'honggd',(select challenge_point from challenge where challenge_id=23), to_date('21/03/03'));


--honggd 21(�넀�닔嫄�)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/20'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'honggd',(select challenge_point from challenge where challenge_id=21), to_date('21/03/17'));
commit;

--honggd 20(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 20,'honggd',(select challenge_point from challenge where challenge_id=20), to_date('21/03/18'));

commit;


--�듅�젙 �궇吏�, �듅�젙 member_id�쓽 諭껋� �씠誘몄�, 梨뚮┛吏� �젙蹂�
select * from badge b  left join badge_image bimg  on b.badge_img_id = bimg.badge_img_id  left join challenge c on bimg.challenge_id = c.challenge_id where badge_date between trunc(to_date(?),'MM') and (last_day(to_date(?))) and member_id= ?;


--�듅�젙 �궇吏�, �듅�젙 member_id�쓽 �룷�씤�듃 �젙蹂�(梨뚮┛吏�
select * from personal_point where member_id = 'honggd' and point_date = to_date('21/03/17');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where member_id = 'qwerty';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/26') and member_id = 'honggd';

select * from challenge;
--吏꾪뻾以묒씤 梨뚮┛吏�(�쁽�옱 �떆�뒪�뀥�씠 confirm ~ end �궗�씠)
select * from challenge_join cj left join challenge c on cj.challenge_id = c.challenge_id where sysdate between confirm_date and end_date and member_id=?;



select * from personal_point;
--qwerty 21(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/17'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/19'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/26'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/01/30'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 21,'qwerty',(select challenge_point from challenge where challenge_id=21), to_date('21/02/15'));
commit;

select * from personal_point;
--qwerty 17(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/04'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/05'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/06'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/07'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/10'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/11'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/12'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/15'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/16'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/18'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/20'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/21'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/22'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/25'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/27'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/02/28'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/01'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/02'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/03'));
insert into personal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(select challenge_point from challenge where challenge_id=17), to_date('21/03/04'));
commit;


select * from personal_point;
--qwerty 14(留덉뒪�겕)梨뚮┛吏� �룷�씤�듃
insert into personal_point VALUES (seq_p_point_id.nextval, 14,'qwerty',(select challenge_point from challenge where challenge_id=14), to_date('21/04/24'));
insert into personal_point VALUES (seq_p_point_id.nextval, 14,'qwerty',(select challenge_point from challenge where challenge_id=14), to_date('21/04/25'));
commit;

select * from badge_image where badge_img_id in (select badge_img_id from badge where);


--trigger
--challenge_join�뿉�꽌 delect �릺硫� 諭껋�媛� 吏�湲됰릺�뒗 �삎�떇?


select * from member;
update member set member_pw = '1ARVn2Auq2/WAqx2gNrL+q3RNjAzXpUfCXrzkA6d4Xa22yhRLy4AC50E+6UTPoscbo31nbOoq51gvkuXzJ6B2w==' where member_id='admin2';
commit;




select * from a_confirm;

select * from challenge_join;
select * from challenge;


insert into challenge_join values ('honggd', 6, sysdate, sysdate); --�떒湲� 梨뚮┛吏�
commit;
insert into challenge_join values ('honggd', 22, sysdate-5, (sysdate-5)+30); --�옣湲� 梨뚮┛吏�


insert into a_confirm (a_id,member_id, challenge_id, confirm_type,a_title,a_content,a_reg_date) values(SEQ_A_CONFIRM_ID.nextval,?,(select challenge_id from challenge where challenge_name =?), ?,?,?,default) ;  

select challenge_id from a_confirm  where a_id = 52;

select * from a_confirm;
select * from personal_point order by point_date desc;
insert into personal_point VALUES (seq_p_point_id.nextval, (select challenge_id from a_confirm  where a_id = ?),? ,(select challenge_point from challenge_join where challenge_id= (select challenge_id from a_confirm  where a_id = ?)), sysdate);


-- �룷�씤�듃 吏�湲� �뿬遺� �뿴異붽�, �젣�빟議곌굔 異붽�
ALTER TABLE a_confirm ADD(point_check char(1) default 'N');
ALTER TABLE a_confirm ADD CONSTRAINT ck_point_check  check(point_check in ('N','Y'));

ALTER TABLE a_confirm drop constraint  ck_point_check;
ALTER TABLE a_confirm drop COLUMN point_check ;
ALTER TABLE a_confirm drop constraint  ck_point_check;
ALTER TABLE a_confirm drop COLUMN point_check ;



update a_confirm set point_check = 'N';
update a_confirm set point_check =? where a_id =? and member_id=?;

commit;

select * from a_confirm a left join challenge c  on a.challenge_id = c.challenge_id;
select challenge_point from challenge where challenge_id= (select challenge_id from a_confirm  where a_id = 52);
insert into personal_point VALUES (seq_p_point_id.nextval, (select challenge_id from a_confirm  where a_id = ?),? ,(select challenge_point from challenge where challenge_id= (select challenge_id from a_confirm  where a_id = ?)), default);


select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('2021-04-26');



select * from personal_point order by point_date desc;
select * from personal_point where point_date = to_date('21/04/26');sonal_point VALUES (seq_p_point_id.nextval, 17,'qwerty',(sele
select * from personal_point where point_date = TO_DATE('21/04/26','yy/mm/dd');
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = TO_DATE('21/04/26') and member_id = 'honggd';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = sysdate and member_id = 'qwerty';
select * from personal_point pp left join challenge c on pp.challenge_id = c.challenge_id where point_date = sysdate and member_id = 'honggd';



--팀포인트 포인트 insert
insert into team_point values(seq_t_point_id.nextval, ? , (select a_id from team where member_id =?), (select challenge_point from challenge where challenge_id=(select challenge_id from team where member_id=?)), sysdate, (select challenge_id from team where member_id=?))
;
select * from a_search_team;
select * from team;
select * from request_team;

select * from challenge_join;

insert




-- 뱃지 이미지 insert(challenge_join과 연결)
insert into badge values (seq_badge_id.nextval, 14, 'honggd', 64, sysdate);
select * from badge;
select * from personal_point;
select rownum, p.* from (select member_id, sum(point) from personal_point where point_date between trunc(to_date('2021-02-01'),'MM') and (last_day(to_date('2021-02-01'))) group by member_id order by  sum(point) desc)p ;
having ;

select * from badge_image;
alter table badge
modify(challenge_id null);
ALTER TABLE badge DROP CONSTRAINT fk_badge_challenge_id;

--lanking 뱃지 지급 (개인 / 팀 따로)
insert into badge values (seq_badge_id.nextval, null, user, (select badge_img_id from badge_image where lanking=?) , sysdate);

--기간 챌린지 뱃지 지급
insert into badge values (seq_badge_id.nextval, , ?, () , sysdate);
select * from challenge_join;
;

select * from badge;

select * from badge_image;
ALTER TABLE badge_image add (lanking number);
commit;
update badge_image set lanking = 5 where badge_img_id in(81,86);

select * from challenge_join;

select * from a_confirm;

insert into badge values (seq_badge_id.nextval, , user, (select badge_img_id from badge_image where lanking=?) , sysdate);
delete from challenge_join where member_id =? and challenge_id=(select challenge_id from challenge where challenge_name=?);
 select * from challenge_join cj left join challenge c on cj.challenge_id = c.challenge_id where sysdate between confirm_date and to_date(end_date+1) and member_id='gogo';
 
 insert into personal_point VALUES (seq_p_point_id.nextval, (select challenge_id from a_confirm  where a_id = ?),(select member_id from a_confirm  where a_id = ?) ,(select challenge_point from challenge where challenge_id= (select challenge_id from a_confirm  where a_id = ?)), default)
 ;
 select * from  personal_point;
 select * from  challenge_join;
 select * from  a_confirm;
 
 
 confirm