-- MySQL Practice2

use book_shop;
select count(*) from books; -- 19
select count(title) from books; -- 19

insert into books () values (); -- null 값 넣는 방식/ not null x, default x 일 때 null값 넣는 방법
select * from books;
select count(*) from books; -- 23
select count(title) from books; -- 19
-- 두 쿼리의 차이점은 *는 모든 행의 개수를 구함으로 null값도 포함, 칼럼명이 들어가면 null 값 허용하지 않는다.

select count(distinct released_year) from books; -- 16
select count(released_year) from books; -- 19
-- distinct로 중복된 데이터 제거한 후 출력


create table book(
	nickname varchar(20) default 'kk'
);

create table book3 (
	nickname varchar(20)
);

insert into book2 () values (); -- default를 insert할 때 이 방식은 null이 아니라 default값이 나온다.
insert into book2(nickname) values (null); -- 이래야만 null이 등장한다.
insert into book2 (nickname) values (nickname); -- default 값 넣는 방법
select * from book2;

insert into book3 (nickname) values (nickname);
select * from book3;


select * from books;
Select author_fname from books group by author_fname;
delete from books where title is null; -- null 값을 삭제할 때는 title is null이다. title = is null => x


Select author_fname, author_lname from books group by author_fname, author_lname;
-- Group By를 두 개로 하면 두 개의 칼럼의 합이 중복을 하나의 행으로 만드는 것이다.

select pages, sum(pages), avg(pages) from books group by pages;
select author_fname, min(pages), max(pages) from books group by author_fname;

select title, pages from books where pages= (
	select max(pages) from books
);

select title, released_year from books where pages = (
	select min(pages) from books
);


Create table dataType(
	nickname char(10),
    id varchar(10),
    level1 tinyint,
	level2 int,
    level3 mediumint,
    level4 middleint,
    level5 bigint
);

insert into dataType (nickname, id, level1, level2, level3, level4, level5 ) values ('asd','asd',1,2,3,4,5);
-- int는 데이터 범위가 다른 것 뿐이다.
-- char, varChar => 데이터 저장 방식이 매우 상이하다. char는 5라는 범위를 무조건 채우는 형식이지만 데이터 저장 효율이 좋다. varChar는 들어온 문자열의 크기만큼 저장하지만 char만큼 저장효율이 좋지는 않다.

Create table dataType3(
	price1 decimal(7,2),
    price2 float,
    price3 double,
    date1 date,
    time1 time,
    datetime1 datetime
);

insert into dataType3 () values ();
select * from dataType3;

insert into dataType (price1) values (72222.22);

use book_shop;
show tables;
select * from books;
insert into books (title) values ('Is that cool'); -- 이건 허용된다. 나머지 행들은 널 값이 들어간다.
select * from books order by pages asc;
desc books;
desc dataType3;
insert into dataType3 (price1) values (3000);
insert into dataType3 (price2) values (3.7778);
insert into dataType3 (price3) values (3.777812);
insert into dataType3 (date1) values ('2023-07-29');
insert into dataType3 (time1) values ('13:30:30');
insert into dataType3 (datetime1) values ('2023-07-29 13:30:30');


insert into dataType3
select * from datatype3;
insert into dataType3 values (12345.67, 45.34, 123.123123, '2023-07-30','13:59:34','2023-07-30 13:34:30'); -- 칼럼의 순서, 데이터 수 제대로 맞춰야 함

insert into dataType3 (date1) values (curdate()); -- 8월 23일
insert into datatype3 (time1) values (curtime()); -- 10시 51분 15초
insert into datatype3 (time1) values (now());

select year(now());
select day(now());
select dayofweek(curdate()); -- 한 달에서 몇 주째냐?
select week(curdate()); -- 몇 주쨰냐?
select month(now());
select monthname(now());

select hour(curtime());
select minute(curTime());
select second(curtime());

select date_format(now(),'%D');
select datediff(now(),'2023-08-08');
select timediff(curtime(),'09:30:30');

select date_add(now(), interval 1 year);
select date_add(now(), interval 1 day);
select date_add(now(), interval 20 week);
select date_add(now(), interval 8 month);

select date_sub(now(), interval 3 month);

create table com(
	nickname varchar(15),
    workDate timestamp default current_timestamp,
    workFinishDate timeStamp on update current_timestamp
);

insert into com () values ();
select * from com;
insert into com (nickname) values ('hwt');
update com set nickname = 'crazy lazy' where nickname is null;









