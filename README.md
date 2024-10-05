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
 - **Sales Trends:** Monthly sales revenue and Top 5 months with highest sales.
<h3>
  SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,SUM(total_amount) AS monthly_sales
FROM orders WHERE YEAR(order_date) = YEAR(CURDATE()) GROUP BY month ORDER BY month;
</h3>
<h3>
  SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,SUM(total_amount) AS monthly_sales FROM orders GROUP BY month
ORDER BY monthly_sales DESC LIMIT 5;</h3>

 - **Product Performance:** Best-selling products, low stock alerts.
 <p>Top 10 best-selling products</p>
<h3>SELECT 
    p.product_id, 
    p.product_name, 
    SUM(oi.quantity) AS total_units_sold,
    SUM(oi.quantity * oi.unit_price * (1 - oi.discount)) AS total_revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
JOIN orders o ON oi.order_id = o.order_id
GROUP BY p.product_id, p.product_name
ORDER BY total_units_sold DESC
LIMIT 10;</h3>

 - **Supplier Analysis:** Revenue per supplier.
   <p>Number of products per supplier</p> 
<h3>SELECT 
    s.supplier_id, 
    s.company_name, 
    COUNT(p.product_id) AS total_products
FROM suppliers s
JOIN products p ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_id, s.company_name
ORDER BY total_products DESC;
</h3>
 - **Inventory Analysis:** Current inventory status.
   <p>Current inventory status</p>
<h3>SELECT 
    product_id, 
    product_name, 
    units_in_stock, 
    units_on_order, 
    (units_in_stock + units_on_order) AS total_available
FROM products
ORDER BY total_available ASC;</h3>
<p>Products with highest demand but low stock</p>
<h3>SELECT 
    p.product_id, 
    p.product_name, 
    SUM(oi.quantity) AS total_units_sold,
    p.units_in_stock,
    p.reorder_level
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
JOIN orders o ON oi.order_id = o.order_id
GROUP BY p.product_id, p.product_name, p.units_in_stock, p.reorder_level
ORDER BY total_units_sold DESC;
</h3>
 

 


