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



-- Rank()
select emp_no, salary, department, rank() over(partition by department order by salary asc), 
rank() over(order by salary asc) as department_salary from employees;

select emp_no, salary, department, rank() over(partition by department order by salary asc), 
rank() over(order by salary asc) as department_salary,
rank() over(order by emp_no)
from employees; -- 맨 마지막 order by의 힘이 윈도우 함수 order by내에서 제일 쎄다.

select emp_no, salary, department, rank() over(partition by department order by salary asc), 
rank() over(order by salary asc) as department_salary,
rank() over(order by emp_no)
from employees order by department; -- 맨 마지막에 붙은 order by가 제일 강력한 order by이다.



-- Dense_Rank() And Row_Number()
select emp_no, department, salary,
rank() over(order by salary) as '순위1' -- Salary에 대한 순위를 매긴다./ 만약 orderby가 없으면 1로 출력된다.
 -- 맨 마지막의 Partition By와 Order By가 우선순위이다.
, row_number() over() -- 단지 옆에 행 번호를 출력해주는 것이다.
, dense_rank() over() -- dense_rank()도 마찬가지로 order by가 없으면 1이 출력된다.
, dense_rank() over(order by salary) -- dense_rank() => 중복된 순위가 있으면 그대로 출력하고 8,8 =>9로 가는 로직
from employees
;


















