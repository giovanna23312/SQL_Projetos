create database Farmacia
go

use Farmacia
go

create schema farm authorization dbo
go

create table farm.login
(
Log_cd  int primary key identity(1,1),
Log_NM  varchar(40) not null,
Log_SN  int not null,
Fun_cd  int foreign key references farm.funcionarios
)


create table farm.funcionarios
(
Fun_cd         int primary key identity(1,1),
Fun_cargo      varchar(30) not null, 
Fun_nome       varchar(40) not null,
Fun_sobrenme   varchar(40) not null,
Fun_cpf        int not null,
Fun_rg         varchar not null,
Fun_dtNasc     date not null,
Fun_end        varchar(50) not null,
Fun_numcasa    int not null,
Fun_telefone   int not null,
Fun_user       varchar(40) not null,
Fun_senha      int not null,
Fun_bairro     varchar(40) not null,    
Fun_cidade     varchar(30) not null,
Fun_uf         varchar(4) not null,
Fun_cep        int not null
)

create table farm.medicamentos
(
Med_cod       int primary key identity(1,1),
Med_nmMed     varchar(40) not null,
Med_NMed      int not null,
Med_DtFabri   date not null,
Med_DtExp     date not null,
Med_qtde      int not null,
Med_PreçUnid   money not null
)


create table farm.estoque
(
Est_cd        int primary key identity(1,1),
Med_cd        int foreign key references farm.medicamentos
Med_ds        varchar(50) not null,
)

create table farm.fabricante
(
fabri_cd         int primary key identity(1,1),
fabri_RSocail    char(40) not null,
fabri_cnpj       int not null,
fabri_IscEst     int not null,
fabri_repre      varchar(30) not null,
fabri_end        varchar(30) not null,
fabri_num        int not null,
fabri_tel        varchar(20) not null,
fabri_email      varchar(60) not null
)

create table farm.cliente
(
clie_cd        int primary key identity(1,1),
clie_nm        varchar(40) not null,
clie_snm       varchar(30) not null,
clie_cpf       int not null,
clie_rg        varchar(18) not null,
clie_dtnasc    date not null,
clie_end       varchar(30) not null,
clie_email     varchar(60) not null,
clie_telefone  varchar(20) not null,
clie_numcasa   int not null,
clie_bairro    varchar(30) not null,
clie_cidade    varchar(30) not null,
clie_cep       int not null,
clie_uf        varchar(3) not null,
clie_sexo      varchar(3) not null
)

create table farm.historico
(
hist_cd    int primary key identity(1,1),
Fun_cd     int foreign key references farm.funcionarios,
Med_cd     int foreign key references farm.medicamentos,
vend_cd    int foreign key references farm.venda
)

create table farm.venda
(
vend_cd        int primary key identity(1,1),
Fun_cd         int foreign key references farm.funcionarios,
vend_DtdVend   date not null,
vend_valorPag  money not null,
vend_FormPag   varchar(15) not null
)


