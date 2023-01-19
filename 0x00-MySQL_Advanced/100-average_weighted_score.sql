--  creates a stored procedure ComputeAverageWeightedScoreForUser that computes and store the average weighted score for a student

DELIMITER //
CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN user_id INT)
BEGIN
	DECLARE weighted_average FLOAT;
	DECLARE total_weight FLOAT;
	SET total_weight = (SELECT SUM(weight) FROM projects);
	CREATE FUNCTION total_score(a INT, b INT)
	RETURNS FLOAT
		RETURN (a*b)/total_weight;
	CREATE VIEW score_weight AS SELECT corrections.score AS score, 
	projects.weight AS weight FROM corrections, projects 
	WHERE corrections.project_id = projects.id AND corrections.user_id = user_id;
	SET weighted_average = (
		SELECT SUM(total_score(score, weight)) FROM score_weight;
	);
	UPDATE users SET average_score = weighted_average WHERE id = user_id;
END //
DELIMITER ;
