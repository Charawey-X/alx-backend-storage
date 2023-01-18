-- creates a stored procedure AddBonus that adds a new correction for a student

DROP PROCEDURE IF EXISTS AddBonus;
DELIMITER //
CREATE PROCEDURE AddBonus(IN user_id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN 
	DECLARE @project_id INT;
	DECLARE @exists INT;
	SET @exists = EXISTS(SELECT id FROM projects WHERE name = project_name);
	IF (@exists = 0) 
		INSERT INTO projects(name) VALUES(project_name);
	END IF;
	SET @project_id = SELECT id FROM projects WHERE name = project_name LIMIT 1;
	INSERT INTO corrections(user_id, project_id, score) 
	VALUES(user_id, @project_id, score);
END //
DELIMITER;
