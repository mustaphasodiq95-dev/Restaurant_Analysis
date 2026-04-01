Select *
From order_details;
Select *
From menu_items;

--- The least and most pre-ordered item
Select item_name, Count(order_details_id) as num_purchases
From order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
Group by item_name
order by num_purchases desc;

--- What were the least and most ordered items? What categories were they in?
Select item_name, category, Count(order_details_id) as num_purchases
From order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
Group by item_name, category
order by num_purchases desc;

--- what were the top 5 orders that spend the most money?
Select order_id, Sum(price) as total_amount
From order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
Group by order_id
order by total_amount desc
Limit 5;

--- View the detials of the highest order
select *
From order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id = 440;

--- View the details of the highest spend order
Select category, Count(item_id) as num_items
From order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id = 440
Group by category;

--- view the details of the 5 highest order
Select order_id, category, Count(item_id) as num_items
From order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
where order_id in (440, 2075, 1957, 330, 2657)
Group by order_id, category;

select *
From order_details
where order_date = '2023-01-03';

select *
From menu_items;

SELECT *
FROM order_details
WHERE MONTH(order_date) = 1 
AND YEAR(order_date) = 2023;

---- Calculate the transaction where category is 'Asian' and the profit is more than 5000---
select item_name, Category, sum(price) as Price_goods
From order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
where category = 'Asian' and month(od.order_date) = 1 and year(od.order_date) = 2023
Group by category, item_name
Having Price_goods > 500;

-- Find the average price for product purchae at the 'American' category --
Select category, avg(price) as avg_price
From order_details od
left join menu_items mi
on od.item_id = mi.menu_item_id
where category = 'American';

Select *
From menu_items
where category = 'American';

--- find the average price per category
Select category, avg(price) as avg_price
from menu_items
Group by Category
order by avg_price desc;
--- Find the best three perfoming Products
Select category, item_name, sum(price) as total_price
from menu_items
Group by Category, item_name
order by total_price desc
Limit 3;

-- Calculate the number of orders that were gotten (Morning < 12, 
-- Afternoon between 12 & 17, Evening >17) ---
With timing as
(Select *,
CASE 
when Extract(Hour from order_time) < 12 Then 'Morning'
when Extract(Hour from order_time) between 12 and 17 then 'Afternoon'
Else 'Evening'
END as Time_Period
From order_details) 

Select Time_period, Count(*) 
From timing
Group by Time_period;













