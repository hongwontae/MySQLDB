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