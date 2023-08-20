-- MySQL Section11-2

use mysqlud;
use book_shop;

-- Date 비교
select * from people;

select * from people where birthdate >'2000-01-01'; -- 날짜 데이터 형식을 맞추면 where에서 날짜처럼 계산이 된다.

select * from people where hour(birthdt) < 14; -- 이렇게 변환하면 숫자도 가능하다. (당연히 문자열도 가능)

select name, cast('16:00:00' as time) from people; -- cast 함수 사용

-- Select name, cast (16:00:00, as time) from people; => cast함수가 실행되지 않음, Cast함수는 첫 번째 매개변수로 문자열만 가능하다.

select birthdate from people where birthdate > cast('2000-08-08' as date); -- where 조건에 cast사용



-- In Operator
select * from books;

select author_lname from books where author_lname in ('Eggers', 'Gaiman','carver'); -- Or조건과 =수식 합친 것 => in
select author_lname from books where author_lname not in ('Eggers', 'Gaiman','carver'); -- In 조건을 제외한 나머지를 불러온다.

select * from books where released_year>=2000
 and released_year not in (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016, 2018, 2020) order by released_year desc, book_id desc;
 
 -- %(나머지 연산자)
 Select * from books where released_year%2=1 and released_year>=2000;
 select * from books where released_year%2=0 and released_year>=2000;
 
 
 
 -- Case 구문
 select title, released_year, -- ,붙여 준다. 하나의 칼럼이기 때문에
  Case
	When released_year >= 2000 Then 'Modern Lit'
	Else '20TH Century Lit'
    END AS Genre
from books order by released_year asc;

SELECT 
    book_id,
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 40 THEN '*'
        WHEN stock_quantity BETWEEN 41 AND 70 THEN '**'
        WHEN stock_quantity BETWEEN 71 AND 100 THEN '***'
        WHEN stock_quantity BETWEEN 101 AND 140 THEN '****'
        ELSE '*****'
    END AS 'stock'
FROM
    books order by stock asc
;

-- Case 연습
Select pages, count(*),
Case 
	when pages<=50 then '페이지 수 적음'
    when pages<=100 then '페이지 수 다소 적음'
    when pages<=150 then '페이지 수 중간'
    when pages<=200 then '페이지 수 중상'
    when pages<=250 then '페이지 수 상'
    else '페이지 수 다수'
    end as Star
    from books group by Star, pages order by pages desc;



-- is Null/ Not Null 
select * from books where title is null;
select * from books where title is not null;

delete from books where title is null;

delete from books where author_fname is null;

















