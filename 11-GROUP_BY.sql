
-- 2004 �⵵ ������ �Ҽ����� ������ �������� Ÿ�� ����
SELECT *
FROM batting
WHERE yearID = 2004 AND teamID = 'BOS';

-- 2004 �⵵ ������ �Ҽ� Ȩ�� ����
SELECT SUM(HR)
FROM batting
WHERE yearID = 2004 AND teamID = 'BOS';

-- 2004 �⵵ ���� ���� Ȩ���� ���� ����?
SELECT *
FROM batting
WHERE yearID = 2004
ORDER BY teamID;

-- ������ ��� �м�
SELECT teamID, COUNT(teamID) AS playerCount, SUM(HR) AS homeRuns
FROM batting
WHERE yearID = 2004
GROUP BY teamID;

-- ������
SELECT teamID, SUM(HR) AS homeRuns
FROM batting
WHERE yearID = 2004
GROUP BY teamID
ORDER BY homeRuns DESC;

-- 2004 �⵵ 200 Ȩ�� �̻� ���� ������?
SELECT teamID, SUM(HR) AS homeRuns
FROM batting
WHERE yearID = 2004
GROUP BY teamID
HAVING SUM(HR) >= 200
ORDER BY homeRuns DESC;

-- �� �� ���� ���� ���� Ȩ���� ���� ����?
SELECT teamID, yearID, SUM(HR) AS homeRuns
FROM batting
GROUP BY teamID, yearID
ORDER BY homeRuns DESC;