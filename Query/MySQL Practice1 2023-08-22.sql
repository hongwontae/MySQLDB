-- MySQL Pratice1

-- Section 3, 4-1, 4-2
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
insert into book2(nickname) values (nickname); -- 즉 위의 default 넣는 방식과 같은 효과를 내는 쿼리이다.
 -- line32의 방법은 앞에 칼럼이 데폴트 값이 없을 때 자리를 명시하기 위해 칼럼명을 작성하는 것이다.
 select * from book2;
 


-- Section 5-1, 5-2, 7-1, 7-2
create database Mysql_Practice;
use mysql_Practice;

Create table board (
	id int primary key auto_increment,
    nickname varchar(15) not null default 'No Name',
    text varchar(1500),
    regDate date 
);

insert into board (nickname, text,regDate) values ('dnjsxoghd',text, '2023-04-29');

select * from board;
select * from board where id=10;
select nickname as ni, text as te, regDate as rd from board  where id=12;

update board set text='No text' where id=1;
select * from board;

update board set nickname='q2tlxm@123' where id=10;
update board set nickname='q2tlxm@123' where regdate='2023-04-29';
-- 데이터 타입이 날짜 => where 타입을 문자열로 받음


select * from board;

delete from board where nickname='q2tlxm@123';
select nickname from board;	


select concat(text,'나는요') from board; -- text+null => null
select concat(id,'나는') from board;

select concat_ws(' - ', text, nickname) from board; -- 텍스트 중앙 사이에 집어넣는다.

select subString(nickname,1,0) from board;
select subStr(nickname,1,1) from board; 
-- 첫 번째 매개변수는 문자열의 대상, 두 번째 매개변수는 숫자
-- 문자열이 존재하고 문자 순번이 있다. abcdef(1=a,2=b,3=c,4=d,5=e,6=f) => 두 번째 매개변수가 1이라면 1부터 마지막까지, 2라면 2부터 마지막까지
select substr(nickname,4) from board;
-- 세 번쨰 매개변수도 숫자이며 이 숫자는 두 번째 매개변수로부터 어디까지를 뜻한다. (nickname,2,5) 문자열2순번부터 5개를 가져와라
select substr(nickname,2,5) from board;
-- 두 번쨰 매개변수에 -를 숫자가능하다. 예제로 이해하자
select substr(nickname,-3) from board;

select replace('아라리','라','리');
select replace('아 이런','아','아!!');
select * from board;

select replace(text,'No','yes') from board; -- 칼럼을 대상으로 전체 replace를 걸었을 때는 replace함수에 걸리는 함수만 바꿔주고 나머지는 그대로 출력한다.
-- replace (1,2,3) 1=>문자열 대상, 2=>변경될 인자 3=>변경할 인자

select reverse(text) from board;

select char_length(text) from board;

select concat(id,'- ', upper(text)) from board;

select left('1234',1);
select right(1234,1);



select repeat('1234 ',4);

select char_length('  ww  '); -- 6
select char_length(trim('  ww  ')); -- 2 문자열 길이가 다름, 공백이 줄어든 것을 알 수 있다.
select trim(Leading 'x' from 'xxxnnnxxx'); -- 앞에서 x로 시작하는 문자열을 다 지우는데 x가 아닌 문자열을 마주치면 멈춰라
select trim(Trailing 'x' from 'xxxnnnxxx'); -- 뒤에서 x로 시작하는 문자열을 다 지우는데 x가 아닌 문자열을 마주치면 멈춰라
select trim(both 'x' from 'xxxnnnxxx'); -- 앞, 뒤에서 x로 시작하는 문자열을 다 지우는데 x가 아닌 문자열을 마주치면 멈춰라

select insert('koala3121',2,5,'asd');
select insert ('나는홍원태입니다.',3,3,'안지연'); -- 매개변수1 => 함수의 대상, 매개변수2 => 바꿀 위치, 매개변수3 => 어느만큼 바꿀건지 숫자, 매개변수4 => 바꿀 문자열

use book_shop;
select count(*) from books; -- 19
select distinct author_fname from books; 
select count(distinct author_fname) from books; -- 12/ 데이터를 중복제거하는 키워드/ 함수가 아니다.
select distinct concat(author_fname, ' ', author_lname) from books;

select * from books order by 7 desc; -- 칼럼의 위치 숫자로도 order by 가능하지만 명확성이 떨어져서 잘 안한다.

select pages from books order by pages desc limit 0,10; -- 숫자가 하나라면 Not 인덱스/ 숫자가 두 개라면 인덱스
select * from books where title like '%e_';
select * from books where title like '___________';
select * from books where title like '%\%%'; -- 역슬래시는 와일드카드를 문자열로 처리한다.













































