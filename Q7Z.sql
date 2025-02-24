
Select * from (
Select 
	r.restaurant_id,
	r.name, 
	o.items as dish,
	Count(order_id) as total_orders,
	RANK() OVER(PARTITION BY r.restaurant_id order by count(order_id) DESC) as rank 
from orders as o 
join Restaurants as r on 
r.restaurant_id=o.restaurant_id
Group by 1,2,3)  as t1
where rank ='1'