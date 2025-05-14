#  Sales Trend Analysis Using Aggregations

##   Overview
This repository contains the SQL-based solution for **Task 6: Sales Trend Analysis**.  
The objective was to analyze monthly revenue and order volume using SQL aggregation functions on the `online_sales` dataset.

##  Objective
- Extract monthly trends from sales data.
- Calculate key business metrics like total revenue, order volume, average order value, and breakdowns by category, region, and payment method.

##  Dataset Summary
The dataset represents online transactions with the following columns:
- `order_id`: Unique identifier for each order.
- `order_date`: Date of the transaction.
- `category`: Product category (e.g., Electronics, Clothing).
- `product_name`: Name of the product sold.
- `quantity`: Number of items sold.
- `unit_price`: Price per item.
- `total_price`: Total = quantity × unit_price.
- `region`: Region where the sale occurred.
- `payment_method`: Method used to complete the transaction.

##  Tools Used
- SQL Server Management Studio (SSMS)


##  Queries Executed

The following SQL queries were written and executed for analysis:

1. **Create and Use Database**  
   - Created a new database `OnlineSalesDB` and selected it for use.

2. **View Raw Table**  
   - Displayed the contents of the `online_sales` table.

3. **Extract Year and Month from `order_date`**  
   - Extracted `YEAR` and `MONTH` from the date field to group transactions.

4. **Monthly Revenue and Order Volume**  
   - Grouped sales by year and month to get revenue and order volume trends.

5. **Limit Results by Date Range**  
   - Filtered data between January and June 2024 to get focused insights.

6. **Total Revenue and Volume by Product Category**  
   - Analyzed how much revenue and how many orders came from each category.

7. **Monthly Revenue Trend for Each Product**  
   - Broke down revenue trends by product across months.

8. **Revenue and Order Volume by Payment Method**  
   - Compared total revenue and volume across different payment types.

9. **Revenue by Region**  
   - Calculated which regions generated the most revenue.

10. **Average Order Value (AOV) Per Month**  
   - Calculated monthly AOV = total revenue / number of orders.

## Files in This Repository

- `sales_analysis.sql` – SQL script with all queries.
- `monthly_revenue_order_volume.csv` – Exported final results table.
- `README.md` – Project overview and documentation.

##  Outcome
The analysis helped understand sales performance over time and across various segments like category, payment method, and region.  
It provides a strong foundation for identifying seasonal trends and making informed business decisions.

