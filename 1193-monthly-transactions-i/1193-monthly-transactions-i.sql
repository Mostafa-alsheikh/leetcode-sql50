# Write your MySQL query statement below
SELECT date_format(t.trans_date, '%Y-%m') as month, t.country, COUNT(*) as trans_count, SUM(CASE WHEN t.state='approved' THEN 1 else 0 END) as approved_count, SUM(t.amount) as trans_total_amount, SUM(CASE WHEN t.state = 'approved' THEN t.amount ELSE 0 END) as approved_total_amount
FROM Transactions t
group by month, country