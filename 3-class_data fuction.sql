use sakila;

select first_name, concat('A',first_name),char_length(first_name),substr(first_name,3,4) from actor;

-- trim fuction
-- trim
-- rtrim
-- ltrim
select char_length(trim('    hey     '));

select char_length(rtrim('    hey     '));

SELECT TRIM('#' FROM '###SQL Tutorial###') ;


--  replace	( column_name, Kiski jgh relace krna h, or rakhna kya h h?  )
select first_name ,replace(first_name,'E','#')from  actor;

-- agr number of digit km pd  rhe h to starting m kitne digit/char jodne h jese in first _name 5 digit the digit is @
select frist_name, lpad(first_name,5,'@') from actor;


-- numeric  fuction
--  round
select round(11.5);

selECT round(11.6,1);   -- only the decinal part jese esme 1 dal rakha h to decimal k bad ka digit 6 h to m 6 se aage kai value dekhege uske hisab se round krna pdta h 
select round(11.67,1); -- output is 11.7
select round(11.67289803,3); -- output 11.673
-- 1<5=0 or 1>5=10
selECT round(11.6,  -1);   -- only the integer round off

-- truncate value nikal k deta h round up nhi krta(it is just exract the vallue dont round off)
select truncate(6546.627  , 2),round(6546.627,2);

-- other fuction
select  mod(10,2), floor(6.9999999),   ceil(5.0002),power(2,2);


-- date fuction[important]
-- date per  kam krne k  liye
select current_date(),current_date(),current_time(),current_timestamp(),now();

-- adddate
select now(), adddate(now(),2); --  2=days

select now(), adddate(now(),interval 2 month );
select now(), adddate(now(),interval 2 hour );
select now(), adddate(now(),interval -2 month );
select now(), addtime(now(),'02:00:00' );

select now(),year( now()  ) , last_day(now());
-- year and month

-- extract ()
select now(), extract(month  from now() );
select now(), extract(quarter  from now() );

--  date format

-- adddate,now,crutime, extact,year,month,date_format
select now(),  date_format(now(), 'year is %y,my month is  %M')



























