create database flipkarts;
use flipkarts;
select * from mobiles;
-- different price range segments for mobiles in india
select
Brand,
sum(CASE WHEN MRP BETWEEN 0 AND 9999 THEN 1 ELSE 0 END) AS 'Below 10K',
sum(CASE WHEN MRP BETWEEN 10000 AND 19999 THEN 1 ELSE 0 END) AS 'Price between10-20k',
sum(CASE WHEN MRP BETWEEN 20000 AND 39999 THEN 1 ELSE 0 END) AS 'Price between 20-40k',
sum(CASE WHEN MRP >= 40000 THEN 1 ELSE 0 END) AS 'Price above 40k'
from mobiles
group by Brand
order by Brand;
-- THE BRAND THAT HAS THE HIGHEST DISCOUNTED PRICE
select Brand,
MAX(MRP-MSP) as MaxDiscount
from mobiles
group by Brand
order by Maxdiscount DESC
LIMIT 1;
-- top 5 brands by average ratings
select Brand , Avg(Ratings) as Avg_Rating
from mobiles
group by Brand
order by Avg_Rating DESC
LIMIT 5;
-- top 5 brands by no. of reviews
select Brand , sum(No_Of_Reviews) as Total_Reviews
from mobiles
group by Brand
order by Total_Reviews DESC
LIMIT 5;
-- products with ratings greater than 4.5
select * from mobiles where ratings >4.5;
-- products with discount greater than 40%
select * from mobiles where discount>40;
-- avg rating and no. of reviews per brand
select Brand, Avg(ratings) as Avg_rating, sum(no_of_reviews) as Total_Reviews
from mobiles
group by Brand
order by Avg_rating DESC;
-- PRODUCTS WITH HIGHEST DISCOUNTS
select * from mobiles order by Discount DESC LIMIT 5;
-- get unique brand names
select distinct Brand 
from mobiles;