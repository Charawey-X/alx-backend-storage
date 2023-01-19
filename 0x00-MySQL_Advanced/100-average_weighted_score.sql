--  creates a stored procedure ComputeAverageWeightedScoreForUser that computes and store the average weighted score for a student

DELIMITER //
CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN user_id INT)
BEGIN
	DECLARE weighted_average FLOAT;
	DECLARE total_weight INT;
	SET total_weight = SELECT SUM(weight) FROM projects;
	SET weighted_average = (
		SELECT SUM(X.score * X.weight)/total_weight FROM (
			SELECT project_id, score FROM corrections AS C JOIN 
			projects.weight AS weight ON C.project_id = projects.id 
			WHERE C.user_id = user_id	
		) AS X
	);
	UPDATE users SET average_score = weighted_average WHERE id = user_id;
END //
DELIMITER ;
