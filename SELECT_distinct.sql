-- Products that appear in order_items (i.e., actually sold)
SELECT product_id, name, category
FROM products
WHERE product_id IN (
    SELECT DISTINCT product_id FROM order_items
);

