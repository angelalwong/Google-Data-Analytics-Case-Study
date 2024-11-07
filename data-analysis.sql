-- Calculate the mean of ride_length
SELECT ROUND(AVG(ride_length_minutes), 2) AS "Average Ride Length"
FROM full_year_rides_cleaned

-- Calculate the max ride_length
SELECT MAX(ride_length_minutes) AS "Maximum Ride Length"
FROM full_year_rides_cleaned

-- Calculate the mode of day_of_week
SELECT 
    CASE 
        WHEN day_of_week = 1 THEN 'Sunday'
        WHEN day_of_week = 2 THEN 'Monday'
        WHEN day_of_week = 3 THEN 'Tuesday'
        WHEN day_of_week = 4 THEN 'Wednesday'
        WHEN day_of_week = 5 THEN 'Thursday'
        WHEN day_of_week = 6 THEN 'Friday'
        WHEN day_of_week = 7 THEN 'Saturday' 
        ELSE 'Unknown'
    END AS "Weekday",
    COUNT(*) AS "Mode of Weekday"
FROM 
    (SELECT day_of_week FROM full_year_rides_cleaned) AS subquery
GROUP BY 
    day_of_week
ORDER BY 
    "Mode of Weekday" DESC;

-- To be used in Tableau data visualizationss
-- Calculate the total number of rides by rider type
SELECT member_casual AS "Rider Type", COUNT(*) AS "Total Rides"
FROM full_year_rides_cleaned
GROUP BY member_casual

-- Calculate the average ride_length for members and casual riders
SELECT member_casual AS "Rider Type", ROUND(AVG(ride_length_minutes), 2) AS "Average Ride Length"
FROM full_year_rides_cleaned
GROUP BY member_casual

-- Calculate the total number of rides for users by day_of_week
SELECT day_of_week AS "Weekday", member_casual AS "Rider Type", COUNT(ride_id) AS "Total Rides"
FROM full_year_rides_cleaned
GROUP BY day_of_week, member_casual

-- Calculate the average ride_length for users by day_of_week
SELECT day_of_week AS "Weekday", member_casual AS "Rider Type", ROUND(AVG(ride_length_minutes), 2) AS "Average Ride Length (in minutes)"
FROM full_year_rides_cleaned
GROUP BY day_of_week, member_casual

-- Calculate the number of rides for users by month
SELECT 
    EXTRACT(MONTH FROM started_at) AS "Month",
	member_casual AS "Rider Type",
    COUNT(ride_id) AS "Total Rides"
FROM 
    full_year_rides_cleaned
GROUP BY 
    EXTRACT(MONTH FROM started_at), member_casual
ORDER BY 
    "Month";

-- Calculate the average ride length for users by month
SELECT 
    EXTRACT(MONTH FROM started_at) AS "Month",
	member_casual AS "Rider Type",
    ROUND(AVG(ride_length_minutes), 2) AS "Average Ride Length (in minutes)"
FROM 
    full_year_rides_cleaned
GROUP BY 
    EXTRACT(MONTH FROM started_at), member_casual
ORDER BY 
    "Month";

-- Calculate the number of rides for users by hour of day
SELECT 
    EXTRACT(HOUR FROM started_at) AS "Hour",
    member_casual AS "Rider Type",
    COUNT(ride_id) AS "Total Rides"
FROM 
    full_year_rides_cleaned
GROUP BY 
    EXTRACT(HOUR FROM started_at), member_casual
ORDER BY 
    "Hour";

-- Calculate the average ride length for users by hour of day
SELECT 
    EXTRACT(HOUR FROM started_at) AS "Hour",
    member_casual AS "Rider Type",
    ROUND(AVG(ride_length_minutes), 2) AS "Average Ride Length (in minutes)"
FROM 
    full_year_rides_cleaned
GROUP BY 
    EXTRACT(HOUR FROM started_at), member_casual
ORDER BY 
    "Hour";

-- Calculate the total number of rides and average ride length for users by bike type
SELECT member_casual AS "Rider Type", rideable_type AS "Bike Type", COUNT(ride_id) AS "Total Rides", ROUND(AVG(ride_length_minutes), 2) AS "Average Ride Length (in minutes)"
FROM full_year_rides_cleaned
GROUP BY member_casual, rideable_type
ORDER BY member_casual
