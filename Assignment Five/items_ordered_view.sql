-- ****************************************************
-- IT2351 Assignemnt 5 Question 3- Evan Graham
-- creating a view
-- ******************************************************

CREATE OR REPLACE VIEW items_ordered AS
SELECT products.product_id, product_name, list_price, COUNT(item_price) AS quantity
FROM order_items 
JOIN products ON products.product_id = order_items.product_id
GROUP BY order_items.product_id