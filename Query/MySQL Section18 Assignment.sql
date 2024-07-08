-- MySQL Section18 Assignment

use ig_clone;

-- 1. 가장 오래 사용한 5의 유저를 찾아라
desc users;
select * from users order by created_at asc limit 5;

-- 2. 어느 요일에 유저가 많이 회원가입을 하느냐?
select count(*) as total, dayname(created_at) as dayday from users group by dayday order by total desc limit 2;

-- 3. 사진을 게시한 적 없는 유저를 식별하자

select * from users;
select * from photos;

select users.id as 'users_id', username, image_url, photos.created_at from users 
left join photos on users.id = photos.user_id
where user_id is null order by users.id asc limit 10;

-- 4 Like의 수가 제일 많은 사진을 찾으려고 한다.
select * from photos;
select * from likes;

select username, users.id, count(*) as total  from photos
inner join likes on photos.id = likes.photo_id
inner join users on users.id = photos.user_id
group by photos.id order by total desc limit 0,1;


-- 5. 평균적으로 유저가 게시물을 얼마나 많이 올리는지
select count(*) from users;
select count(*) from photos;
-- null 값이 없다는 가정하에 user의 인원은 100명, 사진의 개수는 257개이다.

-- 실패
select * from users
left join photos on users.id = photos.user_id;
-- photos.id => 257개 나온다.
-- users.id => 283개가 나온다. 이래서 오류가 발생한 것이다. 유저에 해당하는 사진의 개수는 여러개라 이를 맞추려고 값이 증가한 것이다.

select users.id, avg(photos.id) over() from users
left join photos on users.id = photos.user_id order by users.id;
-- 애초에 이걸로 못 찾나보다.

-- 성공
select (select count(*) from photos) / (select count(*) from users) as avg;

-- 6 가장 많이 사용되는 해시태그 5개를 찾아라
select * from tags;
select * from photo_tags;

select tag_name, tags.id, count(tag_name)as total from tags
Inner join photo_tags on tags.id = photo_tags.tag_id
group by tag_name, tags.id order by total desc limit 5;

-- 7 게시물은 올리지 않는데 likes만 누르는 계정 찾기

-- 실패
select count(users.id) from users
left join likes on users.id = likes.user_id
where photo_id is not null order by username;

-- 성공 쿼리
SELECT username, 
       Count(*) AS num_likes 
FROM   users 
       INNER JOIN likes 
               ON users.id = likes.user_id 
GROUP  BY likes.user_id 
HAVING num_likes = (SELECT Count(*) 
                    FROM   photos); 
                    


















