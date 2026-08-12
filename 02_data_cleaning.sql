    SELECT COUNT(*) AS Total_records
    FROM global_ecommerce_sales;
    
    SELECT * FROM global_ecommerce_sales
    LIMIT 10;
    
    DESCRIBE global_ecommerce_sales;
    
SELECT Order_ID, COUNT(*) AS order_count
FROM global_ecommerce_sales
GROUP BY Order_ID
HAVING COUNT(*) > 1;

SELECT * FROM global_ecommerce_sales
WHERE Quantity <= 0;

SELECT * FROM global_ecommerce_sales
WHERE Unit_Price <0
OR Total_Sales < 0
OR Shipping_Cost < 0;

SELECT 
MIN(Discount_Percent) AS minimum_discount,
MAX(Discount_Percent) AS maximum_discount,
AVG(Discount_Percent) AS average_discount
FROM global_ecommerce_sales;

SELECT
    MIN(Order_Date) AS first_order,
    MAX(Order_Date) AS latest_orderglobal_ecommerce_sales
FROM global_ecommerce_sales;