WITH EachAuthorSolved AS (
    SELECT A.aid, A.aname, T.tname, COUNT(s.cid) AS solved_count
    FROM task T
    JOIN submit S ON S.tid = T.tid
    JOIN author A ON A.aid = T.aid
    WHERE S.score = 100
    GROUP BY A.aid, A.aname, T.tname
    ORDER BY COUNT(S.cid) DESC, A.aid ASC
)

SELECT aname, tname
FROM EachAuthorSolved
WHERE solved_count = (
    SELECT MAX(solved_count)
    FROM EachAuthorSolved
);

-- ข้อนี้เข้าถึงโดยใช้ solved_count ซึ่ง nested หาอีกทีนึง แล้วเอาค่า MAX มา Query