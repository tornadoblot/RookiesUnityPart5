USE Northwind;

CREATE TABLE TestAccess
(
	id INT NOT NULL,
	name NCHAR(50) NOT NULL,
	dummy NCHAR(1000) NULL
);

CREATE CLUSTERED INDEX TestAccess_CI
On TestAccess(id);

CREATE NONCLUSTERED INDEX TestAccess_NCI
ON TestAccess(name);

DECLARE @i INT;
SET @i = 0;

WHILE (@i <= 500)
BEGIN
	INSERT INTO TestAccess
	VALUES(@i, 'Name' + CONVERT(VARCHAR, @i), 'Hello World ' + CONVERT(VARCHAR, @i));
	SET @i = @i + 1;
END

SELECT index_id, name
FROM sys.indexes
WHERE object_id = object_id('TestAccess');

DBCC IND('Northwind', 'TestAccess', 1);
DBCC IND('Northwind', 'TestAccess', 2);

SET STATISTICS TIME ON;
SET STATISTICS IO ON;

SELECT *
FROM TestAccess;

SELECT *
FROM TestAccess
WHERE id = 104;

SELECT *
FROM TestAccess
WHERE name = 'name5';

SELECT TOP 5 *
FROM TestAccess
ORDER BY name;