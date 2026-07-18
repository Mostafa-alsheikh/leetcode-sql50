# Write your MySQL query statement below
SELECT ROUND(AVG(CASE WHEN d.order_date = d.customer_pref_delivery_date THEN 1 ELSE 0 END)*100 ,2) as immediate_percentage
FROM Delivery d
WHERE (d.customer_id, d.order_date) in (
    SELECT d.customer_id, min(d.order_date)
    FROM Delivery d
    GROUP BY customer_id
)
