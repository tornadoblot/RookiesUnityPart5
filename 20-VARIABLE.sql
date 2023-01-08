USE BaseballData;

DECLARE @i AS INT = 10;

DECLARE @j AS INT;
SET @j = 10;

DECLARE @firstName AS NVARCHAR(15);
DECLARE @lastName AS NVARCHAR(15);

SET @firstName = (SELECT TOP 1 nameFirst
					FROM players AS p
						INNER JOIN salaries AS s
						ON p.playerID = s.playerID
					ORDER BY s.salary DESC);
SELECT @firstName;

SELECT TOP 1 @firstName = p.nameFirst, @lastName = p.nameLast
					FROM players AS p
						INNER JOIN salaries AS s
						ON p.playerID = s.playerID
					ORDER BY s.salary DESC;

SELECT @firstName, @lastName;


GO
DECLARE @i AS INT = 10;


SELECT *
FOM players;
GO
SELECT *
FROM salaries;


GO
DECLARE @i AS INT = 10;

IF @i = 10
BEGIN
	PRINT('HI');
	PRINT('HELLO');
END
ELSE
	PRINT('BYE');

GO
DECLARE @i AS INT = 0;
WHILE @i <= 10
BEGIN
	SET @i = @i + 1;
	IF @i = 6 BREAK; -- CONTINUE;
	PRINT @i;
END

GO
DECLARE @test TABLE
(
	name VARCHAR(50) NOT NULL,
	salary INT NOT NULL
);

INSERT INTO @test
SELECT p.nameFirst + ' ' + p.nameLast, s.salary
FROM players AS p
	INNER JOIN salaries As s
	On p.playerID = s.playerID;

SELECT *
FROM @test;