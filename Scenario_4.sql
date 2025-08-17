-- Show the top 3 highest value orders
SELECT order_id, customer_id, total_amount
FROM orders
ORDER BY total_amount DESC
LIMIT 3;
