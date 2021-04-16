-- ****************************************************
-- IT2351 Assignemnt 6 Question 4- Evan Graham
-- creating an event to report on products that have not been ordered during the year  
-- ******************************************************
DROP EVENT IF EXISTS not_ordered_this_year;
DELIMITER //

CREATE EVENT not_ordered_this_year
ON SCHEDULE EVERY 1 YEAR
STARTS '2021-01-01'
DO BEGIN

	SELECT products.product_id, product_name
    FROM products
    WHERE products.product_id NOT IN
    (SELECT DISTINCT product_id
     FROM order_items
     JOIN orders ON order_items.order_id = orders.order_id
     WHERE YEAR(order_date) = YEAR(NOW()) - 1
    );
    
END//

DELIMITER ;