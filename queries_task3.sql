USE task3_sql;

SELECT COUNT(*) AS total_rows
FROM superstore;
SELECT *
FROM superstore
WHERE Category = 'Technology'
ORDER BY Sales DESC;
SELECT *
FROM superstore
WHERE Profit > 100
ORDER BY Profit DESC;
SELECT Category,
       SUM(Sales) AS total_sales,
       SUM(Profit) AS total_profit
FROM superstore
GROUP BY Category;
DESCRIBE superstore;

SHOW COLUMNS FROM superstore;
SELECT *
FROM superstore
WHERE `Customer Name` LIKE 'A%'
LIMIT 1000;
SELECT Category,
       SUM(Sales) AS total_sales,
       SUM(Profit) AS total_profit
FROM superstore
GROUP BY Category;
SELECT Category, SUM(CAST(Sales AS DECIMAL(10,2)))
AS total_sales
FROM superstore
GROUP BY Category
HAVING SUM(CAST(Sales AS DECIMAL(10,2))) > 2000;
SELECT `Customer Name`, SUM(Sales) AS
total_sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY total_sales DESC
LIMIT 5;
SELECT *
FROM superstore
WHERE STR_TO_DATE(`Order Date`, '%m/%d/%Y')
BETWEEN '2017-01-01' AND '2017-12-31';
SELECT 
    Region,
    SUM(CAST(Sales AS DECIMAL(10,2))) AS total_sales,
    SUM(CAST(Profit AS DECIMAL(10,2))) AS total_profit,
    COUNT(*) AS total_orders
FROM superstore
GROUP BY Region
ORDER BY total_sales DESC;
SELECT 
    Segment,
    SUM(CAST(Sales AS DECIMAL(10,2))) AS total_sales,
    AVG(CAST(Profit AS DECIMAL(10,2))) AS avg_profit,
    COUNT(*) AS total_orders
FROM superstore
GROUP BY Segment
ORDER BY total_sales DESC;
SELECT 
    Region,
    Category,
    SUM(CAST(Sales AS DECIMAL(10,2))) AS total_sales
FROM superstore
GROUP BY Region, Category
ORDER BY Region, total_sales DESC;


