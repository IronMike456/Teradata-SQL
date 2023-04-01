use sql_store; 

/* select * 
from customers 
where phone is null;

select * 
from customers 
where phone is not null;*/ 

-- get the oders that are not shipped

select * 
from orders
where shipped_date is null or shipper_id is null;