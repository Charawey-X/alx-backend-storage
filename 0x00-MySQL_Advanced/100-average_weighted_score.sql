--  creates a stored procedure ComputeAverageWeightedScoreForUser that computes and store the average weighted score for a student

DELIMITER //
CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN user_id INT)
BEGIN
	DECLARE weighted_average FLOAT;
	SET weighted_average = (
		SELECT SUM(score * weight)/ SUM(weight) FROM users AS U 
		JOIN corrections AS C ON U.id = C.user_id 
		JOIN projects AS P ON P.id = C.project_id
		WHERE U.id = user_id
	);
	UPDATE users SET average_score = weighted_average WHERE id = user_id;
END //
DELIMITER ;
