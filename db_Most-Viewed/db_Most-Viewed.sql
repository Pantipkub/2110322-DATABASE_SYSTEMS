WITH ViewCount AS (
    SELECT M.mid, M.title, COUNT(C.cid) AS total_views
    FROM movie M
    JOIN customer C ON M.mid = C.mid
    GROUP BY M.mid, M.title
)

SELECT mid, title, total_views
FROM ViewCount
WHERE total_views = (
    SELECT MAX(total_views) FROM ViewCount
)
ORDER BY title ASC;