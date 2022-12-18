/****** SSMS의 SelectTopNRows 명령 스크립트 ******/
SELECT TOP (1000) [time]
  FROM [BaseballData].[dbo].[DateTimeTest]

  SELECT CAST('20221218' AS DATETIME);

SELECT CURRENT_TIMESTAMP

INSERT INTO [dbo].[DateTimeTest] ([time])
	VALUES ('20071218 10:52')
	GO

SELECT *
FROM DateTimeTest
WHERE time >= '20220101'

SELECT DATEADD(YEAR, 1, '20220102');
SELECT DATEADD(DAY, -5, '20221230');
SELECT DATEADD(SECOND, 123123, '20220426');

SELECT DATEDIFF(MONTH, '20221218', '20221015');

SELECT YEAR('20221210');
SELECT MONTH('20221210');
SELECT DAY('20221210');