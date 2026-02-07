select * from pizza_sales;
use [Pizza DB];

select SUM(total_price) as Total_Rev from pizza_sales

select sum(total_price) / count(distinct order_id) as Avg_order_value from pizza_sales;

select sum(quantity) as Total_Pizza_sold from pizza_sales;

select count(distinct order_id) as Count_order_value from pizza_sales;

select cast(sum(quantity)/count(distinct order_id) as decimal(10,2)) as Avg_pizza_per_order from pizza_sales;