create database Friends
go

use Friends 
go

create schema amg authorization dbo
go


create table amg.Friends
(
Fri_cd   int primary key,
Fri_nm   char(40) not null,
Fri_sn    char(40) not null,
Fri_email  nchar(60) not null,
)
go

select * from amg.Friends


insert into amg.Friends values (1,'Constant','Welles', 'Constantin.Welles@ANHINGA.COM')
insert into amg.Friends values (2,'Harry ','  Pacino','  HPacino@ani.com')
insert into amg.Friends values (3,'Manisha',' Taylor  ','MTaylor@auklet.com')
insert into amg.Friends values (4,'Harrison','Sutherla','Harrison.Sutherland@GODWIT.COM')
insert into amg.Friends values (5,'Matthias','MacGraw ','Matthias.MacGraw@GOLDENEYE.COM')
insert into amg.Friends values (6,'Mark  ','  Hannah ',' MHannah@grebe.com')
insert into amg.Friends values (7,'Matthias','Cruise  ','MCruise@grosbeak.com')
insert into amg.Friends values (8,'Meenaksh','Mason   ','Meenakshi.Mason@JACANA.COM')
insert into amg.Friends values (9,'Christia','Cage    ','Christian.Cage@KINGLET.COM')
insert into amg.Friends values (10,'Gerald','  Martin  ','GMartin@scoter.com')
insert into amg.Friends values (11,'Guillaum','Edwards ','GEdwards@shrike.com')
insert into amg.Friends values (12,'Maurice ','Mahoney ','Maurice.Mahoney@SNIPE.COM')
insert into amg.Friends values (13,'Maurice ','Hasan   ','Maurice.Hasan@STILT.COM')
insert into amg.Friends values (14,'Diana','   Sen     ','DSen@tattler.com')
insert into amg.Friends values (15,'Maurice ','Daltrey ','MDaltrey@teal.com')
insert into amg.Friends values (16,'Elizabet','Brown   ','Elizabeth.Brown@THRASHER.COM')
insert into amg.Friends values (17,'Maximili','Henner  ','Maximilian.Henner@DUNLIN.COM')
insert into amg.Friends values (18,'Sam ','    Spielber','SSpielberg@gadwall.com')
insert into amg.Friends values (19,'Sachin ',' Neeson  ','SNeeson@gallinule.com')
insert into amg.Friends values (20,'Sivaji  ','Landis  ','Sivaji.Landis@GOLDENEYE.COM')
insert into amg.Friends values (21,'Mammutti','Pacino  ','Mammutti.Pacino@GREBE.COM')
insert into amg.Friends values (22,'Elias','   Fawcett ','EFawcett@jacana.com')
insert into amg.Friends values (23,'Ishwarya','Roberts ','IRoberts@lapwing.com')
insert into amg.Friends values (24,'Gustav ',' Steenbur','Gustav.Steenburgen@PINTAIL.COM')
insert into amg.Friends values (25,'Markus','  Rampling','Markus.Rampling@PUFFIN.COM')
insert into amg.Friends values (26,'Gomer  ',' Slater ',' GSlater@pyrrhuloxia.com')
insert into amg.Friends values (27,'Divine','  Aykroyd ','DAykroyd@redstart.com')
insert into amg.Friends values (28,'Dieter','  Matthau ','Dieter.Matthau@VERDIN.COM')
insert into amg.Friends values (29,'Divine','  Sheen ','  Divine.Sheen@COWBIRD.COM')
insert into amg.Friends values (30,'Fernando','Grodin  ','FGrodin@creeper.com')
insert into amg.Friends values (31,'Frederic','Romero ',' FRomero@curlew.com')
insert into amg.Friends values (32,'Goldie ',' Montand ','Goldie.Montand@DIPPER.COM')
insert into amg.Friends values (33,'Sidney ',' Capshaw ','Sidney.Capshaw@DUNLIN.COM')
insert into amg.Friends values (34,'Fredwina','Lyon ','   FLyon@flicker.com')
insert into amg.Friends values (35,'Eddie  ',' Boyer','   EBoyer@gallinule.com')
insert into amg.Friends values (36,'Eddie','   Stern  ',' Eddie.Stern@GODWIT.COM')
insert into amg.Friends values (37,'Ernest ',' Weaver ',' Ernest.Weaver@GROSBEAK.COM')
insert into amg.Friends values (38,'Diana','   lorentz ','dlor@limpkin.com')
insert into amg.Friends values (39,'Stephen',' King   ',' sking@merganser.com')
insert into amg.Friends values (40,'Alexande','Hunold  ','AHun@MOORHEN.COM')
insert into amg.Friends values (41,'Hema  ','  Voight  ','Hema.Voight@PHALAROPE.COM')
insert into amg.Friends values (42,'Neena ','  Kochhar ','nkochh@pipit.com')
insert into amg.Friends values (43,'Nancy  ',' green','berngreenb@plover.com')
