
SELECT COUNT(*)
FROM players;

SELECT COUNT(birthYear)
FROM players;

SELECT DISTINCT birthCity
FROM players;

SELECT DISTINCT birthYear, birthMonth, birthDay
FROM players;

SELECT AVG(CASE WHEN weight IS NULL THEN 0 ELSE weight END)
FROM players;


SELECT MIN(weight), MAX(weight)
FROM players;