-- ***************************************************************
-- IT2351 Assignment 3 Question 3- Evan Graham 
-- grouped result set by category name while using aggregate
-- functions to return a count pf products and the price of the
-- highest priced item
-- ***************************************************************
SELECT category_name, COUNT(product_id), MAX(list_price)
FROM products JOIN categories
    ON categories.category_id = products.category_id
GROUP BY category_name
