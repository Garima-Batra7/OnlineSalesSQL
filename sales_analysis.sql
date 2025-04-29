CREATE DATABASE OnlineSalesDB;
USE OnlineSalesDB;


SELECT * FROM online_sales;

-- Extract Year and Month from order_date

SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month
FROM 
    online_sales;

-- Calculate Total Revenue and Order Volume

SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(total_price) AS total_revenue,
	COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    order_year, order_month;

-- Limit Results by Date Range(From January to June)

SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
WHERE 
    order_date BETWEEN '2024-01-01' AND '2024-06-30'
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    order_year, order_month;


-- Total Revenue and Volume by Product Category

SELECT 
    category,
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    category
ORDER BY 
    total_revenue DESC;

-- Monthly Revenue Trend for Each Product

SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    product_name,
    SUM(total_price) AS total_revenue
FROM 
    online_sales
GROUP BY 
    YEAR(order_date), MONTH(order_date), product_name
ORDER BY 
    order_year, order_month, total_revenue DESC;


-- Revenue and Volume by Payment Method

SELECT 
    payment_method,
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    payment_method
ORDER BY 
    total_revenue DESC;


-- Revenue by Region

SELECT 
    region,
    SUM(total_price) AS total_revenue
FROM 
    online_sales
GROUP BY 
    region
ORDER BY 
    total_revenue DESC;

-- Average Order Value (AOV) Per Month

SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    AVG(total_price) AS average_order_value
FROM 
    online_sales
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    order_year, order_month;
