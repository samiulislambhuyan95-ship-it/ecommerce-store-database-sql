# E-Commerce Store Database & Sales Analysis

## Project Overview

This project demonstrates the design and analysis of a relational database for an e-commerce store.

The database manages customers, products, orders, order items, and payments. SQL queries are used to analyze sales performance, customer spending, product revenue, and order status.

## Database Structure

The database contains five main tables:

- **Customers** – Stores customer information such as name, email, city, and signup date.
- **Products** – Stores product details including product name, category, price, and stock.
- **Orders** – Stores customer orders, order dates, and order status.
- **Order Items** – Stores the products and quantities associated with each order.
- **Payments** – Stores payment information related to orders.

The tables are connected using primary keys and foreign keys to maintain relationships and data integrity.

## Technologies Used

- MySQL
- SQL

## SQL Concepts Used

- Database and table creation
- Primary Keys
- Foreign Keys
- Constraints
- INSERT statements
- JOINs
- WHERE
- GROUP BY
- ORDER BY
- LIMIT
- Aggregate Functions such as SUM() and COUNT()

## Business Analysis

The project includes SQL analysis to answer business-related questions such as:

1. Which products generate the highest revenue from delivered orders?
2. Which customers spend the most?
3. Which products have the highest sales volume?
4. Which product category generates the most revenue?
5. What is the distribution of order statuses?

## Project Structure

```text
ecommerce-store-database-sql/
│
├── sql/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   └── analysis_queries.sql
│
└── README.md
