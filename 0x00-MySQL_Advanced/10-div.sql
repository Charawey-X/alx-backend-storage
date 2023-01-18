-- creates a function SafeDiv that divides (and returns) the first by the second number or returns 0 if the second number is equal to 0

DELIMITER $$
CREATE FUNCTION SafeDiv(a INT, b INT) 
RETURNS INT 
BEGIN
	DECLARE result INT;
	SET result = IFNULL(b, 0);
	IF result != 0
	THEN
		result = a / result;
	END IF;
	RETURN result;
END $$
DELIMITER ;
