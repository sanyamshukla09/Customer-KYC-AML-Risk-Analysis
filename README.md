# Customer-KYC-AML-Risk-Analysis

## 📌 Project Overview

This project simulates a **Know Your Customer (KYC)** and **Anti-Money Laundering (AML)** compliance environment using realistic synthetic data. It demonstrates how SQL can be used to analyze customer information, validate KYC records, identify AML risk indicators, and generate compliance insights.

The project was created as a portfolio project to strengthen practical skills in SQL, data analysis, customer due diligence, and compliance reporting.

---

# 🎯 Business Objective

The objective of this project is to analyze customer KYC and AML data to support compliance monitoring by identifying:

- Customers with Pending KYC
- Expired KYC Documents
- High-Risk Customers
- Politically Exposed Persons (PEPs)
- Sanction Matches
- Customers requiring Enhanced Due Diligence (EDD)
- High-Value Transactions
- Customer Risk Distribution

---

# 🛠️ Technologies Used

- MySQL
- SQL
- Microsoft Excel

---

# 📂 Dataset

The project uses four synthetic datasets:

| Dataset | Description |
|----------|-------------|
| Customer_Master | Customer demographic and account information |
| KYC_Documents | KYC verification status and document expiry |
| AML_Risk | AML risk indicators including PEP, sanctions, and risk score |
| Transactions | Customer transaction history |

> **Note:** The data is synthetic and created solely for learning and portfolio purposes.

---

# 🗄️ Database Structure

The project consists of four related tables:

- Customer_Master
- KYC_Documents
- AML_Risk
- Transactions

Primary and foreign key relationships are used to connect customer information across all tables.

---

# 📊 Business Questions

The SQL analysis answers the following business questions:

1. Total Customers
2. KYC Status Summary
3. Pending KYC Cases
4. Expired KYC Documents
5. High-Risk Customers
6. PEP Customers
7. Sanctions Matches
8. High-Risk Country Customers
9. High-Value Transactions
10. Top Customers by Transaction Amount
11. Country-wise Customer Distribution
12. Risk Level Distribution
13. Occupation-wise Risk Analysis
14. Average Transaction Amount
15. Customers Requiring Enhanced Due Diligence (EDD)

---

# 💡 Key Business Insights

- Identified customers with incomplete KYC records.
- Detected expired KYC documents requiring renewal.
- Highlighted customers with elevated AML risk scores.
- Identified Politically Exposed Persons (PEPs) and sanctions matches.
- Detected customers requiring Enhanced Due Diligence.
- Analyzed customer transaction patterns to support compliance monitoring.

---

# 📁 Project Structure

Customer-KYC-AML-Risk-Analysis/

├── Dataset/

│ └── KYC_AML_Basic_Project_Dataset.xlsx

├── SQL/

│ ├── Database.sql

│ ├── Business_Queries.sql

├── Documentation/

│ ├── KYC_AML_Insight_Report.docx

│ ├── Presentation.pptx

├── Images/

│ └── SQL Query Output Screenshots

└── README.md

---

# 📈 Skills Demonstrated

- SQL Query Writing
- Joins
- Aggregations
- Data Validation
- Customer Due Diligence (CDD)
- AML Risk Assessment
- Compliance Analytics
- Data Cleaning
- Business Analysis
- Microsoft Excel

---

# 🚀 Learning Outcomes

Through this project, I gained practical experience in:

- Designing a relational database
- Writing SQL queries for compliance analysis
- Performing customer risk assessment
- Identifying KYC and AML exceptions
- Interpreting SQL results to generate business insights
- Organizing an analytics project for portfolio presentation

---

# 📷 Sample Outputs

Add screenshots of your SQL query results in the **Images** folder and reference them here.

Example:

- Pending KYC Query Output
- High-Risk Customers Query Output
- Country-wise Customer Distribution
- Risk Level Summary

---

# 📌 Future Improvements

- Automate data generation with Python
- Expand the dataset with additional compliance scenarios
- Add transaction anomaly detection
- Integrate dashboard visualizations
- Implement advanced AML risk scoring

---

**Sanyam Shukla**

- B.Sc. Computer Science
- Aspiring Data Analyst & KYC/AML Analyst
