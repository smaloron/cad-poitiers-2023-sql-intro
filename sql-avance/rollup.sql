USE formation_sql;


SELECT 
COALESCE(t.an, 'TOTAL') as an,
t.montant
 FROM (
    SELECT 
    YEAR(date_vente) as an, 
    SUM(montant) as montant
    FROM ventes
    GROUP BY an
    WITH ROLLUP
) as t
;

SET @total := 0;

SELECT 
t.an, t.mois, t.montant,
(@total := @total + montant) as cumul
FROM (
    SELECT 
    YEAR(date_vente) as an, 
    MONTH(date_vente) as mois,
    SUM(montant) as montant
    FROM ventes
    GROUP BY an, mois
) as t;


CREATE OR REPLACE VIEW ventes_par_an_et_mois AS
SELECT 
    YEAR(date_vente) as an, 
    MONTH(date_vente) as mois,
    SUM(montant) as montant
    FROM ventes
    GROUP BY an, mois;


SELECT 
an, mois, montant,
(@total := @total + montant) as cumul
FROM ventes_par_an_et_mois;

SELECT * FROM ventes_par_an_et_mois;