-- *************************************************************
-- IT2351 Assignment 4 Question 3- Evan Graham 
-- using numeric functions to return a result based on column values 
-- ***************************************************************
SELECT list_price, discount_percent, 
	ROUND(list_price - (list_price * (discount_percent / 100)), 2 ) AS discount_amount
FROM products