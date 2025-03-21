CREATE DATABASE bikeshares;
USE bikeshares;

-- Appending the two years data
WITH cte AS (
SELECT * FROM bike_share_yr_0
UNION ALL
SELECT * FROM bike_share_yr_1)



SELECT dteday,season,ct.yr,hr,weekday,rider_type,riders,price,COGS,riders * price AS revenue, (riders * price) - (riders *COGS) AS profit
FROM cte c
LEFT JOIN cost_table ct ON c.yr =ct.yr;



