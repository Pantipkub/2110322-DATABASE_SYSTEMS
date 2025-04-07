SELECT C.name, SUM(D.price * O.amount) as total
FROM orders O
JOIN desserts D ON D.id = O.d_id
JOIN customers C ON C.id = O.c_id
GROUP BY C.id, C.name
ORDER BY total DESC, C.id ASC
LIMIT 1;