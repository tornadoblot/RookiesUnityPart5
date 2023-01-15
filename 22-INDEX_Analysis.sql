USE Northwind;

CREATE TABLE Test
(
	EmployeeID	INT NOT NULL,
	LastName	NVARCHAR(20) NULL,
	FirstName	NVARCHAR(20) NULL,
	HireDate	DATETIME NULL
);
GO

INSERT INTO Test
SELECT EmployeeID, LastName, FirstName, HireDate
FROM Employees;

SELECT *
From Test;


CREATE INDEX Test_INDEX ON Test(LastName)
WITH (FILLFACTOR = 1, PAD_INDEX = ON)

SELECT index_id, name
FROM sys.indexes
WHERE object_id = object_id('Test');

DBCC IND('Northwind', 'Test', 2);

DBCC PAGE('Northwind', 1, 832, 3);
DBCC PAGE('Northwind', 1, 840, 3);
DBCC PAGE('Northwind', 1, 841, 3);

DBCC PAGE('Northwind', 1, 872, 3);
DBCC PAGE('Northwind', 1, 848, 3);
DBCC PAGE('Northwind', 1, 849, 3);