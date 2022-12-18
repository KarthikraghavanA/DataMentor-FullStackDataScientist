USE sql_store;

SELECT * 
FROM customers
WHERE address LIKE '%TRAIL%' OR address LIKE '%AVENUE%';


SELECT * 
FROM customers
where phone LIKE '%9';