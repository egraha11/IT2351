-- *************************************************************
-- IT2351 Assigment 1 Part 3E - Evan Graham
-- Saving Snippets
-- *************************************************************

SELECT customer_id AS "customer ID", order_date AS "Order Date",
	shipped_date AS "Shipped Date", (order_date - shipped_date) * -1 AS Days_to_Ship
FROM orders
ORDER BY customer_id, Days_to_Ship;