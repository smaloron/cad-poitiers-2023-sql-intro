-- Création de la base de données
CREATE DATABASE IF NOT EXISTS cda_poitiers_2023_sql
DEFAULT CHARACTER SET utf8
COLLATE utf8_general_ci;

# Activation de la base de données
USE cda_poitiers_2023_sql;

/*********************************
* Création de la table
**********************************/
CREATE TABLE IF NOT EXISTS personnes (
	id INT UNSIGNED AUTO_INCREMENT,
    prenom VARCHAR(20),
    nom VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO personnes 
(prenom, nom)
VALUES
('Duncan','Idaho'),
('Jessica', 'Atreides'),
('Paul', 'Atreides'),
('Leto', 'Atreides'),
(NULL, 'Socrates'),
(NULL, 'Alain')
;

