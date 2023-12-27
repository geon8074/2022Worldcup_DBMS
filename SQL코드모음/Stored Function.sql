DELIMITER //

CREATE FUNCTION fullname
-- These are the input parameters
		(
		 varfirstname		varChar(40),
		 varlastname		varChar(40)
		)
RETURNS varChar(40) DETERMINISTIC
BEGIN 
	-- This is the variable that will hold the value to be returned
	DECLARE	varfullname	varChar(40);
	-- SQL statements to concatenate the names in the proper order
	SET varfullname = CONCAT(varfirstname, ', ', varlastname);
	-- Return the concatenated name
	RETURN varfullname;

END
//

DELIMITER ;

SELECT 		fullname(firstname, lastname) AS playername,
		national_team_name, back_number, position, age, height, club_team_name
FROM		player
ORDER BY	playername;

SELECT		fullname(firstname, lastname) AS managername,
			nationality, national_team_name, installation, age 
FROM		manager
ORDER BY	managername;

