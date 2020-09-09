## Progression


-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**
        SELECT * FROM TEAM ORDER BY NAME;
-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**
        SELECT * FROM PLAYER WHERE NAME LIKE 'S%' AND COUNTRY NOT IN ('South Africa') ORDER BY NAME DESC;
-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**
        SELECT EVENT_NO, CLOCK_IN_SECONDS FROM EVENT ORDER BY EVENT_NO ASC; 
-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**
        SELECT EVENT_NO FROM EVENT WHERE (RAID_POINTS + DEFENDING_POINTS)>2 ORDER BY EVENT_NO ASC;
-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**
        SELECT NAME FROM PLAYER WHERE COUNTRY IN('INDIA','IRAN') ORDER BY NAME ASC;    
-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**
        SELECT NAME FROM PLAYER WHERE COUNTRY NOT IN('INDIA','IRAN') ORDER BY NAME ASC;
-- 7. **Write a query to display the names of all the skills that start with `Defend`. Display the records sorted in ascending order based on skill name.**
        SELECT NAME FROM SKILL WHERE NAME LIKE 'Defend%' ORDER BY NAME ASC;
-- 8. **Write a query to display all the stadium names that ends with `Complex`. Display the records sorted in ascending order based on stadium names.**
        SELECT STADIUM_NAME FROM VENUE WHERE STADIUM_NAME LIKE '%Complex' ORDER BY STADIUM_NAME ASC;
-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**
         SELECT WINNER_TEAM_ID, SCORE FROM OUTCOME WHERE SCORE<35 ORDER BY ID DESC; 
-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**
        SELECT * FROM GAME WHERE GAME_DATE BETWEEN '01-01-2020' AND '01-04-2020' ORDER BY ID DESC;
-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**
        SELECT NAME FROM PLAYER WHERE ID IN(SELECT RAIDER_ID FROM EVENT) ORDER BY NAME ASC;
-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**
        SELECT EVENT_NO, RAID_POINTS, DEFENDING_POINTS FROM EVENT WHERE INNINGS_ID = (SELECT first_innings_id FROM GAME  WHERE GAME_DATE = '26-01-2020' ) ORDER BY EVENT_NO ASC; 
-- 13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**
        SELECT NAME FROM TEAM WHERE ID=(SELECT WINNER_TEAM_ID FROM OUTCOME WHERE OUTCOME_ID = (SELECT OUTCOME_ID FROM GAME WHERE GAME_DATE = '03-09-2020')) ORDER BY NAME ASC;
-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**
        SELECT NAME FROM PLAYER WHERE ID = (SELECT PLAYER_OF_MATCH FROM OUTCOME  WHERE ID = (SELECT OUTCOME_ID FROM GAME WHERE GAME_DATE='09-03-2020')) ORDER BY NAME ASC;
-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**
        SELECT NAME FROM PLAYER WHERE SKILL_ID IN (SELECT ID FROM SKILL WHERE NAME = 'All Rounder') ORDER BY NAME ASC;
-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**
        SELECT STADIUM_NAME FROM VENUE WHERE ID = (SELECT VENUE_ID FROM GAME WHERE GAME_DATE = '09-03-2020') ORDER BY STADIUM_NAME ASC;
-- 17. **Write a query to display the Coach's name of the team `Iran`**
        SELECT COACH FROM TEAM WHERE ID = (SELECT TEAM_ID FROM PLAYER WHERE COUNTRY ='Iran' ) ;
-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**
        SELECT EVENT_NO, DEFENDING_POINTS FROM EVENT WHERE RAIDER_ID = (SELECT ID FROM PLAYER WHERE NAME = 'Fazel Atrachali') ORDER BY EVENT_NO ASC;
-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**
        SELECT NAME FROM TEAM WHERE ID = (SELECT WINNER_TEAM_ID FROM OUTCOME WHERE ID = (SELECT OUTCOME_ID FROM GAME WHERE GAME_DATE BETWEEN'01-03-2020' AND '31-03-2020' )) ORDER BY NAME DESC;
-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**
        SELECT NAME FROM PLAYER WHERE ID = (SELECT PLAYER_OF_MATCH FROM OUTCOME WHERE ID = (SELECT OUTCOME_ID FROM GAME WHERE GAME_DATE BETWEEN'01-03-2020' AND '31-03-2020' )) ORDER BY NAME DESC;
