-- Implicit Join 

Select * 
from orders o 
join customers c 
	on  o.customer_id = c.customer_id; 
    
Select *
from orders o, customers c 
where  o.customers_id = c.customer_id;

