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





















