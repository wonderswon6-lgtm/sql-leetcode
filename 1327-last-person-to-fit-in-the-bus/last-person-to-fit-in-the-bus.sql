
select person_name 
from (
select person_name ,turn,
SUM(weight) OVER(order by turn) as total_weight
from Queue) t
WHERE total_weight <= 1000
ORDER BY turn DESC
LIMIT 1;