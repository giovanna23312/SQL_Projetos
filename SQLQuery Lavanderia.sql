create database lavanderia
go

use lavanderia
go

create schema lav authorization dbo
go

create table lav.consumidor
(
Cons_cd     int primary key identity(1,1),
Cons_nm     char(40) not null,
Cons_end    varchar(40) not null,
Cons_email  varchar(60) not null,
)
go

create table lav.produtos
(
Prod_cd int primary key identity(1,1),
Prod_nm char(40) not null,
Prod_valor money not null,
)
go

Create table lav.Servicos
(
Serv_cd		int primary key identity(1,1),
Serv_nm		VARCHAR(50)	NOT NULL,
Serv_valor	money		NOT NULL
)
go


Create table lav.Funcionarios
(
Func_cd	    int primary key identity(1,1),
Func_nm		char(50)	NOT NULL,	
Func_end	VARCHAR(30)	NOT NULL,
Func_cid	VARCHAR(30)	NOT NULL,
Func_pais	VARCHAR(30)	NOT NULL,
)
go

create table lav.caixa
(
caix_CD			INT		Identity(1,1)	Primary Key,
Func_cd	        int foreign key references lav.Funcionarios,
Cons_cd			int foreign key references lav.consumidor,
Prod_cd			int foreign key references  lav.produtos,		
Serv_cd			int foreign key references lav.Servicos,
caix_Qtde		int     not null,
caix_Valor		money	not null
)

select * from lav.caixa

insert into lav.caixa values
(2, 3, 4, 5, '12','10')




insert into lav.consumidor values ('Matthias','Rua Cruise','MCruise@grosbeak.com')
insert into lav.consumidor values ('Meenaksh','Rua Mason ','Meenakshi.Mason@JACANA.COM')
insert into lav.consumidor values ('Christia','Rua Cage ','Christian.Cage@KINGLET.COM')
insert into lav.consumidor values ('Gerald',' Rua Martin','GMartin@scoter.com')
insert into lav.consumidor values ('Guillaum','Edwards','GEdwards@shrike.com')
insert into lav.consumidor values ('Maurice ','Rua Mahoney ','Maurice.Mahoney@SNIPE.COM')
insert into lav.consumidor values ('Maurice ','Rua Hasan ','Maurice.Hasan@STILT.COM')
insert into lav.consumidor values ('Diana',' Rua  Sen','DSen@tattler.com')
insert into lav.consumidor values ('Maurice ','Rua Daltrey','MDaltrey@teal.com')
insert into lav.consumidor values ('Elizabet','Rua Brown ','Elizabeth.Brown@THRASHER.COM')
insert into lav.consumidor values ('Maximili','Rua Henner','Maximilian.Henner@DUNLIN.COM')
insert into lav.consumidor values ('Sam ',' Rua   Spielber','SSpielberg@gadwall.com')
insert into lav.consumidor values ('Sachin ',' Rua Neeson  ','SNeeson@gallinule.com')
insert into lav.consumidor values ('Sivaji  ','Rua Landis  ','Sivaji.Landis@GOLDENEYE.COM')
insert into lav.consumidor values ('Mammutti','Rua Pacino  ','Mammutti.Pacino@GREBE.COM')
insert into lav.consumidor values ('Elias',' Rua  Fawcett ','EFawcett@jacana.com')
insert into lav.consumidor values ('Ishwarya','Rua Roberts ','IRoberts@lapwing.com')
insert into lav.consumidor values ('Gustav ',' Rua Steenbur','Gustav.Steenburgen@PINTAIL.COM')
insert into lav.consumidor values ('Markus',' Rua Rampling','Markus.Rampling@PUFFIN.COM')
insert into lav.consumidor values ('Gomer  ',' Rua Slater ',' RuaGSlater@pyrrhuloxia.com')
insert into lav.consumidor values ('Divine',' Rua Aykroyd ','DAykroyd@redstart.com')
insert into lav.consumidor values ('Dieter',' Rua Matthau ','Dieter.Matthau@VERDIN.COM')
insert into lav.consumidor values ('Divine',' Rua Sheen ',' Rua Divine.Sheen@COWBIRD.COM')
insert into lav.consumidor values ('Fernando','Rua Grodin  ','FGrodin@creeper.com')
insert into lav.consumidor values ('Frederic','Rua Romero ',' RuaFRomero@curlew.com')
insert into lav.consumidor values ('Goldie ',' Rua Montand ','Goldie.Montand@DIPPER.COM')
insert into lav.consumidor values ('Sidney ',' Rua Sidney','Goldie.Montand@DIPPER.COM')
insert into lav.consumidor values ('Goldie ',' Rua Montand ','Goldie.Montand@DIPPER.COM')
insert into lav.consumidor values ('Fredwina','Rua Lyon ','FLyon@flicker.com')
insert into lav.consumidor values ('Eddie' , ' Rua Boyer','EBoyer@gallinule.com')
insert into lav.consumidor values ('Eddie',' Rua  Stern  ','Eddie.Stern@GODWIT.COM')
insert into lav.consumidor values ('Ernest ',' Rua Weaver ','Ernest.Weaver@GROSBEAK.COM')
insert into lav.consumidor values ('Diana',' Rua  lorentz ','dlor@limpkin.com')
insert into lav.consumidor values ('Stephen',' Rua King   ',' Ruasking@merganser.com')
insert into lav.consumidor values ('Alexande','Rua Hunold ','AHun@MOORHEN.COM')
go

select *from  lav.Consumidor


-------------------------------------Consumidor----------------------------------------------------------------------

DELETE FROM lav.Consumidor
WHERE Cons_nm='Stephen'

SELECT * FROM lav.Consumidor
orDER BY Cons_nm  

SELECT * FROM lav.Consumidor
orDER BY Cons_nm desc


Select * from lav.Consumidor
WHERE Cons_nm = 'Diana'
and Cons_end = ' Rua  lorentz' 

------------------------------------ Produtos ---------------------------------------------------------------

select * from lav.Produtos

select Prod_nm from lav.Produtos

select distinct Prod_nm from lav.Produtos

insert into lav.produtos values ('queijo','10.00')
insert into lav.produtos values ('Amaciante','22')
insert into lav.produtos values ('Sabão','16')
insert into lav.produtos values ('Sabão em Pedra','7')
insert into lav.produtos values ('Tay','13')

select * from lav.produtos

----------------------------------- Serviços ----------------------------------------------------------------

select * from lav.Servicos

SELECT * FROM lav.consumidor
WHERE Cons_nm='Christia'
and Cons_end='Rua Cage ' 

insert into lav.Servicos values ('Lavagem','50')

-------------------------------------------------------------------------------------------------------------
insert into lav.Funcionarios values ('Joao','parq cidade','jacarei','brasil')
select * from lav.Funcionarios