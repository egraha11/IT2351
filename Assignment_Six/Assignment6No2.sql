-- ****************************************************
-- IT2351 Assignemnt 6 Question 2- Evan Graham
-- creating a stoed procedure that uses exception handling 
-- ******************************************************
DROP PROCEDURE IF EXISTS insertCategory;
DELIMITER //

CREATE PROCEDURE insertCategory()
BEGIN

	DECLARE sql_error TINYINT DEFAULT FALSE;
    
    BEGIN
		DECLARE EXIT HANDLER FOR SQLEXCEPTION
			SET sql_error = TRUE;
            
		INSERT INTO categories VALUES (5, 'glockenspiel');
        SELECT('1 row was inserted') AS message;
    END;
    
	IF sql_error = TRUE THEN
		SELECT CONCAT('Row was not inserted') AS message;
	END IF;
END//
DELIMITER ;
CALL insertCategory();