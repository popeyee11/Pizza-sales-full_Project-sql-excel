select * from pizza_sales;

--Daily Trend
select DATENAME(dw, order_date) as order_day,
count(distinct order_id)as total_orders
from pizza_sales
group by DATENAME(dw, order_date)
order by DATENAME(dw, order_date) asc;

--Hourly Trend
select DATEPART(hour, order_time) as order_hours,
count(distinct order_id) as total_orders
from pizza_sales
group by DATEPART(hour, order_time)
order by DATEPART(hour, order_time);

--percentage sales by pizza category
select pizza_category, sum(total_price)*100/
(select sum(total_price) from pizza_sales where MONTH(order_date)=1) as PCT
from pizza_sales
where MONTH(order_date)=1
group by pizza_category;

--total pizza sold by pizza category
select pizza_category, sum(quantity) as total_sold_pizza
from pizza_sales
group by pizza_category;

--top 5 pizza sold by pizza name
select top 5 pizza_name, sum(quantity) as top_5_pizza_sold
from pizza_sales
group by pizza_name
order by sum(quantity) desc

--Bottom 5 pizza sold by pizza name
select top 5 pizza_name, sum(quantity) as top_5_pizza_sold
from pizza_sales
group by pizza_name
order by sum(quantity)

select top 5 pizza_name, sum(quantity) as top_5_pizza_sold
from pizza_sales
where month(order_date)=5
group by pizza_name
order by sum(quantity)

