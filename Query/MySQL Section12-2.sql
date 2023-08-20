-- MySQL Section12-2

use mysqlud;

-- Alter Table ADD Column
Alter table company add column phone varchar(20);
desc company;
select * from company; -- 기본적으로 null값이 들어간다.

Alter table company add column phone3 int default 1 ;
select * from company; -- Default값으로 기본값을 넣을 수 있다.



-- Alter Table Drop column
Alter table company drop column phone3;
select * from company;



-- 테이블 이름과 칼럼 이름 바꾸기
Rename table company to supplier;
select * from supplier; -- 이름이 바뀌었다.

Alter table Supplier Rename to company;
select * from company; -- 이름이 바뀌었다.

Alter table company Rename Column address to 주소;
Select * from company; -- 칼럼명이 바뀌었다.

Alter table company Rename column 주소 to Address;
select * from company; -- 칼럼명이 바뀌었다.



-- Column Modify
Alter table company add column company_name varchar(100) not null default 'Unknown';
Alter table company modify company_name varchar(100) default '알지 못함';
desc company;
insert into company (name, address, company_name) values ('홍원태', '녹걍동','네카라쿠배');
select * from company;

alter table company modify name varchar(100) not null default '녹양';
desc company;



-- Alter Constraint
desc houses;
Alter table houses add constraint positive_pprice check (purchase_price>=0); -- 제약 조건 추가
Select * from houses;
insert into houses (purchase_price, sale_price) values (-1,4); -- 제약조건 위배

Alter table houses drop constraint positive_pprice; -- 제약 조건 삭제
insert into houses (purchase_price, sale_price) values (-1,4); -- 제약 조건 삭제로 인해 insert 가능
select * from houses;
































