# 📊 E-commerce SQL Case Study (PostgreSQL)

## 📌 Project Overview
This project is a **SQL-only case study** focused on analyzing an e-commerce transactional dataset to derive meaningful **business insights**.  
The goal is to simulate a **real-world data analyst workflow** using PostgreSQL — from raw data to actionable decisions.


## 🧠 Business Problem
An e-commerce company wants to understand:
- Sales and revenue trends over time
- Top-performing products and countries
- Customer purchasing behavior
- Key metrics such as Average Order Value (AOV)

The analysis is performed **entirely using SQL**, without any external tools.


## 📂 Dataset Overview
- **Source:** Kaggle – Online Retail / E-commerce Dataset  
- **Type:** Transactional sales data  
- **Granularity:** Invoice-level product transactions  

### Key Columns:
- `invoice_no` – Unique order identifier  
- `stock_code` – Product code  
- `description` – Product description  
- `quantity` – Number of units sold  
- `invoice_date` – Date & time of transaction  
- `unit_price` – Price per unit  
- `customer_id` – Customer identifier  
- `country` – Customer country  


## 🛠️ Tools & Technologies
- **Database:** PostgreSQL  
- **Language:** SQL  
- **IDE:** pgAdmin  
- **Version Control:** GitHub  
- **Documentation:** WordPress  


## 🧱 01. Table Creation
- Created a structured table with appropriate data types
- Ensured compatibility with PostgreSQL
- Prepared schema for large-scale querying

📄 File: `01_table_creation.sql`


## 🧹 02. Data Cleaning
Performed real-world data cleaning steps including:
- Removed cancelled orders
- Eliminated invalid quantities and prices
- Handled missing customer IDs
- Standardized text fields
- Created derived columns such as `revenue`, `order_date`, `order_month`, `order_year`

📄 File: `02_data_cleaning.sql`


## 🔍 03. Data Exploration
Explored the dataset to understand:
- Dataset size and coverage
- Time range of transactions
- Sales and revenue distribution
- Country-wise performance
- Monthly revenue trends
- Top products by quantity and revenue
- Average Order Value (AOV)

📄 File: `03_exploration.sql`


## 📈 04. Business Insight Analysis
Answered business-driven questions such as:
- Which products generate the highest revenue?
- Which countries contribute most to sales?
- Who are the most frequent customers?
- How does revenue vary over time?
- What products should be prioritized for inventory and marketing?

Each query is written with **business interpretation in mind**.

📄 File: `04_business_insights.sql`

## 📊 Key Findings
- A small number of products generate a large portion of revenue
- Revenue is highly skewed, indicating high-value orders
- Certain countries dominate total sales
- Repeat customers contribute significantly to revenue
- Seasonal trends are visible in monthly sales

## 💡 Business Decisions
Based on the analysis:
- Focus marketing on high-revenue products
- Improve inventory planning for best-selling items
- Retain high-frequency customers through loyalty programs
- Optimize pricing and discount strategies
- Plan campaigns around peak sales periods


## 📝 Documentation
A detailed, step-by-step explanation of this project — including SQL queries, outputs, insights, and decisions — is documented on WordPress.

🔗 **WordPress Case Study:** *(Add your link here)*


## 🚀 Conclusion
This project demonstrates:
- Strong SQL fundamentals
- Ability to clean and explore real-world data
- Business-oriented analytical thinking
- Clear project structuring and documentation

This case study is designed to be **interview-ready** and reflect real data analyst responsibilities.

## 📬 Contact
If you have feedback or questions, feel free to connect with me on LinkedIn.


