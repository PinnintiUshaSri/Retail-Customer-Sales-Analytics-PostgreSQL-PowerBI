-- MONTHLY TREND
SELECT
    DATE_TRUNC('month',TO_TIMESTAMP("InvoiceDate", 'MM/DD/YYYY HH24:M1')) AS month,
    SUM("Quantity" * "UnitPrice") AS revenue
FROM online_retail_cleaned
GROUP BY month
ORDER BY month;
-- WINDOW FUNCTION (TOP CUSTOMERS RANKING)
SELECT *
FROM (
    SELECT
        "CustomerID",
        SUM("Quantity" * "UnitPrice") AS revenue,
        RANK() OVER (ORDER BY SUM("Quantity" * "UnitPrice") DESC) AS rnk
    FROM online_retail_cleaned
    WHERE "CustomerID" IS NOT NULL
    GROUP BY "CustomerID"
) t
WHERE rnk <= 10;
