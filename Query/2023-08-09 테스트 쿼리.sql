create database 89test;
use 89test;

select * from t_board;

    select
        b1_0.bno,
        b1_0.content,
        b1_0.mod_date,
        b1_0.reg_date,
        b1_0.title,
        b1_0.writer 
    from
        t_board b1_0 
    where
        b1_0.bno=1;
        
-- TestQuery1
        select
        b1_0.bno,
        b1_0.content,
        b1_0.mod_date,
        b1_0.reg_date,
        b1_0.title,
        b1_0.writer 
    from
        t_board b1_0 
    where
        b1_0.title like '%1%';
        

-- TestQuery 1_1
    select
        b1_0.bno,
        b1_0.content,
        b1_0.mod_date,
        b1_0.reg_date,
        b1_0.title,
        b1_0.writer 
    from
        t_board b1_0 
    where
        b1_0.title like concat('%',1,'%');
        
        
-- TestQuery 1_2
    select
        b1_0.bno,
        b1_0.title 
    from
        t_board b1_0 
    where
        b1_0.title like concat('%',1,'%');
        
        
-- TestQuery 1_3
    select
        b1_0.bno,
        b1_0.title 
    from
        t_board b1_0 
    where
        b1_0.title like concat('%',1,'%')
    order by
        b1_0.bno desc limit 0,10; 
-- 페이징 처리해주는 쿼리이다. 제목에 1이 포함되는 제목과 번호를 검색하는데 정렬방식은 bno의 역순이고 최대 보여주는 것은 10개이다.
-- 0,10 => 10// 1-10 =>9

    select
        count(b1_0.bno) 
    from
        t_board b1_0 
    where
        b1_0.title like concat('%',1,'%');
        

-- Modify Query
    update
        t_board 
    set
        title= 'Modified Title 49'
    where
        bno=49;
select * from t_board where bno=49;
        
        
        
        
        
        
        
        
        
        
        
        
