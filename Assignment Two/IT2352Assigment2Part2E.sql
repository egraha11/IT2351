-- *************************************************************
-- IT2351 Assigment 2 Part 2E - Evan Graham 
-- selecting columns from four tables using primary keys customer_id
-- then joining results with the order_details table using order id 
-- then joining those results with the items table suing item_id key
-- *************************************************************
SELECT CONCAT(customer_first_name, " ", customer_last_name) AS Name, 
order_date AS 'Order Date', order_qty AS "Order Quantity", title AS "Title" 
FROM customers
	JOIN orders
		ON customers.customer_id = orders.customer_id
	JOIN order_details
		ON orders.order_id = order_details.order_id
	JOIN items
		ON order_details.item_id = items.item_id