\# Task 3 – SQL Basics (Filtering, Sorting, Aggregations)



\## Dataset

Superstore dataset imported into MySQL.



\## Queries Performed



1\. View table structure

SHOW COLUMNS FROM superstore;



2\. Basic selection

SELECT \* FROM superstore LIMIT 5;



3\. Filtering using WHERE

SELECT \* FROM superstore WHERE Category = 'Technology';



4\. Pattern search using LIKE

SELECT \* FROM superstore WHERE `Customer Name` LIKE 'A%';



5\. Sorting using ORDER BY

SELECT \* FROM superstore ORDER BY Sales DESC;



6\. Aggregation by category

SELECT Category, SUM(CAST(Sales AS DECIMAL(10,2))) AS total\_sales

FROM superstore

GROUP BY Category;



7\. HAVING clause

SELECT Category, SUM(CAST(Sales AS DECIMAL(10,2))) AS total\_sales

FROM superstore

GROUP BY Category

HAVING total\_sales > 2000;



8\. Date range using BETWEEN

SELECT \* FROM superstore

WHERE STR\_TO\_DATE(`Order Date`, '%m/%d/%Y')

BETWEEN '2017-01-01' AND '2017-12-31';



9\.HAVING

SELECT Category, SUM(CAST(Sales AS DECIMAL(10,2))) AS total\_sales

FROM superstore

GROUP BY Category

HAVING total\_sales > 2000;



10\.SELECT Region, SUM(CAST(Sales AS DECIMAL(10,2))) AS total\_sales

FROM superstore

GROUP BY Region;



11\.SELECT Segment, SUM(CAST(Sales AS DECIMAL(10,2))) AS total\_sales

FROM superstore

GROUP BY Segment;



\## Output

Exported sales summary to CSV file.

