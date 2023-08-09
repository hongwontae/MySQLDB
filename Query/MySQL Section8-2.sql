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