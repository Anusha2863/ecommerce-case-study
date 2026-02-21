# 📊 E-commerce SQL Case Study (PostgreSQL)

## 📌 Project Overview
This project is a **SQL-only case study** focused on analyzing an e-commerce transactional dataset to derive meaningful **business insights**.  
The goal is to simulate a **real-world data analyst workflow** using PostgreSQL  from raw data to actionable decisions.


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

- <img width="1585" height="765" alt="Screenshot 2026-02-21 121432" src="https://github.com/user-attachments/assets/49ef0bde-d81e-4203-afa7-03a346b977ec" />


-- <a href="https://github.com/Anusha2863/ecommerce-case-study/blob/main/01_table_creation.sql">Creation</a>


## 🧹 02. Data Cleaning
Performed real-world data cleaning steps including:
- Removed cancelled orders
- Eliminated invalid quantities and prices
- Handled missing customer IDs
- Standardized text fields
- Created derived columns such as `revenue`, `order_date`, `order_month`, `order_year`

- <img width="1561" height="910" alt="Screenshot 2026-02-21 121734" src="https://github.com/user-attachments/assets/a676f79d-fbf9-4dee-a240-ed0d0c10566e" />


-- <a href="https://github.com/Anusha2863/ecommerce-case-study/blob/main/02_data_cleaning.sql">data_cleaning</a>


## 🔍 03. Data Exploration
Explored the dataset to understand:
- Dataset size and coverage
- Time range of transactions
- Sales and revenue distribution
- Country-wise performance
- Monthly revenue trends
- Top products by quantity and revenue
- Average Order Value (AOV)

--<img width="1569" height="958" alt="Screenshot 2026-02-21 122746" src="https://github.com/user-attachments/assets/c3576d84-7c0d-4a9f-9168-b81a10fe6d7f" />

-- <a href="https://github.com/Anusha2863/ecommerce-case-study/blob/main/03_exploration.sql">Exploration</a>


## 📈 04. Business Insight Analysis
Answered business-driven questions such as:
- Which products generate the highest revenue?
- Which countries contribute most to sales?
- Who are the most frequent customers?
- How does revenue vary over time?
- What products should be prioritized for inventory and marketing?

Each query is written with **business interpretation in mind**.

--<img width="1573" height="920" alt="Screenshot 2026-02-21 122633" src="https://github.com/user-attachments/assets/3f5ddeef-d2ad-449e-9964-4c8409b0dda4" />


-- <a href="https://github.com/Anusha2863/ecommerce-case-study/blob/main/04_business_insights.sql">Business_insights</a>

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


