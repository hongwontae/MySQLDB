-- MySQL Section9-1 

-- Count
select count(*) from books;
select * from books order by book_id desc;

select count(*) from books;
select count(author_lname) from books; -- 현재 이 두개의 쿼리문의 결과는 같다.

Insert into books () values ();
select count(*) from books; -- count 20
select count(author_lname) from books; -- count 19

select count(distinct author_fname) from books; -- 12
select count(author_fname) from books;  -- 19
select count(distinct author_lname) from books; -- 11

select title from books where title like '%the%'; -- 6개의 the가 들어간 제목이 출력된다.
select count(title) from books where title like '%the%'; -- 6



-- Group By
select author_lname, count(*) as Number from books group by author_lname order by Number desc;
-- 정확한 결과 값이 아니라고 가정한다./ author_lname은 맞지만 author_fname이 다른 경우 같은 사람이 아니기에 같은 그룹을 묶으면 불일치
-- 결과가 출력된다.

select released_year from books group by released_year;



-- Min/Max
select author_lname from books;

select max(pages) from books; -- 634

select max(author_lname) from books; -- Steinbeck
select min(author_lname) from books; -- Carver

insert into books (author_lname) values('Caaaa');
delete from books where author_lname='Caaaa';



-- 서브쿼리 -Min 및 Max 문제

-- 페이지 수가 가장 많은 제목 추출하기1
select title, pages from books order by pages desc limit 1;

-- 페이지 수가 가장 많은 행 추출하기2
select * from books where pages=(select Max(pages) from books);


insert into books (title, pages) values('My Life in words', 634);

-- 무조건 하나만 나온다. pages수가 634가 높은 것이 두 개라도
select title, pages from books order by pages desc limit 1;

-- 두 개가 출력된다. where pages=634이기에...
select * from books where pages=(select Max(pages) from books);
select * from books where pages=634; -- 위와 같은 결과가 나온다.

-- 가장 먼저 출간된 책의 제목
select * from books where released_year=(select Min(released_year) from books);






















