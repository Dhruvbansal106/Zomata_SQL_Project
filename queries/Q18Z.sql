--Q18. Rider Efficiency:
-- Caculate rider efficiency by determine avaerage delivery times and identification  those with the lowest 
-- and highest averages
Select MAX(t.avg_delivery_time), Min(t.avg_delivery_time) 

FROM(
SELECT rider_id,
AVG(delivery_time-pickup_time) as avg_delivery_time
from Deliveries
Group by 1) as t
