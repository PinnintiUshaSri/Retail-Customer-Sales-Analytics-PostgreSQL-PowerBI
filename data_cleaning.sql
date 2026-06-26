-- ===============================
-- DATA CLEANING LAYER
-- ===============================

-- Remove invalid quantity rows
DELETE FROM online_retail_raw
WHERE "Quantity" <= 0;

-- Remove invalid price rows
DELETE FROM online_retail_raw
WHERE "UnitPrice" <= 0;

-- Remove missing product descriptions
DELETE FROM online_retail_raw