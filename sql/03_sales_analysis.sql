SELECT SUM(Total_sales) AS total_revenue
FROM global_ecommerce_sales;

SELECT SUM(Profit) AS total_profit
FROM global_ecommerce_sales;

SELECT COUNT(DISTINCT Order_ID) AS total_order
FROM global_ecommerce_sales;

SELECT SUM(Quantity) AS total_quantity_sold
FROM global_ecommerce_sales;

SELECT SUM(total_sales) / COUNT(DISTINCT Order_ID) AS average_order_value
FROM global_ecommerce_sales;

SELECT Country, SUM(total_sales) AS total_profit
FROM global_ecommerce_sales
GROUP BY Country
ORDER BY total_profit DESC;

SELECT Product_Category, SUM(total_sales) AS total_revenue
FROM global_ecommerce_sales
GROUP BY Product_Category
ORDER BY total_revenue DESC;

SELECT Product_Category, SUM(Profit) AS total_profit
FROM global_ecommerce_sales
GROUP BY Product_Category
ORDER BY total_profit DESC;

SELECT Product_Name, SUM(total_sales) AS total_revenue
FROM global_ecommerce_sales
GROUP BY Product_Name
ORDER BY total_revenue DESC
LIMIT 10;

SELECT Customer_Name, SUM(total_sales) AS total_revenue
FROM global_ecommerce_sales
GROUP BY Customer_Name
ORDER BY total_revenue DESC
LIMIT 10;

SELECT Customer_Segment, SUM(total_sales) AS total_revenue
FROM global_ecommerce_sales
GROUP BY Customer_Segment
ORDER BY total_revenue DESC;

SELECT Region, SUM(total_sales) AS total_revenue
FROM global_ecommerce_sales
GROUP BY Region
ORDER BY total_revenue DESC;

SELECT Payment_Method, COUNT(DISTINCT Order_ID) AS total_orders,
        SUM(total_sales) AS total_revenue
FROM global_ecommerce_sales
GROUP BY Payment_Method
ORDER BY total_revenue DESC;

SELECT Discount_Percent, SUM(total_sales) AS total_revenue,
       SUM(profit) AS total_profit
FROM global_ecommerce_sales
GROUP BY Discount_Percent
ORDER BY Discount_Percent;

SELECT SUM(Shipping_Cost) AS total_shipping_cost,
        AVG(Shipping_Cost) AS average_shipping_cost
FROM global_ecommerce_sales;

SELECT Product_Name, SUM(Profit) AS total_profit
FROM global_ecommerce_sales
GROUP BY Product_Name
ORDER BY total_profit DESC
LIMIT 10;

SELECT Order_ID, Customer_Name, Total_Sales, Profit
FROM global_ecommerce_sales
ORDER BY Total_Sales DESC
LIMIT 10;


