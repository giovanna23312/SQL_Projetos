create database CarnesBoi
go

use CarnesBoi
go

create schema Acogue authorization dbo
go

CREATE TABLE Acogue.CarnesBoi
(
CARN_CD INT PRIMARY KEY IDENTITY(1,1),
CARN_DESC    VARCHAR(30)   NOT NULL,
CARN_TIPO_DO_CORTE   VARCHAR(20)   NOT NULL,
CARN_VALOR MONEY NOT NULL,
)

CREATE TABLE Acogue.FUNCIONARIOS
(
FUNC_CD INT PRIMARY KEY IDENTITY(1,1),
UNC_NM    VARCHAR(30)        NOT NULL,
FUNC_RG   VARCHAR(20)        NOT NULL,
FUNC_LOGIN VARCHAR(30)     NOT NULL,
FUNC_SENHA VARCHAR(10)     NOT NULL,
FUNC_CPF  VARCHAR(15)        NOT NULL,
FUNC_END  VARCHAR(50)        NOT NULL,
FUNC_BAIR VARCHAR(30)        NOT NULL,
FUNC_CEP  VARCHAR(20)        NOT NULL,
FUNC_TEL  VARCHAR(18)        NOT NULL,
FUNC_EMAIL VARCHAR(40)       NOT NULL,
)
go



insert into Acogue.CarnesBoi values ('Bovina','Fatiada','59.90')
insert into Acogue.CarnesBoi values ('Alcatra','Peça','33.99')
insert into Acogue.CarnesBoi values ('Bisteca','Cortada','23.32')
insert into Acogue.CarnesBoi values ('Patinho','Fatiada','35.47')
insert into Acogue.CarnesBoi values ('Picanha','Peça','77.99')
go

SELECT *
FROM Acogue.CarnesBoi
Go


Insert into Acogue.FUNCIONARIOS values ('Marcos','12254','Marco','1234','543752345','PQSP','California','12433','23564','marco@gmail.com')
Insert into Acogue.FUNCIONARIOS values ('Joao','2345','Joao','8825','138976','Rua 32','Salvador','13546','joao@gmail.com')
Insert into Acogue.FUNCIONARIOS values ('Roger','2345','Roger','77543','1976539424','Rua 22','Pq Industriais','64272','567633','roger@gmail.com')
Insert into Acogue.FUNCIONARIOS values ('Leticia','6324','Leticia','25534','2533','Rua 12','Salvador','854056','256785','leticia@gmail.com')
Insert into Acogue.FUNCIONARIOS values ('Maria','67436845','Maria','5635','Rua 32','California','34756','','873454','maria@gmail.com')
go


SELECT *
FROM Acogue.FUNCIONARIOS
Go

create view AcogueCarneInfo as
select CARN_CD, CARN_DESC, CARN_TIPO_DO_CORTE, CARN_VALOR from Acogue.CarnesBoi
where CARN_TIPO_DO_CORTE = 'Fatiada'
