--  creates a stored procedure ComputeAverageWeightedScoreForUser that computes and store the average weighted score for a student

DELIMITER //
CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN user_id INT)
BEGIN
	DECLARE weighted_average FLOAT;
	DECLARE total_weight INT;
	SET total_weight = (SELECT SUM(weight) FROM projects);
	SET weighted_average = (
		SELECT SUM(X.score * X.weight)/total_weight FROM (
			SELECT C.project_id AS project_id, C.score AS score, 
		        P.weight AS weight FROM corrections as C 
			JOIN projects AS P ON P.id = C.project_id 
			WHERE C.user_id = user_id;
		)
	);
	UPDATE users SET average_score = weighted_average WHERE id = user_id;
END //
DELIMITER ;
