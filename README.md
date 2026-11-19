# Food Delivery Analytics | MySQL & Power BI

An end-to-end **Food Delivery Analytics and Business Intelligence project** developed using MySQL 8.0, MySQL Shell, SQL, and Microsoft Power BI.

This project uses a synthetic food delivery dataset to analyze customer behavior, restaurant performance, food categories, sales trends, delivery operations, discounts, and profitability.

The project demonstrates how relational database management, SQL analytics, and interactive Power BI dashboards can transform transactional data into meaningful business insights.

![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![SQL](https://img.shields.io/badge/SQL-Data%20Analytics-blue)
![Dataset](https://img.shields.io/badge/Dataset-Synthetic-orange)

**Project Type:** Data Analytics Portfolio Project  
**Database:** MySQL 8.0  
**SQL Environment:** MySQL Shell  
**Visualization:** Microsoft Power BI  
**Dataset:** Synthetic / Practice Data

---

## Project Overview

Food delivery businesses generate data across customers, restaurants, food items, orders, payments, and delivery operations.

This project explores these business areas using a relational MySQL database and an interactive Power BI report.

The SQL implementation combines data from five core tables into a reusable analytical view. The resulting dataset supports analysis of sales, discounts, food costs, customer behavior, restaurant performance, and delivery operations.

The Power BI report presents five analytical perspectives:

1. Executive Overview
2. Restaurant & Food Category Analysis
3. Customer Analytics
4. Delivery & Order Performance
5. Profitability & Management

## Project Objectives

- Develop and explore a relational MySQL database.
- Use MySQL Shell to execute SQL scripts and perform analysis.
- Understand customer demographics, locations, and segments.
- Evaluate restaurant and cuisine performance.
- Analyze food categories, quantities, sales, and costs.
- Examine order status, payment methods, and delivery performance.
- Calculate gross sales, discounts, net sales, food costs, and item-level profit.
- Create a reusable SQL analytical view.
- Develop interactive Power BI dashboards.
- Translate analytical findings into business recommendations.

## Database Architecture

Database name:

```sql
food_delivery_analytics
```

### Database Tables

| Table | Description |
|---|---|
| `customers` | Customer demographics, location, region, segment, and registration date |
| `orders` | Order details, dates, status, payment methods, delivery information, fees, and discounts |
| `order_items` | Food items included in orders, quantities, unit prices, and item discounts |
| `foods` | Food names, categories, subcategories, restaurant associations, costs, and selling prices |
| `restaurants` | Restaurant names, cuisine types, locations, ratings, and average cost for two |

### Database Relationships

```text
CUSTOMERS
    |
    | customer_id
    |
  ORDERS
    |
    | order_id
    |
ORDER_ITEMS
    |
    | food_id
    |
  FOODS
    |
    | restaurant_id
    |
RESTAURANTS
```

The database uses primary and foreign key relationships to connect customer, order, restaurant, and food information.

## SQL Analysis

### Analytical View

The project includes a reusable SQL view:

```sql
vw_food_delivery_sales
```

The view combines information from:

- Orders
- Customers
- Restaurants
- Order items
- Foods

It also calculates financial metrics for food-item-level analysis.

### Financial Calculations

| Metric | Calculation |
|---|---|
| Gross Sales | Quantity × Unit Price |
| Item Discount Amount | Gross Sales × Item Discount Percentage / 100 |
| Net Sales | Gross Sales − Item Discount Amount |
| Food Cost | Quantity × Food Unit Cost |
| Profit | Net Sales − Food Cost |

**Important:** The SQL view calculates item-level profit after item discounts and food costs. It does not subtract order-level discounts, delivery operating costs, payment processing fees, or other operating expenses. It should not be interpreted as final business net profit.

## Power BI Dashboard

The report contains five analytical pages.

### 1. Executive Overview

Provides a high-level view of business performance.

Analysis includes:
- Orders and revenue
- Customer performance
- Order status distribution
- Regional sales performance
- Sales by customer segment
- Net sales by food category
- Monthly net sales trends
- Orders and delivery time trends

### 2. Restaurant & Food Category Analysis

Evaluates restaurant performance and food category contribution.

Analysis includes:
- Net sales by cuisine
- Food category profitability
- Top restaurants by net sales
- Cuisine performance
- Top foods by net sales
- Restaurant ratings versus net sales
- Profit by cuisine

### 3. Customer Analytics

Explores customer demographics and purchasing behavior.

Analysis includes:
- Net sales by gender
- Customer orders versus net sales
- Customer segment distribution
- Orders by age group
- Net sales by customer segment
- Customer sales by region
- Repeat versus one-time customers
- Top customers by net sales

### 4. Delivery & Order Performance

Focuses on delivery operations and order activity.

Analysis includes:
- Delivery time distribution
- Cancelled and returned order trends
- Orders by payment method
- Delivery distance versus delivery time
- Order volume versus average delivery time
- Order status distribution
- Orders by delivery type
- Average delivery time by delivery type

### 5. Profitability & Management

Examines financial performance and profitability drivers.

Analysis includes:
- Monthly net sales and profit
- Discount percentage by food category
- Discount versus profit margin
- Profit by food category
- Restaurant profitability
- Food net sales versus delivered net sales
- Profit by cuisine
- Profit by delivery region

## Dashboard Screenshots

Screenshots of all five Power BI report pages will be included here.

```text
screenshots/
├── executive-overview.png
├── restaurant-food-category-analysis.png
├── customer-analytics.png
├── delivery-order-performance.png
└── profitability-management.png
```

Once exported, the screenshots will be embedded in this section using relative GitHub image paths.

## Business Questions

### Sales Analysis
- How do net sales change over time?
- Which food categories contribute the most sales?
- How do discounts affect sales performance?
- Which regions generate the highest sales?

### Customer Analysis
- Which customer segments contribute the most revenue?
- How does purchasing behavior vary by age group?
- Which customers generate the highest sales?
- What proportion of customers are repeat customers?

### Restaurant & Food Analysis
- Which restaurants generate the highest net sales?
- Which cuisine types perform best?
- Which food items generate the highest sales?
- Which categories contribute the most item-level profit?

### Delivery Analysis
- What is the average delivery time?
- How does delivery time vary by delivery type?
- Is delivery distance associated with delivery time?
- Which payment methods are most frequently used?
- What proportion of orders are cancelled, returned, or delivered?

### Profitability Analysis
- Which food categories generate the highest item-level profit?
- How do discounts affect profit margins?
- Which restaurants contribute the most item-level profit?
- How does profitability vary by cuisine and region?

## Data Quality & Validation

The following validation checks are important before interpreting the results:

- Check primary and foreign key relationships.
- Identify duplicate records.
- Check missing customer, restaurant, food, and order references.
- Validate quantities, prices, costs, discounts, and delivery times.
- Check restaurant consistency between orders and food items.
- Review order statuses and their treatment in sales calculations.
- Validate date fields before time-based analysis.
- Reconcile gross sales, discounts, net sales, food costs, and profit.

**Aggregation consideration:** The analytical view contains one row per order item. A single order can therefore appear multiple times. Use `COUNT(DISTINCT order_id)` when calculating unique orders.

**Currency consideration:** Financial values are documented using the dataset's original currency units. No currency symbol or currency conversion is assumed until the source currency is confirmed.

## Tools & Technologies

| Technology | Purpose |
|---|---|
| MySQL 8.0 | Relational database management |
| MySQL Shell | SQL execution and database interaction |
| SQL | Joins, calculations, queries, and analytical views |
| Microsoft Power BI | Interactive dashboards and reporting |
| DAX | Power BI calculations, where implemented |
| Power Query | Data preparation, where implemented |
| GitHub | Project version control and documentation |

## Skills Demonstrated

- MySQL database management
- SQL querying and data analysis
- Relational database design
- Primary and foreign key relationships
- SQL joins and analytical views
- Data preparation and validation
- Customer segmentation
- Restaurant and cuisine analysis
- Food category performance
- Sales and discount analysis
- Delivery operations analysis
- Profitability analysis
- Power BI dashboard development
- Business intelligence and data storytelling

## Repository Structure

```text
Food-Delivery-Analytics-MySQL-Power-BI/
│
├── README.md
│
├── database/
│   ├── Customers.sql
│   ├── Orders.sql
│   ├── Order_Items.sql
│   ├── Foods.sql
│   ├── Restaurants.sql
│   └── Routines.sql
│
├── power-bi/
│   └── Food Delivery Analytics.pbix
│
├── screenshots/
│   ├── executive-overview.png
│   ├── restaurant-food-category-analysis.png
│   ├── customer-analytics.png
│   ├── delivery-order-performance.png
│   └── profitability-management.png
│
└── documentation/
    ├── project-overview.md
    ├── business-requirements.md
    ├── database-schema.md
    ├── data-dictionary.md
    ├── sql-analysis.md
    ├── kpi-dictionary.md
    ├── dashboard-documentation.md
    └── data-validation.md
```

*Update the file names to match the actual repository contents.*

## How to Explore the Project

1. Install MySQL 8.0.
2. Open MySQL Shell and connect to the MySQL server.
3. Create or select the `food_delivery_analytics` database.
4. Import the supplied SQL table scripts.
5. Execute the SQL view definition from `Routines.sql`.
6. Inspect the tables and validate `vw_food_delivery_sales`.
7. Open the Power BI `.pbix` file in Power BI Desktop.
8. Review all five dashboard pages and their KPI definitions.
9. Explore the supporting project documentation.

## Future Improvements

- Customer lifetime value analysis
- Customer retention and cohort analysis
- Restaurant performance benchmarking
- Food-item demand analysis
- Delivery efficiency monitoring
- Cancellation and return analysis
- Delivery cost and contribution margin analysis
- Discount effectiveness analysis
- Sales forecasting
- Automated dashboard refresh

## Conclusion

This project demonstrates an end-to-end analytical workflow, from relational database exploration and SQL-based data preparation to Power BI dashboard development.

It showcases practical skills in database management, SQL analytics, customer behavior analysis, restaurant performance, delivery operations, financial metrics, and business intelligence.

The project is intended as a synthetic-data portfolio demonstration for Data Analyst, Business Analyst, and Business Intelligence opportunities.

---

## Author

**Data Analytics Portfolio Project**

MySQL | SQL | Microsoft Power BI | Business Intelligence

## GitHub Repository Description

End-to-end Food Delivery Analytics project using MySQL Shell, SQL, and Power BI to analyze customer behavior, restaurant performance, food categories, sales, discounts, delivery operations, and profitability.

## GitHub Topics

`food-delivery-analytics` `mysql` `mysql-shell` `sql` `power-bi` `data-analytics` `business-intelligence` `sales-analytics` `customer-analytics` `restaurant-analytics` `delivery-analytics` `profitability-analysis` `dashboard` `dax` `data-visualization`

## SEO Keywords

Food Delivery Analytics Project, MySQL Food Delivery Database, Power BI Food Delivery Dashboard, SQL Sales Analysis, Restaurant Performance Analysis, Customer Segmentation, Food Category Analytics, Delivery Performance Analysis, Profitability Analysis, Business Intelligence Portfolio, Data Analyst Portfolio Project.
