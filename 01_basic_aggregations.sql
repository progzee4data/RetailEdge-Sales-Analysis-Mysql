-- Total Revenue Generated
SELECT SUM(quantity * unit_price) AS Total_revenue
FROM retailedge.orders;

-- Average Discount
SELECT AVG(discount) AS average_discount
FROM retailedge.orders;

-- largest single order quantity
SELECT MAX(quantity) AS largest_order_quantity
FROM retailedge.orders;

-- Total order placed
SELECT COUNT(order_id) AS total_orders_placed
FROM retailedge.orders;
