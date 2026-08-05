# Write your MySQL query statement below
select a.name as customers from customers a left join orders o 
on a.id=o.customerid 
where o.customerid is null;