-- payments, payments_methods, clients

USE sql_invoicing;

SELECT c.name AS client_name, pm.name AS 'payment method', p.amount
FROM payments p
JOIN payment_methods pm
ON p.payment_method = pm.payment_method_id
JOIN clients c
ON c.client_id = p.client_id
;