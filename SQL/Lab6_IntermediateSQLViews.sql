-- SQL VIEWS --

USE sql_hr;

SELECT * FROM employees;

-- STORE SOMEWHERE SO WE CAN VIEW LATER

CREATE VIEW employee_without_vp AS
SELECT *
FROM employees
WHERE job_title NOT REGEXP 'VP' 
AND reports_to IS NOT NULL;

-- USE VIEWS

SELECT first_name, last_name, FORMAT((salary * 0.05) + salary,1) AS 'Updated salary'
FROM employee_without_vp
;

-- ALTER SQL VIEWS

ALTER VIEW employee_without_vp AS
SELECT *
FROM employees
WHERE job_title NOT REGEXP 'VP' ;

SELECT *
FROM employee_without_vp;



ALTER VIEW employee_without_vp AS
SELECT *
FROM employees
WHERE job_title NOT REGEXP 'VP' 
AND reports_to IS NOT NULL
AND salary > 70000;

-- DROP SQL VIEWS

DROP VIEW employee_without_vp;