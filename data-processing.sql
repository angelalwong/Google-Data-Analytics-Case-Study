-- Create a column ride_length to calculate the length of each ride by subtracting started_at column from ended_at column
ALTER TABLE full_year_rides_cleaned
ADD COLUMN ride_length INTERVAL GENERATED ALWAYS AS (ended_at - started_at) STORED;

-- Create a column ride_length_minutes to convert ride_length interval data type to integer (numberic decimal type that Tableau will recognize)
ALTER TABLE full_year_rides_cleaned
ADD COLUMN ride_length_minutes DECIMAL GENERATED ALWAYS AS (
    (EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
    EXTRACT(MINUTE FROM (ended_at - started_at)) +
    EXTRACT(SECOND FROM (ended_at - started_at)) / 60)::DECIMAL(12,2)
) STORED;

-- Create a column day_of_week to calculate the day of the week that each ride started
ALTER TABLE full_year_rides_cleaned
ADD COLUMN day_of_week INTEGER GENERATED ALWAYS AS (EXTRACT(DOW FROM started_at) + 1) STORED;
