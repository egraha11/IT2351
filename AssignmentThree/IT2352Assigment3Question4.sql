-- ***************************************************************
-- IT2351 Assignment 3 Question 4- Evan Graham 
-- using grouping functions to return a default value if a value is null
-- while joining multiple tables and grouping by multiple values
-- ***************************************************************
SELECT IF(GROUPING(category_name) = 1, 'Missing Name', category_name), 
	IF(GROUPING(product_name) = 1, 'Missing Product Name', product_name), SUM(order_items.product_id) AS 'Total'
FROM categories
	JOIN products
		ON categories.category_id = products.category_id
	JOIN order_items
		ON products.product_id = order_items.product_id
GROUP BY order_items.product_id, product_name, category_name WITH ROLLUP