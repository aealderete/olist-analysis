SELECT 'orders' AS tbl, COUNT(*) AS n
FROM orders
UNION ALL
SELECT 'order_items', COUNT(*)
FROM order_items
UNION ALL
SELECT 'customers', COUNT(*)
FROM customers
UNION ALL
SELECT 'products', COUNT(*)
FROM products;

--- Counting the row counts on each table