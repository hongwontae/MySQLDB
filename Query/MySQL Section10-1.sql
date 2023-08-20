-- MySQL Section10-1

use mysqlud;

-- Char, VarChar
Create Table friend (
	name char(5)
);

insert into friend (name) values ('a');
insert into friend (name) values ('ab');
insert into friend (name) values ('abc');
insert into friend (name) values ('abcd');
insert into friend (name) values ('abcde');
insert into friend (name) values ('abcdef'); -- 오류 발생 => Char(5)를 초과하는 문자열 개수라서
-- name에 해당하는 모든 데이터는 동일한 메모리 값을 갖고 있다.

Create Table player(
	name varchar(10)
);

insert into player (name) values ('M');
insert into player (name) values ('Me');
insert into player (name) values ('Mes');
insert into player (name) values ('Mess');
insert into player (name) values ('Messi');
insert into player (name) values ('Messia');
insert into player (name) values ('Messia가 강림했다'); -- 오류 발생 => varChar를 초과하는 문자열 개수라서
-- name에 해당하는 데이터들은 각자 문자열 길이에 따라 서로 다른 메모리 값을 갖고 있다.
-- 다만 Char(4) 'abcd'/ VarChar(4) 'abcd' => 이 경우 Char의 메모리 저장방식이 더 효율적이다.



-- 숫자형 데이터 타입
Create table nums (
	age tinyint unsigned
);

insert into nums (age) values (200);
insert into nums (age) values (-1); -- 불가능 => unsigned 제약조건

Create table nums2(
	age int
);

insert into nums2 (age) values(1000000);
insert into nums2(age) values (10000000000); -- 불가능 => 범위 초과



-- Decimal
insert into nums2(age) values(1.1);
select * from nums2; -- 1이 삽입됨

Create table product(
	price decimal(5,2)
);

select * from product;
insert into product (price) values (5.2); -- 5,2의 범위 안에 존재
insert into product (price) values (500.23); -- 5,2 범위 안에 존재
insert into product (price) values (5000.2); -- 불가능 2개는 소수점 유효 범위/ 5,2면 일반 정수가 4자리면 안된다.
insert into product (price) values (3.057); -- 에러가 발생하지만 삽입된다. 3.06이 출력된다. => 2자리 수까지 반올림된다.
-- 소수점자리는 넘쳐도 되지만 적으면 안된다.



-- Float, Double
Create table nums3(
x float, b double
);

select * from nums3;
insert into nums3 (x,b) values (0.1234, 5.1203);
insert into nums3 (x) values (1.222123222123222); -- 자릿수를 넘어가면 불확실해진다.



-- Date, Time, DateTime
CREATE TABLE people (
	name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

select * from people;

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10'); 
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

-- format 형식에 맞춰서 insert 해주면 된다.



-- CurDate(), CurTime(), Now()
select curTime(); -- 현재 시간이 출력된다.
select curDate(); -- 현재 날짜가 출력된다.
select now(); -- 현재 dateTime이 출력된다.

insert into people (name, birthdate, birthtime, birthdt)
values ('Hazel',CurDate(), CurTime(), now() ); -- 병원에서 현재 태어난 아이의 출생연도를 넣을 때 유용할 거 같다.



-- Date 관련 함수
select birthdate from people;

select birthdate, Day(birthdate) from people; -- Day()

select birthdate, Day(birthdate), dayofweek(birthdate) from people; -- dayOfweek() => 1일은 일, 7일은 토 

select birthdate, Day(birthdate), dayofweek(birthdate), dayofyear(birthdate) from people;  -- dayofyear() => 일 계산

select birthdate, monthname(birthdate) from people; -- monthName() => 월 이름

select birthdate, week(birthdate) from people; -- week() 현재 몇 번쨰 주인지 추출

select birthdate, year(birthdate) from people; -- year() 년도 추출



-- Time 관련 함수
select * from people;

select birthdt, Hour(birthdt), minute(birthdt), second(birthdt) from people; -- 시, 분, 초 출력하는 함수
select birthdt, date(birthdt), time(birthdt) from people; -- dateTime에서 date/time으로 분리되어 결과 출력
-- 그럼으로 date,time은 데이터 타입이 될 수 있고 함수도 될 수 있다.


















