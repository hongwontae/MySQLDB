-- MySQL Section12-1

use mysqlud;

-- 1. Unique 제약조건
Create Table contacts (
	name varchar(20) not null,
    phone varchar(30) not null unique
);

insert into contacts (name,phone) values ('HONG','010-8489-3121');
Select * from contacts;
insert into contacts (name, phone) values ('HONG','010-8489-3121'); -- 오류 발생 => phone의 제약조건이 unique(중복x)라서
insert into contacts (name, phone) values ('HONG','010-3695-5528'); -- 정상 insert 



-- 2. Check 제약조건
CReate table users1(
	name1 varchar(20),
    age int check(age>0)
);

select * from users1;
insert into users1 (name1, age) values ('But She\'s Going',20);
insert into users1(name1, age) values ('Hong',-2); -- check 제약조건에 false라서 오류 발생

Create table aka(
	이름 Varchar(30)  not null check(reverse(이름)=이름),
    나이 VarChar(10) not null check (나이>19)
);

select * from aka;
Insert into aka (이름, 나이) values ('나이나','20');
insert into aka(이름, 나이) values ('DAD','3'); -- 나이 칼럼이 check 제약조건에 위배되어 오류발생
insert into aka (이름, 나이) values ('aad','40'); -- 이름 칼럼이 check 제약조건에 위배되어 오류발생



-- 제약 조건 명명
Create table user2 (
	username varchar(20) not null,
    age int, constraint age_not_negative check (age>=0)
);

Insert into user2(username, age) values ('홍원태',-1);
Insert into user2(username, age) values ('홍원태',10);

Create table user3(
	username varchar(30), constraint check (char_length(username)>2),
    age int, constraint check (age>=19)
);

insert into user3 (username, age) values ('ss',21);
insert into user3 (username, age) values ('sss',21); -- 문자열 개수가 3개라서
insert into user3 (username, age) values ('sss',10); -- 오류 발생 



-- 다중 열 조건
Create table company(
 name varchar(10) not null,
 address varchar(30) not null,
 constraint name_addr unique (name, address)
);

insert into company (name, address) values ('홍원태','녹양동');
insert into company (name, address) values ('가능동','녹양동');
insert into company (name, address) values ('홍원태','신설동');

Create table houses(
	purchase_price int not null,
    sale_price int not null,
    constraint sprice_gt_pprice check (sale_price>=purchase_price)
);

insert into houses (purchase_price,sale_price) values (200,100); -- 제약 조건 오류 제약조건을 sale_price를 높게 주었기 때문
insert into houses (purchase_price,sale_price) values (1000,10000); -- 제약 조건에 위배되지 않음 
select * from houses;









