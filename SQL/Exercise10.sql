SELECT p.product_id, name, oi.quantity, oi.unit_price, (oi.quantity * oi.unit_price) as price
FROM order_items oi
INNER JOIN products p
ON p.product_id=oi.product_id
;