-- TOP CUSTOMERS
SELECT
    "CustomerID",
    SUM("Quantity" * "UnitPrice") AS revenue
FROM online_retail_cleaned
WHERE "CustomerID" IS NOT NULL
GROUP BY "CustomerID"
ORDER BY revenue DESC
LIMIT 10;

-- REPEAT CUSTOMERS
SELECT
    "CustomerID",
    COUNT(DISTINCT "InvoiceNo") AS orders
FROM online_retail_cleaned
WHERE "CustomerID" IS NOT NULL
GROUP BY "CustomerID"
HAVING COUNT(DISTINCT "InvoiceNo") > 1
ORDER BY orders DESC;

-- SEGMENTATION
WITH customer_revenue AS (
    SELECT
        "CustomerID",
        SUM("Quantity" * "UnitPrice") AS total_revenue
    FROM online_retail_cleaned
    WHERE "CustomerID" IS NOT NULL
    GROUP BY "CustomerID"
)
SELECT
    "CustomerID",
    total_revenue,
    CASE
        WHEN total_revenue > 10000 THEN 'High Value'
        WHEN total_revenue BETWEEN 3000 AND 10000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS segment
FROM customer_revenue;