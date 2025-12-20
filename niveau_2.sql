SELECT nationalite, count(*) FROM participants GROUP BY nationalite;
SELECT nationalite, count(*) FROM participants GROUP BY nationalite HAVING COUNT(*) > 2;
SELECT 
    round(AVG(timestampdiff(YEAR,date_naissance,CURDATE())),2)
FROM participants ;

SELECT nom , timestampdiff(YEAR,date_naissance,CURRENT_DATE) AS age 
FROM participants ORDER BY nom DESC LIMIT 1;  /
SELECT * FROM participants WHERE date_naissance = (SELECT MIN(date_naissance) FROM participants)

SELECT nom , timestampdiff(YEAR,date_naissance,CURRENT_DATE) AS age 
FROM participants ORDER BY nom ASC LIMIT 1;
SELECT * FROM participants WHERE date_naissance = (SELECT MAX(date_naissance) FROM participants);

SELECT * FROM participants ORDER BY date_naissance DESC LIMIT 3; 
