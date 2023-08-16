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
insert into nums (age) values (-1); -- 불가능 => unsignde

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



-- Float, Double
Create table nums3(
x float, b double
);

select * from nums3;
insert into nums3 (x,b) values (0.1234, 5.1203);
insert into nums3 (x) values (1.222123222123222); -- 자릿수를 넘어가면 불확실해진다.



-- Date, Time, DateTime




















