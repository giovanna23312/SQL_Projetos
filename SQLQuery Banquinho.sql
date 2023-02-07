create database banquinho
go

use banquinho
go

create schema bank authorization dbo
go

create table bank.info
(
  info_cd int primary key identity(1,1),
  info_nome varchar(25)  NOT NULL,
  info_fone varchar(16) NOT NULL,
  info_email varchar(25) NOT NULL,
  info_endereço varchar(25) NOT NULL,
  info_cep varchar(20) NOT NULL,
  info_cidade varchar(25) NOT  NULL,
  info_região varchar(50) NOT NULL,
  info_país varchar(10) NOT NULL
) 
go

insert into bank.info values ('Maria','000000','MARIA@gmail','Pq dos Prin','12343213','Jacarei','sudeste','Brasil')
insert into bank.info values ('Francs','453983745','francs@gmail','Rua 23','4457628','WHASITON','Sul','Espanha')
insert into bank.info values ('Ronaldo','2434525455','ronaldinho@gmail','4345453','calpão redondo','São Paulo','norte','Brazil')
go

select * from bank.info
go