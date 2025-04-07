SELECT D.dname as Mor_name
FROM doctor D
LEFT JOIN Work_For WF ON D.d_id = WF.d_id
LEFT JOIN hospital H ON WF.h_id = H.h_id
WHERE H.h_id IS NULL AND D.dname LIKE 'C%'
GROUP BY D.d_id
ORDER BY D.dage DESC, D.d_id ASC;