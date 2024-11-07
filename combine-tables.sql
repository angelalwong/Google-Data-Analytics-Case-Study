-- Combine all 12 tables into 1 table containing data from January 2023 through December 2023

CREATE TABLE full_year_rides AS (
SELECT * FROM january_rides
UNION ALL
SELECT * FROM february_rides
UNION ALL
SELECT * FROM march_rides
UNION ALL
SELECT * FROM april_rides
UNION ALL
SELECT * FROM may_rides
UNION ALL
SELECT * FROM june_rides
UNION ALL
SELECT * FROM july_rides
UNION ALL
SELECT * FROM august_rides
UNION ALL
SELECT * FROM september_rides
UNION ALL
SELECT * FROM october_rides
UNION ALL
SELECT * FROM november_rides
UNION ALL
SELECT * FROM december_rides
);

-- Check row count
SELECT COUNT (*) FROM full_year_rides
-- Result: count = 5719877


-- Validate that the number of rows from the 12 tables add up to the total number of rows in the full year table 
SELECT SUM(row_count) AS total_row_count
FROM(
	SELECT
	    'january_rides' AS table_name,
	    COUNT(*) AS row_count
	FROM
	    january_rides
	UNION ALL
	SELECT
	    'february_rides' AS table_name,
	    COUNT(*) AS row_count
	FROM
	    february_rides
	UNION ALL
	SELECT
	    'march_rides' AS table_name,
	    COUNT(*) AS row_count
	FROM
	    march_rides
	UNION ALL
	SELECT
	    'april_rides' AS table_name,
	    COUNT(*) AS row_count
	FROM
	    april_rides
	UNION ALL
	SELECT
	    'may_rides' AS table_name,
	    COUNT(*) AS row_count
	FROM
	    may_rides
	UNION ALL
	SELECT
	    'june_rides' AS table_name,
	    COUNT(*) AS row_count
	FROM
	    june_rides
	UNION ALL
	SELECT
	    'july_rides' AS table_name,
	    COUNT(*) AS row_count
	FROM
	    july_rides
	UNION ALL
	SELECT
	    'august_rides' AS table_name,
	    COUNT(*) AS row_count
	FROM
	    august_rides
	UNION ALL
	SELECT
	    'september_rides' AS table_name,
	    COUNT(*) AS row_count
	FROM
	    september_rides
	UNION ALL
	SELECT
	    'october_rides' AS table_name,
	    COUNT(*) AS row_count
	FROM
	    october_rides
	UNION ALL
	SELECT
	    'november_rides' AS table_name,
	    COUNT(*) AS row_count
	FROM
	    november_rides
	UNION ALL
	SELECT
	    'december_rides' AS table_name,
	    COUNT(*) AS row_count
	FROM
	    december_rides
) AS subquery;
-- Result: total_row_count = 5719877
