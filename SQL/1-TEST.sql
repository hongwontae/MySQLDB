create database node;

USE node;

select * from posts;
insert into posts (title, description, imageURL, createdAt, updatedAt) values ('Hello', 'DescriptionTest','Liverpool', '2019-01-01', '2019-01-01');
update posts set imageURL="s1.png", title="Where is Messi?", description="아르헨티나가 사우디에게 충격적인 패배을 당했다." where id=1;

truncate table posts;