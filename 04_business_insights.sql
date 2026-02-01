--Business Insight and Analysis

--Q1. Top 10 Best-Selling Products
SELECT Description,
       SUM(Quantity) AS total_units_sold
FROM online
GROUP BY Description
ORDER BY total_units_sold DESC
LIMIT 10;

--Q2.Highest Revenue Products
SELECT Description,
       SUM(Quantity * UnitPrice) AS total_revenue
FROM online
GROUP BY Description
ORDER BY total_revenue DESC
LIMIT 10;

--Q3.Monthly Revenue Trend
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'online'
  AND column_name = 'invoicedate';

ALTER TABLE online
ALTER COLUMN InvoiceDate TYPE TIMESTAMP
USING TO_TIMESTAMP(InvoiceDate, 'MM/DD/YYYY HH24:MI');

SELECT
    DATE_TRUNC('month', InvoiceDate) AS month,
    SUM(Quantity * UnitPrice) AS monthly_revenue
FROM online
GROUP BY month
ORDER BY month;

--Q4.Top Customers by Revenue
SELECT CustomerID,
       SUM(Quantity * UnitPrice) AS total_spent
FROM online
GROUP BY CustomerID
ORDER BY total_spent DESC
LIMIT 10;

--Q5.Country-wise Revenue Contribution
SELECT Country,
       SUM(Quantity * UnitPrice) AS total_revenue
FROM online
GROUP BY Country
ORDER BY total_revenue DESC;

--Q6.Average Order Value
SELECT
    AVG(order_value) AS avg_order_value
FROM (
    SELECT InvoiceNo,
           SUM(Quantity * UnitPrice) AS order_value
    FROM online
    GROUP BY InvoiceNo
) sub;

--Q7.Repeat vs One-Time Customers
SELECT
    CASE
        WHEN COUNT(DISTINCT InvoiceNo) > 1 THEN 'Repeat Customer'
        ELSE 'One-Time Customer'
    END AS customer_type,
    COUNT(*) AS customer_count
FROM online
GROUP BY CustomerID;

--Q8.Peak Sales Hours
SELECT
    EXTRACT(HOUR FROM InvoiceDate) AS hour,
    SUM(Quantity * UnitPrice) AS revenue
FROM online
GROUP BY hour
ORDER BY revenue DESC;

--Q9.Customer Lifetime Value
SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    SUM(Quantity * UnitPrice) AS lifetime_value
FROM online
GROUP BY CustomerID
ORDER BY lifetime_value DESC
LIMIT 10;

--Q10.Product Demand Stability
SELECT
    Description,
    COUNT(DISTINCT DATE_TRUNC('month', InvoiceDate)) AS active_months,
    SUM(Quantity) AS total_units_sold
FROM online
GROUP BY Description
HAVING COUNT(DISTINCT DATE_TRUNC('month', InvoiceDate)) >= 6
ORDER BY total_units_sold DESC;




















