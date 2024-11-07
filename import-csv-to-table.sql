-- Import csv file into table for each corresponding month

COPY january_rides FROM '/Users/angelawong/Desktop/Google Data Analytics Case Study/202301-divvy-tripdata.csv' DELIMITER ',' CSV HEADER;

COPY february_rides FROM '/Users/angelawong/Desktop/Google Data Analytics Case Study/202302-divvy-tripdata.csv' DELIMITER ',' CSV HEADER;

COPY march_rides FROM '/Users/angelawong/Desktop/Google Data Analytics Case Study/202303-divvy-tripdata.csv' DELIMITER ',' CSV HEADER;

COPY april_rides FROM '/Users/angelawong/Desktop/Google Data Analytics Case Study/202304-divvy-tripdata.csv' DELIMITER ',' CSV HEADER;

COPY may_rides FROM '/Users/angelawong/Desktop/Google Data Analytics Case Study/202305-divvy-tripdata.csv' DELIMITER ',' CSV HEADER;

COPY june_rides FROM '/Users/angelawong/Desktop/Google Data Analytics Case Study/202306-divvy-tripdata.csv' DELIMITER ',' CSV HEADER;

COPY july_rides FROM '/Users/angelawong/Desktop/Google Data Analytics Case Study/202307-divvy-tripdata.csv' DELIMITER ',' CSV HEADER;

COPY august_rides FROM '/Users/angelawong/Desktop/Google Data Analytics Case Study/202308-divvy-tripdata.csv' DELIMITER ',' CSV HEADER;

COPY september_rides FROM '/Users/angelawong/Desktop/Google Data Analytics Case Study/202309-divvy-tripdata.csv' DELIMITER ',' CSV HEADER;

COPY october_rides FROM '/Users/angelawong/Desktop/Google Data Analytics Case Study/202310-divvy-tripdata.csv' DELIMITER ',' CSV HEADER;

COPY november_rides FROM '/Users/angelawong/Desktop/Google Data Analytics Case Study/202311-divvy-tripdata.csv' DELIMITER ',' CSV HEADER;

COPY december_rides FROM '/Users/angelawong/Desktop/Google Data Analytics Case Study/202312-divvy-tripdata.csv' DELIMITER ',' CSV HEADER;