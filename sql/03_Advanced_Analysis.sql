/*=========================================================
Question 1:
City Level Performance Analysis
=========================================================*/

WITH CityPerformance AS
(
    SELECT
        City,
        COUNT(*) AS Total_Restaurants,
        ROUND(AVG(Price),2) AS Avg_Price,
        ROUND(AVG(Avg_ratings),2) AS Avg_Rating,
        SUM(Total_ratings) AS Total_Customer_Ratings,
        ROUND(AVG(Delivery_time),2) AS Avg_Delivery_Time
    FROM Swiggy
    WHERE Price > 0
    GROUP BY City
)

SELECT *,
       RANK() OVER
(
           ORDER BY Avg_Rating DESC
       ) AS City_Rank
FROM CityPerformance;


/*=========================================================
Question 2:
Top-Performing Restaurants Within Each City
=========================================================*/

WITH RankedRestaurants AS
(
    SELECT
        City,
        Restaurant,
        Avg_ratings,
        Total_ratings,
        ROW_NUMBER() OVER
(
            PARTITION BY City
            ORDER BY Avg_ratings DESC,
                     Total_ratings DESC
        ) AS rn
    FROM Swiggy
    WHERE Total_ratings >= 100
)

SELECT *
FROM RankedRestaurants
WHERE rn <= 5;

/*=========================================================
Question 3:
Statistical Distribution
=========================================================*/
-- Price Distribution:

SELECT
    MIN(Price) AS Min_Price,
    MAX(Price) AS Max_Price,
    ROUND(AVG(Price),2) AS Avg_Price,
    ROUND(STDEV(Price),2) AS Std_Dev_Price
FROM Swiggy
WHERE Price > 0;

-- Rating Distribution:

SELECT
    MIN(Avg_ratings) AS Min_Rating,
    MAX(Avg_ratings) AS Max_Rating,
    ROUND(AVG(Avg_ratings),2) AS Avg_Rating,
    ROUND(STDEV(Avg_ratings),2) AS Std_Dev_Rating
FROM Swiggy;

-- Delivery Time Distribution:

SELECT
    MIN(Delivery_time) AS Min_Delivery,
    MAX(Delivery_time) AS Max_Delivery,
    ROUND(AVG(Delivery_time),2) AS Avg_Delivery,
    ROUND(STDEV(Delivery_time),2) AS Std_Dev_Delivery
FROM Swiggy;

-- Median Price:

SELECT DISTINCT
    PERCENTILE_CONT(0.5)
    WITHIN GROUP(ORDER BY Price)
    OVER() AS Median_Price
FROM Swiggy
WHERE Price > 0;

-- Median Rating:

SELECT DISTINCT
    PERCENTILE_CONT(0.5)
    WITHIN GROUP(ORDER BY Avg_ratings)
    OVER() AS Median_Rating
FROM Swiggy;

-- Median Delivery Time:

SELECT DISTINCT
    PERCENTILE_CONT(0.5)
    WITHIN GROUP(ORDER BY Delivery_time)
    OVER() AS Median_Delivery_Time
FROM Swiggy;