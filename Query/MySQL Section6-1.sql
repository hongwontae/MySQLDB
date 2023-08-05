-- CRUD

-- Create
Create table Shirts (
	Shirt_id int auto_increment,
    article varchar(20),
    color varchar(20),
    shirt_size varchar(10),
    last_worn int,
    primary key(Shirt_id)
);

select * from shirts;
desc shirts;
drop table shirts;

create database shirts_DB;
use shirts_DB;

insert into shirts (article, color, shirt_size, last_worn)
values ('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

insert into shirts (article, color, shirt_size, last_worn) 
values ('Polo', 'Purple','M',50);

Update shirts set article='Polo shirt' where article='Polo';


-- Read
Select article, color from shirts;
Select article,color,shirt_size,last_worn from shirts where shirt_size='M';
-- where은 항상 from 뒤에 나와야 한다.


-- Update
Select * from shirts;
Update shirts set shirt_size='L' where article='polo shirt';
Update shirts set last_worn=0 where last_worn>=15;
Update shirts set shirt_size='XS', color='Off White' where color='white';
-- => set에 해당하는 Logic은 조건이다. 칼럼을 무엇으로 바꿀것이냐?/ where은 이에 해당하는 칼럼의 데이터 값을 선정하는 것이다.


-- Delete 
Delete from shirts where article = 'tank top';
select * from shirts;
delete from shirts;
drop table shirts;
-- => delete from 테이블명 where 조건/ Update table => 두개의 명령문의 순서가 다르다. delete는 from이 필요, Update는 필요 없다.





