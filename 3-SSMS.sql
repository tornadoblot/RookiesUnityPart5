/****** SSMS의 SelectTopNRows 명령 스크립트 ******/
SELECT TOP (1000) [yearID]
      ,[teamID]
      ,[lgID]
      ,[playerID]
      ,[salary]
  FROM [BaseballData].[dbo].[salaries]