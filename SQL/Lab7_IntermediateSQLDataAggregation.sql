USE sql_hr;

CREATE TABLE new_employees (
	name VARCHAR(45) NOT NULL,
    occpation VARCHAR(35) NOT NULL,
    working_date date,
    working_hours VARCHAR(10)
);

INSERT INTO new_employees
VALUES ('Robin', 'Scientist','2020-10-04',5),
	   ('Warner','Engineer','2020-10-04',7),
       ('Peter','Actor','2020-10-04',13),
       ('Marco','Engineer','2020-10-04',11),
       ('Brayden','Teacher','2020-10-04',9),
       ('Antonio','Business','2020-10-04',11);

SELECT *
FROM new_employees;

-- COUNT

SELECT COUNT(name)
FROM new_employees;

-- SUM

SELECT SUM(working_hours)
FROM new_employees;

-- AVERAGE

SELECT AVG(working_hours)
FROM new_employees;

-- MAX

SELECT MAX(working_hours)
FROM new_employees;

-- MIN

SELECT MIN(working_hours)
FROM new_employees;