-- Compound Join condition
Use sql_store; 

Select * 
from order_items oi 
join order_item_notes oin
	ON oi.order_id = oin.order_id
    and oi.product_id = oi.product_id; 
    
