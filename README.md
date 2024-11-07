# Google Data Analytics Case Study
Final project performing data analysis for a fictional bike-share company in order to help them attract more riders as part of the Google Data Analytics Professional Certificate Program

## Case Study Roadmap

### Ask
#### Business Task
Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends. Moreno has assigned you the first question to answer: How do annual members and casual riders use Cyclistic bikes differently?

### Prepare
#### Data Source
The data source used is located in following link: https://divvy-tripdata.s3.amazonaws.com/index.html

The data has been made available by Motivate International Inc. This is public data used to explore how different customer types are using Cyclistic bikes. The specific data used for this case study is data from January 2023 - December 2023, and the data was split into 12 files, one for each of the months in the year 2023.

#### Data Storage
Due to the large size of the 12 files, I created 12 tables to store data from each of the months and I imported each of the files into the 12 tables in pgAdmin 4. 

[SQL Query: Create Tables](https://github.com/angelalwong/Google-Data-Analytics-Case-Study/blob/main/create-tables.sql)

[SQL Query: Import CSVs to Tables](https://github.com/angelalwong/Google-Data-Analytics-Case-Study/blob/main/import-csv-to-table.sql)

From there, I combined all 12 tables into a single table for data processing. 

[SQL Query: Combine Tables](https://github.com/angelalwong/Google-Data-Analytics-Case-Study/blob/main/combine-tables.sql)

I added up the row count from each of the 12 tables to ensure that the sum matched the total row count for the combined table. The total rows for both queries resulted in 5719877, which confirmed that the tables were combined correctly into a consolidated table ‘full_year_rides’ with data from the full year.

![full_year_rides row count](https://github.com/user-attachments/assets/e3c5122a-d8f5-427c-974a-a40cf0b50836)

![total row count from 12 tables](https://github.com/user-attachments/assets/5858d5b1-e787-4838-a805-4018a9286522)

#### Data Validation
[SQL Query: Data Validation](https://github.com/angelalwong/Google-Data-Analytics-Case-Study/blob/main/data-validation.sql)

I validated the full_year_rides table for duplicate rows or null values. While there were no duplicates or null values for the primary key 'ride_id', there were null values in other columns, which may be due to missing information (station ids, station names, latitude, longitude, etc.) for certain rides. Out of 5719877 total rows, 1388170 rows contained null values. These null values will be addressed in the Data Cleaning section. 

![null values](https://github.com/user-attachments/assets/404337af-5beb-4b1e-89e4-5be9fd2398cd)

The ‘rideable_type’ and ‘member_casual’ columns were validated and contained the correct amount of unique values and did not have any additional misspelled values.

![rideable_type spell check](https://github.com/user-attachments/assets/cb7027e0-2304-4c7d-b03b-5c7270439ae6)

![member_casual spell check](https://github.com/user-attachments/assets/8540d621-a50d-43aa-9b66-aace51da8cab)

The 'ride_id' column values were validated and contained the same length and did not contain any extra spaces; all ride_id values were confirmed to have a length of 16 digits.

![ride_id length check](https://github.com/user-attachments/assets/709040f6-5b92-407f-84e2-3d0b8f8514b1)

