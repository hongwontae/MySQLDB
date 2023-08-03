use mysqlud;

show tables;	

drop table cats;

CREATE TABLE cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
  ); 
  
INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
select * from cats;

-- Section_5 58,59 select
-- 하나의 열만 가져오기
select name from cats;
-- 원하는 행만 가져오기 (이렇게 보여주는 열을 바꿀 수 도 있다.)
select age, name from cats;


-- Section_5 60, 61 where
Select * from cats where age=4;
-- where은 행의 조건
-- 원하는 조건을 달아줄 수 있다.
Select name, age from cats where age>=4;


-- Rapid Fire
-- Solution_1
Select cat_id from cats;

-- Solution_2
Select name, breed from cats;

-- Solution_3  sql문은 기본적으로 대소문자를 구분하지 않는다.
Select name, age from cats where breed='Tabby';

-- Solution_4 
Select cat_id, age from cats where cat_id=age;


-- Section_5 65,66 aliases
Select cat_id as id, age from cats where cat_id<4; -- 이 형식에서는 where에 칼럼은 본 이름이 들어가야 한다.
Select name as n, age, breed from cats;













