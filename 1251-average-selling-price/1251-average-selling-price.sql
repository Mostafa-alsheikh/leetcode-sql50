SELECT p.product_id, ROUND(COALESCE(SUM(u.units*p.price)/SUM(u.units),0),2) as average_price
FROM Prices p
LEFT JOIN UnitsSold u ON p.product_id = u.product_id AND u.purchase_date BETWEEN p.start_date AND p.end_Date
GROUP BY p.product_id
