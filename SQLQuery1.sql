create database LojaSurf

use LojaSurf 

create table funcionarios
(
func_cd       int       primary key  identity(1,1),
func_nm       nchar(40) not null, 
func_cpf      int       not null,
func_rg       nchar(16) not null,
func_dtNas    int       not null, 
func_end      char(40)  not null,
func_fone     int       not null,
func_email    nchar(50) not null,
func_comissão float     not null,
func_usuario  nchar(20) not null,
func_senha    int       not null, 
func_cargo    nchar(20) not null,
)


create table clientes
(
clie_cd      int     primary key identity(1,1),
clie_nm      nchar(40) not null,
clie_cpf     nchar(16) not null,
clie_rg      nchar(16) not null,
clie_dtNas   date       not null,
clie_fone    int       not null,
clie_email   nchar(30) not null,
clie_ref     nchar(30) not null,
clie_foneRef int       not null,
)

create table fornecedores
(
fonr_cd  int primary key identity(1,1),
fonr_RSocial char(30)       not null,
fonr_cnpj nchar(30)         not null,
fonr_InscEstadual int       not null,
fonr_end nchar(30)          not null,
forn_fone int               not null,
forn_email nchar(50)        not null,
forn_representante char(30) not null,
)

create table Pedidos
(
ped_cd   int primary key identity(1,1),
forn_cd  int            not null,
forn_RSocial char(30)   not null,
ped_cdProdutos int      not null,
prod_ds nchar(50)       not null,   
ped_qtde int            not null,
ped_dt date             not null,
)

create table Estoque 
(
esto_cd int primary key identity(1,1),
prod_cd int            not null,
prod_ds nchar(50)      not null,
esto_dt date           not null,
esto_dtEntrada date    not null,
esto_qtdEntrada int    not null,
esto_dtSaida date      not null,
esto_qtdSaida int      not null,
fonr_cd int            not null,
fonr_RSocial nchar(30) not null,
esto_unidade char(30)  not null,
)

create table Produto
(
prod_cd  int primary key identity(1,1),
prod_ds nchar(50)         not null,
prod_marca char(50)       not null,
prod_ValorAquisição money not null,
prod_ValorVendas money    not null,
)

create table caixa
(
cax_cd int primary key identity(1,1),
prod_cd int           not null,
prod_ds nchar(50)     not null,
cax_qtd int           not null,
cax_ValorTotal money  not null,
cax_FormaP money      not null,
)


