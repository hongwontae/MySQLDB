-- MySQL Section8-1

-- Data Insert
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

-- 확인 완료
select * from books order by book_id desc;


-- Distinct
select author_fname, book_id from books;
select distinct author_fname from books;