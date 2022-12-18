-- INSERTING MULTIPLE DATA INTO EXISTING TABLE

USE sql_store;
INSERT INTO shippers 
VALUES (DEFAULT, 'Shipper1' );

SELECT * 
FROM shippers;



INSERT INTO shippers 
VALUES (DEFAULT, 'Shipper2' ), (DEFAULT, 'Shipper3' ), (DEFAULT, 'Shipper4' );


-- CREATING A COPY OF A TABLE

CREATE TABLE orders_copy AS 
SELECT * 
FROM orders;

SELECT * 
FROM orders_copy;

-- TRUNCATE IN SQL

INSERT INTO orders_copy
SELECT * 
FROM orders
WHERE order_date < '2019-01-01';

-- UPDATING EXISTING TABLE

USE sql_invoicing;
UPDATE payments 
SET date = '2018-08-01', amount = 40.02, paYment_method = 1
WHERE payment_id = 2;

SELECT *
FROM payments;

SELECT * FROM sql_invoicing.invoices;

-- WE CAN ALSO CHANGE THEM MANUALLY

UPDATE invoices 
SET payment_date = due_date, payment_total = 10
WHERE invoice_id = 5;

-- UPDATING MULTIPLE RECORDS EXISTING TABLE

UPDATE invoices
SET payment_total = 40
WHERE client_id = 5;

SELECT *
FROM invoices;

UPDATE invoices
SET payment_total = 100
WHERE client_id IN (5,3);