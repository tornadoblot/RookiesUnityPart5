USE Northwind;

SELECT *
INTO TestOrderDetails
FROM [Order Details];

SELECT *
FROM TestOrderDetails;

-- 인덱스 추가
CREATE INDEX Index_OrderDtails
ON TestOrderDetails(OrderID, ProductID);

-- 인덱스 정보
EXEC sp_helpindex 'TestOrderDetails';

-- 인덱스 번호 찾기
SELECT index_id, name
FROM sys.indexes
WHERE object_id = object_id('TestOrderDetails');

-- 조회
DBCC IND('Northwind', 'TestOrderDetails', 2);

DBCC PAGE('Northwind', 1, 962, 3);

CREATE CLUSTERED INDEX Index_OrderDtails_Clustered
ON TestOrderDetails(OrderID, ProductID);