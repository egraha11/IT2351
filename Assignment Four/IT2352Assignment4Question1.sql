-- *************************************************************
-- IT2351 Assignment 4 Question 1- Evan Graham 
-- using formatting functions on decimal data type
-- ***************************************************************
SELECT list_price, FORMAT(list_price, 1), CONVERT(list_price, SIGNED), CAST(list_price AS SIGNED)
FROM products