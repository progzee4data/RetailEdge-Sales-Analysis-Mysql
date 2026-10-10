<img width="1920" height="1024" alt="2026-10-10_13-51-48" src="https://github.com/user-attachments/assets/d8f96abe-cd1a-4e49-8a8b-f78832a75716" />
<img width="1914" height="1015" alt="2026-10-10_13-50-35" src="https://github.com/user-attachments/assets/bac7567e-81a8-4d76-8945-e896eb891a11" />
# RetailEdge Sales & Inventory Analysis
A portfolio project demonstrating core SQL querying, data aggregation, table joins, and relational database management using MySQL Workbench.


---

## Project Overview
This project simulates a data audit and exploratory analysis for **RetailEdge**, a multi-category retail company. Using MySQL Workbench, structured queries were built to uncover business insights regarding inventory turnover, customer order frequencies, and regional sales performance.

---

## Database Schema & Architecture
The database consists of three relational tables:
* **`products`**: Catalog information including product ID, name, category, unit price, and stock levels.
* **`customers`**: Demographics covering customer ID, name, region, and membership tiers[cite: 1].
* **`orders`**: Transactional logs linking customers and products, tracking quantity, unit price, applied discounts, and order dates[cite: 1].

---

## SQL Analysis & Queries

### Task 1: Basic Aggregations 
This section covers foundational metric calculations such as total revenue, average discounts, maximum quantities, and total order volume.
  ```sql
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
```

### Task 2: Joins, Grouping, and Summarizations
```sql
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
```

### Task 3: Advanced Filtering with HAVING
```sql
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
```
### Tools & Technologies Used

- **Database Management System:** MySQL Server & MySQL Workbench
- **Language & Syntax:** Structured Query Language (SQL Data Query Language / DQL)
- **Core Concepts & Techniques:** Basic Aggregations (`SUM`, `AVG`, `COUNT`, `MAX`), Table Joins (`INNER JOIN`), Grouping (`GROUP BY`), Sorting (`ORDER BY`), and Conditional Filtering (`HAVING`)

---

### Background & Context

This project was completed as part of the **ALX Africa Data Science Program** to demonstrate practical exploratory data analysis, relational database querying, multi table joins, and advanced aggregate filtering using MySQL Workbench.
