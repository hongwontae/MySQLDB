-- MySQL Section10 Assignment

-- 1. Char를 사용하는 이유
-- VarChar보다 고정된 메모리 주소값을 갖는다. 문자열이 하나라도 조건에 (5)를 주었다면 무조건 5를 차지한다.
-- 그러나 저장방식에 있어서 더 효율적이다.
-- 그럼으로 데이터의 길이가 일정한 문자열은 char를 쓰는 것이 옳다.


-- 2
Create table inventory(
	item_name varchar(50),
    price decimal(9,2),
    quantity tinyInt
);


-- 3. DateTime과 TimeStamp의 차이점
-- DateTime은 데이터 타입, TimeStamp는 데이터 타입이지만 함수로 사용이 가능하다.
-- DateTime은 범위가 넓어서 표현하기에는 좋지만 저장방식이 TimeStamp보다 떨어진다.
-- TimeStamp는 범위가 좁아서 표현하기에는 불편하지만 저장방식이 DateTime보다 좋다.


-- 4
Select curTime();


-- 5
select curdate();


-- 6
select dayofweek(curdate());


-- 7 
select date_format(now(), '%a');


-- 8 
select concat(date_format(curdate(), '%a %D at'),' ', time(now())) as 'Solution8';


-- 9
Create table tweets (
 Tweet_Content varchar(180),
 username varchar(40),
 created_at timestamp default current_timestamp
);

insert into tweets (Tweet_Content, username) values ('i love you', 'i hate you');
select * from tweets;


-- ex
Select dayname(curdate());
















