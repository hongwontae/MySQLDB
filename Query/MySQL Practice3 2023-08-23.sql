-- MySQL Practice3

Create table goods (
	nickname varchar(15),
    constraint check1 unique (nickname)
);

insert into goods (nickname) values ('asd');
insert into goods (nickname) values ('asd'); -- 오류 발생

Create table goods3(
	nickname varchar(15) check(character_length(nickname)>5)
);

insert into goods3 (nickname) values ('asasdasd');
insert into goods3 (nickname) values ('asad'); -- 오류 발생

Create table goods4 (
	nickname char(10),
    age int,
    constraint nickname_age_check check(char_length(nickname)<age)
);

insert into goods4 (nickname, age) values ('asdasdas',4); -- 제약 조건 에러

insert into goods4 (nickname, age) values ('das',4); -- 성공

Create table goods5 (
	name1 varchar(10),
    name2 varchar(10),
    constraint check_name unique(name1, name2)
);

insert into goods5 (name1, name2) values ('a','b');
insert into goods5 (name1, name2) values ('a','b'); -- 제약 조건 오류 행 문자열 같음으로


alter table goods5 add column ages int;
desc goods5;
select * from goods5;

alter table goods5 drop column ages;
desc goods5;

alter table goods5 rename to goods6;
desc goods6;

rename table goods6 to goods5;
desc goods5;

alter table goods5 rename column name2 to name3;
desc goods5;

alter table goods5 modify column name3 char(10) not null unique;
desc goods5;

alter table goods5 add constraint check_check unique(name1);
alter table goods5 add column age int;
alter table goods5 add constraint check(age>=10);
insert into goods5  values ('asd','asd',7); -- 제약 조건 오류발생


use mysqlud;
select * from customers;
select * from orders;

select * from customers, orders; -- cross join

select * from customers
inner join orders on customers.id = orders.customer_id; -- Inner join 주문한 사람의 정보

select first_name, last_name, ifnull(order_date, now()), ifnull(amount, 0) from customers
left join orders on customers.id = orders.customer_id;

-- cascade foriegn key (customer_id) references orders (orders_id) on delete cascade => cascade 제약조건 부모 데이터 삭제돠면 자식 데이터도 삭제된다.





















































