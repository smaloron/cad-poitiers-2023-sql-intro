USE cours;
SELECT 
    id_client as id, 
    CONCAT_WS(' ', prenom, nom) as nom,
    date_naissance,
    cp,
    'clients' as source
FROM clients
UNION
SELECT
    id_vendeur,
    nom,
    NULL,
    cp,
    'vendeurs'
FROM vendeurs

ORDER BY cp;