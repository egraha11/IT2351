-- *************************************************************
-- IT2351 Assigment 2 Part 2a - Evan Graham 
-- selecting columns from multiple tables using join using the
-- item_id key
-- *************************************************************
SELECT title, artist, unit_price, order_qty
FROM items
JOIN order_details
	ON items.item_id = order_details.item_id
ORDER BY title, artist