-- ***************************************************************
-- IT2351 Assignment 3 Question 2- Evan Graham 
-- using aggregate function to display results from a given data set
-- without using groups
-- ***************************************************************
SELECT COUNT(*) AS number_of_orders, SUM(ship_amount) AS ship_value
FROM orders
