-- REGEXP 'Pattern' encuentra patrones
Select *
From customers 
where last_name REGEXP 'field|mac|rose'; 	/*Regular expresion*/

Select *
From customers 
where last_name REGEXP '[gim]e';

Select *
From customers 
where last_name REGEXP 'e[fim]';

Select *
From customers 
where last_name REGEXP '[a-h]e';

-- ^ beginning
-- $ end
-- | logical OR
-- [abcd] 
-- [a-f]

-- get customers whose
/* first names are elka or ambur
last names end with EY or ON
last names start with MY or constains SE
 last names contain B follwed by R or U*/
 
-- last names end with EY or ON

select * from customers 
where first_name regexp 'ELKA|AMBUR'; 

-- last names end with EY or ON
 
 
