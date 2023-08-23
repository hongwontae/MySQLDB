-- MySQL Section15

use mysqlud;

-- View
SELECT 
    title, released_year, genre, rating, first_name, last_name
FROM
    reviews
        JOIN
    series ON series.id = reviews.series_id
        JOIN
    reviewers ON reviewers.id = reviews.reviewer_id;

Create view reviews_Join as SELECT 
    title, released_year, genre, rating, first_name, last_name
FROM
    reviews
        JOIN
    series ON series.id = reviews.series_id
        JOIN
    reviewers ON reviewers.id = reviews.reviewer_id;

Select * from reviews_Join; -- 위의 sql문 쿼리가 가상 테이블로 저장되어 이름만 넣어도 조인 쿼리가 출력된다.

select title, round(avg(rating),2) from reviews_Join group by title;


-- Update View
select * from series order by released_year desc;

create view series_view as select * from series order by released_year desc;
select * from series_view;
desc series_view;
insert into series_view (title, released_year, genre) values('The Great Man','2023','Drama');
select * from series order by id desc; -- 삽입의 대상은 뷰였는데 기존 테이블도 삽입이 되었다. 뷰는 종속적인 개념이다.
select * from series_view; 

delete from series_view where title ='The Great Man';
select * from series order by id desc;



-- View 대체/ 변경하기
Create or replace view orderSeries as select * from series order by id desc;
select * from orderSeries;

Create or Replace view orderSeries as select * from series order by id asc; -- 뷰 쿼리문 변경하는 일반적인 방법
select * from orderSeries; -- 뷰에 적용된 쿼리문을 체인지한다.

alter view orderSeries as select * from reviews; -- 뷰 쿼리문 변경하는 두 번째 방법
select * from orderSeries;

drop view orderSeries; -- orderSeries 삭제
alter view orderSeries as select * from reviews; -- 실행 불가































