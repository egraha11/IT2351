-- IT2351 Assignment 3 Question 6- Evan Graham 
-- grouping data from multiple tables 
-- ***************************************************************
SELECT email_address, orders.order_id, SUM(item_price)
FROM customers
	JOIN orders ON customers.customer_id = orders.customer_id
    JOIN order_items ON orders.order_id = order_items.order_id
GROUP BY email_address, order_id