/* select *
from customers
where birth_date > '1990-01-01' and points > 1000 */

/*select *
from customers
where birth_date > '1990-01-01' OR points > 1000*/

/*select *
from customers
where birth_date > '1990-01-01' OR points > 1000 AND state = 'VA'*/

/*select *
from customers
where not (birth_date > '1990-01-01' OR points > 1000 AND state = 'VA')*/

select * 
from order_items
where order_id = 6 and unit_price*quantity > 30

