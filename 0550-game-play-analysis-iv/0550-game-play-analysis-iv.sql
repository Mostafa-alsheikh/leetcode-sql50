WITH tempActivity AS (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
)

SELECT ROUND(SUM(DATEDIFF(a.event_date, t.first_login) = 1)/COUNT(DISTINCT a.player_id),2) as fraction
FROM Activity a
JOIN tempActivity t ON a.player_id = t.player_id