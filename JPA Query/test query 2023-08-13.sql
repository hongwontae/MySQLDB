create database 812test;
drop database 812test;
create database 813test;

use 813test;
select * from member;

select * from free_board;

select * from product;
drop table member;

drop database 813test;
use 813test;
show tables;
select count(*) from free_board where free_title like '%1%';
select * from free_board;

select free_bno, free_title from free_board where free_title like '%1%';

select * from free_board where free_bno=50;

select * from product;
-- 프로덕트를 통해 이미지를 넣었다.
select * from product_images;

select * from product_review;
drop table free_reply;
select * from free_reply;







