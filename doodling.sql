select *
from retail_data
;

SELECT Customer_ID, Name, SUM(Total_Amount) AS Total_Spent
FROM retail_data
GROUP BY Customer_ID, Name
ORDER BY Total_Spent DESC;

SELECT Customer_ID, SUM(Total_Amount) AS Total_Spent
FROM retail_data
GROUP BY Customer_ID
ORDER BY Total_Spent DESC
LIMIT 5;


SELECT Customer_ID, Product_Type, Product_Category, Amount, Date, Total_Purchases
FROM retail_data
WHERE Customer_ID IN (45413, 68378, 54456, 19114, 35092)
ORDER BY Date DESC;





SELECT Product_Type, COUNT(*) AS Frequency
FROM retail_data
GROUP BY Product_Type
ORDER BY Frequency DESC;

SELECT Product_Category, ROUND(SUM(Total_Amount), 2) AS Total_Revenue
FROM retail_data
GROUP BY Product_Category
ORDER BY Total_Revenue DESC;


SELECT
  CASE
    WHEN Age BETWEEN 18 AND 25 THEN '18-25'
    WHEN Age BETWEEN 26 AND 35 THEN '26-35'
    WHEN Age BETWEEN 36 AND 45 THEN '36-45'
    WHEN Age BETWEEN 46 AND 55 THEN '46-55'
    WHEN Age >= 56 THEN '56+'
    ELSE 'Under 18'
  END AS Age_Group,
  ROUND(SUM(Total_Amount), 2) AS Total_Spent
FROM retail_data
GROUP BY Age_Group
ORDER BY Total_Spent DESC;

select distinct country
from retail_data;

SELECT Country, ROUND(SUM(Total_Amount), 2) AS Total_Revenue
FROM retail_data
GROUP BY Country
ORDER BY Total_Revenue DESC;


SELECT Customer_ID, 
       MIN(Last_Purchase_Date) AS First_Purchase,
       MAX(Last_Purchase_Date) AS Latest_Purchase,
       DATEDIFF(MAX(Last_Purchase_Date), MIN(Last_Purchase_Date)) AS Days_Between,
       COUNT(*) AS Total_Purchases
FROM retail_data
GROUP BY Customer_ID
ORDER BY Days_Between DESC;



SELECT Customer_ID,
       MIN(Date) AS First_Purchase,
       MAX(Date) AS Latest_Purchase,
       DATEDIFF(MAX(Date), MIN(Date)) AS Days_Between,
       COUNT(*) AS Total_Purchases
FROM retail_data
GROUP BY Customer_ID
ORDER BY Days_Between DESC;








