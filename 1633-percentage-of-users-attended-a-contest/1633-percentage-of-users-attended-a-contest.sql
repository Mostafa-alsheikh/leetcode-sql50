# Write your MySQL query statement below
SELECT r.contest_id, ROUND(COUNT(u.user_id)/(SELECT COUNT(*) FROM Users)*100,2) as percentage
FROM Users u
JOIN Register r ON u.user_id = r.user_id
GROUP BY contest_id
ORDER BY percentage desc, contest_id asc