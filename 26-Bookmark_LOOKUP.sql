USE Northwind;

SELECT *
INTO TestOrders
FROM Orders;

CREATE NONCLUSTERED  INDEX Orders_Index01
On TestOrders(CustomerID);

-- 번호
SELECT index_id, name
FROM sys.indexes
WHERE object_id = object_id('TestOrders');

-- 조회
DBCC IND('Northwind', 'TestOrders', 2);

SELECT *
FROM TestOrders
WHERE CustomerID = 'QUICK';

SELECT *
FROM TestOrders WITH(INDEX(Orders_Index01))
WHERE CustomerID = 'QUICK';

SET STATISTICS TIME ON;
SET STATISTICS IO ON;
SET STATISTICS PROFILE ON;

-- 룩업 줄이기
SELECT *
FROM TestOrders WITH(INDEX(Orders_Index01))
WHERE CustomerID = 'QUICK' AND ShipVia = 3;

DROP INDEX TestOrders.Orders_Index01;

CREATE NONCLUSTERED  INDEX Orders_Index01
On TestOrders(CustomerID, ShipVia);

DROP INDEX TestOrders.Orders_Index01;

CREATE NONCLUSTERED  INDEX Orders_Index01
On TestOrders(CustomerID) INCLUDE (ShipVia);