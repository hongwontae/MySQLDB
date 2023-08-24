-- MySQL Section16-2

use mysqlud;


-- Ntile()
select emp_no, department, salary,
ntile(4) over(partition by department order by salary desc),
ntile(4) over (order by salary desc)
from employees;
-- ntile() => 매개변수는 숫자가 들어가고 over()의 조건에 따라 %계산을 해서 몇 분위에 속하는지 숫자로 표현한다.
-- order by > partition By > order by 윈도우 함수 나중에 => 테이블 배치 순위 but 칼럼 데이터 유효



-- First_Value()
select emp_no, department, salary,
first_value(emp_no) over (order by salary desc) -- salary의 desc 첫 번쨰 값을 가져와서 붙여버린다.
, first_value(emp_no) over(partition by department order by salary desc) -- Partition By로 그룹화를 한 후에 그룹중에 first_value를 가져온다.
from employees; -- over()의 매개변수에 아무것도 없으면 1반환 (마찬가지)

























