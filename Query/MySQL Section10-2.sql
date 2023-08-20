-- MySql Section10-2

-- Date_Format()
use mysqlud;

select birthdate ,date_format(birthdate, '%a  %b %D')from people;
select birthdate, date_format(birthdt, '%H:%i') from people;
select birthdt, date_format(birthdt, 'Born on: %r') from people;


-- Date Math
select birthdate, datediff(curdate(), birthdate) from people; --  -연산 후 일을 반환
select birthdtime ,birthdate, datediff(curdate(), birthdtime) from people; -- 시간 데이터가 들어가면 오류가 발생한다.

select birthdate, date_add(birthdate, Interval 1 year) from people; -- 1년을 더한다.
select birthdate, date_add(birthdate, Interval 1 hour) from people; -- 1시간을 더한다.// 분이나 초도 가능하다.

select birthdate, date_sub(birthdate, interval 20 year) from people; -- 20년을 뺀다.
select birthtime, date_sub(birthtime, interval 1 hour) from people; -- 1시간을 뺀다.

select birthtime, timediff(birthTime, second(now())) from people; -- birthtime - seconde()/ 날짜 데이터가 들어가면 오류가 발생한다.



-- TimeStamps
select timestamp(now()) from people;



-- TimeStamp Default On Update TimeStamps
Create table captions (
text varchar(50),
 created_at timeStamp default current_timestamp
); -- 생성시점에 dateTime이 들어간다.

insert into captions (text) values ('아메아메아메아메');
select * from captions;

Create table captions2 (
	text varchar(50),
    created_at timestamp default current_timestamp,
    updated_at timestamp on Update current_timestamp
); -- on Update current_timeStamp => 업데이트 한 시점에 dateTime이 들어간다.

insert into captions2(text) values ('아메리카노 좋아 좋아 좋아');
select * from captions2;

update captions2 set text='피가 ab형입니다.';

select * from captions2;









