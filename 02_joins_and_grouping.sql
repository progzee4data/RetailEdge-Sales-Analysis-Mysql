-- Total Quantity Sold per Product Category
SELECT p.category, SUM(o.quantity) AS total_quantity_sold
FROM orders o
JOIN products p 
    ON o.product_id = p.product_id
GROUP BY p.category;

-- average unit price per category
SELECT category, AVG(unit_price) AS average_unit_price
FROM products
GROUP BY category;

-- Numbers of order placed by each customers
SELECT customer_id, COUNT(order_id) AS total_order_id
FROM orders 
GROUP BY customer_id
ORDER BY total_order_id DESC;