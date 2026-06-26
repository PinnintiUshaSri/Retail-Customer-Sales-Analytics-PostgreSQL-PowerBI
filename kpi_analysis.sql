SELECT COUNT(*) AS total_rows
FROM online_retail_cleaned;

SELECT
    ROUND(SUM("Quantity" * "UnitPrice")::numeric, 2) AS total_revenue
FROM online_retail_cleaned;

SELECT COUNT(DISTINCT "InvoiceNo") AS total_orders
FROM online_retail_cleaned;

SELECT COUNT(DISTINCT "CustomerID") AS total_customers
FROM online_retail_cleaned;

SELECT
    ROUND(
        SUM("Quantity" * "UnitPrice") / COUNT(DISTINCT "CustomerID"),
    2) AS avg_revenue_per_customer
FROM online_retail_cleaned;