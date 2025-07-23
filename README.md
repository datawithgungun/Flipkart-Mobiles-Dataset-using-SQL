# Flipkart-Mobiles-Dataset-using-SQL
SQL-based analysis of Flipkart mobile phone listings to explore pricing, ratings, and product features across brands.

# 📊 Flipkart Mobile Phones Data Analysis Using SQL

This project presents an analysis of mobile phone listings from **Flipkart**, focusing on various product features, pricing strategies, ratings, and discount structures. The analysis was carried out using SQL to derive insights and compare smartphone variants from different brands.

---

## 🧾 Project Objective

The objective of this project is to:

* Explore smartphone data using SQL.
* Compare prices (MSP vs. MRP) and calculate discounts.
* Identify popular phones based on ratings and reviews.
* Analyze product features like RAM, storage, camera, display, and battery.
* Filter and compare different smartphone brands available on Flipkart.

---

## 🛠️ Tools & Technologies Used

* **SQL (MySQL/SQL Server/PostgreSQL)** – Data querying and analysis
* **CSV Dataset** – Source data from Flipkart listings
* **Spreadsheet Tools (optional)** – For result previews and exports

---

## 🗂️ Dataset Overview

The dataset (`flipkart_mobiles.csv`) includes mobile phone listings with the following columns:

| Column Name        | Description                                                      |
| ------------------ | ---------------------------------------------------------------- |
| `Name`             | Full name of the smartphone model                                |
| `Brand`            | Manufacturer brand (e.g., Realme, Redmi, Apple, etc.)            |
| `Ratings`          | Average customer rating                                          |
| `No_of_ratings`    | Total number of ratings received                                 |
| `No_of_reviews`    | Number of user reviews                                           |
| `Product_features` | List of product specs (RAM, ROM, Display, Camera, Battery, etc.) |
| `MSP`              | Market Selling Price                                             |
| `MRP`              | Maximum Retail Price                                             |
| `Discount`         | Percentage discount from MRP                                     |

---

## 🧠 Key Insights

* SQL queries were used to calculate discount percentages for each model.
* High-rated models with attractive discounts were identified.
* Feature-rich models (more RAM/storage) were compared for price differences.
* Brand-wise analysis helped in identifying top-performing companies.

---

## 🔍 SQL Concepts Used

* `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`
* Aggregation (`AVG`, `MAX`, `MIN`, `COUNT`)
* Calculated columns (Discount %)
* String filtering for features and brand matching
* Joins (if used for expanded datasets)

---

## 📈 Sample Queries

```sql
-- Top 5 highest discounted phones
SELECT Name, Brand, MSP, MRP, Discount
FROM flipkart_mobiles
ORDER BY Discount DESC
LIMIT 5;

-- Average rating by brand
SELECT Brand, AVG(Ratings) AS Avg_Rating
FROM flipkart_mobiles
GROUP BY Brand;
```

---

## 📌 Future Enhancements

* Add Power BI or Excel dashboard for visual insights
* Extend analysis to include performance benchmarks and battery stats
* Perform sentiment analysis using review texts (if available)

---

## 👤 Author

**Gungun Anant Chavan**
📍 Nagpur, Maharashtra
📧 [chavangungun657@gmail.com](mailto:chavangungun657@gmail.com)
🔗 [LinkedIn](https://www.linkedin.com/in/gungun-chavan-822440259/) • [GitHub](https://github.com/datawithgungun)

---
