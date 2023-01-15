USE Northwind;


SELECT *
FROM [Order Details]
ORDER BY OrderID;

SELECT *
INTO TestOrderDetails
FROM [Order Details];

SELECT *
FROM TestOrderDetails;

CREATE INDEX Index_TestOrderDetails
ON TestOrderDetails(OrderID, ProductID);

EXEC sp_helpindex 'TestOrderDetails';

SELECT *
FROM TestOrderDetails
WHERE OrderID = 10248 AND ProductID = 11;

DBCC IND('Northwind', 'TestOrderDetails', 2);

DBCC PAGE('Northwind', 1, 824, 3);

DECLARE @i INT = 0;

WHILE @i < 50
BEGIN
	INSERT INTO TestOrderDetails
	VALUES (10248, 100 + @i, 10, 1, 0);
	SET @i = @i + 1;
END

SELECT LastName
INTO TestEmployees
FROM Employees;

SELECT * FROM TestEmployees;

CREATE INDEX Index_TestEmployees
ON TestEmployees(LastName);

SELECT *
FROM TestEmployees
-- WHERE SUBSTRING(LastName, 1, 2) = 'Bu';
WHERE LastName LIKE 'Bu%';