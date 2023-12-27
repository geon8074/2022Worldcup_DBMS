DELIMITER //
CREATE PROCEDURE Club_Player_For_Fans(

IN ClubName varchar(50))

BEGIN
SELECT * From player where club_team_name = ClubName;

END //
DELIMITER ;

call Club_Player_For_Fans('Bayern Munich');

DELIMITER $$

CREATE PROCEDURE National_Team_Player_For_Fans(
IN NationalTeamName varchar(50))

BEGIN
SELECT * From player where national_team_name = NationalTeamName;

END $$
DELIMITER ;

