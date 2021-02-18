--==============================
--상품 재고 테이블
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
values ('nb_ss7','삼성노트북',1570000,'시리즈 7',55);

insert into PRODUCT_STOCK
values ('nb_macbook_air','맥북에어',1200000,'애플 울트라북',0);

insert into PRODUCT_STOCK
values ('nb_macbook_pro','맥북프로',2200000,'애플 프로',0);

insert into PRODUCT_STOCK
values ('pc_ibm','ibmPC',750000,'windows 8',10);

insert into PRODUCT_STOCK
values ('nb_gram','lg그램',1600000,'그램 7',20);
--==============================
--상품 입출고 테이블
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
--상품정보 삭제 트리거
--==============================
create or replace trigger trg_del_product
    before
    delete on PRODUCT_STOCK    --상품테이블에서 delete 시
    for each row
begin
    delete from product_io where product_id = :old.product_id;
end;
/





--==============================
--재고테이블 수량 변경 트리거
--==============================
create or replace trigger trg_product
    before
    insert on product_io    --상품 입출고 테이블에서 insert 시
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
