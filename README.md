# 🛍️ E-Commerce RFM Analysis Pipeline

An end-to-end data analytics project performing **RFM (Recency, Frequency, Monetary) Analysis** to segment customers based on their purchasing behavior.  
This project integrates **Python**, **MySQL**, and **Power BI** to build a complete analytics pipeline — from raw sales data to interactive business insights.

---

## 📊 Dataset

This project uses the following dataset:  
[E-commerce Sales Transaction Dataset](https://github.com/khwab13/Ecommerce-Customer-Segmentation-RFM/blob/main/Data/Sales%20Transaction%20v.4a.csv(initial%20database%20for%20cleaning).zip)

---

## 🚀 Tech Stack

| Tool | Purpose |
|------|----------|
| 🐍 **Python (Jupyter Notebook)** | Data cleaning, preprocessing, and feature creation |
| 🗄️ **MySQL** | Performing RFM analysis using SQL window functions |
| 📊 **Power BI** | Building an interactive dashboard for insights |

---

## 📈 Workflow Overview

| Step | Tool | Description |
|------|------|-------------|
| **1️⃣ Data Preprocessing** | Python | Cleaned and formatted raw transactional data, handled duplicates, generated `TotalSales` and `YearMonth` columns. |
| **2️⃣ Data Storage & RFM Calculation** | MySQL | Imported cleaned data and performed RFM calculations using SQL window functions. |
| **3️⃣ Dashboard Creation** | Power BI | Built a fully interactive dashboard to visualize customer segmentation and performance metrics. |

---

## 🧮 RFM Model Explanation

| Metric | Description | Calculation |
|---------|--------------|--------------|
| **Recency (R)** | Days since last purchase | `DATEDIFF(MAX(Date)+ INTERVAL 1 Day, last_purchase_date)` |
| **Frequency (F)** | Total number of transactions | `COUNT(TransactionNo)` |
| **Monetary (M)** | Total spend by customer | `SUM(TotalSales)` |

Each customer receives an **R, F, and M score** (1–5), combined into an overall **RFM Score** to determine their segment (e.g., *Loyal*, *At Risk*, *Churned*).

---

## 📊Ecommerce-RFM-Analysis Dashboard

![Dashboard Preview](https://github.com/khwab13/Ecommerce-Customer-Segmentation-RFM/blob/main/Dashboard_PowerBI/RFM_Dashboard.png)

**Key Visuals**
- 📊 Overall KPIs: Total Revenue, Total Customers, and Average Order Value  
- 🧮 RFM Segment Distribution: Customer segmentation based on Recency, Frequency & Monetary scores  
- 🌍 Country-wise Sales: Geographic insights into top-performing regions  
- 💰 Top 10 High-Value Customers by Monetary Value  
- ⏰ Recency vs Frequency Scatter Chart: Visualizing customer engagement behavior  
- 📅 Monthly Revenue Trend: Tracking sales performance over time  


**Suggested Slicers**
- Country  
- RFM Segment  
- Year-Quater-Month  
- Recency Range
- Frequency Group  

---

## 🧠 Key Insights

- Identified **loyal customers** contributing the majority of revenue.  
- Segmented users into actionable tiers for **targeted marketing**.  
- Enabled business to focus on **retention and reactivation strategies**.  

---

