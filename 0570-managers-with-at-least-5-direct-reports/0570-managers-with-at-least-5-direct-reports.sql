# Write your MySQL query statement below
SELECT t.name
FROM Employee as t
JOIN Employee as t2
ON t.id = t2.managerId
GROUP BY t2.managerId
HAVING count(t2.managerId)>=5