use 83test;

show tables;

select * from t_board;
select * from t_reply;
select * from t_board order by f_bno desc;
select * from t_reply order by f_rno desc;

use boardTest;
show tables;
select * from t_reply;
select * from t_board where f_bno=99; 

select * from free_board;
select * from free_reply;

use boardtest;

select * from t_board;

  select
        b1_0.bno,
        b1_0.title,
        b1_0.writer,
        b1_0.reg_date,
        count(distinct r1_0.rno)
    from
        t_board b1_0
    left join
        t_reply r1_0
            on r1_0.board_bno=b1_0.bno
    group by
        b1_0.bno,
        b1_0.content,
        b1_0.mod_date,
        b1_0.reg_date,
        b1_0.title,
        b1_0.writer,
        b1_0.bno,
        b1_0.content,
        b1_0.mod_date,
        b1_0.reg_date,
        b1_0.title,
        b1_0.writer
    order by
        b1_0.bno desc,
        b1_0.bno desc;
        
        
        
        
        
        
        
        use 83test;
        
		select
        f1_0.f_bno,
        f1_0.f_title,
        f1_0.nickname,
        f1_0.reg_date,
        count(distinct f2_0.f_rno)
    from
        free_board f1_0
    left join
        free_reply f2_0
            on f2_0.free_board_f_bno=f1_0.f_bno
    group by
        f1_0.f_bno,
        f1_0.f_content,
        f1_0.f_title,
        f1_0.mod_date,
        f1_0.nickname,
        f1_0.reg_date,
        f1_0.f_bno,
        f1_0.f_content,
        f1_0.f_title,
        f1_0.mod_date,
        f1_0.nickname,
        f1_0.reg_date
    order by
        f1_0.f_bno desc,
        f1_0.f_bno desc;
