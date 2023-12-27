CREATE VIEW PremierLeagueHighrank AS
	  SELECT	   firstname, lastname, national_team_name, back_number, position, age, height, p.club_team_name
	  FROM		   player AS p JOIN club_team AS ct
                                  ON p.club_team_name = ct.club_team_name
          WHERE    ct.league_name = 'Premier League' AND ct.club_ranking BETWEEN 1 AND 4
          ORDER BY p.club_team_name;
          
CREATE VIEW Ligue1Highrank AS
	  SELECT	   firstname, lastname, national_team_name, back_number, position, age, height, p.club_team_name
	  FROM		   player AS p JOIN club_team AS ct
                                  ON p.club_team_name = ct.club_team_name
          WHERE    ct.league_name = 'Ligue 1' AND ct.club_ranking BETWEEN 1 AND 4
          ORDER BY p.club_team_name;
          
CREATE VIEW SerieAHighrank AS
	  SELECT	   firstname, lastname, national_team_name, back_number, position, age, height, p.club_team_name
	  FROM		   player AS p JOIN club_team AS ct
                                  ON p.club_team_name = ct.club_team_name
          WHERE    ct.league_name = 'Serie A' AND ct.club_ranking BETWEEN 1 AND 4
          ORDER BY p.club_team_name;
          
CREATE VIEW BundesligaHighrank AS
	  SELECT	   firstname, lastname, national_team_name, back_number, position, age, height, p.club_team_name
	  FROM		   player AS p JOIN club_team AS ct
                                  ON p.club_team_name = ct.club_team_name
          WHERE    ct.league_name = 'Bundesliga' AND ct.club_ranking BETWEEN 1 AND 4
          ORDER BY p.club_team_name;

CREATE VIEW LaLigaHighrank AS
	  SELECT	   firstname, lastname, national_team_name, back_number, position, age, height, p.club_team_name
	  FROM		   player AS p JOIN club_team AS ct
                                  ON p.club_team_name = ct.club_team_name
          WHERE    ct.league_name = 'La Liga' AND ct.club_ranking BETWEEN 1 AND 4
          ORDER BY p.club_team_name;

CREATE VIEW Forward AS
	  SELECT *
	  FROM	 player 
	  WHERE position = 'FW' ;
      
CREATE VIEW Midfielder AS
	  SELECT *
	  FROM	 player 
	  WHERE position = 'MF' ;
      
CREATE VIEW  Defender AS
	  SELECT *
	  FROM	 player 
	  WHERE position = 'DF' ;
      
CREATE VIEW Goalkeeper AS
	  SELECT *
	  FROM	 player 
	  WHERE position = 'GK' ;
