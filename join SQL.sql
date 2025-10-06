create database regex1234;
use regex1234;
create table product(pid  int,  pname  varchar(20), price int);
insert into product values(100,'iphone',4000), (101,'mi tv', 3000),
(102,'fridge',5000), (103,'cover',500);

create table orders( orderid int, city varchar(20), productid int);
insert into orders values(994,'jaipur', 100),(995,'goa',102), (996,'J&K', 100), (997,'japan',102),
(998,'bhutan', 110);
select* from product;
select* from orders;

use sakila;
select * from actor;
select * from film_actor;

desc actor;

select count(actor_id),count(distinct actor_id) from actor;
select * from film_actor;
 
 desc film_actor;
 
 select actor.actor_id,actor.first_name,film_actor.actor_id,film_actor.film_id from  actor
  join film_actor where actor.actor_id=film_actor.actor_id;
  
  
  select actor.actor_id,actor.first_name,film_actor.actor_id,film_actor.film_id from  actor
  join film_actor where actor.actor_id=film_actor.actor_id and actor.actor_id=1; 
   

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 