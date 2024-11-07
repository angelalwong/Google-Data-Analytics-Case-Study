-- Check each column for null values
SELECT *
FROM full_year_rides
WHERE ride_id IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides
WHERE rideable_type IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides
WHERE started_at IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides
WHERE ended_at IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides
WHERE start_station_name IS NULL;
-- Result: 875716 rows

SELECT *
FROM full_year_rides
WHERE start_station_id IS NULL;
-- Result: 875848 rows

SELECT *
FROM full_year_rides
WHERE end_station_name IS NULL;
-- Result: 929202 rows

SELECT *
FROM full_year_rides
WHERE end_station_id IS NULL;
-- Result: 929343 rows

SELECT *
FROM full_year_rides
WHERE start_lat IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides
WHERE start_lng IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides
WHERE end_lat IS NULL;
-- Result: 6990 rows

SELECT *
FROM full_year_rides
WHERE end_lng IS NULL;
-- Result: 6990 rows

SELECT *
FROM full_year_rides
WHERE member_casual IS NULL;
-- Result: 0 rows