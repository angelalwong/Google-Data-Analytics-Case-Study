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

[Create Tables](https://github.com/angelalwong/Google-Data-Analytics-Case-Study/blob/main/create-tables.sql)

[Import CSVs to Tables](https://github.com/angelalwong/Google-Data-Analytics-Case-Study/blob/main/import-csv-to-table.sql)

From there, I combined all 12 tables into a single table for data processing. 

[Combine Tables](https://github.com/angelalwong/Google-Data-Analytics-Case-Study/blob/main/combine-tables.sql)

I added up the row count from each of the 12 tables to ensure that the sum matched the total row count for the combined table. The total rows for both queries resulted in 5719877, which confirmed that the tables were combined correctly into a consolidated table ‘full_year_rides’ with data from the full year.

![full_year_rides row count](https://github.com/user-attachments/assets/e3c5122a-d8f5-427c-974a-a40cf0b50836)

![total row count from 12 tables](https://github.com/user-attachments/assets/5858d5b1-e787-4838-a805-4018a9286522)



