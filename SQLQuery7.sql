use master
drop database estuds


USE [master]
RESTORE DATABASE [estuds] FROM  DISK = N'C:\SQL2019\DB\Backup\estuds.bak' WITH  FILE = 3,  NOUNLOAD,  STATS = 5
GO
