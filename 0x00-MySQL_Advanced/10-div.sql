-- creates a function SafeDiv that divides (and returns) the first by the second number or returns 0 if the second number is equal to 0

DELIMITER $$
CREATE FUNCTION SafeDiv(a INT, b INT) 
RETURNS INT 
BEGIN
	DECLARE result INT;
	DECLARE c INT;
	SET c = IFNULL(b, 0);
	IF c != 0
	THEN
		result = a / c;
	ELSE 
		result = c;
	END IF;
	RETURN result;
END $$
DELIMITER ;
