-- *************************************************************
-- IT2351 Assigment 2 Part 2I - Evan Graham
-- Updating rows of a table using a WHERE clause  
-- *************************************************************

UPDATE items
SET unit_price = unit_price + (unit_price * .10)
WHERE unit_price > 17