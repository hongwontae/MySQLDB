show databases;
create database chicken_coop;
drop database per_shop;

Use chicken_coop;
select dataBASE();

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

show tables;

show columns from dogs;
show columns from cats;

desc cats;
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









