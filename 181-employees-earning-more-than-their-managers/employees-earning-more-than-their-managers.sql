# Write your MySQL query statement below
select a.name as employee from employee a join employee e on a.managerid= e.id where a.salary > e.salary;