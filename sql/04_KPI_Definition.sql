-- 1. Customer Satisfaction KPIs
-- Average Rating

SELECT ROUND(AVG(Avg_ratings), 2) AS Avg_Rating
FROM   Swiggy;

-- High Rated Restaurants

SELECT COUNT(*) AS High_Rated_Restaurants
FROM   Swiggy
WHERE  Avg_ratings >= 4.5;


-- 2. Operational KPIs:
-- Average Delivery Time

SELECT ROUND(AVG(Delivery_time), 2) AS Avg_Delivery_Time
FROM   Swiggy;

-- Fast Delivery Percentage

SELECT Concat(CAST(COUNT(CASE WHEN Delivery_time < 40 THEN 1 END) * 100.0 / COUNT(*) AS DECIMAL(10, 2)), ' %') AS Fast_Delivery_Percentage
FROM   Swiggy;


-- 3. Marketplace KPIs:
-- Total Restaurants

SELECT COUNT(*) AS Total_Restaurants
FROM   Swiggy;

-- Total Cities

SELECT COUNT(DISTINCT City) AS Total_Cities
FROM   Swiggy;

-- Average Price:

SELECT ROUND(AVG(Price), 2) AS Avg_Price
FROM   Swiggy
WHERE  Price > 0;