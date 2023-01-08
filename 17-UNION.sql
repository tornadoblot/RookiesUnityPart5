USE BaseballData;


-- Ŀ���� ��� ������ 3�鸸 �̻�
SELECT playerID, AVG(salary)
From salaries
GROUP BY playerID
HAVING AVG(salary) >= 3000000;


-- 12���� �¾ �������� ���̵�
SELECT playerID, birthMonth
From players
WHERE birthMonth = 12;

-- Ŀ���� ��� ������ 3�鸸 �̻� �̰ų� 12���� �¾ ����
-- �� ���̺��� OR�� ���ļ� ���� ���� �� ��� �ϴ°� UNION(�⺻������ �ߺ�����, �ߺ� ����� �� UNION ALL)
SELECT playerID
From salaries
GROUP BY playerID
HAVING AVG(salary) >= 3000000
UNION
SELECT playerID
From players
WHERE birthMonth = 12
ORDER BY playerID;


-- ��� ������ 3�鸸 �̻��̰� 12���� �¾ ����
SELECT playerID
From salaries
GROUP BY playerID
HAVING AVG(salary) >= 3000000
INTERSECT
SELECT playerID
From players
WHERE birthMonth = 12
ORDER BY playerID;