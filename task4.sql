
mysql> select * from library;
ERROR 1046 (3D000): No database selected
mysql> use library;
Database changed
mysql> select * from library;
+--------+--------------------------+-----------------+---------------+------+--------+
| BookID | Title                    | Author          | Genre         | Year | Copies |
+--------+--------------------------+-----------------+---------------+------+--------+
|      1 | The Alchemist            | Paulo Coelho    | Fiction       | 1988 |      5 |
|      2 | To Kill a Mockingbird    | Harper Lee      | Classic       | 1960 |      3 |
|      3 | The Theory of Everything | Stephen Hawking | Science       | 2002 |      4 |
|      4 | Wings of Fire            | Naveen          | Autobiography | 1999 |      2 |
|      5 | The Hobbit               | J.R.R. Tolkien  | Fantasy       | 1937 |      6 |
+--------+--------------------------+-----------------+---------------+------+--------+
5 rows in set (0.00 sec)

mysql> SELECT SUM(Copies) AS Total_Books FROM library;
+-------------+
| Total_Books |
+-------------+
|          20 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT Genre, COUNT(*) AS Book_Count
    -> FROM library
    -> GROUP BY Genre;
+---------------+------------+
| Genre         | Book_Count |
+---------------+------------+
| Fiction       |          1 |
| Classic       |          1 |
| Science       |          1 |
| Autobiography |          1 |
| Fantasy       |          1 |
+---------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT Genre, AVG(Copies) AS Avg_Copies
    -> FROM library
    -> GROUP BY Genre;
+---------------+------------+
| Genre         | Avg_Copies |
+---------------+------------+
| Fiction       |     5.0000 |
| Classic       |     3.0000 |
| Science       |     4.0000 |
| Autobiography |     2.0000 |
| Fantasy       |     6.0000 |
+---------------+------------+
5 rows in set (0.01 sec)

mysql> SELECT Author, SUM(Copies) AS Total_Copies
    -> FROM library
    -> GROUP BY Author;
+-----------------+--------------+
| Author          | Total_Copies |
+-----------------+--------------+
| Paulo Coelho    |            5 |
| Harper Lee      |            3 |
| Stephen Hawking |            4 |
| Naveen          |            2 |
| J.R.R. Tolkien  |            6 |
+-----------------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT Genre, SUM(Copies) AS Total_Copies
    -> FROM library
    -> GROUP BY Genre
    -> HAVING SUM(Copies) > 4;
+---------+--------------+
| Genre   | Total_Copies |
+---------+--------------+
| Fiction |            5 |
| Fantasy |            6 |
+---------+--------------+
2 rows in set (0.01 sec)

mysql> SELECT Year, COUNT(*) AS Books_Added, SUM(Copies) AS Total_Copies
    -> FROM library
    -> GROUP BY Year;
+------+-------------+--------------+
| Year | Books_Added | Total_Copies |
+------+-------------+--------------+
| 1988 |           1 |            5 |
| 1960 |           1 |            3 |
| 2002 |           1 |            4 |
| 1999 |           1 |            2 |
| 1937 |           1 |            6 |
+------+-------------+--------------+
5 rows in set (0.00 sec)
