# 🎬 Netflix User Analysis – SQL Project

## 📘 Project Overview
This project explores **Netflix user data** to derive insights on revenue, user behavior, device usage, and subscription performance using **MySQL**.  
The analysis includes **data exploration, aggregation, and relational joins** across multiple tables such as `user_data`, `country`, `device`, `subscription`, and `gender`.

---

## 🧠 Objectives
- Analyze Netflix user base and their subscription patterns.
- Calculate revenue metrics by country, device, and subscription type.
- Understand demographic insights such as age and gender.
- Build SQL queries using **joins**, **aggregate functions**, and **subqueries**.

---

## 🧩 Database Design
The dataset consists of multiple relational tables:
- **user_data** – Contains user details, revenue, and age.
- **country** – Country information mapped via `Country_ID`.
- **device** – User device details (Laptop, Tablet, etc.).
- **subscription** – Subscription type and revenue mapping.
- **gender** – Gender classification for users.

Each table is linked using **foreign keys**, forming a clean relational data model.

---

## ⚙️ Tools & Technologies
- **Database:** MySQL  
- **Concepts Used:** Joins, Subqueries, Aggregations, Grouping, Filtering, ORDER BY, HAVING  

---

## 📊 Key Analyses Performed

### 🔹 SQL Analysis (1)
1. Average monthly revenue per country.  
2. User distribution by device.  
3. Last monthly payment per user.  
4. Minimum age by gender.  
5. Users above average age.  
6. User count by device type (Tablet & Laptop).  
7. Users aged 30–40 by country.  
8. Total monthly revenue for Premium & Standard subscriptions.

### 🔹 SQL Analysis (2)
1. Country-wise subscription with maximum revenue.  
2. User count and total revenue by device (Tablet & Laptop).  
3. Age and revenue statistics by device.  
4. Combined age and revenue statistics by device and gender.

---

🚀 Insights & Outcomes
- Identified top-performing countries by average revenue.
- Found Premium subscribers contribute the highest overall revenue.
- Laptops and tablets dominate device usage among mid-age users (30–40 years).
- Clear segmentation visible by subscription type and region.

---

📁 Files Included
- sql analysis 1.sql – Core SQL queries 
- sql analysis 2.sql – Extended revenue and demographic analysis 

---

👩‍💻 Author

Kshitija Agrawal
📍 Data Analyst | Skilled in SQL, Power BI, Excel, and Python
🔗 GitHub Profile: https://github.com/Kshitija-Agrawal
 | LinkedIn: https://www.linkedin.com/in/kshitijaagrawal/

