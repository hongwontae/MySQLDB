-- MySQL Pratice 2023-08-22

show databases;
show tables;
use book_shop;
select database();
desc books;

use 813test;
show tables;
drop table member_cart;
drop database 813test;
select database();

use 811test;
create table books(
	id int primary key auto_increment,
    nickname varchar(20) not null default 'unknown',
    price mediumint not null default 0,
    released_year date not null
); -- default 값은 데이터 형식과 일치해야 한다.

Insert into books (nickname, price, released_year) 
values ('Hwt',15000,'1998-02-23');

select * from books;

Insert into books (nickname, price, released_year) 
values ('Hwt1',16000,'1999-03-24'), ('Hwt2',17000,'1999-03-25'), ('Hwt3',18000,'1999-03-26'),
 ('Hwt1',19000,'2000-04-25'), ('Hwt1',16000,'1999-03-24'), ('Hwt1',16000,'1999-03-24'), ('Hwt1',16000,'1999-03-24');
 
insert into books (nickname, price, released_year) values (nickname, price,'1998-02-23'); -- default값을 넣는 방법이다.
 
 select * from books;
 
 Create table book2(
	nickname varchar(20) default 'no'
 );
 
 insert into book2 (nickname) values (null);
 insert into book2 () values (); -- default 자동으로 넣는 방식
 -- line32의 방법은 앞에 칼럼이 데폴트 값이 없을 때 자리를 명시하기 위해 칼럼명을 작성하는 것이다.
 select * from book2;

















