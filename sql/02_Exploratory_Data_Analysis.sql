/*=========================================================
Question 1:
Which cities have the highest number of restaurants?
=========================================================*/

SELECT   City,
         COUNT(*) AS Restaurant_Count
FROM     Swiggy
GROUP BY City
ORDER BY Restaurant_Count DESC;


/*=========================================================
Question 2:
Which cities have the highest average restaurant ratings?
=========================================================*/

SELECT   City,
         COUNT(*) AS Restaurant_Count,
         ROUND(AVG(Avg_ratings), 2) AS Avg_Rating
FROM     Swiggy
GROUP BY City
ORDER BY Avg_Rating DESC;


/*=========================================================
Question 3:
What are the most common cuisine categories on the platform?
=========================================================*/

SELECT   TOP 20 Food_type,
                COUNT(*) AS Restaurant_Count
FROM     Swiggy
GROUP BY Food_type
ORDER BY Restaurant_Count DESC;


/*=========================================================
Question 4:
Do higher-priced restaurants receive better ratings?
=========================================================*/

SELECT   CASE WHEN Price < 200 THEN 'Low Price' WHEN Price BETWEEN 200 AND 400 THEN 'Medium Price' ELSE 'High Price' END AS Price_Category,
         COUNT(*) AS Restaurant_Count,
         ROUND(AVG(Avg_ratings), 2) AS Avg_Rating
FROM     Swiggy
WHERE    Price > 0
GROUP BY CASE WHEN Price < 200 THEN 'Low Price' WHEN Price BETWEEN 200 AND 400 THEN 'Medium Price' ELSE 'High Price' END
ORDER BY Avg_Rating DESC;

-- Price tier distribution — the medium dominance story

SELECT   CASE WHEN Price < 200 THEN 'Low' WHEN Price <= 400 THEN 'Medium' ELSE 'High' END AS tier,
         COUNT(*) AS cnt,
         ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 1) AS pct,
         ROUND(AVG(Avg_ratings), 2) AS avg_rating
FROM     Swiggy
WHERE    Price > 0
GROUP BY CASE WHEN Price < 200 THEN 'Low' WHEN Price <= 400 THEN 'Medium' ELSE 'High' END;


/*=========================================================
Question 5:
How does delivery time vary across cities and areas?
=========================================================*/
-- Query 1: Average Delivery Time by City

SELECT   City,
         ROUND(AVG(Delivery_time), 2) AS Avg_Delivery_Time
FROM     Swiggy
GROUP BY City
ORDER BY Avg_Delivery_Time;

-- Query 2: Delivery Time Distribution:

SELECT MIN(Delivery_time) AS Min_Time,
       MAX(Delivery_time) AS Max_Time,
       ROUND(AVG(Delivery_time), 2) AS Avg_Time
FROM   Swiggy;

-- Query 3: Areas with Slowest Delivery

SELECT   TOP 10 Area,
                ROUND(AVG(Delivery_time), 2) AS Avg_Delivery_Time
FROM     Swiggy
GROUP BY Area
ORDER BY Avg_Delivery_Time DESC;


/*=========================================================
Question 6:
Which restaurants consistently achieve high ratings?
=========================================================*/

WITH RatedRestaurants
AS (SELECT Restaurant,
           Food_type,
           City,
           ROUND(Avg_ratings, 2) AS Avg_ratings,
           Total_ratings
    FROM Swiggy
    WHERE Total_ratings >= 100)
SELECT TOP 20 *
FROM RatedRestaurants
ORDER BY Avg_ratings DESC, Total_ratings DESC;

-- Specialty category outperformance:

SELECT   Food_type,
         COUNT(*) AS top_count
FROM(SELECT   TOP 20 Food_type
          FROM     Swiggy
          WHERE    Total_ratings >= 100
          ORDER BY Avg_ratings DESC, Total_ratings DESC) AS t
GROUP BY Food_type
ORDER BY top_count DESC;


/*=========================================================
Question 7:
What Factors Appear to Influence Customer Satisfaction?
=========================================================*/

-- Delivery Time vs Ratings

SELECT   CASE WHEN Delivery_time < 40 THEN 'Fast' WHEN Delivery_time BETWEEN 40 AND 60 THEN 'Medium' ELSE 'Slow' END AS Delivery_Category,
         COUNT(*) AS Restaurant_Count,
         ROUND(AVG(Avg_ratings), 2) AS Avg_Rating
FROM     Swiggy
GROUP BY CASE WHEN Delivery_time < 40 THEN 'Fast' WHEN Delivery_time BETWEEN 40 AND 60 THEN 'Medium' ELSE 'Slow' END
ORDER BY Avg_Rating DESC;

