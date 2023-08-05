-- Update
Update cats set breed='cute' where breed='Tabby';

Update cats Set age=14 where name = 'mISTY';

-- Update Safe mode 일시적 해제
set sql_safe_updates=0;

-- Update assignMent
Update cats set name='jack' where name='jackson';
Update cats set breed = 'British ShortHiar' where name ='ringo';
Update cats set breed = 'Dogs', name='alonse' where cat_id=4; 


-- delete 
delete from cats where name='cindy' or name='misty';
select * from cats;

-- delete assignment
delete from cats where age=4;
delete from cats where age=cat_id;

delete from cats;






