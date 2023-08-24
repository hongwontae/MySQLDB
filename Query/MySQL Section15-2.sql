-- MySQL Section15-2

use mysqlud;

-- Having
select title, count(rating) as Count from reviews_join group by title Having count(rating)>3;
select title, count(rating) as Count, round(avg(rating),2) as Rating from reviews_join group by title Having count(rating)>3 and Rating<8;



-- With RollUp
select title, round(avg(rating),2) from reviews_join group by title with rollup; -- 맨 마지막 행은 집계함수의 모든 데이터 종합이 출력된다.
select title, round(sum(rating),1) from reviews_join group by title with rollup; -- 맨 마지막 행 전체 합 출력
select title, round(max(rating),1) from reviews_join group by title with rollup; -- 가장 높은 평점 등장

select first_name, released_year, genre, avg(rating), count(genre) 
from reviews_join group by first_name, released_year, genre with rollup;
-- section15 5 메모장 요약












