USE sql_store;

SELECT order_id, quantity, unit_price, (quantity * unit_price) AS total_price
FROM order_items
WHERE order_id = 6 AND quantity * unit_price > 20;