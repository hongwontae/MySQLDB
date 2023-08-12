create database 810test;
use 810test;
select * from t_board;
select * from t_reply;

select * from f_board;
select * from f_reply;

    select
        f1_0.f_bno,
        f1_0.f_title,
        f1_0.nickname,
        f1_0.reg_date,
        count(distinct f2_0.f_rno)
    from
        f_board f1_0
    left join
        f_reply f2_0
            on f2_0.free_board_f_bno=f1_0.f_bno
    group by
        f1_0.f_bno,
        f1_0.f_content,
        f1_0.f_finish,
        f1_0.f_title,
        f1_0.mod_date,
        f1_0.nickname,
        f1_0.reg_date
    order by
        f1_0.f_bno desc limit 1,10;
        
drop table t_board;
drop table t_Reply;
drop table f_Reply;
drop table f_board;
drop table tbl_sample;
        
        
        
        
        
        
        
        
        
        