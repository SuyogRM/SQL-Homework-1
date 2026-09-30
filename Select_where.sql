--1. From `SH.CUSTOMERS`, display customer ID, first name, last name, gender, and marital status for all female customers.
SELECT customer_id,
       cust_first_name,
       cust_last_name,
       gender,
       marital_status
FROM sh.customers
WHERE gender = 'F';

--2. From `SH.CUSTOMERS`, find customers whose last name starts with `S` and whose year of birth is greater than 1970.
SELECT customer_id,
       cust_first_name,
       cust_last_name,
       year_of_birth
FROM sh.customers
WHERE cust_last_name LIKE 'S%'
  AND year_of_birth > 1970;

--3. From `SH.PRODUCTS`, display product ID, product name, category, and list price for products whose list price is between 100 and 500.
SELECT product_id,
       product_name,
       category,
       list_price
FROM sh.products
WHERE list_price BETWEEN 100 AND 500;

--4. From `SH.PRODUCTS`, find products whose minimum price is less than 50 and whose status is `available`.
SELECT product_id,
       product_name,
       min_price,
       status
FROM sh.products
WHERE min_price < 50
  AND status = 'available';

--5. From `SH.SALES`, display product ID, customer ID, quantity sold, and amount sold for transactions where the amount sold is greater than 1000.
SELECT product_id,
       customer_id,
       quantity_sold,
       amount_sold
FROM sh.sales
WHERE amount_sold > 1000;

--6. From `SH.SALES`, find transactions where the quantity sold is greater than 2 and the channel ID is 3.
SELECT product_id,
       customer_id,
       quantity_sold,
       channel_id
FROM sh.sales
WHERE quantity_sold > 2
  AND channel_id = 3;

--7. From `SH.CHANNELS`, display channel ID and channel description for channels whose description contains the word `Direct`.
SELECT channel_id,
       channel_desc
FROM sh.channels
WHERE channel_desc LIKE '%Direct%';

--8. From `SH.PROMOTIONS`, display promotion ID, promotion name, cost, and category where promotion cost is greater than 1000.
SELECT promo_id,
       promo_name,
       promo_cost,
       promo_category
FROM sh.promotions
WHERE promo_cost > 1000;

--9. From `SH.PROMOTIONS`, find promotions whose end date is greater than their begin date and whose promotion cost is greater than 500.
SELECT promo_id,
       promo_name,
       promo_begin_date,
       promo_end_date,
       promo_cost
FROM sh.promotions
WHERE promo_end_date > promo_begin_date
  AND promo_cost > 500;

--10. From `SH.COUNTRIES`, display country ID, country name, and region ID for countries belonging to region ID 52790.
SELECT country_id,
       country_name,
       region_id
FROM sh.countries
WHERE region_id = 52790;

--11. From `SH.TIMES`, display time ID, day name, calendar month name, and calendar year for dates belonging to the year 2000.
SELECT time_id,
       day_name,
       calendar_month_name,
       calendar_year
FROM sh.times
WHERE calendar_year = 2000;

--12. From `SH.TIMES`, find all dates where the calendar month name is `December` and the calendar year is 2001.
SELECT time_id,
       day_name,
       calendar_month_name,
       calendar_year
FROM sh.times
WHERE calendar_month_name = 'December'
  AND calendar_year = 2001;

--13. From `SH.COSTS`, display product ID, time ID, unit cost, and unit price where unit price is greater than unit cost.
SELECT product_id,
       time_id,
       unit_cost,
       unit_price
FROM sh.costs
WHERE unit_price > unit_cost;

--14. From `SH.COSTS`, find records where unit cost is greater than 100 and unit price is less than 1000.
SELECT product_id,
       time_id,
       unit_cost,
       unit_price
FROM sh.costs
WHERE unit_cost > 100
  AND unit_price < 1000;

--15. From `SH.SUPPLEMENTARY_DEMOGRAPHICS`, display customer ID, education, occupation, and household size for customers whose household size is greater than 3.
SELECT customer_id,
       education,
       occupation,
       household_size
FROM sh.supplementary_demographics
WHERE household_size > 3;
