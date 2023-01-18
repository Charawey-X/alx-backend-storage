-- creates a stored procedure AddBonus that adds a new correction for a student

DELIMITER //
CREATE PROCEDURE AddBonus(IN user_id, IN project_name, IN score)
BEGIN 
	DECLARE @count INT;
	SET @count = (SELECT COUNT(*) FROM projects WHERE name = project_name);
	IF (@count = 0) 
		INSERT INTO projects(name) VALUES(project_name) 
	ELSE 
		DECLARE @project_id INT;
		SET @project_id = (SELECT id FROM projects WHERE name = project_name);
	END IF;
	INSERT INTO corrections(user_id, project_id, score) 
	VALUES(user_id, @project_id, score);
END //
DELIMITER;
