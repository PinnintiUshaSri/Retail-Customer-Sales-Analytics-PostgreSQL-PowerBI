# Retail Customer & Sales Analytics using PostgreSQL & Power BI

## Project Overview

This project analyzes over **530,000 retail transactions** using **PostgreSQL** and **Power BI** to generate business insights. It demonstrates an end-to-end analytics workflow, including SQL data cleaning, KPI analysis, customer and product analysis, and the creation of interactive Power BI dashboards.

---

## Project Objectives

* Clean and prepare retail sales data using SQL.
* Analyze customer purchasing behavior.
* Identify top-performing products.
* Track monthly sales trends.
* Evaluate country-wise sales performance.
* Build interactive dashboards for business decision-making.

---

## Tools & Technologies

* PostgreSQL
* SQL
* Power BI

---

## Dataset

**Dataset:** Online Retail Dataset

The dataset contains over **530,000 retail transactions** with the following information:

* Invoice Number
* Product Description
* Stock Code
* Quantity
* Invoice Date
* Unit Price
* Customer ID
* Country

> **Note:** The dataset is not included in this repository because of GitHub's file size limitations. The project was built using the publicly available Online Retail Dataset.

---

## Data Cleaning

Performed using PostgreSQL:

* Removed records with negative quantities.
* Removed records with zero or negative unit prices.
* Removed records with missing product descriptions.
* Converted `InvoiceDate` into timestamp format.
* Created a cleaned dataset for analysis.

---

## SQL Analysis

### KPI Analysis

* Total Revenue
* Total Orders
* Total Customers
* Total Quantity Sold
* Average Order Value (AOV)

### Customer Analysis

* Top Customers by Revenue
* Customer Order Frequency
* Revenue Ranking using Window Functions

### Product Analysis

* Top Products by Revenue
* Top Products by Quantity Sold

### Sales Analysis

* Monthly Revenue Trend
* Country-wise Revenue Analysis

---

## Power BI Dashboard

The dashboard consists of **three interactive pages**.

### Page 1 – Executive Overview

* Total Revenue
* Total Orders
* Total Customers
* Total Quantity Sold
* Average Order Value
* Monthly Revenue Trend
* Monthly Quantity Trend
* Revenue Share by Country
* Top 5 Countries by Quantity
* Interactive Slicers

### Page 2 – Product Performance Analysis

* Top 10 Products by Revenue
* Top 10 Products by Quantity Sold
* Revenue vs Quantity (Combo Chart)
* Country Filter
* Invoice Month Filter

### Page 3 – Customer Insights & Order Analysis

* Top 10 Customers by Revenue
* Top 10 Customers by Order Count
* Top Countries by Revenue
* Customer Filter
* Year Filter
* Country Filter

---

## Dashboard Preview

### Executive Overview

*Add:* `<img width="819" height="469" alt="dashboard_page1" src="https://github.com/user-attachments/assets/595c9c92-1658-411f-9264-d92014c87a58" />`

### Product Performance Analysis

*Add:* `<img width="770" height="471" alt="dashboard_page2" src="https://github.com/user-attachments/assets/920be01c-c6c9-4d84-b5c5-d161d8f8e98e" />`

### Customer Insights & Order Analysis

*Add:* `<img width="769" height="461" alt="dashboard_page3" src="https://github.com/user-attachments/assets/0a178af6-ac96-4568-a6d3-893850537a4b" />`

---

## Key Business Insights

* United Kingdom generated the highest overall revenue.
* A small group of customers contributed significantly to total sales.
* High-performing products were identified based on both revenue and quantity sold.
* Monthly sales analysis highlighted seasonal business trends.
* Interactive filters allow users to analyze sales by country, customer, and time period.

---

## Repository Contents

```text
├── 01_data_cleaning.sql
├── 02_kpi_analysis.sql
├── 03_customer_analysis.sql
├── 04_product_analysis.sql
├── 05_time_series.sql
├── Retail_Sales_Dashboard.pbix
├── dashboard_page1.png
├── dashboard_page2.png
├── dashboard_page3.png
├── README.md
└── LICENSE
```

---

## Skills Demonstrated

* SQL Data Cleaning
* Data Transformation
* Aggregate Functions
* GROUP BY & ORDER BY
* CASE Statements
* Common Table Expressions (CTEs)
* Window Functions (RANK)
* KPI Development
* Time Series Analysis
* Customer Analytics
* Product Analytics
* Power BI Dashboard Development
* Interactive Reporting
* Business Intelligence

---

## Author

**Pinninti Usha Sri**

Aspiring Data Analyst passionate about SQL, Power BI, MS Excel, Python, Data Analysis and Business Intelligence.
