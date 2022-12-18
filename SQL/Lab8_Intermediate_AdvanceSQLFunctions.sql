-- SQL ADVANCED FUNCTION

-- COUNT WITH WHERE

SELECT COUNT(*)
FROM new_employees
WHERE working_hours > 10;

-- COUNT WITH DISTINCT

SELECT COUNT(DISTINCT(occpation))
FROM new_employees;

SELECT DISTINCT(occpation)
FROM new_employees;

-- HAVING - USUALLY USED WITH GROUP BY BUT CAN BE USED AN ALTERNATIVE FOR WHERE

USE sql_store;

SELECT first_name, last_name, points, phone
FROM customers
HAVING points > 1000;

-- GROUP BY
-- ROLL UP

-- LENGTH
-- CHAR LENGTH (), CHARACTER LENGTH()

USE sql_hr;
SELECT first_name, LENGTH(first_name)
FROM employees;

SELECT first_name, LENGTH(first_name), CHAR_LENGTH(first_name), CHARACTER_LENGTH(first_name)
FROM employees;

-- CONCAT

-- INSERT

SELECT INSERT('ABCEFG',4,3,'DEF');

SELECT job_title, insert(job_title,9,9,'General')
FROM employees
WHERE employee_id = 33391;

-- LOCATE

SELECT employee_id, job_title, LOCATE('Executive', job_title)
FROM employees;

SELECT employee_id, job_title, INSERT(job_title,8,9,'Manager')
FROM employees
WHERE employee_id = 80529;

-- LCASE , UCASE

SELECT UCASE(first_name),first_name,LCASE(first_name)
FROM employees;