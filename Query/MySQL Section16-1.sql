-- MySQL Section16-1

use mysqlud;

-- Window Function



-- over()
Create table employees(
	emp_no int primary key auto_increment,
    department varchar(20),
    salary int
);

Insert into employees (department, salary) values 
('engineering',80000),
('engineering',69000),
('engineering',70000),
('engineering',103000),
('engineering',67000),
('engineering',89000),
('engineering',91000),
('sales',59000),
('sales',70000),
('sales',159000),
('sales',72000),
('sales',60000),
('sales',61000),
('sales',61000),
('customer service', 38000),
('customer service', 45000),
('customer service', 61000),
('customer service', 40000),
('customer service', 31000),
('customer service', 56000),
('customer service', 55000);

select department, avg(salary) from employees group by department;

select avg(salary) from employees;

select avg(salary) over() from employees; -- 중복 데이터를 합치지 않음

select emp_no, salary, department, min(salary) over(), max(salary) over() from employees;
-- 집계 연산 한 데이터를 행의 개수만큼 옆에 붙여버린다. 그래서 Group By로 할 땐 오류가 나던 이 식이 오류가 발생하지 않는다.



-- Partition By
select emp_no, salary, department, avg(salary) over(partition by department) as department_salary, avg(salary) over() as avg_company from employees;

select emp_no, department, salary, round(avg(salary) over(partition by department),0) as department_salary, max(salary) over(partition by department) as avg_company from employees;

select emp_no, department, salary, count(*) over(partition by department), sum(salary) over(partition by department) as department_salary, sum(salary) over() as avg_company from employees;



-- Order By And Window
select emp_no, salary, department,sum(salary) over(partition by department), 
sum(salary) over(partition by department order by salary asc) as department_salary from employees;

select emp_no, salary, department,
sum(salary) over(partition by department order by salary desc) as department_salary from employees;

select emp_no, salary, department, avg(salary) over(partition by department order by salary desc) as avg_department 
,sum(salary) over(partition by department order by salary desc) as department_salary from employees;

-- order by asc/desc를 해도 롤링로직은 변하지 않는다./ 다만 salary asc는 salary가 가장 낮은 것부터 더해서 총 값을/ salary desc는 salary가 가장 높은 곳부터 더해서 총 값을 낸다.




















