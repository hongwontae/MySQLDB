-- MySQL Section17-1

use Insta;

-- User schema
Create database Insta;

Create table users(
	id integer primary key auto_increment,
    username varchar(255) unique not null,
    created_at timestamp default current_timestamp
);

desc users;
insert into users (username) values ('BlueTheCat'),('CharlieBrown'),('ColtSteele');
select * from users;



-- Photos Schema
Create table photos (
	id integer primary key auto_increment,
    image_url varchar(255) not null,
    user_id int not null,
    created_at timestamp default now(),
	foreign key(user_id) references users(id)
);

insert into photos (image_url, user_id) values ('/koala3121',1), ('dnjsxoghd',2),('q2tlxm@12',2);
desc photos;
select * from photos;

select username, image_url from photos Inner join users on users.id = photos.user_id;



-- Comment Schema
Create table comments(
	id int primary key auto_increment,
    comment_text varchar(255) not null,
    user_id int not null,
    photo_id int not null,
    created_at timestamp default current_timestamp,
    Foreign key(user_id) references users(id),
    Foreign Key(Photo_id) references photos(id)
);

desc comments;

insert into comments (comment_text, user_id, photo_id) values ('Meow',1,2),('Amazing',3,2),('I<3 This',2,1);
select * from comments;



-- Likes Schema
Create table likes (
	user_id int not null,
    photo_id int not null,
    created_at timestamp default now(),
	Foreign key(user_id) references users(id),
    Foreign Key(Photo_id) references photos(id),
    primary key(user_id, photo_id) -- 유저 아이디와 사진 id가 동일한 이미 존재하는 종아요를 삽입할 수 없다.
);

insert into likes (user_id, photo_id) values (1,1),(2,1),(1,2),(1,3),(3,3);
insert into likes (user_id, photo_id) values (1,1); -- 불가능 pk는 유일해야 한다. => 중복x



-- Follow Schema
Create table follow (
	follow_id int not null,
    followee_id int not null,
    created_at timeStamp default current_timestamp,
    Foreign key(follow_id) references users(id),
    Foreign Key(followee_id) references users(id),
    primary key(follow_id, followee_id)
);

insert into follow (follow_id, followee_id) values (1,1),(1,2),(2,1),(2,3),(3,3);
insert into follow (follow_id, followee_id) values (1,1); -- 불가능 pk 유일해야 하기 때문



-- Hash Tag Table
Create table tags(
	id int primary key auto_increment,
    tag_name varchar(255),
    created_at timestamp default current_timestamp
);

Create table photo_tags(
	photo_id int not null,
    tag_id int not null,
    Foreign key (photo_id) references photos(id),
    Foreign Key (tag_id) references tags(id),
    Primary Key (photo_id, tag_id)
);


insert into tags (tag_name) values ('adorable'),('cute'),('sunrise');
select * from tags;

insert into photo_tags () values (1,1),(1,2),(2,1),(3,2);























