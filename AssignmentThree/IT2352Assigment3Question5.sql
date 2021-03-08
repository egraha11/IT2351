-- IT2351 Assignment 3 Question 5- Evan Graham 
-- using a sub query to return categories found in the 
-- products table
-- ***************************************************************
SELECT DISTINCT category_name
FROM categories c
WHERE c.category_id IN
	(SELECT category_id 
     FROM products
	)
ORDER BY category_name