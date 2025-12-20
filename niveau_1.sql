SELECT * FROM `participants` ;
SELECT nom , prenom FROM participants WHERE nationalite = 'Marocaine';
SELECT COUNT(*) FROM participants;
SELECT * FROM participants WHERE date_naissance < '1994-12-30';
SELECT * FROM participants ORDER BY prenom