# Write your MySQL query statement below
with cte as(
    Select employee_id,department_id,primary_flag,count(*) over(partition by employee_id) as "dept_count" from employee)

Select employee_id,department_id from cte where primary_flag='Y' OR dept_count=1 