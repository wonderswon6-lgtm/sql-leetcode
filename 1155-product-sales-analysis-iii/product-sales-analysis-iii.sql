# Write your MySQL query statement below
select product_id , year as first_year ,quantity , price 
from (select  product_id,
        year,
        quantity,
        price,
        RANK() OVER (
            PARTITION BY product_id
            ORDER BY year
        ) AS rnk
    FROM Sales
) t
WHERE rnk = 1;