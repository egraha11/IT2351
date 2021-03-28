-- *************************************************************
-- IT2351 Assignment 4 Question 2- Evan Graham 
-- using string functions to return information regarding a given string
-- ***************************************************************
SELECT email_address, LENGTH(email_address) AS Length, LOCATE('@', email_address), 
	SUBSTRING_INDEX(email_address, '@', 1) AS Username, SUBSTRING_INDEX(email_address, '@', -1) AS Domain
FROM customers