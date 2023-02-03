USE cours;

DROP PROCEDURE IF EXISTS new_saleman;

DELIMITER //
CREATE PROCEDURE new_saleman(
    p_nom VARCHAR(30),
    p_cp CHAR(5),
    p_chef INT
)
BEGIN
    INSERT INTO vendeurs (nom, cp, chef) VALUES (p_nom, p_cp, p_chef);
END //

DELIMITER ;


CALL new_saleman('toto', '59000', 1);