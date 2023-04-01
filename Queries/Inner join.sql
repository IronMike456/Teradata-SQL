-- Inner Join

select order_id, o.customer_id, first_name, last_name -- select the name of the table
from orders o -- alias
join customers c
	on o.customer_id = c.customer_id;
    
-- ejercicio
use sql_store; 

select order_id, oi.product_id, quantity, oi.unit_price 
from order_items oi
join products p on oi.product_id = p.product_id; 

