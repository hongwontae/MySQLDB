use mysqlud;

show tables;

select * from cats;

Update cats set breed='cute' where breed='Tabby';

Update cats Set age=14 where name = 'mISTY';

set sql_safe_updates=0;

Update cats set name='jack' where name='jackson';
Update cats set breed = 'British ShortHiar' where name ='ringo';
Update cats set breed = 'Dogs', name='alonse' where cat_id=4; 


-- delete 
delete from cats where name='alonse';
select * from cats;

-- delete assignment







