-- *************************************************************
-- IT2351 Assigment 2 Part 2a - Evan Graham 
-- selecting columns from multiple tables using join using the
-- item_id key
-- *************************************************************
SELECT CONCAT(customer_first_name, " ", customer_last_name) as Name, customer_city, customer_state, 
order_date, order_date, shipped_date
FROM customers JOIN orders 
	ON customers.customer_id = orders.customer_id
ORDER BY customer_state, customer_city, customer_last_name, customer_first_name