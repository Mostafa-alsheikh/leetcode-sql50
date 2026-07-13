# Write your MySQL query statement below
SELECT a.name, b.bonus
FROM Employee as a
Left join Bonus as b
ON a.empId = b.empId
WHERE bonus<1000 OR bonus IS NULL