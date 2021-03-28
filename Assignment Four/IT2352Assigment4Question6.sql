-- *************************************************************
-- IT2351 Assignment 4 Question 6- Evan Graham 
-- using create or replace view command to update views including
-- fields from three tables. 
-- ***************************************************************
CREATE OR REPLACE VIEW order_item_products AS
SELECT orders.order_id, order_date, tax_amount, ship_date, 
product_name, 
item_price, discount_amount, SUM(item_price - discount_amount) AS final_price, quantity, 
SUM(products.product_id) AS item_total
FROM orders
JOIN order_items ON orders.order_id = order_items.order_id
JOIN products ON products.product_id = order_items.product_id