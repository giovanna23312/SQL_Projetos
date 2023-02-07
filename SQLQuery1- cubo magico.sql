create database cubo_magico


use cubo_magico
go

create table cubista
(
Cub_cd         int primary key identity(1,1),
Cub_nm         nvarchar(40) not null, 
Cub__nivel     nvarchar(20) not null, 
)
go

insert into cubista values ('Vitoria','fraldinha')
insert into cubista values ('Reinaldo','Mestre')
insert into cubista values ('Giovanna','Mestre')
insert into cubista  values  ('Lucas','Avançado')
insert into cubista values ('Maria','Media')


select * from cubista

--select Cub_nm from cubista
--select Cub__nivel from cubista



create table cubista2
(
Cub_cd         int primary key,
Cub_nm         nvarchar(40) not null, 
Cub_nivel     nvarchar(20) not null, 
)
go

insert into cubista2 values (1,'Ronaldo','médio')
insert into cubista2 values (2,'Mary','médio')
insert into cubista2 values (3,'Gabriel','avançado')
insert into cubista2 values (4,'Ronaldo','médio')
insert into cubista2 values (5,'Ronaldo','médio')
insert into cubista2 values (6,'Rafa','médio')

select * from cubista2