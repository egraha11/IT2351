-- *************************************************************
-- IT2351 Assignment 4 Question 4- Evan Graham 
-- using date time functions to add to a date, find the difference in two dates
-- and return dates between a range 
-- ***************************************************************
SELECT order_id, order_date, DATE_ADD(order_date, INTERVAL 2 DAY) AS approx_ship_date, ship_date, 
	DATEDIFF(ship_date, order_date) AS days_to_ship
FROM orders
WHERE ship_date IS NOT NULL AND order_date >= '2018-3-1' AND order_date < '2018-4-1'
