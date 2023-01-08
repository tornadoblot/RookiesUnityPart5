USE GameDb;

CREATE TABLE testA
(
	a INTEGER
);
CREATE TABLE testB
(
	b VARCHAR(10)
);

INSERT INTO testA VALUES(1);
INSERT INTO testA VALUES(2);
INSERT INTO testA VALUES(3);

INSERT INTO testB VALUES('A');
INSERT INTO testB VALUES('B');
INSERT INTO testB VALUES('C');


SELECT *
FROM testA
	CROSS JOIN testB;

SELECT *
FROM testA, testB;


USE BaseballData;

SELECT *
FROM players AS p
	INNER JOIN salaries AS s
	ON p.playerID = s.playerID;

SELECT *
FROM players AS p
	LEFT JOIN salaries AS s
	ON p.playerID = s.playerID;