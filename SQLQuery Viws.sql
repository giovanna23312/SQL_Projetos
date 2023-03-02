create database senac
go

use senac
go

create schema aulas authorization dbo
go

create table aulas.aluno 
(
alu_cd     int primary key identity(1,1),
alu_nm     varchar(30) not null,
alu_snm    varchar(30) not null,
alu_nasc   date not null,
alu_cid    varchar(30) not null
)
go

insert into aulas.aluno values('Maria','Silva','10/08/2000','jacarei')
insert into aulas.aluno values('Igor','Rogeer','11/02/2005','São Paulo')
insert into aulas.aluno values('Lucaas','Henrique','05/07/1999','maua')
insert into aulas.aluno values('Giovanna','Victoria','28/12/2014','são francisco')
insert into aulas.aluno values('Leticia','Vieira','12/12/2001','São Jose dos campos')
go


create view alunosinfo as
select alu_cd, alu_nm, alu_snm, alu_nasc, alu_cid from aulas.aluno
where alu_cid = 'maua' 

select * from alunosinfo