-- 

DELIMITER //
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
	UPDATE users AS U, 
	(
		SELECT U.id, SUM(score * weight)/SUM(weight) AS WA FROM users AS U,
		JOIN corrections AS C ON C.user_id = U.id
		JOIN projects AS P ON P.id = C.project_id
		GROUP BY U.id
	) AS weighted_averages 
	SET U.average_score = weighted_averages.WA WHERE U.id = weighted_averages.id;
END //
DELIMITER ;
