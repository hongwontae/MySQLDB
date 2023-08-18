-- MySQL Section11-2

use mysqlud;

-- Date 비교
select * from people;

select * from people where birthdate >'2000-01-01'; -- 날짜 데이터 형식을 맞추면 where에서 날짜처럼 계산이 된다.

select * from people where hour(birthdt) < 14; -- 이렇게 변환하면 숫자도 가능하다. (당연히 문자열도 가능)

select name, cast('16:00:00' as time) from people; -- cast 함수 사용

select birthdate from people where birthdate > cast('2000-08-08' as date); -- where 조건에 cast사용

