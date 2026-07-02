CREATE DATABASE kyc_aml_project;
USE kyc_aml_project;
CREATE TABLE Customer_Master (
    Customer_ID VARCHAR(10) PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Country VARCHAR(50),
    Occupation VARCHAR(100),
    Annual_Income DECIMAL(12,2),
    Customer_Type VARCHAR(20),
    Account_Open_Date DATE
);
CREATE TABLE KYC_Documents (
    Customer_ID VARCHAR(10),
    PAN_Status VARCHAR(20),
    Aadhaar_Status VARCHAR(20),
    Passport_Status VARCHAR(20),
    Address_Proof VARCHAR(20),
    KYC_Status VARCHAR(20),
    Expiry_Date DATE,
    FOREIGN KEY (Customer_ID)
        REFERENCES Customer_Master(Customer_ID)
);
CREATE TABLE AML_Risk (
    Customer_ID VARCHAR(10),
    PEP VARCHAR(10),
    Sanction_Match VARCHAR(10),
    High_Risk_Country VARCHAR(10),
    Suspicious_Transaction VARCHAR(10),
    Risk_Score INT,
    Risk_Level VARCHAR(20),
    FOREIGN KEY (Customer_ID)
        REFERENCES Customer_Master(Customer_ID)
);
CREATE TABLE Transactions (
    Transaction_ID VARCHAR(10) PRIMARY KEY,
    Customer_ID VARCHAR(10),
    Date DATE,
    Amount DECIMAL(12,2),
    Transaction_Type VARCHAR(50),
    Country VARCHAR(50),
    FOREIGN KEY (Customer_ID)
        REFERENCES Customer_Master(Customer_ID)
);
SELECT * FROM Customer_Master;
SELECT * FROM Customer_Master LIMIT 10;
SELECT
    c.Customer_ID,
    c.Customer_Name,
    k.KYC_Status,
    a.Risk_Level
FROM Customer_Master c
JOIN KYC_Documents k
    ON c.Customer_ID = k.Customer_ID
JOIN AML_Risk a
    ON c.Customer_ID = a.Customer_ID
LIMIT 10;
SELECT
    KYC_Status,
    COUNT(*) AS Customers
FROM KYC_Documents
GROUP BY KYC_Status;

SELECT
    c.Customer_ID,
    c.Customer_Name,
    k.KYC_Status
FROM Customer_Master c
JOIN KYC_Documents k
ON c.Customer_ID = k.Customer_ID
WHERE k.KYC_Status = 'Pending';

SELECT COUNT(*) AS Total_Customers
FROM Customer_Master;
SELECT
    c.Customer_ID,
    c.Customer_Name,
    k.Expiry_Date
FROM Customer_Master c
JOIN KYC_Documents k
ON c.Customer_ID = k.Customer_ID
WHERE k.Expiry_Date < CURDATE();
SELECT
    c.Customer_ID,
    c.Customer_Name,
    a.Risk_Level,
    a.Risk_Score
FROM Customer_Master c
JOIN AML_Risk a
ON c.Customer_ID = a.Customer_ID
WHERE a.Risk_Level = 'High'
ORDER BY a.Risk_Score DESC;
SELECT
    c.Customer_ID,
    c.Customer_Name,
    a.PEP
FROM Customer_Master c
JOIN AML_Risk a
ON c.Customer_ID = a.Customer_ID
WHERE a.PEP = 'Yes';
SELECT
    c.Customer_ID,
    c.Customer_Name
FROM Customer_Master c
JOIN AML_Risk a
ON c.Customer_ID = a.Customer_ID
WHERE a.Sanction_Match = 'Yes';
SELECT
    c.Customer_ID,
    c.Customer_Name,
    c.Country
FROM Customer_Master c
JOIN AML_Risk a
ON c.Customer_ID = a.Customer_ID
WHERE a.High_Risk_Country = 'Yes';
SELECT
    c.Customer_ID,
    c.Customer_Name,
    c.Country
FROM Customer_Master c
JOIN AML_Risk a
ON c.Customer_ID = a.Customer_ID
WHERE a.High_Risk_Country = 'Yes';
SELECT
    Transaction_ID,
    Customer_ID,
    Amount
FROM Transactions
WHERE Amount > 200000
ORDER BY Amount DESC;
SELECT
    Customer_ID,
    SUM(Amount) AS Total_Amount
FROM Transactions
GROUP BY Customer_ID
ORDER BY Total_Amount DESC
LIMIT 10;
SELECT
    Country,
    COUNT(*) AS Customers
FROM Customer_Master
GROUP BY Country
ORDER BY Customers DESC;
SELECT
    Risk_Level,
    COUNT(*) AS Customers
FROM AML_Risk
GROUP BY Risk_Level;
SELECT
    c.Occupation,
    a.Risk_Level,
    COUNT(*) AS Customers
FROM Customer_Master c
JOIN AML_Risk a
ON c.Customer_ID = a.Customer_ID
GROUP BY c.Occupation, a.Risk_Level
ORDER BY c.Occupation;
SELECT
    Customer_ID,
    AVG(Amount) AS Average_Transaction
FROM Transactions
GROUP BY Customer_ID
ORDER BY Average_Transaction DESC;
SELECT
    Customer_ID,
    AVG(Amount) AS Average_Transaction
FROM Transactions
GROUP BY Customer_ID
ORDER BY Average_Transaction DESC;
SELECT
    c.Customer_ID,
    c.Customer_Name,
    a.Risk_Level,
    a.PEP,
    a.Sanction_Match
FROM Customer_Master c
JOIN AML_Risk a
ON c.Customer_ID = a.Customer_ID
WHERE a.Risk_Level = 'High'
   OR a.PEP = 'Yes'
   OR a.Sanction_Match = 'Yes';