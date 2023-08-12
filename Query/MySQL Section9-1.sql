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


















