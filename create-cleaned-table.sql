-- Create new duplicate table where all rows with null values are removed
CREATE TABLE full_year_rides_cleaned AS
SELECT * FROM full_year_rides
WHERE 
	start_station_name IS NOT NULL AND
	start_station_id IS NOT NULL AND
	end_station_name IS NOT NULL AND
	end_station_id IS NOT NULL AND
	end_lat IS NOT NULL AND
	end_lng IS NOT NULL
-- Result: 4331707 rows

-- Run same queries for find-null-values.sql using new full_year_rides_cleaned table. All results show 0 rows. Rows with null values have been successfully removed.
SELECT *
FROM full_year_rides_cleaned
WHERE ride_id IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides_cleaned
WHERE rideable_type IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides_cleaned
WHERE started_at IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides_cleaned
WHERE ended_at IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides_cleaned
WHERE start_station_name IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides_cleaned
WHERE start_station_id IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides_cleaned
WHERE end_station_name IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides_cleaned
WHERE end_station_id IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides_cleaned
WHERE start_lat IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides_cleaned
WHERE start_lng IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides_cleaned
WHERE end_lat IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides_cleaned
WHERE end_lng IS NULL;
-- Result: 0 rows

SELECT *
FROM full_year_rides_cleaned
WHERE member_casual IS NULL;
-- Result: 0 rows

-- Set ride_id as primary key
ALTER TABLE full_year_rides_cleaned
ADD PRIMARY KEY (ride_id); 
