SELECT P.pname, P.pprice, SUM(PS.quantity_sold) AS total_sales
FROM PRODUCT P
JOIN PRODUCT_SALES PS ON P.pid = PS.pid
WHERE PS.sale_date BETWEEN '2022-01-01' AND '2025-01-01' 
GROUP BY P.pid, P.pname, P.pprice
HAVING SUM(PS.quantity_sold) <= 100
ORDER BY total_sales DESC, P.pprice ASC, P.pname ASC
LIMIT 3;

--ORDER BY ใน Sub Query ไม่มีผลออกมาจนถึงข้างนอก (ต้อง ORDER BY ข้างนอกอีกที)