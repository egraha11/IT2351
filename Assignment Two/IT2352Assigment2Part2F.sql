-- *************************************************************
-- IT2351 Assigment 2 Part 2F - Evan Graham 
-- selecting columns from one table using the item_id key 
-- to filter items within the order_detials table where the item number
-- has an order quantity of more than one 
-- *************************************************************
SELECT title
FROM items JOIN order_details 
	ON items.item_id = order_details.item_id
WHERE order_qty > 1