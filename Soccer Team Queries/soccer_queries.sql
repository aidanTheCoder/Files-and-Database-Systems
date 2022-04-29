SELECT Player, Teams.Team, Coach 
FROM Players JOIN Teams ON Teams.Team = Players.Team;

SELECT Coach, Time_Of_Game, Bring_Snacks
FROM Teams JOIN Schedule ON Schedule.Team = Teams.Team
JOIN Games ON Games.GameID = Schedule.GameID;

CREATE TABLE Opposition 
AS SELECT GameID, Schedule.Team, Bring_Snacks, Coach 
FROM Schedule JOIN Teams ON Teams.Team = Schedule.Team;

SELECT Player, Time_Of_Game, Opposition.Bring_Snacks, Opposition.Team AS against
FROM Players JOIN Schedule ON Schedule.Team = Players.Team
JOIN Opposition ON Opposition.Bring_Snacks != Schedule.Bring_Snacks
AND Opposition.GameID = Schedule.GameID
JOIN Games ON Games.GameID = Opposition.GameID;

SELECT Player, Time_Of_Game, Opposition.Bring_Snacks,
Opposition.Team AS against, Opposition.Coach AS lead_by
FROM Players JOIN Schedule ON Schedule.Team = Players.Team
JOIN Opposition ON Opposition.Bring_Snacks != Schedule.Bring_Snacks
AND Opposition.GameID = Schedule.GameID
JOIN Games ON Games.GameID = Opposition.GameID;













