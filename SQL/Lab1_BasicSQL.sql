-- SQL Practise
-- HOW TO CREATE DATABASES 

CREATE DATABASE test_db;

-- USE DATABASE TO PUT DATA THERE

USE test_db;

-- CREATING TABLES

CREATE TABLE students (
    Roll_No INT,
    Name VARCHAR(25),
    Age INT,
    Phone_Number INT
);

-- DROP TABLE 

DROP TABLE test_db;

-- READ / RETRIEVE DATA

SELECT * FROM test_db;

-- INSERT DATA TO TABLE

INSERT INTO students (Roll_No, Name, Age, Phone_Number)
VALUES (2,'Vishal Jude Michael',25,2456135);

SELECT * FROM students;

-- INSERT MULTIPLE DATA TO TABLE

INSERT INTO students (Roll_No, Name, Age, Phone_Number)
VALUES (3,'Arun Ram',26,369852),(4,'Vivin Johnson',25,741258);