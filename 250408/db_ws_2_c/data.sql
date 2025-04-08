-- Active: 1744083852534@@127.0.0.1@3306

-- 1.
SELECT BillingCountry, SUM(Total) AS TotalSum
FROM invoices
GROUP BY BillingCountry;

-- 2.
SELECT strftime('%Y', InvoiceDate) AS Year, SUM(Total) AS TotalSum
FROM invoices
GROUP BY Year;

-- 3.
SELECT BillingState, SUM(Total) AS TotalSum
FROM invoices
WHERE BillingCountry = 'USA' AND InvoiceDate > '2010-01-01'
GROUP BY BillingState;

-- 4.
SELECT BillingCountry, MAX(Total) AS MaxSum
FROM invoices
WHERE BillingCountry IN ('Germany', 'France')
GROUP BY BillingCountry;