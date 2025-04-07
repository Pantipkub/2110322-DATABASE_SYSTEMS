SELECT EXTRACT(year FROM O.order_date) as order_year, ROUND(SUM(P.unit_price * OD.quantity * OD.discount)::numeric, 2) AS discount_amount
FROM orders O
JOIN order_details OD ON OD.oid = O.oid
JOIN products P ON P.pid = OD.pid
GROUP BY order_year
ORDER BY order_year DESC;
