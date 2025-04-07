SELECT dname as Mor_name
FROM doctor
WHERE d_id NOT IN (SELECT d_id FROM Work_For) AND dname LIKE 'C%'
ORDER BY dage DESC, d_id ASC;