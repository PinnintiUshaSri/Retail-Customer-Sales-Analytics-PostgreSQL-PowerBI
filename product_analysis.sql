-- TOP PRODUCTS
SELECT
    "StockCode",
    "Description",
    SUM("Quantity" * "UnitPrice") AS revenue
FROM online_retail_cleaned
GROUP BY "StockCode", "Description"
ORDER BY revenue DESC
LIMIT 10;

-- COUNTRY ANALYSIS
SELECT
    "Country",
    SUM("Quantity" * "UnitPrice") AS revenue
FROM online_retail_cleaned
GROUP BY "Country"
ORDER BY revenue DESC;