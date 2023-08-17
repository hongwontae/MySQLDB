-- MySQL Section11-1

use book_shop;

-- Not Equal
select * from books where author_lname != 'Gaiman';
select released_year from books where released_year != 2017;



-- Not Like
select * from books where title like '% %';
select * from books where title not like '% %';

select author_lname from books where author_lname like '%e%';
select author_lname from books where author_lname not like '%e%';



-- Greater Than
select * from books where released_year > 2005;
select * from books where pages > 500;



-- Less Than Or Equal to
select * from books where pages >= 200;
select * from books where released_year <= 2000;



-- And
Select title, author_lname from books where title like '%e%' and author_lname like '%e%';
select pages, released_year from books where pages<=300 and released_year >= 2000;



-- OR
select title, pages from books where title like '%e%' or pages >= 300 order by pages desc;
select author_lname as 'al', author_fname as 'af' from books where author_lname like 'a%' or author_fname like '%e%'; 



-- Between
select pages from books where pages between 200 and 300;
select pages from books where pages not between 200 and 300;

select released_year from books where released_year between 2004 and 2017 order by released_year desc; 
select released_year from books where released_year not between 2004 and 2017 order by released_year desc; 








 
