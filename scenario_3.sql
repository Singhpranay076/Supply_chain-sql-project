-- Identify orders that do not have a shipment entry
SELECT order_id, customer_id, total_amount
FROM orders
WHERE order_id NOT IN (
    SELECT DISTINCT order_id FROM shipments
);

