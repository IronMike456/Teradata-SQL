select * 
from customers
LIMIT 3;  -- Number of records in the query

-- page 1: 1-3 
-- page 2: 4 - 6

select * 
from customers
LIMIT 6, 3; -- LIMIT Offset, records 

-- get the top three loyal customers

select * 
from customers 
order by points desc
limit 3; 