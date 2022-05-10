/* Question 2: Use CREATE PROCEDURE to create a stored 
 * procedure that lists the team names. This procedure 
 * does not need any arguments. Demonstrate that you 
 * procedure works with CALL in the mysql console login. */

DROP PROCEDURE IF EXISTS showTeams;

DELIMITER //
CREATE PROCEDURE showTeams()
BEGIN
    SELECT team FROM Teams;
END//
DELIMITER ;

CALL showTeams();

/* Question 3: Use CREATE PROCEDURE to create a stored procedure  
 * that returns the team name of a given player. This query must 
 * take one or two arguments and use them in a WHERE or 
 * equivalent clause to display only the one team name. 
 * Demonstrate that you procedure works with CALL in the 
 * mysql console login. */

DROP PROCEDURE IF EXISTS playerWithTeam;

DELIMITER //
CREATE PROCEDURE playerWithTeam(IN fName varchar(15), lName varchar(15))
BEGIN
	SELECT first_name, last_name, Team FROM Players
	WHERE first_name = fName AND last_name = lName;
END//

DELIMITER ;

CALL playerWithTeam('Captain', 'America');

/* Question 6: Creates the procedure necessary to run
 * in the PHP script.*/

DROP PROCEDURE IF EXISTS playerSchedule;

DELIMITER //
CREATE PROCEDURE playerSchedule(IN fName varchar(15), lName varchar(15))
BEGIN
	SELECT first_name, last_name, DATE(Time_Of_Game), TIME(Time_Of_Game),
	Opposition.Bring_Snacks, Opposition.Team AS against, Opposition.Coach AS lead_by
	FROM Players JOIN Schedule ON Schedule.Team = Players.Team
	JOIN Opposition ON Opposition.Bring_Snacks != Schedule.Bring_Snacks
	AND Opposition.GameID = Schedule.GameID
	JOIN Games ON Games.GameID = Opposition.GameID
	WHERE Players.first_name = fName AND Players.last_name = lName;
END//

DELIMITER ;

CALL playerSchedule('GrandMoff', 'Tarkin');



