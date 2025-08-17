--Demonstrate Left Join and Group By Statement
SELECT category, SUM(unit_price) AS Total
FROM order_items AS a
LEFT JOIN products AS b
ON a.product_id = b.product_id -- Match each order item with its product details
GROUP BY category        -- Group results by product category
HAVING SUM(unit_price)>=2000  --Show only categories with total sales >= 2000
ORDER BY TOTAL DESC  -- Sort results from highest to lowest


/* category,                    -- Product category (from Products table)
 SUM(unit_price) AS Total       -- Total sales amount per category*/