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



