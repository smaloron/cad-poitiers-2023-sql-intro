/*
INSERT INTO adresses (rue,code_postal,ville)
VALUES
('5 grande rue', '25000', 'BESANCON'),
('12 rue Orfila', '75020', 'PARIS'),
('10 rue Olympe de Gouges', '75012', 'PARIS');
*/

SELECT * FROM personnes;

UPDATE personnes SET id_adresse = 1 WHERE
id = 8;

UPDATE personnes SET id_adresse = 3 WHERE
id = 3;

/*
UPDATE personnes SET id_adresse = NULL WHERE
id = 7;
*/

UPDATE personnes SET id_adresse = 2
WHERE nom='Atreides';

-- contrôle de l'intégrité référentielle
ALTER TABLE personnes 
ADD CONSTRAINT
personnes_to_adresses
FOREIGN KEY (id_adresse)
REFERENCES adresses(id);