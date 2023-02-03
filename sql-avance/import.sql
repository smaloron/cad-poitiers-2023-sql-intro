USE formation_sql;

ALTER TABLE personnes ADD COLUMN nationalite CHAR(2);

LOAD DATA LOCAL INFILE
'/Users/seb/Documents/formation/000-cda-poitiers-2023/sql-intro/data/persons.csv'
INTO TABLE personnes
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(nom, prenom, nationalite, @date)
SET date_naissance = STR_TO_DATE(@date, '%d/%m/%Y');
