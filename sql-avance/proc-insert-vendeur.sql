USE cours;

DROP PROCEDURE IF EXISTS new_saleman;

DELIMITER //
CREATE PROCEDURE new_saleman(
    p_nom VARCHAR(30),
    p_cp CHAR(5),
    p_chef INT
)
BEGIN
	IF TRIM(p_nom) != "" AND TRIM(p_cp) != "" THEN
		INSERT INTO vendeurs 
			(nom, cp, chef) 
			VALUES (p_nom, p_cp, p_chef);
	ELSE
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Arguments invalides';
	END IF;
END //

DELIMITER ;


CALL new_saleman('toto', '', 1);