--TASK 1
-- SELECT c.id, c.first_name, c.last_name, SUM(oi.quantity * oi.unit_price) AS lifetime_spend FROM customers c
-- JOIN order_items oi ON oi.id = c.id
-- GROUP BY c.id, c.first_name, c.last_name
-- ORDER BY lifetime_spend DESC
-- LIMIT 5;

--TASK 2
-- SELECT p.category, SUM(p.price * oi.quantity) AS total_revenue FROM products p
-- JOIN order_items oi ON oi.product_id = p.id
-- GROUP BY p.category
-- ORDER BY total_revenue DESC;

-- TASK 3
SELECT e.id, e.first_name, e.last_name, d.name,  FROM employees e
JOIN departments d ON e.department_id = d.id
WHERE e.salary > 
GROUP BY