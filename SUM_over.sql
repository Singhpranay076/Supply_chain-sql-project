--Tracking stock movement day by day
SELECT product_id, txn_date, quantity,
       SUM(quantity) OVER (PARTITION BY product_id ORDER BY txn_date) AS running_total
FROM inventory_transactions;
