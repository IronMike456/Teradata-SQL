/*SELECT *
FROM customers
where state='VA' or state = 'GA' or state='FL'*/

/*SELECT *
FROM customers
where state IN ('VA', 'FL', 'GA')*/

SELECT *
FROM products
where quantity_in_stock in (49, 38, 72)



