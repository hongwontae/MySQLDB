-- MySQL Section15-3

use mysqlud;

-- SQL 모드 기초
SELECT @@Global.sql_mode; -- 글로벌 모드
select @@Session.sql_mode; -- 현재 세션 모드

set global sql_mode = ''; -- 글로벌 모드를 바꾸는 명령어
set session sql_mode = ''; -- 세션 모드를 바꾸는 명령어

-- 글로벌 모드는 전역에 미치는 모드/ 세션 모드는 현재 세션만 바꾸는 명령어 => workBench를 나가면 글로벌 모드를 받는다.

show warnings; -- 경고문를 보여주는 명령어


-- 다른 sql 모드
-- ERROR_FOR_DIVISION_BY_ZERO => 0으로 나누면 경고를 뱉어내는 설정
-- No_Zero_In_Date => 날짜 데이터가 올바르지 않으면 경고를 뱉어내는 설정
-- Only Full Group By => 그룹바이가 된 칼럼만 select의 대상이 되게 하는 설정
-- Strict_Trans_Tables => 경고를 발생시키는 모드를 파악하고 에러로 바꾸어서 Insert, Update 명령문 실행을 막아버리는 모드




