# Write your MySQL query statement below
Select x,y,z,CASE when x+y>z And y+z>x and z+x>y then 'Yes' else 'No' end as triangle from Triangle