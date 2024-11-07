-- Check for duplicate rides
SELECT ride_id, COUNT(*)
FROM full_year_rides
GROUP BY ride_id
HAVING COUNT(*) > 1;
-- Result: no duplicate ride_id rows

-- Check primary key 'ride_id' for null values
SELECT *
FROM full_year_rides
WHERE ride_id IS NULL;
-- Result: 0 rows

-- Check all columns for null values
SELECT *
FROM full_year_rides
WHERE 
	ride_id IS NULL OR 
	rideable_type IS NULL OR 
	started_at IS NULL OR 
	ended_at IS NULL OR 
	start_station_name IS NULL OR 
	start_station_id IS NULL OR 
	end_station_name IS NULL OR 
	end_station_id IS NULL OR
	start_lat IS NULL OR
	start_lng IS NULL OR
	end_lat IS NULL OR
	end_lng IS NULL OR
	member_casual IS NULL;
-- Result: 1388170 rows

-- Check that 'rideable_type' column contains the 3 bike types and doesn't have any additional misspelled entries
SELECT DISTINCT rideable_type
FROM full_year_rides
-- Result: classic_bike, docked_bike, electric_bike

-- Check that 'member_casual' column contains the 2 types and doesn't have any additional misspelled entries
SELECT DISTINCT member_casual
FROM full_year_rides
-- Result: casual, member

-- Check that all 'ride_id' values have the same length and doesn't contain extra spaces
SELECT LENGTH(ride_id) AS length_ride_id, COUNT(ride_id) AS num_rows
FROM full_year_rides
GROUP BY length_ride_id
-- Result: length_ride_id 16, num_rows 5719877
