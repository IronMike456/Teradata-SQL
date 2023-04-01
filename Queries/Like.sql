/*QUE INICIEN CON B */
/* Select *
from customers
where last_name like 'b%' */

/* que contengan B */
/*select * 
from customers 
where last_name like '%b%'*/ 

-- Get the customers whose address contain TRAIL or Avenue

/* select *
from customers 
where address like '%TRAIL%' or address like '%AVENUE%' */

-- phone number end with 9
 select *
from customers 
where phone like '%9'; 

-- phone number don't end with 9

 select *
from customers 
where phone NOT like '%9'




 



