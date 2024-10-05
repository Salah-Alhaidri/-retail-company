# Sales Data Analysis System for retail-company

## Overview

The Sales Data Analysis System is a MySQL-based project that analysis a retail company's sales database. It includes tables for customers, suppliers, products, orders, and order items. The project demonstrates database design, data population, and various analytical queries useful for data analysis tasks.

## Technologies Used

- **Database:** MySQL
## Database Schema

The database consists of the following tables:

- **customers:** Stores customer information.
- **suppliers:** Stores supplier details.
- **categories:** Product categories.
- **products:** Product details linked to suppliers and categories.
- **orders:** Order information linked to customers.
- **order_items:** Items within each order linked to products.


## Analytical Queries

- **Customer Analysis:** Total spending, number of orders per customer.
<h3>
SELECT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS customer_name, COUNT(o.order_id) AS total_orders
FROM customers c JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, customer_name ORDER BY total_orders DESC;
</h3> 
- **Sales Trends:** Monthly sales revenue.
<h3>
  SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,SUM(total_amount) AS monthly_sales
FROM orders WHERE YEAR(order_date) = YEAR(CURDATE()) GROUP BY month ORDER BY month;
</h3>
![232](https://github.com/user-attachments/assets/9b2bbf05-4c0c-4413-ae1b-0c3d98629b58)

- **Product Performance:** Best-selling products, low stock alerts.
- **Supplier Analysis:** Revenue per supplier.
- **Inventory Analysis:** Current inventory status.

 

 


