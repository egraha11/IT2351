-- ****************************************************
-- IT2351 Assignemnt 7 Question 2- Evan Graham
-- Update the vendor ID of federal express corp where the vendor id 
-- belongs to united parcel service to avoid any foreign key dependencies
-- then delete united parcel services from vendors because the two 
-- companies are now merged then change the name of the company 
-- that was kept in the vendors table
-- ******************************************************

DROP PROCEDURE IF EXISTS test;
DELIMITER //

CREATE PROCEDURE test()
BEGIN

DECLARE error TINYINT DEFAULT FALSE;

DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
	SET error = TRUE;
    
START TRANSACTION;

UPDATE invoices
SET vendor_id = 123
WHERE vendor_id = 122;

DELETE FROM vendors
WHERE vendor_id = 122;

UPDATE vendors
SET vendor_name = 'FedUP'
WHERE vendor_id = 123;


IF (error = FALSE) THEN
	COMMIT;
    SELECT ("successful update") AS response;
ELSE
	ROLLBACK;
    SELECT("An error has occured") AS response;
END IF;
END//
CALL test();