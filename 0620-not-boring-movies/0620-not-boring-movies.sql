# Write your MySQL query statement below
SELECT *
FROM Cinema as t
WHERE t.id % 2 = 1 AND t.description != 'boring'
ORDER BY t.rating desc 