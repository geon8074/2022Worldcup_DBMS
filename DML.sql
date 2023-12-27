DELETE 
FROM player 
WHERE firstname = 'Heungmin' AND lastname = 'SON' ;

INSERT 
INTO club_team 
VALUES ('Suwon Samsung Bluewings', 'Others', 0);

INSERT 
INTO player (firstname, lastname, national_team_name, back_number, position, age, height, club_team_name)
VALUES ('Hyungyu', 'OH', 'Korea Republic', 7, 'FW', 21, 186, 'Suwon Samsung Bluewings');