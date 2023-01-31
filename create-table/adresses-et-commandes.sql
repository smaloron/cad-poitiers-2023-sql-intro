USE cda_poitiers_2023_sql;

CREATE TABLE IF NOT EXISTS adresses(
	id SMALLINT UNSIGNED AUTO_INCREMENT,
    rue VARCHAR(38) NOT NULL,
    code_postal CHAR(5) NOT NULL,
    ville VARCHAR(33) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS commandes(
	id INT UNSIGNED AUTO_INCREMENT,
    date_commande DATE NOT NULL,
    montant DECIMAL(5,2) NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);

INSERT INTO commandes (date_commande, montant)
VALUES 
('2022-10-12', 20.78),
('2022-10-19', 50),
('2020-12-20', 40.50)
;