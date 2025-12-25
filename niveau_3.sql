SELECT p.nom ,  f.nom_formation 
FROM participants p
INNER JOIN formations f ON p.id = f.id; 

SELECT f.nom_formation , COUNT(pf.participant_id) AS nombre_participants 
FROM formations f 
LEFT JOIN participant_formation pf ON f.id = pf.participant_id 
GROUP BY f.id , f.nom_formation;

SELECT f.nom_formation , COUNT(pf.participant_id)
FROM formations f
INNER JOIN participant_formation pf ON f.id = pf.formation_id
GROUP BY f.nom_formation HAVING COUNT(pf.participant_id) > 4;

SELECT  p.nationalite 
FROM participants p 
INNER JOIN formations f ON p.id = f.id
WHERE f.nom_formation = 'Workshop Carte ID';
