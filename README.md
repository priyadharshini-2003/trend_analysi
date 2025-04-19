# trend_analysis
📊 Sales Trend Analysis – Monthly Revenue & Order Volume
🔍 Overview
This analysis explores monthly sales trends from the company's transactional data, focusing on revenue performance and order volume over time. The goal is to uncover patterns in customer purchasing behavior and provide insights to support data-driven business decisions.
____________________________________________________________________________________________________________________________________________________________________
📁 Data Source
Table: sales__data
Database: sales_db
Key Fields Used:
Order ID – Unique identifier for each order
Profit – Revenue/profit generated per transaction
Order Date – Originally in DD-MM-YYYY format, converted to a proper DATE type (order_date_converted) for analysis
______________________________________________________________________________________________________________________________________________________________________
🧮 Key Metrics Analyzed
Total Revenue: SUM(profit) – Aggregated monthly profit
Order Volume: COUNT(DISTINCT Order ID) – Unique order count per month.
_____________________________________________________________________________________________________________________________________________________________________
🗂️ Grouping & Timeframe
Time Breakdown: EXTRACT(YEAR) and EXTRACT(MONTH) from order_date_converted
Period Analyzed: January 2019 to December 2020
Grouped By: Year and Month
____________________________________________________________________________________________________________________________________________________________________
📈 Output Insights
Identifies high-performing months based on revenue and sales volume
Highlights seasonal trends and sales fluctuations
Provides a foundation for forecasting and marketing strategy alignment

