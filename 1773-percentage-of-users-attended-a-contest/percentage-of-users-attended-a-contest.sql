# Write your MySQL query statement below
Select b.contest_id,ROUND(
        (COUNT(b.user_id) / (SELECT COUNT(*) FROM Users)) * 100,
        2
    ) AS percentage
from Users a
Right Join Register b
ON a.user_id=b.user_id
group by b.contest_id
order by percentage desc,contest_id asc
