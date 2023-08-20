-- MySQL Section13 Assignment

-- 1
Create table students(
	id int primary key auto_increment,
    first_name varchar(20)
);


Create table Papers(
	title varchar(40),
    grade int,
    student_id int,
    foreign key (student_id) references students (id)
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
 
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);


-- 2
select first_name, title, grade from students
Inner join Papers on students.id = Papers.student_id order by grade desc;


-- 3 
select first_name, title, grade from Students
Left join Papers on students.id = Papers.student_id order by grade desc; -- 겹치는 게 모두 나오는데 겹치지 않는 것은 하나만 나오고 Null or 0이 출력된다.


-- 4
select first_name, ifnull(title,'Missing'), ifnull(grade,0) from Students
Left join Papers on students.id = Papers.student_id order by grade desc;


-- 5
select first_name, ifnull(avg(grade),0) from Students
Left join Papers on students.id = Papers.student_id 
group by first_name;


-- 6
select first_name, ifnull(avg(grade),0) as average,
Case 
	when ifnull(avg(grade),0)>=75 then 'Passing'
    when ifnull(avg(grade),0)<=75 then 'Failing'
    end as passing_status
 from Students
Left join Papers on students.id = Papers.student_id 
group by first_name
order by average desc;













