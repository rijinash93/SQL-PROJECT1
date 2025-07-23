CREATE TABLE RETAIL (
    transactions_id INT PRIMARY KEY,
    sale_date DATE,
    sale_time TIME,
    customer_id INT,
    gender VARCHAR(15),
    age INT,
    category VARCHAR(50),
    quantity INT,
    price_per_unit NUMERIC(10, 2),
    cogs NUMERIC(10, 2),
    total_sale NUMERIC(10, 2)
);


SELECT * FROM RETAIL

SELECT
COUNT(*) FROM RETAIL

SELECT *
FROM retail
WHERE transactions_id IS NULL
   OR sale_date IS NULL
   OR sale_time IS NULL
   OR customer_id IS NULL
   OR gender IS NULL
   OR age IS NULL
   OR category IS NULL
   OR quantity IS NULL
   OR price_per_unit IS NULL
   OR cogs IS NULL
   OR total_sale IS NULL;
DELETE FROM RETAIL
WHERE transactions_id IS NULL
   OR sale_date IS NULL
   OR sale_time IS NULL
   OR customer_id IS NULL
   OR gender IS NULL
   OR age IS NULL
   OR category IS NULL
   OR quantity IS NULL
   OR price_per_unit IS NULL
   OR cogs IS NULL
   OR total_sale IS NULL;

SELECT *
FROM retail
WHERE transactions_id IS NULL
   OR sale_date IS NULL
   OR sale_time IS NULL
   OR customer_id IS NULL
   OR gender IS NULL
   OR age IS NULL
   OR category IS NULL
   OR quantity IS NULL
   OR price_per_unit IS NULL
   OR cogs IS NULL
   OR total_sale IS NULL;
--HOW MANY SALES WE HAVE?

SELECT COUNT(*) TOTAL_SALES FROM RETAIL

--HOW MANY COUSTERMER WE HAVE?

SELECT COUNT(*)customer_id FROM RETAIL



--Data analysis

1.retreieve all columns for sales made on '2022-11-05'
select * from RETAIL where sale_date ='2022-11-05'

2.retreive all transaction where category is clothing and quantity sale is more than 10 in nov 2022

SELECT *
FROM RETAIL
WHERE CATEGORY = 'Clothing'
  AND TO_CHAR(sale_date, 'YYYY-MM') = '2022-11'
  AND quantity >= 4;

3.total sales for each category

SELECT category,sum(total_sale) as total_sales
FROM RETAIL
group by category

4.avg age where category=beauty

SELECT  AVG(age) as average_age
FROM RETAIL
WHERE category = 'Beauty';

5.transaction where total sale is greater than 1000.

select  *
 from retail where total_sale>1000

6.total number of transaction_id in each gender 

select category,gender,sum(transactions_id) from retail group by gender ,category
 
7.avg sale for each month ,find out the best selling in each month

select EXTRACT (month FROM sale_date) as month ,avg(total_sale) as avg_sale from retail group by month order by month desc limit 1

8.top 5 customers based on total sales,

SELECT customer_id, SUM(total_sale) AS total_sales
FROM retail
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5; 

9.retreiev customers ccording to category

select category ,count(distinct customer_id) from retail group by category;


