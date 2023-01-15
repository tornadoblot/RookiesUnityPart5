USE Northwind;

SELECT *
INTO TestOrderDetails
FROM [Order Details];

SELECT *
FROM TestOrderDetails;

-- �ε��� �߰�
CREATE INDEX Index_OrderDtails
ON TestOrderDetails(OrderID, ProductID);

-- �ε��� ����
EXEC sp_helpindex 'TestOrderDetails';

-- �ε��� ��ȣ ã��
SELECT index_id, name
FROM sys.indexes
WHERE object_id = object_id('TestOrderDetails');

-- ��ȸ
DBCC IND('Northwind', 'TestOrderDetails', 2);

DBCC PAGE('Northwind', 1, 962, 3);

CREATE CLUSTERED INDEX Index_OrderDtails_Clustered
ON TestOrderDetails(OrderID, ProductID);