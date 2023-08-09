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

-- 심화
select distinct concat(author_fname,' ', author_lname) from books;
-- 심화와 같은 결과물이 출력된다.
select distinct author_fname, author_lname from books;


-- Order By
insert into books(title, author_fname) values('my life', 'steele');
select book_id,title, author_fname from books;

select * from books order by title;
select book_id,title,pages from books order by pages desc;

-- order by 심화

-- order by에 숫자 이용
select book_id, title, pages from books order by 2;
select book_id, title, pages from books order by 3 desc;

-- 하나의 칼럼으로 정렬하고 또 다른 칼럼, 다른 컬럼 ...으로 정렬하는 방식
select released_year, author_fname from books order by released_year, author_fname;
-- relased_year을 기준으로 asc 정렬을 했다. 근데 relased_year의 중복이 나오는 상황에서 author_fname은 insert 순서로 출력된다.
-- 이를 정렬하기 위해 order by에 두 번째 칼럼을 넣는다.

-- 테이블의 칼럼에 속하지 않은 데이터를 정렬하는 방법
-- 별칭을 줘서 order by 값으로 넘겨주는 게 편하다. 근데 이게 되는지 확인만 해봤다.
select concat(author_fname,' ',author_lname) from books order by concat(author_fname,' ',author_lname);
select concat(author_fname,' ',author_lname) as fullName from books order by fullname;
-- concat으로 결합된 문자열은 테이블에 해당하는 칼럼은 아니다. 그러나 order by의 정렬의 값으로써 사용될 수 있다.













