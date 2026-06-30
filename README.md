<p align="center">
  <img src="images/banner.png" alt="Swiggy Restaurant Performance Analysis Banner">
</p>

<p align="center">

<img src="https://img.shields.io/badge/SQL-025E8C?style=for-the-badge&logo=microsoftsqlserver&logoColor=white">

<img src="https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white">

<img src="https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black">

<img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github">

<img src="https://img.shields.io/badge/VS_Code-007ACC?style=for-the-badge&logo=visualstudiocode">

</p>

# 🍽️ Swiggy Restaurant Performance & Market Analysis

An end-to-end SQL Data Analytics project that analyzes restaurant performance across multiple Indian cities using the Swiggy Restaurant Dataset.

The project focuses on identifying the factors influencing customer satisfaction, restaurant performance, pricing strategy, delivery efficiency, and customer engagement through SQL-based analysis and business storytelling.

---

## 📑 Table of Contents

- [Project Overview](#-project-overview)
- [Business Problem](#-business-problem)
- [Business Objectives](#-business-objectives)
- [Dataset Information](#-dataset-information)
- [Tech Stack](#️-tech-stack)
- [Project Workflow](#-project-workflow)
- [Repository Structure](#-repository-structure)
- [Project Highlights](#-project-highlights)
- [Key Business Insights](#-key-business-insights)
- [Business Recommendations](#-business-recommendations)
- [Future Improvements](#-future-improvements)
- [How to Use This Project](#️-how-to-use-this-project)
- [Skills Demonstrated](#-skills-demonstrated)
- [Author](#-author)

## 📖 Project Overview

This project simulates a real-world business case in which Swiggy wants to better understand its restaurant ecosystem.

Using SQL Server, the dataset was cleaned, validated, analyzed, and transformed into actionable business insights through Exploratory Data Analysis (EDA), advanced SQL techniques, KPI development, and business recommendations.

The objective was not only to answer business questions but also to demonstrate how raw data can be converted into meaningful insights for decision-making.

---

## 🎯 Business Problem

Food delivery platforms like Swiggy rely on restaurant quality, pricing, customer satisfaction, and delivery efficiency to maintain customer loyalty and business growth.

However, with thousands of restaurants operating across multiple cities, identifying the factors that influence restaurant performance becomes challenging.

This project aims to analyze restaurant performance using SQL by answering key business questions related to customer ratings, pricing, delivery performance, cuisine preferences, and customer engagement. The goal is to generate actionable insights that can support better business decisions and improve the overall customer experience.

## 🎯 Business Objectives

The project focuses on answering the following business questions:

- Analyze the distribution of restaurants across different cities.
- Identify cities with the highest restaurant concentration.
- Compare customer satisfaction across cities.
- Analyze pricing patterns and their relationship with ratings.
- Evaluate delivery performance across cities and areas.
- Identify top-performing restaurants based on customer ratings and engagement.
- Discover the factors that influence customer satisfaction.
- Generate actionable business recommendations based on data.

## 📊 Dataset Information

| Attribute          | Details                              |
| ------------------ | ------------------------------------ |
| **Dataset Name**   | Swiggy Restaurant Dataset            |
| **Source**         | Kaggle                               |
| **Total Records**  | 8,680                                |
| **Total Features** | 10                                   |
| **Domain**         | Food Delivery / Restaurant Analytics |

### Dataset Features

| Column        | Description                       |
| ------------- | --------------------------------- |
| ID            | Unique Restaurant ID              |
| Area          | Restaurant Area                   |
| City          | City Name                         |
| Restaurant    | Restaurant Name                   |
| Price         | Average Cost for Two              |
| Avg_ratings   | Average Customer Rating           |
| Total_ratings | Total Number of Customer Ratings  |
| Food_type     | Cuisine Type                      |
| Address       | Restaurant Address                |
| Delivery_time | Estimated Delivery Time (Minutes) |

## 🛠️ Tech Stack

| Category           | Tools Used                          |
| ------------------ | ----------------------------------- |
| Database           | Microsoft SQL Server                |
| SQL IDE            | SQL Server Management Studio (SSMS) |
| Data Analysis      | SQL                                 |
| Data Visualization | Power BI                            |
| Documentation      | Notion                              |
| Version Control    | Git & GitHub                        |
| Code Editor        | Visual Studio Code                  |

## 🔄 Project Workflow

```text
Business Problem
        │
        ▼
Dataset Understanding
        │
        ▼
Data Quality Assessment
        │
        ▼
Exploratory Data Analysis (EDA)
        │
        ▼
Advanced SQL Analysis
        │
        ▼
KPI Development
        │
        ▼
Business Insights
        │
        ▼
Business Recommendations
        │
        ▼
Power BI Dashboard
```

## 📁 Repository Structure

```text
swiggy-restaurant-performance-analysis/
│
├── 📄 README.md
│
├── 📂 docs
│   └── Swiggy_Restaurant_Performance_Analysis.pdf
│
├── 📂 sql
│   ├── 01_Data_Quality_Assessment.sql
│   ├── 02_Exploratory_Data_Analysis.sql
│   ├── 03_Advanced_Analysis.sql
│   └── 04_KPI_Definition.sql
│
├── 📂 dashboard
│   ├── Swiggy_Dashboard.pbix
│   └── Dashboard_Screenshot.png
│
├── 📂 dataset
│   └── Swiggy_Restaurant_Dataset.csv
│
└── 📂 images
    ├── cover.png
    ├── workflow.png
    └── dashboard.png
```

## ⭐ Project Highlights

- ✔ Performed comprehensive Data Quality Assessment before analysis.
- ✔ Conducted Exploratory Data Analysis (EDA) to answer key business questions.
- ✔ Used Advanced SQL techniques including CTEs and Window Functions.
- ✔ Developed business-focused KPIs to measure platform performance.
- ✔ Performed statistical analysis using mean, median, and standard deviation.
- ✔ Identified factors influencing customer satisfaction.
- ✔ Generated actionable business recommendations.
- ✔ Designed as an end-to-end Data Analytics case study.

## 📈 Key Business Insights

- 📍 Kolkata has the highest restaurant concentration but also the slowest average delivery time.
- ⭐ Chennai achieved the highest average customer rating among all cities.
- 🚚 Faster deliveries are associated with higher customer ratings.
- 💰 Premium-priced restaurants consistently received better customer ratings.
- 🍦 Specialty food brands (Ice Cream, Bakery, Coffee, Desserts) significantly outperformed mass-market cuisines.
- ❤️ Hyderabad generated the highest customer engagement despite having fewer restaurants than Kolkata.
- 📊 Customer ratings remained relatively consistent, while restaurant pricing showed high variability.

## 💡 Business Recommendations

Based on the analysis, the following recommendations are proposed:

- 🚚 Improve delivery efficiency in Kolkata to reduce delivery time and enhance customer satisfaction.
- 🍦 Increase the visibility of high-performing specialty food categories such as Ice Cream, Bakery, Coffee, and Desserts.
- ⭐ Encourage restaurants to achieve faster delivery through operational improvements and delivery partner optimization.
- 📚 Study operational practices of top-performing restaurants and replicate successful strategies across lower-performing restaurants.
- 🌆 Replicate Chennai's operational success in cities with lower customer satisfaction.
- 📈 Focus business expansion on high-engagement markets such as Hyderabad.

## 🚀 Future Improvements

Future enhancements for this project include:

- Develop an interactive Power BI dashboard.
- Perform customer segmentation analysis.
- Build predictive models for restaurant ratings.
- Create an automated SQL reporting pipeline.
- Develop an executive dashboard for business stakeholders.
- Perform sentiment analysis using customer reviews.

## ▶️ How to Use This Project

1. Download the dataset from the `dataset` folder.
2. Import the dataset into Microsoft SQL Server.
3. Execute the SQL scripts in the following order:
   - `01_Data_Quality_Assessment.sql`
   - `02_Exploratory_Data_Analysis.sql`
   - `03_Advanced_Analysis.sql`
   - `04_KPI_Definition.sql`

4. Open the Power BI dashboard (`.pbix`) file to explore the visualizations.
5. Review the complete project documentation in the `docs` folder.

## 🧠 Skills Demonstrated

- SQL
- Data Cleaning
- Exploratory Data Analysis (EDA)
- Common Table Expressions (CTEs)
- Window Functions
- Aggregate Functions
- Statistical Analysis
- KPI Development
- Business Analysis
- Data Storytelling
- Power BI
- Git & GitHub

## 👨‍💻 Author

**Rahul Aditya**

MBA (IT & FinTech)

Aspiring Data Analyst

📧 Email: its.rahuladitya@gmail.com

💼 LinkedIn: https://www.linkedin.com/in/rahuladitya10/

🌐 GitHub: https://github.com/adityarahul10
