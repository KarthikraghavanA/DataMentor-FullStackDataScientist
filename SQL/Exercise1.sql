USE sql_store;

-- RETURN ALL THE PRODUCTS IN THE DATABASE
SELECT name, unit_price,(unit_price) - (unit_price)*0.05 AS discounted_price
FROM products;