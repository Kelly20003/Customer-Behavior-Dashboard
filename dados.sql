SELECT 
    "Subscription Status", 
    COUNT("Customer ID") AS "Total Customer",
    ROUND(AVG("Purchase Amount (USD)"), 2) AS "Avg Spend",
    ROUND(SUM("Purchase Amount (USD)"), 2) AS "Total Revenue"
FROM customer_behavior
GROUP BY "Subscription Status"
ORDER BY "Total Revenue" DESC, "Avg Spend" DESC;

SELECT 
    "Item Purchased",
    ROUND(SUM(CASE WHEN "Discount Applied" = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS "Discount Rate"
FROM customer_behavior
GROUP BY "Item Purchased"
ORDER BY "Discount Rate" DESC
LIMIT 5;

WITH Customer_Type AS (
    SELECT 
        CASE 
            WHEN "Previous Purchases" = 1 THEN 'New'
            WHEN "Previous Purchases" BETWEEN 2 AND 10 THEN 'Returning'
            ELSE 'Loyal'
        END AS "Customer Segment"
    FROM customer_behavior
)
SELECT 
    "Customer Segment", 
    COUNT(*) AS "Number of Customers"
FROM customer_type
GROUP BY "Customer Segment"
ORDER BY "Number of Customers" DESC;

WITH Item_Counts AS (
    SELECT 
        "Category",
        "Item Purchased",
        COUNT("Customer ID") AS "Total_Orders",
        ROW_NUMBER() OVER(PARTITION BY "Category" ORDER BY COUNT("Customer ID") DESC) AS "Item_Rank"
    FROM customer_behavior
    GROUP BY "Category", "Item Purchased"
)
SELECT 
    "Item_Rank", 
    "Category", 
    "Item Purchased", 
    "Total_Orders"
FROM Item_Counts
WHERE "Item_Rank" <= 3;

SELECT 
    "Subscription Status", 
    COUNT("Customer ID") AS "Repeat_Buyers"
FROM customer_behavior
WHERE "Previous Purchases" > 5
GROUP BY "Subscription Status";

SELECT 
    age_group, 
    SUM("Purchase Amount (USD)") AS Total_Revenue
FROM customer_behavior
GROUP BY age_group
ORDER BY Total_Revenue DESC;
