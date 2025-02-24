--Q5. Orders without delivery
-- Write a querry to find orders that were placed but not delivered.
-- Return each restaurant name , city and no of not delivered orders
SELECT 
	r.name as restaurant_name,
	r.location as City,
	Count(o.Status) as Not_Delivered
FROM orders as o
Join Restaurants as r on
r.restaurant_id=o.restaurant_id
where o.status='Not Delivered'
Group by 1,2 
Order by 1 desc
	
