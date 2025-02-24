# Zomata_SQL_Project

# 🍽️ SQL Project: Data Analysis for Zomato – A Food Delivery Company

## 📋 Overview
This project demonstrates SQL problem-solving skills through the analysis of data for Zomato, a popular food delivery company in India. The project involves setting up the database, importing data, cleaning null values, and solving a variety of business problems using complex SQL queries.

All datasets are provided, along with 20 business-related SQL problems and their source code.

## 📊 Entity-Relationship Diagram (ERD)
![ERD Diagram](https://github.com/Dhruvbansal106/Zomata_SQL_Project/blob/main/Zomato_ERD.png)

## 🏗️ Project Structure
- **Database Setup:** Creation of the `zomato_db` database and required tables.
- **Data Import:** Inserting sample data into the tables.
- **Data Cleaning:** Handling null values and ensuring data integrity.
- **Business Problems:** Solving 25 specific business problems using SQL queries.

## 🛠️ Database Setup

### 1️⃣ Dropping Existing Tables
```sql
DROP TABLE IF EXISTS deliveries;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS restaurants;
DROP TABLE IF EXISTS riders;
```

### 2️⃣ Creating Tables
```sql
-- Creating Restaurants Table
CREATE TABLE restaurants (
  restaurant_id VARCHAR(40) PRIMARY KEY,
  name VARCHAR(40),
  cuisine VARCHAR(40),
  location VARCHAR(40),
  rating DOUBLE PRECISION,
  contact VARCHAR(40)
);

-- Creating Customers Table
CREATE TABLE customers (
  customer_id VARCHAR(40) PRIMARY KEY,
  name VARCHAR(40),
  email VARCHAR(50),
  phone VARCHAR(40),
  address VARCHAR(80),
  age INTEGER,
  gender VARCHAR(15)
);

-- Creating Riders Table
CREATE TABLE riders (
  rider_id VARCHAR(40) PRIMARY KEY,
  rider_name VARCHAR(40),
  phone VARCHAR(40),
  vehicle_type VARCHAR(40),
  rider_rating DOUBLE PRECISION
);

-- Creating Orders Table
CREATE TABLE orders (
  order_id VARCHAR(40) PRIMARY KEY,
  customer_id VARCHAR(40),
  restaurant_id VARCHAR(40),
  order_date DATE,
  order_time TIME WITHOUT TIME ZONE,
  items VARCHAR(40),
  total_amount DOUBLE PRECISION,
  status VARCHAR(40),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

-- Creating Deliveries Table
CREATE TABLE deliveries (
  delivery_id VARCHAR(40) PRIMARY KEY,
  order_id VARCHAR(40),
  rider_id VARCHAR(40),
  pickup_time TIMESTAMP WITHOUT TIME ZONE,
  delivery_time TIMESTAMP WITHOUT TIME ZONE,
  distance_km DOUBLE PRECISION,
  tip DOUBLE PRECISION,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (rider_id) REFERENCES riders(rider_id)
);
```

## 📥 Data Import
1. Prepare CSV files for each table (`customers`, `restaurants`, `riders`, `orders`, `deliveries`).
2. Use PostgreSQL's `COPY` command or pgAdmin's import feature to load data:
```sql
COPY customers FROM '/path/to/customers.csv' DELIMITER ',' CSV HEADER;
COPY restaurants FROM '/path/to/restaurants.csv' DELIMITER ',' CSV HEADER;
COPY riders FROM '/path/to/riders.csv' DELIMITER ',' CSV HEADER;
COPY orders FROM '/path/to/orders.csv' DELIMITER ',' CSV HEADER;
COPY deliveries FROM '/path/to/deliveries.csv' DELIMITER ',' CSV HEADER;
```

## 🧹 Data Cleaning
- Check for null values using:
```sql
SELECT * FROM customers WHERE name IS NULL;
```
- Handle inconsistencies and ensure referential integrity.

## 💡 Business Problems
Solve 25 business-related questions such as:
- What is the average delivery time?
- Which restaurant has the highest number of orders?
- Who are the top-performing riders?

## 🚀 Running the Project
1. Clone the repository:
```bash
git clone https://github.com/yourusername/zomato_sql_project.git
```
2. Open pgAdmin or your preferred SQL tool.
3. Execute the SQL scripts in the provided order.

## 📢 Contributing
Feel free to fork the project, make changes, and create pull requests.

✅ Conclusion

This project offers a hands-on approach to SQL problem-solving through real-world data analysis for Zomato. By setting up the database, cleaning data, and addressing 20 business-related SQL challenges, users can strengthen their SQL skills and gain insights into food delivery data analytics.

---

Happy Querying! 🚀



