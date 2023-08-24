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


























