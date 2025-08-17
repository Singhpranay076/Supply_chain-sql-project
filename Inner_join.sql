--Demonstrate Inner Join and Where conditions.
SELECT c.customer_id,c.customer_name,c.region,o.order_date,o.total_amount,o.status
FROM customers AS c
INNER JOIN orders AS o
ON c.customer_id = o.customer_id -- Match orders with their respective customers.
WHERE region IN ('Bangalore','Pune')--Filter customers

/* c.customer_id,     -- Unique ID of the customer
    c.customer_name,   -- Name of the customer
    c.region,          -- Customer's region
    o.order_date,      -- Date when the order was placed
    o.total_amount,    -- Total amount of the order
    o.status           -- Current status of the order (Pending/Completed)*/