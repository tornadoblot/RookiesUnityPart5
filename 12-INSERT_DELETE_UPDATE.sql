
SELECT *
FROM salaries
ORDER BY yearID DESC;

INSERT INTO salaries
VALUES (2020, 'KOR', 'NL', 'elamb', 1000000);

INSERT INTO salaries(yearID, teamID, playerID, lgID, salary)
VALUES (2020, 'KOR', 'elamb2', 'NL', 10000000);

INSERT INTO salaries(yearID, teamID, playerID, lgID)
VALUES (2020, 'KOR', 'elamb3', 'NL');


DELETE FROM salaries
WHERE playerID = 'elamb3';


UPDATE salaries
SET salary = salary * 2, yearID = yearID + 1
WHERE teamID = 'KOR';


DELETE FROM salaries
WHERE yearID > 2020;