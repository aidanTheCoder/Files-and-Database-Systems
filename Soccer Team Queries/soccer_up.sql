DROP TABLE IF EXISTS Players;
CREATE TABLE Players (first_name VARCHAR(15) primary key, last_name varchar(15), Team VARCHAR(20));

INSERT INTO Players VALUES ('Black', 'Widow', 'Avengers');
INSERT INTO Players VALUES ('Captain', 'America', 'Avengers');
INSERT INTO Players VALUES ('Iron', 'Man' 'Avengers');
INSERT INTO Players VALUES ('Incredible', 'Hulk', 'Avengers');
INSERT INTO Players VALUES ('Thor', 'Odinson', 'Avengers');

INSERT INTO Players VALUES ('Glen', 'Quagmire', 'Family Guys');
INSERT INTO Players VALUES ('Stewie', 'Griffon', 'Family Guys');
INSERT INTO Players VALUES ('Brian', 'Griffon', 'Family Guys');
INSERT INTO Players VALUES ('Joe', 'Swanson', 'Family Guys');
INSERT INTO Players VALUES ('Cleveland', 'Brown', 'Family Guys');

INSERT INTO Players VALUES ('Al', 'Capone', 'Outlaws');
INSERT INTO Players VALUES ('Jessie', 'James', 'Outlaws');
INSERT INTO Players VALUES ('Clyde', 'Barrow', 'Outlaws');
INSERT INTO Players VALUES ('Bonnie', 'Parker', 'Outlaws');
INSERT INTO Players VALUES ('Jabba', 'TheHutt', 'Outlaws');

INSERT INTO Players VALUES ('Darth', 'Vader', 'Galactic Empire');
INSERT INTO Players VALUES ('GrandMoff', 'Tarkin', 'Galactic Empire');
INSERT INTO Players VALUES ('Admiral', 'Thrawn', 'Galactic Empire');
INSERT INTO Players VALUES ('Boba', 'Fett', 'Galactic Empire');
INSERT INTO Players VALUES ('THX', '1138', 'Galactic Empire');

INSERT INTO Players VALUES ('Genghis', 'Khan', 'Conquerors');
INSERT INTO Players VALUES ('Alexander', 'Great', 'Conquerors');
INSERT INTO Players VALUES ('Atilla', 'Hun', 'Conquerors');
INSERT INTO Players VALUES ('Napoleon', 'Bonaparte', 'Conquerors');
INSERT INTO Players VALUES ('Augustus', 'Caesar', 'Conquerors');

INSERT INTO Players VALUES ('Stevie', 'Wonder', 'Rock Stars');
INSERT INTO Players VALUES ('Ozzy', 'Osbourne', 'Rock Stars');
INSERT INTO Players VALUES ('Elton', 'John', 'Rock Stars');
INSERT INTO Players VALUES ('Freddie', 'Mercury', 'Rock Stars');
INSERT INTO Players VALUES ('Eric', 'Clapton', 'Rock Stars');

DROP TABLE IF EXISTS Teams;
CREATE TABLE Teams (Team VARCHAR(20) PRIMARY KEY, Coach VARCHAR(25));

INSERT INTO Teams VALUES ('Avengers', 'Nick Fury');
INSERT INTO Teams VALUES ('Family Guys', 'Peter Griffon');
INSERT INTO Teams VALUES ('Outlaws', 'Billy The Kid');
INSERT INTO Teams VALUES ('Galactic Empire', 'Darth Sidious');
INSERT INTO Teams VALUES ('Rock Stars', 'Iain Macmillan');
INSERT INTO Teams VALUES ('Conquerors', 'Cyrus The Great');

DROP TABLE IF EXISTS Games;
CREATE TABLE Games (GameID INT AUTO_INCREMENT PRIMARY KEY, Time_Of_Game DATETIME, Game_Location VARCHAR(15));

INSERT INTO Games (Time_Of_Game, Game_Location) VALUES ('2021-10-03 01:30:00', 'Stark Tower');
INSERT INTO Games (Time_Of_Game, Game_Location) VALUES ('2021-10-20 11:00:00', '31 Spooner St');
INSERT INTO Games (Time_Of_Game, Game_Location) VALUES ('2021-10-27 01:00:00', 'Wild West');
INSERT INTO Games (Time_Of_Game, Game_Location) VALUES ('2021-10-09 12:05:00', 'Death Star');
INSERT INTO Games (Time_Of_Game, Game_Location) VALUES ('2021-10-12 01:10:00', 'The World');
INSERT INTO Games (Time_Of_Game, Game_Location) VALUES ('2021-10-30 07:00:00', 'The Grammies');
INSERT INTO Games (Time_Of_Game, Game_Location) VALUES ('2021-10-23 04:30:00', 'Stark Tower');
INSERT INTO Games (Time_Of_Game, Game_Location) VALUES ('2021-10-18 05:40:00', '31 Spooner St');
INSERT INTO Games (Time_Of_Game, Game_Location) VALUES ('2021-10-01 01:00:00', 'Wild West');
INSERT INTO Games (Time_Of_Game, Game_Location) VALUES ('2021-10-05 02:30:00', 'Death Star');
INSERT INTO Games (Time_Of_Game, Game_Location) VALUES ('2021-10-25 05:40:00', 'The World');
INSERT INTO Games (Time_Of_Game, Game_Location) VALUES ('2021-10-26 05:40:00', 'The Grammies');
INSERT INTO Games (Time_Of_Game, Game_Location) VALUES ('2021-10-06 05:15:00', 'Death Star');
INSERT INTO Games (Time_Of_Game, Game_Location) VALUES ('2021-10-19 12:00:00', 'The World');
INSERT INTO Games (Time_Of_Game, Game_Location) VALUES ('2021-10-11 01:30:00', '31 Spooner St');

DROP TABLE IF EXISTS Schedule;
CREATE TABLE Schedule (GameID INT AUTO_INCREMENT, Team VARCHAR(20), 
					   Bring_Snacks TINYINT, Score TINYINT, PRIMARY KEY(GameID,Bring_Snacks));
		
INSERT INTO Schedule VALUES (1, 'Avengers',1,7);
INSERT INTO Schedule VALUES (1, 'Family Guys',0,3);
INSERT INTO Schedule VALUES (2, 'Family Guys',1,4);
INSERT INTO Schedule VALUES (2, 'Outlaws',0,5);
INSERT INTO Schedule VALUES (3, 'Outlaws',1,7);
INSERT INTO Schedule VALUES (3, 'Galactic Empire',0,1);
INSERT INTO Schedule VALUES (4, 'Galactic Empire',1,10);
INSERT INTO Schedule VALUES (4, 'Conquerors',0,5);
INSERT INTO Schedule VALUES (5, 'Conquerors',1,10);
INSERT INTO Schedule VALUES (5, 'Rock Stars',0,6);
INSERT INTO Schedule VALUES (6, 'Rock Stars',1,3);
INSERT INTO Schedule VALUES (6, 'Avengers',0,7);
INSERT INTO Schedule VALUES (7, 'Avengers',1,1);
INSERT INTO Schedule VALUES (7, 'Outlaws',0,10);
INSERT INTO Schedule VALUES (8, 'Family Guys',1,4);
INSERT INTO Schedule VALUES (8, 'Galactic Empire',0,2);
INSERT INTO Schedule VALUES (9, 'Outlaws',1,1);
INSERT INTO Schedule VALUES (9, 'Conquerors',0,3);
INSERT INTO Schedule VALUES (10, 'Galactic Empire',1,4);
INSERT INTO Schedule VALUES (10, 'Rock Stars',0,8);
INSERT INTO Schedule VALUES (11, 'Conquerors',1,2);
INSERT INTO Schedule VALUES (11, 'Avengers',0,3);
INSERT INTO Schedule VALUES (12, 'Rock Stars',1,2);
INSERT INTO Schedule VALUES (12, 'Family Guys',0,1);
INSERT INTO Schedule VALUES (13, 'Galactic Empire',1,8);
INSERT INTO Schedule VALUES (13, 'Avengers',0,7);
INSERT INTO Schedule VALUES (14, 'Conquerors',1,1);
INSERT INTO Schedule VALUES (14, 'Family Guys',0,4);
INSERT INTO Schedule VALUES (15, 'Outlaws',1,5);
INSERT INTO Schedule VALUES (15, 'Rock Stars',0,8);  