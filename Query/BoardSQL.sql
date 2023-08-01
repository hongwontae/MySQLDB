show databases;
create database chicken_coop;
drop database pet_shop;

Use chicken_coop; = --set as default schema
select dataBASE(); -- 선택한 데이터 베이스는 무엇이냐?

Create database pet_shop;
use pet_shop;

Create table cats
(
	name varchar(50),
    age int
);

create table dogs (
	name varchar(100),
    breed varchar(50),
    age int
);

show tables; -- 현재 데이터 베이스의 테이블을 나열한다.

show columns from dogs;
show columns from cats;

desc cats; -- 테이블의 칼럼을 자세히 보여줌
desc dogs;

drop table cats;
show tables;

create table pastriew(
	name varchar(50),
    quantity int
);

desc pastriew;

drop table pastriew;

-- 해당 db의 테이블을 모두 보여준다.
show tables;









