-- MySQL Section13-1

use mysqlud;

-- 외래키 다루기
CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
); -- Pk가 있는 일반적인 테이블을 생성
 
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
); -- Customers 테이블을 참조하는 테이블을 생성 fk= customer_id
 
INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);

select * from customers;
select * from orders;



-- Cross join
-- 만약 Boy George의 주문 내역을 보고 싶다면?
select id from customers where last_name='George';
select * from orders where customer_id=1; -- 조금 투박한 방식이다. 이렇게 하면 쿼리를 두 번 날린다.

select * from orders where customer_id=(select id from customers where last_name='George');
-- 이 방식은 한 번만 날리지만 customer table과 order table의 데이터를 한 번에 볼 수 없다는 단점이 여전히 존재한다.

select * from customers, orders; -- 이 방식이 Cross Join이다.
select count(*) from customers, orders;



















