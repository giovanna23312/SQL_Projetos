create database custo
go

use custo
go

create schema despesas authorization dbo
go

create table despesas.categoria
(
cat_cd int identity(1,1) primary key,
cat_nm varchar(40) not null
)
go

insert into despesas.categoria values ('agua')
insert into despesas.categoria values ('automovel')
insert into despesas.categoria values ('transporte')
insert into despesas.categoria values ('luz')
insert into despesas.categoria values ('gas')

select * from despesas.categoria

create table despesas.custo
(
des_cd    int identity(1,1) primary key,
des_nm    varchar(45),
des_valor decimal(10,2),
des_dia   datetime,
cat_cd    int foreign key references despesas.categoria
)
go

insert into despesas.custo values
('Supermecado', 350.55,2023-03-02,4)
go

select * from despesas.custo
join
despesas.categoria
on
custo.cat_cd=categoria.cat_cd 