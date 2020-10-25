/*
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in
TATION that is less than 137.2345. Round your answer to4 decimal places.
*/

SELECT ROUND(LONG_W, 4 )
FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);