--Data Exploration

SELECT COUNT(*) AS total_rows
FROM online;

SELECT * FROM online LIMIT 10;

SELECT 
    MIN(InvoiceDate) AS start_date,
    MAX(InvoiceDate) AS end_date
FROM online;

--Null Values

SELECT
    COUNT(*) FILTER (WHERE InvoiceNo IS NULL) AS invoice_nulls,
    COUNT(*) FILTER (WHERE StockCode IS NULL) AS stockcode_nulls,
    COUNT(*) FILTER (WHERE Description IS NULL) AS description_nulls,
    COUNT(*) FILTER (WHERE Quantity IS NULL) AS quantity_nulls,
    COUNT(*) FILTER (WHERE InvoiceDate IS NULL) AS invoicedate_nulls,
    COUNT(*) FILTER (WHERE UnitPrice IS NULL) AS unitprice_nulls,
    COUNT(*) FILTER (WHERE CustomerID IS NULL) AS customerid_nulls,
    COUNT(*) FILTER (WHERE Country IS NULL) AS country_nulls
FROM online;

--Category Overview
SELECT Country, COUNT(*) AS total_transactions
FROM online
GROUP BY Country
ORDER BY total_transactions DESC;

--Dataset Size Overview
SELECT 
    COUNT(*) AS total_transactions,
    COUNT(DISTINCT invoiceno) AS total_orders,
    COUNT(DISTINCT customerid) AS total_customers,
    COUNT(DISTINCT stockcode) AS total_products
FROM online;

--Time Range of Data
SELECT 
    MIN(invoicedate) AS first_order_date,
    MAX(invoicedate) AS last_order_date
FROM online;

--Orders by Country
SELECT 
    country,
    COUNT(DISTINCT invoiceno) AS total_orders
FROM online
GROUP BY country
ORDER BY total_orders DESC;

--Revenue by Country
SELECT 
    country,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM online
GROUP BY country
ORDER BY total_revenue DESC;

--Monthly Sales Trend
SELECT 
    order_year,
    order_month,
    ROUND(SUM(revenue), 2) AS monthly_revenue
FROM online
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

--Top 10 Best-Selling Products
SELECT 
    description AS product_name,
    SUM(quantity) AS total_quantity_sold
FROM online
GROUP BY description
ORDER BY total_quantity_sold DESC
LIMIT 10;

--Top 10 Products by Revenue
SELECT 
    description AS product_name,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM online
GROUP BY description
ORDER BY total_revenue DESC
LIMIT 10;

--Average Order Value
SELECT 
    ROUND(SUM(revenue) / COUNT(DISTINCT invoiceno), 2) AS avg_order_value
FROM online;

--Customer Purchase Frequency
SELECT 
    customerid,
    COUNT(DISTINCT invoiceno) AS number_of_orders
FROM online
GROUP BY customerid
ORDER BY number_of_orders DESC
LIMIT 10;

--Revenue Distribution Check
SELECT 
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY revenue) AS p25,
    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY revenue) AS median,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY revenue) AS p75
FROM online;







