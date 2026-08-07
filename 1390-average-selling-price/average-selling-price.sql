# Write your MySQL query statement below
select
p.product_id , ifnull(round(SUM(p.price * s.units) / SUM(s.units),2) ,0)
as average_price
from prices p left join unitssold s 
ON p.product_id = s.product_id
AND s.purchase_date BETWEEN p.start_date AND p.end_date
group by p.product_id 