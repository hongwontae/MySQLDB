-- MySQL Section14

use mysqlud;

CREATE TABLE reviewers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);
 
CREATE TABLE series (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    released_year YEAR,
    genre VARCHAR(100)
);
 
CREATE TABLE reviews (
    id INT PRIMARY KEY AUTO_INCREMENT,
    rating DECIMAL(2 , 1 ),
    series_id INT,
    reviewer_id INT,
    FOREIGN KEY (series_id)
        REFERENCES series (id),
    FOREIGN KEY (reviewer_id)
        REFERENCES reviewers (id)
);
 
INSERT INTO series (title, released_year, genre) VALUES
    ('Archer', 2009, 'Animation'),
    ('Arrested Development', 2003, 'Comedy'),
    ("Bob's Burgers", 2011, 'Animation'),
    ('Bojack Horseman', 2014, 'Animation'),
    ("Breaking Bad", 2008, 'Drama'),
    ('Curb Your Enthusiasm', 2000, 'Comedy'),
    ("Fargo", 2014, 'Drama'),
    ('Freaks and Geeks', 1999, 'Comedy'),
    ('General Hospital', 1963, 'Drama'),
    ('Halt and Catch Fire', 2014, 'Drama'),
    ('Malcolm In The Middle', 2000, 'Comedy'),
    ('Pushing Daisies', 2007, 'Comedy'),
    ('Seinfeld', 1989, 'Comedy'),
    ('Stranger Things', 2016, 'Drama');
 
 
INSERT INTO reviewers (first_name, last_name) VALUES
    ('Thomas', 'Stoneman'),
    ('Wyatt', 'Skaggs'),
    ('Kimbra', 'Masters'),
    ('Domingo', 'Cortes'),
    ('Colt', 'Steele'),
    ('Pinkie', 'Petit'),
    ('Marlon', 'Crafford');
    
 
INSERT INTO reviews(series_id, reviewer_id, rating) VALUES
    (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
    (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
    (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
    (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
    (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
    (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
    (7,2,9.1),(7,5,9.7),
    (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
    (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
    (10,5,9.9),
    (13,3,8.0),(13,4,7.2),
    (14,2,8.5),(14,3,8.9),(14,4,8.9);
    
    select * from reviewers;
    select * from series;
    select * from reviews;

-- 1
select title, rating from series
Inner join reviews on series.id = reviews.series_id order by title asc;

-- 2
select title, round(avg(rating),2) as avg_rating from series
inner join reviews on series.id = reviews.series_id
group by title order by avg_rating asc;

select round(3.0123);
select round(3.257,1);
select round(4.9893,2);

-- 3
select first_name, last_name, rating from reviewers
inner join reviews on reviews.reviewer_id = reviewers.id;

-- 4
select title as unreviewed_series from series
left join reviews on series.id = reviews.series_id
where rating is null;

-- 5
select genre, round(avg(rating),2) as avg_rating from series
inner join reviews on series.id = reviews.series_id
group by genre;

-- 6
select first_name, last_name, count(rating) as COUNT, ifnull(min(rating),0) as MIN, ifnull(max(rating),0) as MAX, ifnull(avg(rating),0) as AVG, Case
when count(rating) !=0 then 'ACTIVE'
else 'INACTIVE'
end as 'STATUS'
 from reviewers
left join reviews on reviewers.id = reviews.reviewer_id
group by first_name, last_name;

-- 6의 또 다른 풀이법 (IF문 사용)
select first_name, last_name, count(rating) as COUNT, ifnull(min(rating),0) as MIN, ifnull(max(rating),0) as MAX, ifnull(avg(rating),0) as AVG, 
if(count(rating)>0,'ACTIVE','INACTIVE')
 from reviewers
left join reviews on reviewers.id = reviews.reviewer_id
group by first_name, last_name;

-- 7
select title,rating, concat(first_name,' ', last_name) as reviewer from reviews
inner join series on reviews.series_id = series.id
inner join reviewers on reviews.reviewer_id = reviewers.id
order by title;





    
    
    
    
    