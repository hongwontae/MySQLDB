-- MySQL Section13-2

use mysqlud;

-- Inner Join
insert into orders (order_date, amount, customer_id) values ('2020-12-25',30.30,3);
select * from customers;
select * from orders;

select first_name, last_name, order_date, amount from customers
join orders on orders.customer_id = customers.id;

select * from orders 
inner join customers on customers.id = orders.customer_id;



-- Ineer Join And Group By
drop table orders;
drop table customers;

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);
 
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
 
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

Select first_name, last_name, sum(amount) as total from customers
inner join orders on customers.id = orders.customer_id
group by first_name, last_name
order by total desc; -- 조인과 Group, Order











