use sakila;

select * from actor;

select actor_id from actor;
select actor_id,  actor_id+4 from acTOR;
select* from actor where ACtor_id=4;


-- like operator(pattern ke according data filter)

-- %(wuildcard character): zero  or more character 
select * from actor where first_name like 'N%'; -- starting me  N
select * from actor where first_name like '%S'; -- last me S
select * from actor where first_name like '%S%'; -- khi bhi  S

-- ( _ )  : exactly 1 character
select * from actor where first_name like 'E_';

select * from actor where first_name like 'E____';

select * from actor where first_name like 'A____%';

select * from actor where first_name like '_A%';

select * from actor where first_name like '____A';

select * from actor where actor_id between 2 and 19  and first_name like '-%S%A_' ;

-- opretor
-- fuctions

 -- inbuilt fuctions
 -- scaler fuction( row function)     2) multi row function
-- apply on each row  and  return the output for each row

-- total character in each first_name
select first_name, char_length(first_name)  from actor;

-- to  convert into lower case
select first_name, char_length(first_name),lower(first_name)  from actor;

-- To concat
select first_name, char_length(first_name),lower(first_name), concat(first_name,last_name)  from actor;

select first_name, char_length(first_name),lower(first_name), concat(first_name,' ',last_name)  from actor;

select first_name, char_length(first_name),lower(first_name), concat('MS/MRS',' ',first_name,' ',last_name)  from actor;

-- brothers of concat=>concat_ws
select first_name, char_length(first_name),lower(first_name), concat_ws(' ',first_name,last_name)  from actor;

-- substr(to extract some data )
select first_name, substr(first_name,2), substr(first_name,3,2) from actor;
-- substr(colum nam, position,total_character)

select first_name, substr(first_name,-2), substr(first_name,-3,2) from actor;


char_len vs len
trimfuction
locate
replace
python2 vs python3
 datatypes in python
 
 





































