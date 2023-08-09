-- MySQL Section8-2

-- Limit
select * from books; -- book_id 첫 시작은 1
select * from books limit 5;
select * from books limit 0,5; -- 1부터 5개 1행~5행 출력
select * from books limit 1,5; -- 2부터 5개 2~6행 출력

-- order by와 함께 하는 limit
select author_fname, title, stock_quantity from books order by author_fname, title limit 0,10;
-- order by로 정렬된 테이블에서 limit가 적용되는 것이다. 



-- Like
select book_id, author_fname from books where author_fname LIKE '%da%';
select book_id, author_fname from books where author_fname Like '____';


-- like %가 와일드카드가 아닌 문자열일 때 찾는 법
select title from books where title like '%\%%';



-- Section8 Assignment

-- 1번 문제
select title from books where title like '%stories';
-- 2번 문제
select title, pages from books order by pages desc limit 0,1;
-- 3번 문제
select concat_ws(' - ',title, released_year) as summary from books order by released_year desc limit 0,3;
-- 4번 문제
select title, author_lname from books where author_lname like '% %';
-- 5번 문제
select title, released_year, stock_quantity from books order by stock_quantity, released_year desc limit 0,3;
-- 6번 문제
select title, author_lname from books order by author_lname, title;
-- 7번 문제
select upper(concat('MY FAVORITE AUTHOR IS ',author_fname,' ', author_lname)) as yell from books
order by author_lname asc;








