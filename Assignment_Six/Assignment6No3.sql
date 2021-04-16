-- ****************************************************
-- IT2351 Assignemnt 6 Question 3- Evan Graham
-- creating a function that uses parameters to calculate a discount price
-- ******************************************************
DROP FUNCTION IF EXISTS discount_price;
DELIMITER //

CREATE FUNCTION discount_price(item_id_param INT)
RETURNS INT
DETERMINISTIC READS SQL DATA
BEGIN

	DECLARE final_discount_price INT;

	SELECT (item_price - discount_amount)
    INTO final_discount_price
    FROM order_items
    WHERE item_id = item_id_param;
    
    RETURN final_discount_price;
    
END//

DELIMITER ;

SELECT item_id, item_price as price, discount_price(1) as discount_price
FROM order_items
WHERE item_id = 1