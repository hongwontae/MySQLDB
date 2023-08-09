-- MySQL Section7-3 Assignment

-- 1번 문제
select upper(reverse('why does my cat look at me with such hatred?')) as String;
-- 2번 문제
select replace(title,' ',' -> ') as title from books;
-- 3번 문제
select author_lname as forwards, reverse(author_lname) as backwards from books;
-- 4번 문제
select upper(concat(author_fname,' ',author_lname)) as fullcpas from books;
-- 5번 문제
select concat(title, ' was released in ', released_year) as blurb from books;
-- 6번 문제
select title,char_length(title) as character_count from books;
-- 7번 문제
SELECT 
    CONCAT(SUBSTR(title, 1, 10), '...') AS short_title,
    CONCAT(author_lname, ',', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM
    books;






