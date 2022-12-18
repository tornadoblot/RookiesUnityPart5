

SELECT 2021 - birthYear AS koreanAge
FROM players
WHERE deathYear IS NULL AND birthYear IS NOT NULL AND (2021 - birthYear) <= 80
ORDER BY koreanAge;

SELECT 2021 - NULL;

SELECT N'¾È³ç';

SELECT SUBSTRING('20221218', 1, 4);

SELECT nameFirst + ' ' + nameLast AS fullNAme
FROM players
WHERE nameFirst IS NOT NULL AND nameLast IS NOT NULL;
