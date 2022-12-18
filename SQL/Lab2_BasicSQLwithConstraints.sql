USE test_db;

-- CONSTRAINTS

-- NOT NULL
CREATE TABLE Persons (
	ID INT NOT NULL,
	FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(20),
    Age INT
);

SELECT * FROM Persons;

DROP TABLE Persons;

-- UNIQUE
CREATE TABLE Persons (
	ID INT NOT NULL,
	FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(20),
    Age INT,
    UNIQUE(ID)
);

INSERT INTO Persons (FirstName,LastName,Age)
VALUES ('Arya','Grande',20);

CREATE TABLE Persons (
	ID INT ,
	FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(20),
    Age INT,
    UNIQUE(ID)
);

-- DEFAULT
CREATE TABLE Persons (
	ID INT NULL DEFAULT 100,
	FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(20),
    Age INT,
    UNIQUE(ID)
);

SELECT * FROM Persons;

INSERT INTO Persons (FirstName,LastName,Age)
VALUES ('Arya','Grande',20);

-- PRIMARY KEY
DROP TABLE Persons;

CREATE TABLE Customers (
	name VARCHAR(7),
    product VARCHAR(13),
    product_id INT PRIMARY KEY
);

-- ALTER EXISTING TABLE (ADDING A CONSTRAINT)

CREATE TABLE Persons (
	ID INT NULL DEFAULT 100,
	FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(20),
    Age INT,
    UNIQUE(ID)
);

ALTER TABLE Persons
ADD PRIMARY KEY(ID);

-- ALTER EXISTING TABLE (DROPING A CONSTRAINT)

CREATE TABLE Passengers (
	first_name VARCHAR(10),
    last_name VARCHAR(15),
    mobile_number INT,
    ticket_number VARCHAR(5)
);

SELECT * FROM Passengers;

-- ALTER EXISTING TABLE (ADDING A CONSTRAINT TO MULTIPLE COLUMNS)

ALTER TABLE Passengers
ADD CONSTRAINT UC_pasengers UNIQUE (mobile_number, ticket_number);

ALTER TABLE Passengers
DROP INDEX UC_pasengers;

-- ADDING FOREIGN KEY

DROP TABLE Customers;
CREATE TABLE Customers (
	Customer_ID INT NOT NULL,
    First_Name VARCHAR(20),
	Last_Name VARCHAR(20),
    Age INT,
    PRIMARY KEY(Customer_ID)
);

-- USE REFERENCES 

CREATE TABLE Orders (
	orderID INT NOT NULL,
    orderNumber INT NOT NULL,
    Customer_ID INT,
    PRIMARY KEY(orderID),
    FOREIGN KEY(Customer_ID) REFERENCES Customers (Customer_ID)
);