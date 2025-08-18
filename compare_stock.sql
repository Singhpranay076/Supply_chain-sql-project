SELECT p.name AS product_name,
       SUM(oi.quantity) AS total_sold,
       MAX(p.stock_quantity) AS current_stock
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sold DESC;