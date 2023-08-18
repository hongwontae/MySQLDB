-- MySQL Section11 Assignment

select * from books;

-- 1 
-- 0,1,9

-- 2
select * from books where released_year < 1980;

-- 3
select * from books where author_lname in('Eggers', 'Chabon');

-- 4
Select * from books where author_lname = 'Lahiri' and released_year > 2000; 

-- 5
Select * from books where pages between 100 and 200;

-- 6
Select * from books where author_lname like 'c%' or author_lname like 's%';

-- 7
Select title, author_lname,
	Case 
    when title like '%stories%' then 'Short Stories'
    when title like '%kids%' or title like '%a heartbreaking work%' then 'Memoir'
    else 'Novel'
    end as 'Type'
    from books;
    
-- 8
Select author_fname, author_lname,
Case
	when Count(*) = 1 then '1 book'
    else concat(count(*),' ','books')
	end as count
 from books
 where author_lname is not null
 group by author_fname, author_lname;








