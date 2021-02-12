-- *************************************************************
-- IT2351 Assigment 2 Part 2D - Evan Graham 
-- selecting columns from three tables using join by using the
-- order_id key and item_id key
-- *************************************************************
SELECT customer_id AS ID, order_date AS 'Order Date', title AS "Title", order_qty AS "Order Quantity"
FROM orders
	JOIN order_details
		ON orders.order_id = order_details.order_id
	JOIN items
		ON order_details.item_id = items.item_id