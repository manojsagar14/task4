# 📚 Library Database (MySQL)

This README contains a full MySQL session working with a `library` database. It demonstrates selecting the database, viewing records, and using SQL aggregate functions like `SUM()`, `AVG()`, `COUNT()`, `GROUP BY`, and `HAVING`.

---

## 🏁 Step 1: Select the Database

```sql
mysql> SELECT * FROM library;
ERROR 1046 (3D000): No database selected

mysql> USE library;
Database changed
