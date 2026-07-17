# Write your MySQL query statement below
select q.query_name, ROUND(AVG(q.rating/q.position),2) as quality, ROUND(SUM(CASE WHEN q.rating <3 THEN 1 ELSE 0 END)*100/count(*),2) as poor_query_percentage 
from queries q
WHERE q.query_name IS NOT NULL
GROUP BY q.query_name