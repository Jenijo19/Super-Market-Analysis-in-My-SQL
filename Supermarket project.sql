Create database supermarket;
use supermarket;

1 --Display the first 5 rows from the dataset.--
select * from supermarket limit 5;

2 --Display the last 5 rows from the dataset.--
select * from supermarket order by 'gross income' desc limit 5;

3 --Display random 5 rows from the dataset.--
select * from supermarket order by rand() limit 5;

4 --Display count, min, max, avg, and std values for a column in the dataset.--

select count(`gross income`),
min(`gross income`),
max(`gross income`),
avg(`gross income`),
std(`gross income`)

from supermarket;


5 --Find the number of missing values--

select count(*) from supermarket where city is null;

6 --Count the number of occurrences of each city.--

select city, count(*) from supermarket group by city;

7 --Find the most frequently used payment method.--

select payment, count(*) from supermarket group by payment;

8 --Does The Cost of Goods Sold Affect The Ratings That The Customers Provide?--

select rating, cogs from supermarket;

9 --Find the most profitable branch as per gross income.--

select Branch,round(sum(`gross income`),2) as sum_gross_income 
from supermarket group by Branch order by sum_gross_income desc;

select Branch,round(sum(`gross income`),2) as sum_gross_income
from supermarket group by Branch order by sum_gross_income desc;

10 --Find the most used payment method city-wise.--

select city,
   sum(case when Payment="Cash" then 1 else 0 end) as "Cash",
   sum(case when Payment="Ewallet" then 1 else 0 end) as "Ewallet",
   sum(case when Payment="Credit card" then 1 else 0 end) as "Credit card"
from supermarket group by City;

11 --Find the product line purchased in the highest quantity.--

select `Product line`,sum(Quantity) from supermarket
group by `Product line` order by sum(Quantity) desc;

12 --Find the time at which sales are highest.--

select * from supermarket;

select hour(Time) as hour, sum(Total) as total from supermarket
group by hour order by total desc;

13 --Which gender spends more on average?--

select Gender,avg(`gross income`) from supermarket group by Gender limit 1;

select * from supermarket;








