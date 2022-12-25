

-- 연봉이 가장 높은 사람?
SELECT TOP 1 *
FROM salaries
ORDER BY salary DESC;

-- rodrial01이 높은 사람 

SELECT *
FROM players
WHERE playerID = 'rodrial01';

-- 두단계로 나눠서 하지 말고 한번에 하는게 서브 쿼리

-- 단일행 서브쿼리
SELECT *
FROM players
WHERE playerID = (SELECT TOP 1 playerID FROM salaries ORDER BY salary DESC);

-- 다중행 서브쿼리
SELECT *
FROM players
WHERE playerID IN (SELECT TOP 20 playerID FROM salaries ORDER BY salary DESC);

SELECT ( SELECT COUNT(*) FROM players) AS playerCount, (SELECT COUNT(*) FROM batting) AS battingCount;

SELECT *
FROM salaries
ORDER BY yearID DESC

-- INSERT INTO
INSERT INTO salaries
VALUES (2020, 'KOR', 'NL', 'elamb', (SELECT MAX(salary) FROM salaries));

-- INSERT SELECT
INSERT INTO salaries
SELECT 2020, 'KOR', 'NL', 'elamb2', (SELECT MAX(salary) FROM salaries);

/*
INSERT INTO salaries_temp
SELECT yearID, playerID, salary FROM salaries;

SELECT *
FROM salaries_temp;
*/

-- 포스트 시즌 타격에 참여한 선수들
SELECT playerID
FROM players
WHERE playerID IN (SELECT playerID FROM battingpost);


SELECT *
FROM players
WHERE EXISTS (SELECT playerID FROM battingpost WHERE battingpost.playerID = players.playerID)