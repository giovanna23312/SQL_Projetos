create database biblioteca 
go

use biblioteca
go

create schema bib authorization dbo
go

create table bib.funcionarios 
(
fun_cd           int primary key identity(1,1),
fun_nm           varchar(80) not null,
fun_telefone      varchar(80) not null,
fun_email        varchar(80) not null,
fun_pais         varchar(80) not null,
fun_rua          int not null,
fun_end          varchar(80) not null,
)
go

create table bib.livros 
(
livr_cd        int primary key identity(1,1),
livr_nm        varchar(80) not null,
livr_dtPub     date not null,
livr_autor     varchar(80) not null,
livr_dtSaida   date not null,
livr_dtEntr    date not null,
)
go

create table bib.cliente
(
clie_cd     int primary key identity(1,1),
clie_nm     varchar(80) not null,
clie_telefone   varchar(80) not null,
clie_email   varchar(80) not null,
clie_end    varchar(80) not null,
clie_pais   varchar(80) not null,
clie_nmrua  int not null
)
go


INSERT INTO bib.funcionarios
VALUES
  ('Shelly Bennett','(471) 208-6550','donec.porttitor@protonmail.net','Chile',8,'7282 Eget Rd.'),
  ('Evangeline Bell','(417) 783-4549','dolor.tempus@outlook.net','Singapore',7,'Ap #873-529 Velit Rd.'),
  ('Quyn Kelley','(385) 226-4070','ullamcorper.nisl@yahoo.couk','United Kingdom',0,'Ap #157-1976 Ultricies Av.'),
  ('Byron Burgess','(811) 242-3896','sed@outlook.net','Netherlands',6,'139 Augue. Rd.'),
  ('Mollie Cobb','(872) 931-7779','magna.et@protonmail.com','United States',3,'319-7422 Enim. St.'),
  ('Idola Carlson','(341) 428-7326','felis@aol.edu','Netherlands',0,'887-9185 Sed Road'),
  ('Ashton Hopper','(768) 254-3456','natoque@aol.edu','United Kingdom',4,'8978 Velit St.'),
  ('Libby Stephens','(695) 780-8759','ultrices.vivamus@hotmail.com','Germany',1,'108 Sociis Rd.'),
  ('Vincent Whitaker','1-615-743-4152','vulputate.risus@outlook.couk','Costa Rica',1,'405-5952 Sem St.')
  go

  INSERT INTO bib.cliente
VALUES
  ('Addison Yates','(724) 356-1913','lobortis@hotmail.net','Ap #604-1549 Nisl St.','Norway',1),
  ('Demetrius Kemp','1-293-458-6348','phasellus.fermentum@hotmail.couk','Ap #239-529 Vivamus Street','Ireland',1),
  ('Samson Vang','1-251-472-7165','nunc.quisque@hotmail.org','P.O. Box 399, 2260 Curabitur St.','Ukraine',5),
  ('Xanthus Roach','(785) 318-9840','dui@icloud.net','Ap #510-3425 Mi St.','Costa Rica',5),
  ('Montana Solis','1-528-438-7762','sem.consequat@google.net','920-8673 Est. Road','Turkey',3),
  ('Brandon Santos','1-592-228-1543','diam.pellentesque@aol.couk','Ap #495-6686 Natoque St.','Sweden',10),
  ('Briar Downs','(419) 281-3901','ante.bibendum@yahoo.couk','P.O. Box 293, 341 Feugiat. Ave','Sweden',8),
  ('Mia Salazar','(373) 753-4230','mauris.aliquam@outlook.com','Ap #355-1826 Morbi St.','Canada',4),
  ('Sopoline Pugh','1-830-253-4667','non.hendrerit@protonmail.org','216-8334 Integer Avenue','Peru',2),
  ('Harrison Rodriguez','1-238-832-3692','lacus.pede@google.edu','6507 At Rd.','Russian Federation',4);

 create view clinfo as
select clie_cd, clie_nm, clie_telefone, clie_email, clie_end, clie_pais, clie_nmrua from bib.cliente
where clie_pais = 'canada';


create view funinfo as
select fun_cd, fun_nm, fun_telefone, fun_email, fun_pais, fun_rua, fun_end   from bib.cliente
where fun_rua = '1'