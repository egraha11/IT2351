-- ****************************************************
-- IT2351 Assignemnt 6 Question 1- Evan Graham
-- creating a stoed procedure to count the total number of products in a table 
-- ******************************************************
DROP PROCEDURE IF EXISTS productCount;
DELIMITER //

CREATE PROCEDURE productCount()
BEGIN

	DECLARE product_count_var INT;

	SELECT COUNT(*)
	INTO product_count_var
	FROM products;

	IF product_count_var >= 20 THEN
		SELECT CONCAT('The number of products is greater than or equal to 20') AS message;
	ELSE
		SELECT CONCAT('The number of products is less than 20') AS message;
	END IF;
END//
DELIMITER ;
CALL productCount();