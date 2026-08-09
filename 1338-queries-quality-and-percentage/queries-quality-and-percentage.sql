# Write your MySQL query statement below
select query_name , 
round(avg(rating/position),2) as quality,
round(
    avg(case when rating<3  then 1 else 0 end )*100,
     2)
 AS poor_query_percentage
FROM Queries
GROUP BY query_name;
