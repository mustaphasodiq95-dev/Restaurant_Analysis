# Restaurant_Analysis
🧩 Project Overview

This project analyzes transactional sales data from a restaurant to uncover key business insights around customer ordering behavior, product performance, and revenue generation.

Using SQL, the analysis explores patterns in:

Product demand
Order value distribution
Category performance
Time-based ordering behavior

The goal is to translate raw transactional data into actionable insights that can support menu optimization, pricing strategy, and operational decisions.

🎯 Business Objectives

The analysis is designed to answer the following key business questions:

Which menu items are the most and least popular?
How do product categories perform in terms of demand and revenue?
Which orders generate the highest revenue?
What characterizes high-value orders (e.g., item mix, categories)?
How does customer ordering behavior vary across different times of the day?
What is the average pricing structure across categories?
Which products contribute the most to total revenue?
🗂️ Dataset Description

The project uses two datasets:

1. order_details

Contains transactional order-level data:

order_details_id – Unique ID for each order line
order_id – Identifier for each order
order_date – Date of order
order_time – Time of order
item_id – Product identifier
2. menu_items

Contains product-level information:

menu_item_id – Unique product ID
item_name – Name of the item
category – Product category (e.g., Asian, American)
price – Price of the item
🛠️ Tools Used
SQL (MySQL) – Data querying and analysis
🔍 Analysis Breakdown
1. Product Popularity Analysis
Identified the most and least ordered items
Extended analysis to include category-level context
2. Revenue Analysis
Calculated total spend per order
Identified the top 5 highest-value orders
Investigated the composition of high-value orders
3. Order Composition Insights
Analyzed which categories dominate high-spending orders
Compared category contributions across top orders
4. Time-Based Analysis
Segmented orders into:
Morning (<12:00)
Afternoon (12:00–17:00)
Evening (>17:00)
Measured order volume by time period
5. Category Performance Analysis
Calculated:
Average price per category
Total revenue contribution per product
Identified top-performing products
6. Targeted Category Analysis
Focused on Asian category performance
Identified high-performing products exceeding revenue thresholds
📈 Key Insights
A small number of items drive a large portion of total orders, indicating a strong customer preference concentration.
Certain categories (e.g., Asian/American) consistently appear in high-value orders, suggesting they contribute significantly to revenue.
Top orders are driven more by quantity and mix of items rather than single expensive items, highlighting upselling opportunities.
Evening periods tend to capture a significant portion of orders, indicating peak business hours.
Some items generate high revenue despite not being the most frequently ordered—indicating premium pricing power.
There is clear variation in average pricing across categories, which can inform pricing and positioning strategies.

💡 Business Recommendations
Menu Optimization
Promote top-performing items prominently
Review and potentially remove consistently low-performing items
Upselling Strategy
Bundle popular items to increase average order value
Encourage cross-category purchases in high-performing categories
Pricing Strategy
Reassess pricing for underperforming items
Leverage high-value items for premium positioning
Operational Efficiency
Allocate more resources during peak hours (especially evenings)
Targeted Promotions
Run campaigns focused on high-performing categories (e.g., Asian cuisine)

**Key Skills Demonstrated**
SQL Joins (LEFT JOIN)
Aggregations (SUM, COUNT, AVG)
Grouping and Filtering (GROUP BY, HAVING)
Common Table Expressions (CTEs)
Conditional Logic (CASE WHEN)
Business-oriented data analysis
