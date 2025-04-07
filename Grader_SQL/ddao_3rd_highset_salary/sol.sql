WITH Third_Rank AS (
    SELECT DISTINCT salary
    FROM employee
    ORDER BY salary DESC
    LIMIT 1
    OFFSET 2
)

SELECT name, salary
FROM employee
WHERE salary = (SELECT salary FROM Third_Rank) -- หรือจะใช้ IN ก็ได้ // "=" มันจะคืนแถวแรกมาเปรียบเทียบ
ORDER BY name ASC;