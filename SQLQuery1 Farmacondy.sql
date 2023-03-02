create database farmacondy
go

use farmacondy
go

create schema  PRODUTOS AUTHORIZATION dbo
go

CREATE TABLE PRODUTOS.CLIENTES
(
clie_CD    INT  primary key identity(1,1),
clie_NM    VARCHAR(30)      not null,
clie_cpf       varchar(15)  not null,
clie_end       varchar(30)  not null,
clie_bair      varchar(30)  not null,
clie_cep       varchar(12)  not null,
clie_ref       varchar(30)  not null,
clie_tel       varchar(18)  not null,
clie_email     varchar(40)  not null
)
go

INSERT INTO PRODUTOS.CLIENTES VALUES ('Ana da Silva','82145278831','rua João Batista','bairro Vila Industrial','cep 12345678','Proximo ao Senac','12345678','ana@hotmail.com')
INSERT INTO PRODUTOS.CLIENTES VALUES ('João António','27315617365','DR Ademar de Barros','Centro','12425163','Proximo ao hospital','1239000000','joao@hotmail.com')
INSERT INTO PRODUTOS.CLIENTES VALUES ('José Ferreira','72791813792','AV JK','JD Paulista','CEP 12345678','Proximo ao Mercado','Tel 1239393939','jose@gmail.com')
INSERT INTO PRODUTOS.CLIENTES VALUES ('Maria Fernandes','72618276288','AV José Longo','Centro','12736748','Proximo ao Posto de Gasulina','12988880000','maria@gmail.com')
INSERT INTO PRODUTOS.CLIENTES VALUES ('Julia Pereira','18535678811','AV 9 de Julho','bairro Centro','cep 12347898','Proximo a Padaria','1230303030','julia@hotmail.com')


CREATE TABLE PRODUTOS.FUNCIONARIOS
(
FUNC_CD        INT    PRIMARY KEY IDENTITY(1,1),
UNC_NM        VARCHAR(30)        NOT NULL,
FUNC_rg       VARCHAR(20)        NOT NULL,
FUNC_CPF      VARCHAR(15)        NOT NULL,
FUNC_END      VARCHAR(50)        NOT NULL,
FUNC_BAIR     VARCHAR(30)        NOT NULL,
FUNC_CEP      VARCHAR(20)        NOT NULL,
FUNC_TEL      VARCHAR(18)        NOT NULL,
FUNC_MAIL     VARCHAR(40)        NOT NULL,
FUNC_LOGIN    VARCHAR(15)        NOT NULL,
FUNC_SENHA    VARCHAR(15)        NOT NULL,
func_tipousu  varchar(20)	     not null
)
GO



INSERT INTO PRODUTOS.FUNCIONARIOS VALUES ('Amanda da Cunha','441112220','22983718277','Rua Luiz Pinheiro','Centro','12736000','12981818181','amanda@gmail.com','amanda2','12345678','balconista')
INSERT INTO PRODUTOS.FUNCIONARIOS VALUES ('Carlos da Silva','334447778','22985558277','Rua dos Nordestinos','vila Paiva','12036000','129919191','carlos@hotmail.com','carlos2','12345678','gerente')
INSERT INTO PRODUTOS.FUNCIONARIOS VALUES ('Mateus de Souza','567653547','92983744276','AV JK','vila Industrial','12000000','1239000000','mateus@gmail.com','mateus2','12345678','farmaceutico')
INSERT INTO PRODUTOS.FUNCIONARIOS VALUES ('Fernanda Dias','112223337','33383711177','Rua Silvia Chaves','Novo Horizonte','12888000','1239000003','fernanda@outlook.com','fernanda2','12345678','balconista')
INSERT INTO PRODUTOS.FUNCIONARIOS VALUES ('Patricia Mendes','452225557','00983718471','Rua Maria Trindade','Aquarius','12236020','12997979797','patricia@outlook.com','patricia2','12345678','balconista')



CREATE TABLE PRODUTOS.PRODUTOS	
(
PROD_CD        INT   PRIMARY KEY  IDENTITY(1,1),
PROD_DESC      VARCHAR(50)        NOT NULL,
PROD_QUANT     VARCHAR(30)        NOT NULL,
PROD_FABRIC    VARCHAR(30)        NOT NULL,
PROD_CATEG     VARCHAR(20)        NOT NULL,
PROD_PRECO     decimal(8,2)       NOT NULL,
PROD_CODBARRAS VARCHAR(30)        NOT NULL,
PROD_QUANT_ESTOQUE	VARCHAR(6)	  NOT NULL
)
GO

INSERT INTO PRODUTOS.PRODUTOS VALUES ('paracetamol','15 unidades','novel','antienframatorio','5.00','0123456789','100');
INSERT INTO PRODUTOS.PRODUTOS VALUES ('dipirona','30 ML','novel','analgêsico','3.00','0123456788','100')
INSERT INTO PRODUTOS.PRODUTOS VALUES ('anador','20 ML','novel','analgêsico','6.00','0123456799','100')
INSERT INTO PRODUTOS.PRODUTOS VALUES ('Buscopan','30 ML','novel','analgêsico','8.00','0123456989','100')
INSERT INTO PRODUTOS.PRODUTOS VALUES ('amoxicilina','20 unidades','novel','antienframatorio','12.00','0023456789','100')
GO

CREATE TABLE PRODUTOS.SERVIÇOS
(
SERV_CD	INT	PRIMARY KEY	IDENTITY(1,1),
serv_nm	varchar(40)	not null,
serv_preço money not null,
serv_desc varchar(30) not null
)
GO


INSERT INTO PRODUTOS.SERVIÇOS VALUES ('Aferir Pressão','45','medir a pressao do paciente')
INSERT INTO PRODUTOS.SERVIÇOS VALUES ('Vacina','5','Vacinar')
INSERT INTO PRODUTOS.SERVIÇOS VALUES ('Curativo','2','cobrir ferimentos');



--PESQUISAR tabela
SELECT *
FROM produtos.clientes
GO

--PESQUISAR campos
SELECT clie_NM, clie_tel
FROM produtos.clientes
GO
 

--APAGAR conteúdo da tabela
DELETE from PRODUTOS.FUNCIONARIOS 
GO

-- apagar conteúdo de um campo
delete from produtos.clientes
WhERE clie_NM ='João António'
GO

--ALTERAR conteúdos dos campos
UPDATE produtos.produtos
SET prod_quant='ml'
GO

UPDATE PRODUTOS.PRODUTOS
SET PROD_QUANT ='ml'
WHERE PROD_QUANT ='miligrama'
GO
