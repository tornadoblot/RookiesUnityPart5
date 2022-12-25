/*
playerId: ����ID
yearID: ���� �⵵
teamID: �� ID
G_batting: ���� ��� + Ÿ��

AB: Ÿ��
H: ��Ÿ
R: ���
2B: 2��Ÿ
3B: 3��Ÿ
HR: Ȩ��
BB: ����
*/
-- 1) ������ �Ҽ� ������ ���� ���
USE BaseballData;

SELECT *
FROM batting
WHERE teamID = 'BOS';

-- 2) ������ �Ҽ� �������� ��?(�ߺ� ����)
SELECT COUNT(DISTINCT playerID)
FROM batting
WHERE teamID='BOS';

-- 3) ������ ���� 2004�⵵�� ģ Ȩ�� ����
SELECT SUM(HR)
FROM batting
WHERE yearID='2004' AND teamID='BOS';

-- 4) ������ �� �Ҽ� ���� �⵵ �ִ� Ȩ���� ģ ����� ����
SELECT TOP 1 *
FROM batting
ORDER BY HR DESC;