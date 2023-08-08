-- Section7-2

-- Replace
Select Replace('Hello World','World','wWWWwprld');

-- 응용버전
Select Replace('Cheeze Cake Carrot Cake',' ',' - ');

-- 칼럼을 대상으로 Replace 구현하기
select * from books;
Select Replace(title, ' ',' - ') from books;


-- Reverse
select Reverse(null);
select Reverse('');
select Reverse('Hello World');

-- 응용 버전
select concat(author_fname,'  ',reverse(author_lname))from books;


-- Char_Length
select char_length(null);
select char_length(' ');
select char_length(title) as Length, title from books;


-- Upper/ Lower
select upper(title) from books;
select Lower(author_lname) from books;
select Concat('I LOVE ',upper(title) ,' !!!') from books;


-- etc 문자열 함수

-- Insert
select insert(title,1,2,'A') as iinset, upper(title) from books;
-- title의 첫글자에서 두 번째 글자를 통틀어서 A로 바꾸겠다.

-- Right/ Left
Select right('Hello World',5);
Select left('Hello World',5);
select concat(left('Hello World',5),' ',right('Hello World',5));

-- Repeat
select Repeat('hahaha',3);
select Repeat(10*3,4);

-- Trim
select trim('  aasdasd  ');
select trim('   select from where   ');

select trim(Leading 'x' from 'xxxbarxxx');
select trim(Leading 'x' from 'xyzbarxxx' );

select trim(Trailing 'xyz' from 'xyzabcxyz');
select trim(Trailing 'z' from 'xzzabc zxzzx');

select trim(Both 'z' from 'zzzxyzzzsszz');




