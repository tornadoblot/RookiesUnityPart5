

-- ������ ���� ���� ���?
SELECT TOP 1 *
FROM salaries
ORDER BY salary DESC;

-- rodrial01�� ���� ��� 

SELECT *
FROM players
WHERE playerID = 'rodrial01';

-- �δܰ�� ������ ���� ���� �ѹ��� �ϴ°� ���� ����

-- ������ ��������
SELECT *
FROM players
WHERE playerID = (SELECT TOP 1 playerID FROM salaries ORDER BY salary DESC);

-- ������ ��������
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

-- ����Ʈ ���� Ÿ�ݿ� ������ ������
SELECT playerID
FROM players
WHERE playerID IN (SELECT playerID FROM battingpost);


SELECT *
FROM players
WHERE EXISTS (SELECT playerID FROM battingpost WHERE battingpost.playerID = players.playerID)