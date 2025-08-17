-- Demonstrate Left Join and Group by Statement with Count
SELECT category, COUNT(unit_price) AS Total
FROM order_items AS a
LEFT JOIN products AS b
ON a.product_id = b.product_id -- Link each order item to its product details
GROUP BY category         -- Group results by product category
HAVING COUNT(unit_price)>=2   -- Show only categories with 2 or more items/orders
ORDER BY TOTAL DESC         -- Sort results from highest to lowest

/*category,                   -- Product category (from Products table)
 COUNT(unit_price) AS Total  -- Number of orders/items in each category*/
