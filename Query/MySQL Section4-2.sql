select * from cats;
desc cats;

-- null값 허용된 삽입
insert Into cats () values ();
Insert Into cats (name) value ("aaa");

-- 널 값 불가 테이블 생성
Create table cats2 (
	name varchar(50) NOt Null,
    age Int Not Null
);

-- 널 no 등장
desc cats2;
-- age 값 널 불가능이라 오류발생
Insert Into cats2 (name) values ('kkk');
-- Null 값을 허용하지 않는 정상적인 Insert구문
Insert Into cats2 (name, age) values ('hwt',15);
-- 정상적으로 출력된다.
select * from cats2;

Create table shops (
	name varchar(100) Not Null,
    age Int Not Null
);

select * from shops;

-- sql문은 이를 인식하지 못한다. 오류 발생
-- Insert into shops (name,age) values ('hwt's ddd',5);

-- 이를 해결하기 위해 '앞에 \를 넣으면 '를 단순한 문자열로 인식한다.
Insert into shops (name,age) values ('hwt\'s ddd',5);

-- Default 값 설정
Create Table cats3 (
	name varchar(100) default 'HHH',
    age Int Default 20
);

desc cats3;

-- 기본값 등장
Insert Into cats3 () values ();
select * from cats3;

-- default가 NOT NULL은 아니다.
Insert into cats3 (name, age) values (null, null);
-- 이러한 방식으로 널 값이 들어간다.

-- default + not null
Create table hwt (
	name varchar(100) Not Null Default 'koPunch',
    age Int Not Null Default 26
);

desc hwt;




