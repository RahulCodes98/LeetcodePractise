# Write your MySQL query statement below
Select a.name,b.bonus from Employee a left Join Bonus b  ON a.empId=b.empId where b.bonus<1000 OR b.bonus IS NULL 