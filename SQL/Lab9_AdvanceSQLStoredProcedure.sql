-- SQL STORED PROCEDURE
USE sql_store;

CREATE PROCEDURE test()
SELECT * 
FROM orders
WHERE order_date > '2018-01-01';

CALL test();

-- STORED PROCEDURE WITH SINGLE PARAMETER

USE sql_hr;
CREATE PROCEDURE test1(office_id INT)
SELECT first_name, last_name, office_id, job_title,salary
FROM employees;

CALL test1(2);

-- STORED PROCEDURE WITH MULTIPLE PARAMETER

CREATE PROCEDURE test3(ID INT, sal DECIMAL)
SELECT first_name, last_name, office_id, job_title,salary
FROM employees
WHERE office_id = ID 
AND salary > sal ;

CALL test3(1,1000);

-- ALTER A STORED PROCEDURE

-- RIGHT CLICK ON THE STORED PROCEDURE AND SELECT ALTER STORED PROCEDURE

-- DROP A STORED PROCEDURE

DROP PROCEDURE test1;

-- RIGHT CLICK ON THE STORED PROCEDURE AND SELECT DROP STORED PROCEDURE