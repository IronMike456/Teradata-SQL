-- self joins
use sql_hr;

/* select * 
from employees e
join employees m
	on e.reports_to = m.employee_id; */
    
select e.employee_id,
		e.first_name,
        m.first_name as manager
from employees e
join employees m -- find the managers
	on e.reports_to = m.employee_id; 
    
    