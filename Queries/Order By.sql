select * 
from customers 
order by first_name DESC; 

select * 
from customers 
order by state, first_name; 

select * 
from customers 
order by state desc, first_name desc;

select *
from customers 
order by birth_date;

select first_name, last_name, 10 as points
from customers 
order by points, first_name;
-- Ejeercicio 
select *, quantity * unit_price as total_price 
from order_items
where order_id = 2
order by total_price desc




