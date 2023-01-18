-- creates a stored procedure ComputeAverageScoreForUser that computes and store the average score for a student

DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id)
BEGIN 
	DECLARE average FLOAT;
	SET average = (SELECT AVG(score) AS C FROM corrections WHERE C.user_id = user_id);
	UPDATE users SET average_score = average WHERE id = user_id;
END $$
DELIMITER;
