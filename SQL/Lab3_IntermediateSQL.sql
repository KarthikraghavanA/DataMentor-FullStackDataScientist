-- SELECT

USE sql_store;
SELECT * FROM customers;

SELECT first_name,last_name,points
FROM customers;

-- EXPORT THE DATA USING EXPORT OPTION BELOW AND SHARE THE SHEET

-- ORDER BY

SELECT first_name,last_name,points
FROM customers
ORDER BY points DESC;

-- WHERE

SELECT first_name, last_name, points, birth_date
FROM customers
WHERE birth_date < '1990-01-01'
ORDER BY points DESC
;

SELECT *
FROM customers
WHERE birth_date > '1990-12-31'
ORDER BY points DESC
;

-- SELECT IN DETAIL, WITH ALIAS
-- BODMAS FOR MATHEMATICAL OPERATIONS

SELECT first_name, last_name, points,points + 10 AS Add_10, points - 10 AS Subtract_10
FROM customers
WHERE birth_date < '1990-01-01'
ORDER BY points DESC
;


SELECT product_id, quantity, unit_price, quantity * unit_price as price, (quantity * unit_price) - (quantity * unit_price) * 0.05 as discount
FROM order_items
;

-- DISTINCT

SELECT *
FROM customers;

-- CHANGED ma TO va FOR ROW 1 FOR DISTINCT

SELECT DISTINCT(state)
FROM customers;

-- WHERE CLAUSE WITH SQL COMPARISION OPERATORS

SELECT *
FROM customers
WHERE points > 2000 
;

SELECT *
FROM customers
WHERE state = 'VA'
;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01'
;

-- AND, OR, NOT

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' AND city = 'Chicago'
;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR city = 'Chicago'
;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR city = 'Chicago' AND points > 1000
;

-- NOT

SELECT *
FROM customers
WHERE NOT (birth_date > '1990-01-01' OR city = 'Chicago' AND points < 1000)
;

SELECT *
FROM customers
WHERE birth_date <= '1990-01-01' AND points <= 500
;

-- IN OPERATOR

SELECT *
FROM customers
WHERE state = 'VA' OR state = 'FL' OR state = 'GA'
;

SELECT *
FROM customers
WHERE state IN ('VA','FL','GA')
;

-- BETWEEN 

SELECT *
FROM customers
WHERE points >= 1000 AND points <= 3000;

SELECT *
FROM customers
WHERE points BETWEEN 1000 AND 3000;

-- LIKE OPERATOR

SELECT *
FROM customers
WHERE last_name LIKE 'B%'
;

SELECT *
FROM customers
WHERE last_name LIKE 'brush%'
;

SELECT *
FROM customers
WHERE last_name LIKE 'b_______'
;

-- REGEXP OPERATOR (REGULAR EXPRESSION) -- DEALS WITH CHARACTERS AND TEXT

SELECT *
FROM customers
WHERE last_name REGEXP '^B'
;


SELECT *
FROM customers
WHERE last_name REGEXP 'Y$'
;

SELECT *
FROM customers
WHERE last_name REGEXP 'EY$|BY$'
;

SELECT *
FROM customers
WHERE last_name REGEXP '[gsi]e'
;

-- IS NOT NULL, IS NULL

SELECT *
FROM customers
WHERE phone IS NOT NULL
;

-- ORDER BY CLAUSE

SELECT *
FROM customers
ORDER BY first_name
;

SELECT *
FROM customers
ORDER BY points DESC
;

SELECT *
FROM customers
ORDER BY state,first_name DESC
;

-- LIMIT, OFFSET

SELECT *
FROM customers
LIMIT 5
;

SELECT *
FROM customers
LIMIT 5 OFFSET 2
;

SELECT *
FROM customers
LIMIT 5,2
;