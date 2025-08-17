--Detecting sales trends over time
SELECT order_date, SUM(total_amount) AS daily_sales,
       LAG(SUM(total_amount)) OVER (ORDER BY order_date) AS prev_day_sales
FROM orders
GROUP BY order_date;
