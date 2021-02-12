-- *************************************************************
-- IT2351 Assigment 2 Part 2G - Evan Graham 
-- selecting columns from multiple tables using mutiple joins to compare shared
-- keys and filter results using a where clause
-- *************************************************************
SELECT CONCAT(customer_first_name, " ", customer_last_name) AS Name, title
FROM customers 
JOIN orders
	ON customers.customer_id = orders.customer_id
JOIN order_details
	ON orders.order_id = order_details.order_id
JOIN items
	ON order_details.item_id = items.item_id
WHERE customer_state NOT IN ("OH")