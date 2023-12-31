-- Mysql Section7-1

Create database book_shop;
use book_shop;

CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

select * from books;
desc books;

-- CONCAT
select 1+4;
select concat('h','e','l','l','o');

-- 합치기
select concat (author_fname,'!!!') from books;
select concat(author_fname,' ',author_lname) as fullName from books;

select concat_ws(' - ',author_fname, author_lname) as fullname from books;


-- SubString

-- 인자가 3개 
-- => 1(H) 시작부터 5(o) 마지막까지 출력해라 hello
select SubString('Hello World',1,5);
-- => 2(e) 시작부터 3(l) 마지막 까지 출력해라 ell
select substring('Hello World',2,3);

-- 인자가 2개
-- => 1(H)부터 끝가지 출력해라
select substring('Hello world',1);
-- => 6(W)부터 끝까지 출력해라
select substring('Hello World',6);

-- 인자가 마이너스
-- => -1부터 끝까지 (hello world에서 d가 마지막이다. 거기서 마지막까지는 d까지이다.)
select substring('hello World',-1);
-- => -9(l)부터 3(o)개 => llo
select subString('Hello World',-9,3);

select substring(author_fname,1,1) as Inital from books;

-- Seciont7/ 96
-- 문자열 함수를 두 개를 사용해서 결합하는 방식이다.
select concat(substr(title,1,10),' ...') as Comfile from books;

select * from books;

-- 이니셜 만들기
select concat(substr(author_fname,1,1),'.', substr(author_lname,1,1)) as inital from books;


-- SQL 포맷팅
SELECT 
    CONCAT(SUBSTR(author_fname, 1, 1),
            '.',
            SUBSTR(author_lname, 1, 1)) AS inital
FROM
    books;




