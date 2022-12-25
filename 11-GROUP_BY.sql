
-- 2004 년도 보스턴 소속으로 출전한 선수들의 타격 정보
SELECT *
FROM batting
WHERE yearID = 2004 AND teamID = 'BOS';

-- 2004 년도 보스턴 소속 홈런 개수
SELECT SUM(HR)
FROM batting
WHERE yearID = 2004 AND teamID = 'BOS';

-- 2004 년도 가장 많은 홈런을 날린 팀은?
SELECT *
FROM batting
WHERE yearID = 2004
ORDER BY teamID;

-- 팀별로 묶어서 분석
SELECT teamID, COUNT(teamID) AS playerCount, SUM(HR) AS homeRuns
FROM batting
WHERE yearID = 2004
GROUP BY teamID;

-- 정답은
SELECT teamID, SUM(HR) AS homeRuns
FROM batting
WHERE yearID = 2004
GROUP BY teamID
ORDER BY homeRuns DESC;

-- 2004 년도 200 홈런 이상 날린 팀들은?
SELECT teamID, SUM(HR) AS homeRuns
FROM batting
WHERE yearID = 2004
GROUP BY teamID
HAVING SUM(HR) >= 200
ORDER BY homeRuns DESC;

-- 한 해 동안 가장 많은 홈런을 날린 팀은?
SELECT teamID, yearID, SUM(HR) AS homeRuns
FROM batting
GROUP BY teamID, yearID
ORDER BY homeRuns DESC;