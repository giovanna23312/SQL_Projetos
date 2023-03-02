create database Empresa 
go

use Empresa
go

create schema emp authorization dbo
go

create table emp.empregados
(
Empre_cd               int primary key identity(1,1),
Empre_nm               varchar(50) not null,
Empre_dtContradação    varchar(50) not null,
Empre_dpartamento      varchar(50) not null,
)
go

INSERT INTO emp.empregados VALUES
  ('Veda Whitaker','06/26/57','Departamento comercial'),
  ('Freya Peters','08/08/69','Departamento de produção'),
  ('Rinah Harper','10/06/58','Departamento comercial'),
  ('Benedict Kirby','05/02/2072','Departamento de produção'),
  ('Naomi Hood','25/11/2004','Departamento de produção'),
  ('Kiona Hicks','17/07/1985','Departamento comercial'),
  ('Zelda Navarro','08/10/1991','Departamento jurídico'),
  ('Kadeem Valdez','30/05/1994','Departamento comercial'),
  ('Sopoline Cantrell','10/05/1999','Departamento jurídico'),
  ('Yvette Leach','07/25/2021','Departamento administrativo'),
  ('Germane Jarvis','10/14/2057','Departamento de produção'),
  ('Kyle Price','10/12/1968','Departamento de marketing'),
  ('Chase Sexton','08/22/2015','Departamento de marketing'),
  ('Dawn Mcpherson','03/11/2033','Departamento de marketing'),
  ('Dara Pacheco','01/11/1992','Departamento financeiro'),
  ('Andrew Gilliam','07/12/2017','Departamento administrativo'),
  ('Ivana Marquez','06/03/2076','Departamento jurídico'),
  ('Sebastian Porter','12/29/2058','Departamento financeiro'),
  ('Tanek Spears','12/31/2027','Departamento jurídico'),
  ('Larissa Lynn','09/17/2024','Departamento administrativo');
  go
 

create view EmpregadosInfo as
select Empre_cd, Empre_nm, Empre_dtContradação, Empre_dpartamento from  emp.empregados
where Empre_dpartamento = 'Departamento administrativo'

select * from EmpregadosInfo


delete from  emp.empregados where Empre_dpartamento = 'Departamento jurídico' 

select * from emp.empregados
