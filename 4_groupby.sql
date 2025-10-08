-- group by
use sakila;

select * from payment;

select count(*), count(customer_id) from payment;

-- sum, avg, max, min
select count(customer_id) from payment where customer_id=3;

select customer_id  from payment group by customer_id;

select customer_id , sum(amount) from payment group by customer_id;

select customer_id , count(customer_id),  sum(amount) from payment group by customer_id;

select payment_id,count(*) from payment group by payment_id;

-- Importent
-- filter data where
-- having for filter group
select customer_id , count(customer_id),  sum(amount) from payment 
where customer_id group by customer_id;
-- error
select customer_id , count(customer_id) from payment 
where count(customer_id)>30 group by customer_id;
-- kbhi bhi aggregate funtion where condition pe nhi chlta...alter
-- in case if u want to filter data we use having fuction
select customer_id , count(customer_id) from payment 
where customer_id>30 group by customer_id having count(customer_id)>60;

/*| Feature             | WHERE                  | HAVING                 |
| ------------------- | ---------------------- | ---------------------- |
| Filters             | Before grouping        | After grouping         |
| Works on            | Rows                   | Groups                 |
| Aggregate functions | ❌ Not allowed          | ✅ Allowed              |
| Used with           | SELECT, UPDATE, DELETE | SELECT (with GROUP BY) |
| Execution order     | Applied first          | Applied after GROUP BY |*/

--
select * from payment;

select amount, count(*),sum(amount) from payment group by amount;

select amount, count(*),sum(amount) from payment where amount>2 group by amount;

select amount, count(*),sum(amount) from payment  group by amount having sum(amount)>2000;

select amount, count(*),sum(amount) from payment where amount>2
 group by amount having count(*)>2000;
 
select amount, count(*) as totalcount,sum(amount) from payment where amount>2
group by amount having totalcount > 2000;

select * from payment;

-- get the staf id and total no. of c srv by each staff
select staff_id, count(customer_id) from payment group by  staff_id;

select  month(payment_date),sum(amount),count(amount) 
from payment group by month(payment_date);	 







































































