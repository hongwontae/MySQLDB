Create table unique_cats (
	cat_id Int primary key,
    name varchar(50) Not Null,
    age Int Not Null
);

-- 기본키는 자동으로 널을 허용하지 않는다.
desc unique_cats;

-- 기본키는 유일해야 하기에 한번 더 누르면 오류가 발생한다.
insert into unique_cats (cat_id, name, age) values (1,'ppp',111);
select * from unique_cats; 

-- Auto IncreMent
Create Table unique_cats2(
	cats_id int Auto_increment,
    name varchar(30) Not Null default 'ckck24',
    age Int Not Null Default 100,
    primary key (cats_id)
);
desc unique_cats2;

Insert Into unique_cats2 () values ();


select * from unique_cats2; 

