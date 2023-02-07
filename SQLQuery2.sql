create database escolaJoaquim

use escolaJoaquim

create table alunos
(
Alu_cd     int primary key identity(1,1),
Alu_nm     char(50) not null,
Alu_ida    int not null,
Alu_serie  nchar(5) not null,
Alu_end    nchar(50) not null,
Alu_fone   int not null,
)

--drop table alunos

create table professores 
(
Pro_cd      int primary key identity(1,1),
Pro_nm      char(50) not null,
Pro_mt      nchar(40) not null,
Pro_sala    nchar(5) not null,
)

insert into professores values ('Clarisse','Portuges','9A')
insert into professores values ('Rosa','Filosofia','3A')
insert into professores values ('Roberto','Informatica','6D')

select * from professores


create table materia
(
Mat_cd int primary key identity(1,1),
Mat_ds    nchar(40) not null,
Mat_inf   nchar(40) not null,
Mat_filo  nchar(40) not null,
Mat_hist  nchar(40) not null,
Mat_port  nchar(40) not null,
)


insert into alunos values ('Maria','18','3A','Parq Principes','999990')
insert into alunos values ('Igor','16','1B','Cid Salvador','999990')
insert into alunos values ('Giovanna','14','7D','PQ Sant Antonio','999990')


select * from alunos


