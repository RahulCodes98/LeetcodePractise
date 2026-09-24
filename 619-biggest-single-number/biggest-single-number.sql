# Write your MySQL query statement below
Select MAX(num) as 'num' from (
Select num from MyNumbers group by num having Count(num)=1)AS single_numbers; 