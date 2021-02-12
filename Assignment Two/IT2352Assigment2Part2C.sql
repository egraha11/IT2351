-- *************************************************************
-- IT2351 Assigment 2 Part 2C - Evan Graham 
-- selecting columns from multiple tables using join by using the
-- order_id key
-- *************************************************************
SELECT customer_id AS ID, order_date AS 'Order Date', item_id AS "Item ID", order_qty AS "Order Quantity"
FROM orders
	JOIN order_details
		ON orders.order_id = order_details.order_id