create database lojas
go

use lojas
go

create schema loja authorization dbo 
go

create table lojas.clientes
(
Clie_cd int primary key identity(1,1),
Clie_nm char(50) not null,
Clie_fone nchar(20) not null,
Clie_end nchar(40) not null,
Clie_email varchar(50) not null, 
)
go

insert into lojas.clientes values ('Maria','12988232497','pq dos principes','giovanna@gamial.')
go

select * from lojas.clientes
