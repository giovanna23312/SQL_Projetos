create database Fazenda
go

use Fazenda
go

create schema Faz authorization dbo
go

CREATE TABLE Faz.funcionarios
(
func_cd 	int primary key identity(1,1),
func_Nm	    VARCHAR(30)	NOT NULL,
func_End    VARCHAR(30)	NOT NULL,
func_Fone   VARCHAR(30)	NOT NULL,
func_email VARCHAR(30)	NOT NULL
)
go

CREATE TABLE Faz.materiais
(
mate_cd	    int primary key identity(1,1),
mate_Nm	    VARCHAR(30)	NOT NULL,
mate_Prof   VARCHAR(30)	NOT NULL,
mate_DSM	VARCHAR(30)	NOT NULL
)
go


insert into Faz.funcionarios values ('Joaquim','Rua Ivo','123456743','joaquim@gmail')
insert into Faz.funcionarios values ('Mario','Rua Santo FE','233432421','mario@gmail')
insert into Faz.funcionarios values ('Francisco','Rua ','1232432342','FRANC@gmail')
go

insert into Faz.materiais values ('jadinagem','Carpinteiro','Segunda-feira, Sexta-feria')
insert into Faz.materiais values ('corda','Vaqueiro','Segunda a Sabado')
insert into Faz.materiais values ('leiteiro','Boiadeiro','Segunda a Sabado')
go

---------------------------------------------------------------------------------
select * from Faz.funcionarios
go

select * from Faz.materiais
go

-----------------------------------------------------------------------------------

SELECT func_nm FROM Faz.funcionarios
UNION
SELECT mate_nm FROM Faz.materiais



----------------------------------------------------------------------------------
Faça a ligação com o Visual Studio

--------------------------------------------------------------------------------

BACKUP DATABASE [Fazenda] TO  DISK = N'C:\SQL2019\DB\Backup\Fazenda.bak' WITH NOFORMAT, NOINIT,  NAME = N'Fazenda-Completo Banco de Dados Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
 
USE [master]
RESTORE DATABASE [Fazenda] FROM  DISK = N'C:\SQL2019\DB\Backup\Fazenda.bak' WITH  FILE = 1,  NOUNLOAD,  STATS = 5
GO
