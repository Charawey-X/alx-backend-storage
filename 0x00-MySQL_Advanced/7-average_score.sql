-- creates a stored procedure ComputeAverageScoreForUser that computes and store the average score for a student

DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id)
BEGIN 
	SELECT AVG(score) + 0.0 AS average FROM corrections WHERE user_id = user_id);
	UPDATE users SET average_score = average WHERE user_id = user_id;
END $$
DELIMITER;
