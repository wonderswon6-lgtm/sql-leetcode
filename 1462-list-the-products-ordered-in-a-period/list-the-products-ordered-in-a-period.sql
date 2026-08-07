# Write your MySQL query statement below
select 
p.product_name, sum(o.unit) as unit 
from products p left join orders o
on p.product_id =o.product_id 
WHERE o.order_date BETWEEN '2020-02-01' AND '2020-02-29'
group by p.product_category , p.product_id
having sum(o.unit)>=100 