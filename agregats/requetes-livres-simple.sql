-- Moyenne des prix des livres dont le genre est Informatique
SELECT AVG(prix) as moyenne FROM livres_simples
WHERE genre = 'Informatique';

SELECT MAX(prix) as prix_max FROM livres_simples 
WHERE editeur='Grasset';



SELECT COUNT(*) as nb FROM livres_simples WHERE genre LIKE 'roman%';

SELECT editeur, auteur, count(*) as nb FROM livres_simples 
GROUP BY editeur, auteur HAVING nb >1 ORDER BY nb DESC;

-- nombre de livres et moyenne du prix par genre
SELECT genre, COUNT(*) as nb, AVG(prix) as prix_moyen 
FROM livres_simples
GROUP BY genre;

-- nombre d'auteurs distincts par éditeurs COUNT(DISTINCT auteur)
SELECT editeur, COUNT(DISTINCT auteur) as nb_auteurs
FROM livres_simples
GROUP BY editeur;

-- La liste des auteurs qui travaillent avec plus d'un éditeur
SELECT auteur FROM livres_simples
GROUP BY auteur 
HAVING COUNT(DISTINCT editeur) > 1;

SELECT editeur, 
GROUP_CONCAT(DISTINCT auteur ORDER BY auteur_nom  SEPARATOR ' : ' ) 
FROM livres_simples
GROUP BY editeur

