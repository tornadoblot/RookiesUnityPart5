USE BaseballData;

SELECT *
FROM salaries
ORDER BY salary DESC;

SELECT playerID
FROM salaries
GROUP BY playerID
ORDER BY MAX(salary) DESC;

SELECT *,
	ROW_NUMBER() OVER (ORDER BY salary DESC), -- �� ��ȣ
	RANK() OVER (ORDER BY salary DESC), -- ��ŷ(1, 1, 3)
	DENSE_RANK() OVER (ORDER BY salary DESC), -- ��ŷ(1, 1, 2)
	NTILE(100) OVER (ORDER BY salary DESC) -- ���� N%
FROM salaries;

SELECT *,
	RANK() OVER (PARTITION BY playerID ORDER BY salary DESC)
FROM salaries
ORDER BY playerID;

SELECT *,
	RANK() OVER (PARTITION BY playerID ORDER BY salary DESC),
	LAG(salary) OVER (PARTITION BY playerID ORDER BY salary DESC) AS prevSalary,
	LEAD(salary) OVER (PARTITION BY playerID ORDER BY salary DESC) AS nextSalary
FROM salaries
ORDER BY playerID;

SELECT *,
	RANK() OVER (PARTITION BY playerID ORDER BY salary DESC),
	FIRST_VALUE(salary) OVER (PARTITION BY playerID ORDER BY salary DESC
								ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS best, -- ó������ ������(�⺻)
	LAST_VALUE(salary) OVER (PARTITION BY playerID ORDER BY salary DESC 
								ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS worst -- ������ ����������

FROM salaries
ORDER BY playerID;