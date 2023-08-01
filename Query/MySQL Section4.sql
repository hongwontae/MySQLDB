-- section 4

drop table cats;

Create Database MysqlUD;

use mysqlud;

Create table cats (
name varchar(50),
age int
);

desc cats;

Insert into cats (name,age)
values('colt Steele',5);

Insert into cats (name,age)
values('Jenkins',7);

select * from cats;

insert into cats (name, age)
values ('Baram',1), ('Wind',2),('Hurricane',3);

Create table people (
	first_name varchar(20),
    last_name varchar(20),
    age int
);

desc people;





