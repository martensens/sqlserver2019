USE master
GO


ALTER DATABASE AdventureWorksDW2019 SET OFFLINE
GO

ALTER DATABASE AdventureWorksDW2019
MODIFY FILE (
				NAME = AdventureWorksDW2017,
				FILENAME = 'C:\Temp\SQL_Databases\AdventureWorksDW2019.mdf'
)
ALTER DATABASE AdventureWorksDW2019
MODIFY FILE (
				NAME = AdventureWorksDW2017_log,
				FILENAME = 'C:\Temp\SQL_Databases\AdventureWorksDW2019_log.ldf'
)

ALTER DATABASE AdventureWorksDW2019 SET ONLINE
GO

SELECT 
name AS FileLogicName
, physical_name as FileLocation
FROM sys.master_files
WHERE database_id = DB_ID(N'AdventureWorksDW2019')