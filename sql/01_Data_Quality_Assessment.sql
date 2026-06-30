-- Data Type Check

SELECT COLUMN_NAME,
       DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS;

-- Null Value Check

SELECT COUNT(*) - COUNT(ID) AS ID_Nulls,
       COUNT(*) - COUNT(Area) AS Area_Nulls,
       COUNT(*) - COUNT(City) AS City_Nulls,
       COUNT(*) - COUNT(Restaurant) AS Restaurant_Nulls,
       COUNT(*) - COUNT(Price) AS Price_Nulls,
       COUNT(*) - COUNT(Avg_ratings) AS Avg_ratings_Nulls,
       COUNT(*) - COUNT(Total_ratings) AS Total_ratings_Nulls,
       COUNT(*) - COUNT(Food_type) AS Food_type_Nulls,
       COUNT(*) - COUNT(Address) AS Address_Nulls,
       COUNT(*) - COUNT(Delivery_time) AS Delivery_time_Nulls
FROM swiggy;

-- Blank Value Check

SELECT
    SUM(CASE WHEN TRIM(Area) = '' THEN 1 ELSE 0 END) AS Area_Blanks,
    SUM(CASE WHEN TRIM(City) = '' THEN 1 ELSE 0 END) AS City_Blanks,
    SUM(CASE WHEN TRIM(Restaurant) = '' THEN 1 ELSE 0 END) AS Restaurant_Blanks,
    SUM(CASE WHEN TRIM(Food_type) = '' THEN 1 ELSE 0 END) AS Food_type_Blanks,
    SUM(CASE WHEN TRIM(Address) = '' THEN 1 ELSE 0 END) AS Address_Blanks
FROM swiggy;


-- Price = 0 Investigation

SELECT *
FROM swiggy
WHERE Price = 0;

-- Percentage of records with a price of 0 :


SELECT
cast(round((count(*) * 100.0) /(SELECT count(*) FROM swiggy), 2) as decimal(10,2)) AS Percentage_Zero_Price
FROM swiggy
WHERE Price = 0;

-- Duplicate ID Check

SELECT
    ID,
    COUNT(*)
FROM swiggy
GROUP BY ID
HAVING COUNT(*) > 1;

-- Exact Duplicate Check

SELECT
    Area,
    City,
    Restaurant,
    Price,
    Avg_ratings,
    Total_ratings,
    Food_type,
    Address,
    Delivery_time,
    COUNT(*)
FROM swiggy
GROUP BY
    Area,
    City,
    Restaurant,
    Price,
    Avg_ratings,
    Total_ratings,
    Food_type,
    Address,
    Delivery_time
HAVING COUNT(*) > 1;








