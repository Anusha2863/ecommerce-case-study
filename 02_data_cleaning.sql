--Data Cleaning

--Remove Invalid Transactions

DELETE FROM online
WHERE Quantity <= 0
   OR UnitPrice <= 0;

--Handle Missing Customers

DELETE FROM online
WHERE CustomerID IS NULL;

--Order Value Categorization
SELECT *,
       Quantity * UnitPrice AS order_value,
       CASE
           WHEN Quantity * UnitPrice < 50 THEN 'Low'
           WHEN Quantity * UnitPrice BETWEEN 50 AND 200 THEN 'Medium'
           ELSE 'High'
       END AS order_category
FROM online;

--Check Duplicate Transactions
SELECT 
    InvoiceNo,
    StockCode,
    Quantity,
    InvoiceDate,
    COUNT(*) AS duplicate_count
FROM online
GROUP BY InvoiceNo, StockCode, Quantity, InvoiceDate
HAVING COUNT(*) > 1;

DELETE FROM online a
USING online b
WHERE a.ctid > b.ctid
AND a.invoiceno = b.invoiceno
AND a.stockcode = b.stockcode
AND a.invoicedate = b.invoicedate;

--Remove Invalid Quantity Records.
SELECT COUNT(*) 
FROM online
WHERE quantity <= 0;

DELETE FROM online
WHERE quantity <= 0;

--Standardize Text Columns
UPDATE online
SET description = INITCAP(TRIM(description));

--Handle Missing Customer IDs
SELECT COUNT(*)
FROM online
WHERE customerid IS NULL;

UPDATE online
SET customerid = -1
WHERE customerid IS NULL;

--Create Revenue Column
ALTER TABLE online
ADD COLUMN revenue NUMERIC;

UPDATE online
SET revenue = quantity * unitprice;

--Remove Cancelled Orders
SELECT COUNT(*)
FROM online
WHERE invoiceno LIKE 'C%';

DELETE FROM online
WHERE invoiceno LIKE 'C%';

--Date Standardization
ALTER TABLE online
ADD COLUMN order_date DATE,
ADD COLUMN order_month INT,
ADD COLUMN order_year INT;

UPDATE online
SET 
    order_date = invoicedate::DATE,
    order_month = EXTRACT(MONTH FROM invoicedate),
    order_year = EXTRACT(YEAR FROM invoicedate);









