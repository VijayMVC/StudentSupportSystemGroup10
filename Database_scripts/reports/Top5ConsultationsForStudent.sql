/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 5 [consultation_id]
      ,[coordinator_id]
      ,[tutor_id]
      ,[student_id]
      ,[consultation_details]
      ,[consultation_date]
      ,[student_arrived]
      ,[consultation_rating]
  FROM [IS2G10_DBSSS].[dbo].[CONSULTATION]
  WHERE student_id = 10003 AND consultation_date >= GETDATE()