USE sql_invoicing;

SELECT p.date, p.amount, c.name AS 'Client Name', pm.name AS 'Payment Type'
FROM payments p
JOIN payment_methods pm
ON pm.payment_method_id = p.payment_method
JOIN clients c
ON p.client_id = c.client_id
;