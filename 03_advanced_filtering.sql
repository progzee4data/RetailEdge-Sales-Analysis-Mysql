-- total Quantity Sold Greater Than 50
SELECT p.category, SUM(o.quantity) AS total_quantity_sold
FROM orders o
JOIN products p
	ON o.product_id = p.product_id
GROUP BY p.category
HAVING total_quantity_sold > 50;

-- Customers Who Have Placed More Than 3 Orders
SELECT customer_id, COUNT(order_id) AS total_orders_placed
FROM orders
GROUP BY customer_id
HAVING total_orders_placed > 3;

-- Product Categories with an Average Unit Price Above 20.00
SELECT category, AVG(unit_price) AS Average_unit_price
FROM products
GROUP BY category
HAVING Average_unit_price > 20.00;


