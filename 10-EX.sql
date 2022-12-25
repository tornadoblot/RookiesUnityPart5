/*
playerId: 선수ID
yearID: 시즌 년도
teamID: 팀 ID
G_batting: 출전 경기 + 타석

AB: 타수
H: 안타
R: 출루
2B: 2루타
3B: 3루타
HR: 홈런
BB: 볼넷
*/
-- 1) 보스턴 소속 선수들 정보 출력
USE BaseballData;

SELECT *
FROM batting
WHERE teamID = 'BOS';

-- 2) 보스턴 소속 선수들의 수?(중복 제거)
SELECT COUNT(DISTINCT playerID)
FROM batting
WHERE teamID='BOS';

-- 3) 보스턴 팀이 2004년도에 친 홈런 개수
SELECT SUM(HR)
FROM batting
WHERE yearID='2004' AND teamID='BOS';

-- 4) 보스턴 팀 소속 단일 년도 최다 홈런을 친 사람의 정보
SELECT TOP 1 *
FROM batting
ORDER BY HR DESC;