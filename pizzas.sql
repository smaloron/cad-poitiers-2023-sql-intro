/*
Modéliser une application de création pizza
- Une pizza possède un nom
- Une pizza doit avoir des ingrédients
- Le même ingrédient peut être pour plusieures pizzas
- La même pizza peut être proposée dans des tailles différentes (petit, moyen, grand)

Prix de la pizza
- la taille indique un prix de base
- on fait ensuite la somme du prix des ingrédients
- On applique à la somme du prix des ingrédients un coefficient multiplicateur qui dépend de la taille
par exemple petit : 1, moyenne : 1.5, grande : 2

Faire une requête qui affiche toutes les pizzas dans toutes les tailles possibles avec leur tarif

Tables :
----------
pizzas
ingredients_pizza
recettes_pizza
tailles_pizza
*/

CREATE TABLE IF NOT EXISTS pizzas (
    id SMALLINT UNSIGNED AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS ingredients_pizza (
    id SMALLINT UNSIGNED AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prix DECIMAL(4,2) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS recettes_pizza (
    id_pizza SMALLINT UNSIGNED,
    id_ingredient SMALLINT UNSIGNED,
    PRIMARY KEY(id_pizza, id_ingredient),
    CONSTRAINT recette_to_pizza
        FOREIGN KEY (id_pizza)
        REFERENCES pizzas(id),
    CONSTRAINT recette_to_ingredient
        FOREIGN KEY (id_ingredient)
        REFERENCES ingredients_pizza(id)
);

CREATE TABLE IF NOT EXISTS tailles_pizza (
    id TINYINT UNSIGNED AUTO_INCREMENT,
    nom VARCHAR(30) NOT NULL,
    prix DECIMAL(4,2) NOT NULL,
    coeficient DECIMAL(2,1),
    PRIMARY KEY(id)
);

INSERT INTO tailles_pizza (nom,prix,coeficient)
VALUES
('Petite', 5, 1), ('Moyenne', 8, 1.5),
('Grande', 12, 2);

INSERT INTO ingredients_pizza (nom,prix)
VALUES ('Poivron', 2), ('Oignons', 1), ('lardons', 2), ('Saumon', 4);

INSERT INTO pizzas (nom) VALUES
('La super pizza'), ('La spécialité du chef');

INSERT INTO recettes_pizza (id_pizza, id_ingredient) VALUES 
(1, 1), (1, 2), (2, 4), (2,1);

-- création des INDEX
ALTER TABLE recettes_pizza 
ADD INDEX index_id_ingredient (id_ingredient);

ALTER TABLE recettes_pizza 
ADD INDEX index_id_pizza (id_pizza);

-- consulter les index
SHOW INDEXES FROM recettes_pizza;

-- Le menu de la pizzeria
CREATE OR REPLACE VIEW vue_pizzas AS
SELECT 
p.nom,
tp.nom as taille,
tp.prix + (SUM(ip.prix) * tp.coeficient) as prix

FROM tailles_pizza as tp, pizzas as p
INNER JOIN recettes_pizza as rp
ON p.id = rp.id_pizza
INNER JOIN ingredients_pizza as ip
ON ip.id = rp.id_ingredient
GROUP BY tp.coeficient,tp.prix,tp.nom, p.id
;