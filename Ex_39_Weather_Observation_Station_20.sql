/*
A median is defined as a number separating the higher half of
 a data set from the lower half. Query the median of the Northern
 Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.
*/

SELECT round(S.LAT_N,4) mediam
FROM STATION S
WHERE (SELECT COUNT(Lat_N) FROM STATION WHERE Lat_N < S.LAT_N ) =
    (SELECT COUNT(Lat_N) FROM STATION WHERE Lat_N > S.LAT_N)