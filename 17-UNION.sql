USE BaseballData;


-- 커리어 평균 연봉이 3백만 이상
SELECT playerID, AVG(salary)
From salaries
GROUP BY playerID
HAVING AVG(salary) >= 3000000;


-- 12월에 태어난 선수들의 아이디
SELECT playerID, birthMonth
From players
WHERE birthMonth = 12;

-- 커리어 평균 연봉이 3백만 이상 이거나 12월에 태어난 선수
-- 두 테이블을 OR로 합쳐서 보고 싶을 때 사용 하는게 UNION(기본적으로 중복제거, 중복 허용할 시 UNION ALL)
SELECT playerID
From salaries
GROUP BY playerID
HAVING AVG(salary) >= 3000000
UNION
SELECT playerID
From players
WHERE birthMonth = 12
ORDER BY playerID;


-- 평균 연봉이 3백만 이상이고 12월에 태어난 선수
SELECT playerID
From salaries
GROUP BY playerID
HAVING AVG(salary) >= 3000000
INTERSECT
SELECT playerID
From players
WHERE birthMonth = 12
ORDER BY playerID;