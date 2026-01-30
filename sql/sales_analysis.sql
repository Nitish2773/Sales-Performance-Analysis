-- Total Sales and Profit
SELECT 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore_sales;

-- Monthly Sales Trend
SELECT 
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Monthly_Sales
FROM superstore_sales
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;

-- Top 10 Products by Sales
SELECT 
    Product_Name,
    SUM(Sales) AS Total_Sales
FROM superstore_sales
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Region-wise Sales
SELECT 
    Region,
    SUM(Sales) AS Total_Sales
FROM superstore_sales
GROUP BY Region;

-- Category-wise Performance
SELECT 
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore_sales
GROUP BY Category;