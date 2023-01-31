
DESCRIBE personnes;

ALTER TABLE personnes ADD COLUMN
id_boss INT UNSIGNED;

ALTER TABLE personnes ADD CONSTRAINT
employe_to_boss
FOREIGN KEY (id_boss)
REFERENCES personnes(id);

UPDATE personnes set id_boss = 4 WHERE id IN (1,2,3);

UPDATE personnes set id_boss = 5 WHERE id IN (4,6);

SELECT 
CONCAT_WS(' ',p.nom, p.prenom) as employe, CONCAT_WS(' ',boss.nom, boss.prenom) as boss FROM personnes as p 
LEFT JOIN personnes as boss
ON p.id_boss = boss.id;