# Super-Market-Analysis-in-My SQL

## Description
This project uses My SQL to analyze the dataset of an Super Market Store. The goal of the project is to answer a set of questions about the store's business performance and help in its growth by making better decisions.

## Installation
To run this project on your machine you need to install any My SQL-supported DBMS then follow the steps below:

- Create a database.
- Create tables.
- Import csv files provided in the dataset folder.

## Database and Tools
- My Sql Workbench
- MS Excel

## Analysis
### Creating database and Implementing database.
#### **Query:**
````sql
create database supermarket;
use supermarket;
````

### 1. Display the first 5 rows from the dataset.
#### **Query:**
````sql
select * from supermarket limit 5;
````
### 2. Display the last 5 rows from the dataset.
#### **Query:**
````sql
select * from supermarket order by `Invoice ID` desc limit 5;
````

### 3. Display random 5 rows from the dataset.
#### **Query:**
````sql
select * from supermarket order by rand() limit 5;
````

### 4. Display count, min, max, avg, and std values for a column in the dataset.
#### **Query:**
````sql
select count(`gross income`),
min(`gross income`),
max(`gross income`),
avg(`gross income`),
std(`gross income`)

from supermarket;
````

### 5. Find the number of missing values.
#### **Query:**
````sql
select count(*) from supermarket where Branch is null;
````
### 6. Count the number of occurrences of each city.
#### **Query:**
````sql
select City,count(City) from supermarket group by City;
````

### 7. Find the most frequently used payment method.
#### **Query:**
````sql
select Payment,count(*) from supermarket group by Payment 
order by count(*) desc;
````
### 8. Does The Cost of Goods Sold Affect The Ratings That The Customers Provide? 
#### **Query:**
````sql
select Rating,cogs from supermarket;
````
### 9. Find the most profitable branch as per gross income.
#### **Query:**
````sql
select Branch,round(sum(`gross income`),2) as sum_gross_income 
from supermarket group by Branch order by sum_gross_income desc;

select City,Branch,sum(`gross income`) from supermarket group by City,Branch;
````

### 10.  Find the most used payment method city-wise.
#### **Query:**
````sql
select * from supermarket;

select city,
   sum(case when Payment="Cash" then 1 else 0 end) as "Cash",
   sum(case when Payment="Ewallet" then 1 else 0 end) as "Ewallet",
   sum(case when Payment="Credit card" then 1 else 0 end) as "Credit card"
from supermarket group by City;
````
### 11. Find the product line purchased in the highest quantity.
#### **Query:**
````sql
select `Product line`,sum(Quantity) from supermarket
group by `Product line` order by sum(Quantity) desc;
````
### 12. Find the time at which sales are highest.
#### **Query:**
````sql
select * from supermarket;

select hour(Time) as hour, sum(Total) as total from supermarket group by hour order by total desc;
````

### 13. Which gender spends more on average?
#### **Query:**
````sql
select Gender,avg(`gross income`) from supermarket group by Gender;
````


## Conclusion
The project was successful in answering the set of questions about the store's business performance. The results of the project can be used by the store to make decisions about its marketing and product offerings.
