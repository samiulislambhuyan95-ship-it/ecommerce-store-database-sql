-- E-COMMERCE STORE: BUSINESS ANALYSIS QUERIES
-- Database: inertia


-- 1. Which products generate the highest revenue from delivered orders?

SELECT 
    p.product_name,
    SUM(p.price * oi.quantity) AS revenue
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Delivered'
GROUP BY p.product_id, p.product_name
ORDER BY revenue DESC
LIMIT 5;


-- 2. Which customers spend the most?

SELECT 
    c.name,
    SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
WHERE o.order_status = 'Delivered'
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 5;


-- 3. Which products have the highest sales volume?

SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Delivered'
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;


-- 4. Which product category generates the most revenue?

SELECT 
    p.category,
    SUM(p.price * oi.quantity) AS total_revenue
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_status = 'Delivered'
GROUP BY p.category
ORDER BY total_revenue DESC
LIMIT 1;


-- 5. What is the distribution of order statuses?

SELECT 
    order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;
