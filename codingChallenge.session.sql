-- -- TASK 1
-- SELECT c.id, c.first_name, c.last_name, SUM(oi.quantity * oi.unit_price) AS lifetime_spend FROM customers c
-- JOIN order_items oi ON oi.id = c.id
-- GROUP BY c.id, c.first_name, c.last_name
-- ORDER BY lifetime_spend DESC
-- LIMIT 5

-- TASK 2
SELECT p.category, SUM(p.price * ) AS total_revenue FROM products p 
