# Task 4: Aggregate Functions and Grouping (SQL)

## 🎯 Objective
This task demonstrates the use of **aggregate functions** and **grouping operations** in SQL to analyze and summarize data from a `library` table containing book records.

---

## 📘 Table Structure

A table named `library` is used with the following columns:

| Column   | Description                      |
|----------|----------------------------------|
| BookID   | Primary key (Auto-incremented)   |
| Title    | Book title                       |
| Author   | Author name                      |
| Genre    | Book genre                       |
| Year     | Year of publication              |
| Copies   | Number of copies available       |

---

## 📥 Sample Data Inserted

A total of **5 records** were inserted into the `library` table. The data spans multiple genres including Fiction, Classic, Science, Autobiography, and Fantasy.

| BookID | Title                    | Author          | Genre         | Year | Copies |
|--------|--------------------------|------------------|---------------|------|--------|
| 1      | The Alchemist            | Paulo Coelho     | Fiction       | 1988 | 5      |
| 2      | To Kill a Mockingbird    | Harper Lee       | Classic       | 1960 | 3      |
| 3      | The Theory of Everything | Stephen Hawking  | Science       | 2002 | 4      |
| 4      | Wings of Fire            | Naveen           | Autobiography | 1999 | 2      |
| 5      | The Hobbit               | J.R.R. Tolkien   | Fantasy       | 1937 | 6      |

---

## 🧾 SQL Queries Used

| 🔎 Query Purpose                                | 🛠️ SQL Feature(s) Used                         |
|--------------------------------------------------|------------------------------------------------|
| Total number of copies in the library            | `SUM()`                                       |
| Number of books in each genre                    | `COUNT(*)`, `GROUP BY`                        |
| Average copies per genre                         | `AVG()`, `GROUP BY`                           |
| Total copies per author                          | `SUM()`, `GROUP BY`                           |
| Genres with more than 4 copies                   | `SUM()`, `GROUP BY`, `HAVING`                 |
| Books added per year (with copy totals)          | `COUNT(*)`, `SUM()`, `GROUP BY`              |

---

## 🧠 Concepts Covered

- **Aggregate Functions**:  
  `SUM()`, `AVG()`, `COUNT()`, `MAX()`

- **Grouping Data**:  
  Using `GROUP BY` to categorize records by `Genre`, `Author`, or `Year`

- **Filtering Grouped Results**:  
  Using `HAVING` to display only those groups that meet specific conditions

- **Multi-level Summary**:  
  Combining `COUNT()` and `SUM()` in grouped queries

---

## ✅ Summary

This task is an example of using SQL to summarize and analyze library data. It includes calculating totals, averages, counts, and filtering based on group results. These are core techniques used in **data reporting** and **dashboard backends**.

