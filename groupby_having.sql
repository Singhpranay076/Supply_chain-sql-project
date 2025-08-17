-- Customers in Delhi/Mumbai with total spending > 20000
SELECT c.customer_id, c.customer_name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
WHERE c.region IN ('Delhi', 'Mumbai')
GROUP BY c.customer_id, c.customer_name
HAVING SUM(o.total_amount) > 20000;
