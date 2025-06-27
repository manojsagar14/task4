# 📘 Library Database - MySQL Project

This project demonstrates a simple **Library Management System** using MySQL. It includes creation of a table, insertion of sample data, and execution of various **aggregate queries** such as `SUM()`, `AVG()`, `COUNT()`, `GROUP BY`, and `HAVING`.

---

## 🗄️ Table Structure

**Database Name:** `library`  
**Table Name:** `library`

```sql
CREATE DATABASE library;
USE library;

CREATE TABLE library (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Year INT,
    Copies INT
);
