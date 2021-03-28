-- *************************************************************
-- IT2351 Assignment 4 Question 5- Evan Graham 
-- I'm waving the white flag on this one
-- ***************************************************************
SELECT category_name, product_name, SUM(item_price) OVER (PARTITION BY order_items.product_id) AS total_sales, 
	FIRST_VALUE(product_name) OVER(PARTITION BY category_name ORDER BY SUM(list_price) DESC) AS highest_sales
FROM categories
	JOIN products ON categories.category_id = products.category_id
		JOIN order_items ON products.product_id = order_items.product_id
