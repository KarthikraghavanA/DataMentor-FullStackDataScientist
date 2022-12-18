-- SQL JOINS
-- INNER JOIN OR JOIN

SELECT *
FROM orders
JOIN customers
ON customers.customer_id = orders.customer_id
;

SELECT order_id, first_name, last_name
FROM orders
JOIN customers
ON customers.customer_id = orders.customer_id
;

-- JOINING ACROSS MULTIPLE TABLE

SELECT o.order_id, o.order_date, c.first_name, c.last_name, o.status, os.name AS order_status
FROM orders o
JOIN customers c
ON o.customer_id=c.customer_id
JOIN order_statuses os
ON o.status=os.order_status_id
;

-- JOINING TABLE TO ITSELF

USE sql_hr;

SELECT e.employee_id, e.first_name, m.first_name AS 'manager name'
FROM employees e
JOIN employees m
ON e.reports_to = m.employee_id
;

-- JOINING ACROSS MULTIPLE TABLES

USE sql_store;
SELECT *
FROM orders o
JOIN customers c
ON c.customer_id=o.customer_id
JOIN order_statuses os
ON o.status=os.order_status_id
;

-- LEFT OUTER JOIN 

SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
LEFT JOIN orders o
ON o.customer_id = c.customer_id
;

-- RIGHT OUTER JOIN 

SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
RIGHT JOIN orders o
ON o.customer_id = c.customer_id
;

