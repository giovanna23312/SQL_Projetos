create database estuds
go

use estuds
go

create schema senac authorization dbo
go

create table senac.alunos
(
alunos_cd      int  primary key identity(1,1),
alunos_nm      varchar(30) not null,
alunos_end     varchar(40) not null,
alunos_fone    nvarchar(50)not null,    
alunos_email   varchar(50) not null,
)
go

create table senac.materias
(
materias_cd        int  primary key identity(1,1),
materias_nm        char(40)    not null,
materias_prof      char(40)    not null,
materias_dSemana   varchar(50) not null,
)
go

insert into senac.alunos values (' Maria','Parq dos Principes','9999999' ,'maria@gmail')
insert into senac.alunos values (' Joao','Cid Salvador','2323232' ,'joao@gmail')
insert into senac.alunos values ('Iguines','Parq dos Eucaliptos','0000000' ,'iguines@gmail')
go

insert into senac.materias values ('Informatica','Henrique','Quarta-feira')
insert into senac.materias values ('Modelagem de Dados','Marco','Segunda-feira')
insert into senac.materias values ('Analise de dados','Renato','Sexta-feria')
go

select * from senac.alunos
select * from senac.materias
go

Select * from senac.alunos 
WHERE alunos_nm LIKE  '%A'

USE [master]
RESTORE DATABASE [estuds] FROM  DISK = N'C:\SQL2019\DB\Backup\estuds.bak' WITH  FILE = 3,  NOUNLOAD,  STATS = 5
GO

BACKUP DATABASE [estuds] TO  DISK = N'C:\SQL2019\DB\Backup\estuds.bak' WITH NOFORMAT, NOINIT,  NAME = N'estuds-Completo Banco de Dados Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
