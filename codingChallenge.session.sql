--TASK 1
SELECT CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
ROUND(SUM(oi.quantity * oi.unit_price), 2) AS lifetime_spend FROM customers c
JOIN orders o ON o.customer_id = c.id
JOIN order_items oi ON oi.id = c.id
GROUP BY c.id
ORDER BY lifetime_spend DESC
LIMIT 5;

--TASK 2
SELECT p.category, ROUND(SUM(p.price * oi.quantity), 2) AS total_revenue FROM products p
JOIN order_items oi ON oi.product_id = p.id
GROUP BY p.category
ORDER BY total_revenue DESC;

--TASK 3
SELECT e.first_name, e.last_name, d.name AS department, e.salary,
dept_avg.avg_salary AS dept_avg_salary FROM employees e
JOIN departments d ON e.department_id = d.id
JOIN (SELECT department_id, ROUND(AVG(salary), 2) AS avg_salary FROM employees
        GROUP BY department_id) dept_avg ON e.department_id = dept_avg.department_id
WHERE e.salary > dept_avg.avg_salary
ORDER BY department, e.salary DESC;

--TASK 4
SELECT c.city, COUNT(c.loyalty_level) AS gold_count FROM customers c
WHERE c.loyalty_level = 'Gold'
GROUP BY c.city
ORDER BY gold_count DESC