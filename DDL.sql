CREATE TABLE club_team (
	club_team_name							varchar(40) 		NOT NULL,
	league_name 							varchar(40)		 	NOT NULL,
	club_ranking			 				Int					NOT NULL,
	
	CONSTRAINT 	club_teamPK				PRIMARY KEY(club_team_name)
                                    );
                                    
CREATE TABLE national_team (
	national_team_name 			     		varchar(40) 	NOT NULL,
	fifa_ranking							int		 		NOT NULL,
	main_formation			 				int				NULL,
	
	CONSTRAINT 	national_teamPK				PRIMARY KEY(national_team_name)
                                    );

CREATE TABLE manager (
	manager_id 			     				int 			NOT NULL AUTO_INCREMENT,
	firstname 								varchar(40)		NOT NULL,
	lastname 								varchar(40)		NOT NULL,
    nationality								varchar(40)		NOT NULL,
	national_team_name 						varchar(40)		NOT NULL,
	installation							varchar(40)		NOT NULL,
    age										int				NOT NULL,
	
    CONSTRAINT 	managerPK				PRIMARY KEY(manager_id),
	CONSTRAINT 	managerAK1				UNIQUE(firstname, lastname),
   	CONSTRAINT  national_teamFK2 			FOREIGN KEY(national_team_name)
							REFERENCES national_team(national_team_name)
 							        ON UPDATE NO ACTION
							        ON DELETE NO ACTION
						);
                                    
CREATE TABLE player (
	player_id 			     				INT 			NOT NULL AUTO_INCREMENT,
	firstname 								varchar(40)		NOT NULL,
	lastname 								varchar(40)		NOT NULL,
	national_team_name 						varchar(40)		NOT NULL,
	back_number								int				NOT NULL,
    position								varchar(40)		NOT NULL,
    age										int				NOT NULL,
    height									int				NOT NULL,
    club_team_name							varchar(40)		NULL,	
    CONSTRAINT 	playerPK				PRIMARY KEY(player_id),
	CONSTRAINT 	playerAK1				UNIQUE(firstname, lastname),
	CONSTRAINT  club_teamFK 			FOREIGN KEY(club_team_name)
							REFERENCES club_team(club_team_name)
 							        ON UPDATE NO ACTION
							        ON DELETE NO ACTION,
   	CONSTRAINT  national_teamFK1 			FOREIGN KEY(national_team_name)
							REFERENCES national_team(national_team_name)
 							        ON UPDATE NO ACTION
							        ON DELETE NO ACTION                                 
      );
                                    