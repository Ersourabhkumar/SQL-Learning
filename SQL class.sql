show databases; -- will show all database in mysql

use sakila;     -- use sakila as a databse

-- show table to see all table
show tables;

-- select statment(DQL)  * --> acess all column
select * from actor;

describe actor;  -- will give table info(column,datatype....)

select actor_id, first_name from actor;

select actor_id,  first_name, actor_id
from actor;

-- don't create new column in original data
select actor_id,  first_name, actor_id*5
from actor;

select * from actor;

-- condition k liye jese if==5 likhte h vese(to  filter rows)
select * from actor where actor_id=5;

select * from actor where actor_id>5;

select * from actor where first_name='NICk' and actor_id=44;

select * from actor where first_name='NICk' or actor_id=46;

select * from actor where actor_id between 2 and 6;
-- lower to higher(not higher to  lower )
select * from actor where actor_id in( 2,5, 6);






