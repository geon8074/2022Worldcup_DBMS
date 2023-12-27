DELIMITER $$
 
CREATE TRIGGER manager_fire
AFTER DELETE  
ON manager
FOR EACH ROW 
 
BEGIN
 
UPDATE national_team 
SET main_formation = NULL 
WHERE old.national_team_name = national_team.national_team_name;

END $$
 
DELIMITER ;



