#SQL questions - regression
-- 1. Create a database called house_price_regression.
CREATE DATABASE house_price_regression;
use house_price_regression;

-- 2. Create a table house_price_data with the same columns as given in the csv file. 
-- Please make sure you use the correct data types for the columns.
drop table if exists house_price_data;
CREATE table house_price_data (
house_id varchar(30) NOT NULL,
`date` varchar(12),
bedrooms int(3) DEFAULT NULL,
bathrooms float DEFAULT NULL,
sqft_living int(6) DEFAULT NULL,
sqft_lot int(8) DEFAULT NULL,
floors float DEFAULT NULL,
waterfront int(1) DEFAULT NULL,
`view` int(3) DEFAULT NULL,
`condition` int(1) DEFAULT NULL,
grade int(3) DEFAULT NULL, 
sqft_above int DEFAULT NULL,
sqft_basement int DEFAULT NULL,
yr_built int,
yr_renovated int, 
zipcode int DEFAULT NULL,
lat float,
`long` float,
sqft_living15 int default null,
sqft_lot15 int default null, 
price int default null
);

-- 3. Import the data from the csv file into the table.
SHOW VARIABLES LIKE 'local_infile';
LOAD DATA LOCAL INFILE 'C:/Users/W10/Documents/GitHub/MidbootcampProject/regression_data.csv' 
INTO TABLE house_price_data
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

-- 4.Select all the data from table house_price_data to check if the data was imported correctly
Select * from house_price_data;

-- 5.Use the alter table command to drop the column date from the database, as we would not use it in the analysis with SQL. 
-- Select all the data from the table to verify if the command worked. Limit your returned results to 10
ALTER TABLE house_price_data DROP date;
Select * from hpd
limit 10;

-- 6. Use sql query to find how many rows of data you have.
Select count(*) from house_price_data;

-- 7. Now we will try to find the unique values in some of the categorical columns:
-- What are the unique values in the column bedrooms?
SELECT DISTINCT bedrooms
FROM house_price_data;

-- What are the unique values in the column bathrooms?
select distinct bathrooms from house_price_data;

-- What are the unique values in the column floors?
select distinct floors from house_price_data;

-- What are the unique values in the column condition?
select distinct `condition` from house_price_data;

-- What are the unique values in the column grade?
select distinct grade from house_price_data;

-- 8. Arrange the data in a decreasing order by the price of the house. 
-- Return only the IDs of the top 10 most expensive houses in your data.
Select house_id from house_price_data
order by price desc
limit 10;

-- 9.What is the average price of all the properties in your data?
Select avg(price) from house_price_data;

-- 10. In this exercise we will use simple group by to check the properties of some of the categorical variables in our data
-- A. What is the average price of the houses grouped by bedrooms? 
-- The returned result should have only two columns, bedrooms and Average of the prices. Use an alias to change the name of the second column.
Select bedrooms, avg(price) as pricebynoofbedrooms from house_price_data
group by bedrooms
order by bedrooms;

-- B. What is the average sqft_living of the houses grouped by bedrooms? 
-- The returned result should have only two columns, bedrooms and Average of the sqft_living. Use an alias to change the name of the second column.
Select bedrooms, avg(sqft_living) as pricebysqft from house_price_data
group by bedrooms
order by bedrooms;

-- C. What is the average price of the houses with a waterfront and without a waterfront?
-- The returned result should have only two columns, waterfront and Average of the prices. Use an alias to change the name of the second column.
Select waterfront, avg(price) as pricebywaterfront from house_price_data
group by waterfront;

-- D. Is there any correlation between the columns condition and grade? 
-- You can analyse this by grouping the data by one of the variables and then aggregating the results of the other column. 
-- Visually check if there is a positive correlation or negative correlation or no correlation between the variables.
Select `condition`, avg(grade) from house_price_data
group by `condition`
order by `condition`;

Select avg(grade), `condition` from house_price_data
group by grade
order by grade;

-- 11. One of the customers is only interested in the following houses:
-- Number of bedrooms either 3 or 4
-- Bathrooms more than 3
-- One Floor
-- No waterfront
-- Condition should be 3 at least
-- Grade should be 5 at least
-- Price less than 300000
-- For the rest of the things, they are not too concerned. Write a simple query to find what are the options available for them?

SELECT 
    *
FROM
    house_price_data
WHERE
    (bedrooms = 3 OR bedrooms = 4)
		AND floors = 1
        AND (bathrooms > 3)
        AND (waterfront = 0)
        AND (`condition` >= 3)
        AND (grade >= 5)
        AND (price < 300000);
        
-- 12. Your manager wants to find out the list of properties whose prices are twice more than the average 
-- of all the properties in the database. Write a query to show them the list of such properties. 
-- You might need to use a sub query for this problem.
select * from house_price_data
where price > (select avg(price)*2 as doubleavg from house_price_data)
order by price;

-- 13. Since this is something that the senior management is regularly interested in, create a view of the same query.
drop view if exists pricedoublavg;
create view preleventhhouseicedoublavg as
select * from house_price_data
where price > (select avg(price)*2 as doubleavg from house_price_data)
order by price;

-- 14. Most customers are interested in properties with three or four bedrooms. 
-- What is the difference in average prices of the properties with three and four bedrooms?
## maybe more elegant with a window function?
SELECT DISTINCT
    ((SELECT 
            AVG(price) AS fourbedprice
        FROM
            house_price_data
        WHERE
            bedrooms = 4) - (SELECT 
            AVG(price) AS threebedprice
        FROM
            house_price_data
        WHERE
            bedrooms = 3))
FROM
    house_price_data;
#169,288.0862

SELECT 
            AVG(price) AS fourbedprice
        FROM
            house_price_data
        WHERE
            bedrooms = 3;
            
-- 15. What are the different locations where properties are available in your database? (distinct zip codes)
select distinct zipcode from house_price_data; 

-- 16. Show the list of all the properties that were renovated.
select * from house_price_data
where yr_renovated > 0
order by yr_renovated;

-- 17. Provide the details of the property that is the 11th most expensive property in your database.
## use rank for a more elegant solution!
#OPTION with a view
drop view if exists eleventhhouse;
create view eleventhhouse as
select * from house_price_data
order by price desc
limit 11;
SELECT * FROM eleventhhouse
order by price
limit 1;

#Option with a subquery
select * from (select * from house_price_data
order by price desc
limit 11) eleven
order by price
limit 1;