-- SELECT SUM(amount) AS total_rev FROM payments;
-- REVENUE FROM EACH PRODUCT THAT HAS BEEN DELIVERED
-- SELECT 
--     p.product_id,
--     p.product_name,
--     SUM(p.price * oi.quantity) AS revenue
-- FROM products p
-- JOIN order_items oi
--     ON p.product_id = oi.product_id
-- JOIN orders o
--     ON oi.order_id = o.order_id
-- WHERE o.order_status = 'Delivered'
-- GROUP BY p.product_id, p.product_name
-- ORDER BY revenue DESC;


-- CUSTOMER SPEND THE MORE MONEY
-- SELECT 
--     c.customer_id,
--     c.name,
--     SUM(p.price * oi.quantity) AS total_spent
-- FROM customers c
-- JOIN orders o
--     ON c.customer_id = o.customer_id
-- JOIN order_items oi
--     ON o.order_id = oi.order_id
-- JOIN products p
--     ON oi.product_id = p.product_id
-- WHERE o.order_status = 'Delivered'
-- GROUP BY c.customer_id, c.name
-- ORDER BY total_spent DESC
-- LIMIT 1;

-- BEST SELLER
-- SELECT 
--     p.product_id,
--     p.product_name,
--     SUM(oi.quantity) AS total_quantity_sold
-- FROM products p
-- JOIN order_items oi
--     ON p.product_id = oi.product_id
-- JOIN orders o
--     ON oi.order_id = o.order_id
-- WHERE o.order_status = 'Delivered'
-- GROUP BY p.product_id, p.product_name
-- ORDER BY total_quantity_sold DESC;

  