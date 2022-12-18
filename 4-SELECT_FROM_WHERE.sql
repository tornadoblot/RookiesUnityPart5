--SELECT *
--From players;

SELECT nameFirst AS name, nameLast, birthYear, birthCountry
FROM players
WHERE birthYear = 1974 OR birthCountry != 'USA' AND weight > 185;

SELECT *
FROM players
WHERE deathYear IS NOT NULL;


SELECT *
FROM players
WHERE birthCity LIKE 'New Yor_';