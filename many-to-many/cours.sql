CREATE TABLE cours (
    id SMALLINT UNSIGNED AUTO_INCREMENT,
    titre VARCHAR(40) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO cours (titre) VALUES
('Yoga'), ('Boxe'), ('Zumba'), ('Pilate');

CREATE TABLE inscriptions_cours (
    id_cours SMALLINT UNSIGNED,
    id_personne INT UNSIGNED,
    PRIMARY KEY (id_cours, id_personne),
    CONSTRAINT inscription_to_personne
        FOREIGN KEY (id_personne)
        REFERENCES personnes(id),
    CONSTRAINT inscription_to_cours
        FOREIGN KEY (id_cours)
        REFERENCES cours(id)
);

INSERT INTO inscriptions_cours 
(id_cours, id_personne)
VALUES
(1, 2), (1, 3), (1, 8),
(2, 1), (2, 5), (2, 6),
(3, 3), (3, 4), (4, 6)
;

SELECT p.id, prenom, nom, GROUP_CONCAT(titre)
FROM personnes as p
INNER JOIN inscriptions_cours as ic
ON p.id = ic.id_personne
INNER JOIN cours
ON cours.id = ic.id_cours
GROUP BY p.id;
