create database coletaInfo
go

use coletaInfo
go

create schema coletaInfo authorization dbo
go

create table informações
(
  Info_nm        varchar(50) not null,
  Info_fone      nchar(20) null,
  Info_email     nchar(255) null,
  Info_endereço  nchar(255)   NULL,
  Info_região    varchar(50)  null,
  Info_país      varchar(50) null,
)

select * from  informações

INSERT INTO  informações 
VALUES
  ('Alyssa Poole','1-802-289-4872','etiam.vestibulum@icloud.org','Oyo','P.O. Box 264, 8113 Ante Road','Norway'),
  ('Quintessa Lyons','(579) 596-1137','nisi@icloud.edu','Tabasco','P.O. Box 127, 4323 Donec Av.','Philippines'),
  ('Elaine Delaney','1-970-837-8466','magna.suspendisse@outlook.edu','National Capital Region','P.O. Box 360, 3925 Rutrum Av.','France'),
  ('Armand Gregory','1-962-801-2157','scelerisque.lorem@google.org','Lower Austria','721-2567 Tristique Avenue','Ukraine'),
  ('Kieran Miller','(582) 317-1316','risus.morbi.metus@protonmail.ca','Euskadi','P.O. Box 926, 2374 Nunc Av.','Pakistan');


