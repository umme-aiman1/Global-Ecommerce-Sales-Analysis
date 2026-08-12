--  1. PROFIT MARGIN BY PRODUCT CATEGORY
 SELECT
    Product_Category,
    SUM(Total_Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Total_Sales)) * 100, 2) AS Profit_Margin_Percent
FROM global_ecommerce_sales
GROUP BY Product_Category
ORDER BY Profit_Margin_Percent DESC;

-- 2. HIGH-SALES BUT LOW-PROFIT PRODUCTS
SELECT
    Product_Name,
    SUM(Total_Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM global_ecommerce_sales
GROUP BY Product_Name
HAVING SUM(Total_Sales) > (
    SELECT AVG(Total_Sales)
    FROM global_ecommerce_sales
)
ORDER BY Total_Profit ASC
LIMIT 10;

--  3. CUSTOMER SEGMENT PERFORMANCE
SELECT
    Customer_Segment,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Total_Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM global_ecommerce_sales
GROUP BY Customer_Segment
ORDER BY Total_Sales DESC;

--  4. DISCOUNT VS PROFIT
SELECT
    Discount_Percent,
    SUM(Total_Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(AVG(Profit), 2) AS Average_Profit
FROM global_ecommerce_sales
GROUP BY Discount_Percent
ORDER BY Discount_Percent;

--  5. REGIONAL PERFORMANCE
SELECT
    Region,
    SUM(Total_Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Total_Sales)) * 100, 2) AS Profit_Margin_Percent
FROM global_ecommerce_sales
GROUP BY Region
ORDER BY Total_Profit DESC;

-- 6. TOP 10 MOST VALUABLE CUSTOMERS
SELECT
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Total_Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM global_ecommerce_sales
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 7. PAYMENT METHOD PERFORMANCE
SELECT
    Payment_Method,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Total_Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM global_ecommerce_sales
GROUP BY Payment_Method
ORDER BY Total_Sales DESC;

-- 8. PRODUCT PERFORMANCE
SELECT
    Product_Name,
    SUM(Quantity) AS Units_Sold,
    SUM(Total_Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM global_ecommerce_sales
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;

-- 9. TOP COUNTRIES BY PROFIT
SELECT
    Country,
    SUM(Total_Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Total_Sales)) * 100, 2) AS Profit_Margin_Percent
FROM global_ecommerce_sales
GROUP BY Country
ORDER BY Total_Profit DESC
LIMIT 10;

-- 10. SHIPPING COST ANALYSIS
SELECT
    Product_Category,
    SUM(Shipping_Cost) AS Total_Shipping_Cost,
    SUM(Total_Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM global_ecommerce_sales
GROUP BY Product_Category
ORDER BY Total_Shipping_Cost DESC;







