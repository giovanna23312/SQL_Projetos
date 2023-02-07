create database Turis
go

use Turis
go

create schema Turis authorization dbo
go

create table  Turis.clientes
(
Cli_cd     int primary key identity(1,1),
Clie_nm    char(40) not null,
Clie_fone nchar(40) not null,
Clie_email  nchar(40) not null,
Clie_pais  nchar(40) not null,
Clie_end  nchar(40) not null,
)

--------------------------------------------------------------

-- ordem alfabetica 
select * from  Turis.clientes 
orDER BY Clie_nm

select * from  Turis.clientes 
orDER BY Clie_pais

---------------------------------------------------------------

--valores unicos

select clie_pais from Turis.clientes
select distinct clie_pais from Turis.clientes

select clie_nm from Turis.clientes
select distinct clie_nm from Turis.clientes

------------------------------------------------------------------

Select * from Turis.clientes 
WHERE clie_nm = ''

Select * from Turis.clientes 
WHERE clie_pais = 'Brazil'
and clie_nm = 'Wing Chang'
------------------------------------------------------------------
Select * from Turis.clientes 
WHERE clie_nm LIKE  'A%'

Select * from Turis.clientes 
WHERE clie_nm LIKE  '%A'

Select * from Turis.clientes 
WHERE clie_nm LIKE  '%A%'

INSERT INTO Turis.clientes 
VALUES

  ('Joseph Fry','1-688-367-8743','mauris.a@yahoo.net','Chile','Ap #462-8142 Vitae Rd.'),
  ('Eleanor Jimenez','1-189-853-7661','lorem.donec.elementum@icloud.net','South Africa','207-7188 Enim Av.'),
  ('Alan Hendricks','1-914-595-4853','faucibus@icloud.com','Germany','3607 Sociis Road'),
  ('Mason Giles','1-647-474-1244','euismod@yahoo.com','Norway','370-7919 Nisi Rd.'),
  ('Benjamin Franco','(680) 297-2619','nisl.maecenas@hotmail.ca','Belgium','Ap #759-712 Metus Road'),
  ('Rana Briggs','(610) 835-3192','cursus.nunc@yahoo.couk','Nigeria','5538 Facilisi. Ave'),
  ('Noble Wood','1-481-268-4334','pede@google.edu','Singapore','Ap #871-4087 Torquent Av.'),
  ('Coby Cervantes','(758) 517-6001','turpis.egestas@icloud.couk','United States','848-2091 Neque St.'),
  ('Kim Gilliam','(743) 363-2133','dui@outlook.net','New Zealand','506-1833 Id Rd.'),
  ('Suki Hooper','1-576-721-7422','et.magnis@icloud.ca','Italy','Ap #467-8553 Enim. Rd.');

INSERT INTO Turis.clientes 
VALUES

  ('Kevin Ross','(127) 844-2891','ante.vivamus@hotmail.couk','Austria','618-4436 Nisi St.'),
  ('Harper Snow','1-367-271-4092','egestas@aol.couk','Spain','633-7805 Cras Avenue'),
  ('Vielka Vincent','1-841-480-3824','ac.arcu.nunc@protonmail.com','South Korea','551-9429 Donec Street'),
  ('Caleb Prince','1-829-549-0826','ac.fermentum@aol.ca','New Zealand','P.O. Box 708, 7208 Tellus. St.'),
  ('Halla Gaines','1-239-312-9588','a@icloud.ca','United Kingdom','Ap #920-1681 Et St.'),
  ('Aspen Walter','(374) 562-5256','sed.libero@icloud.couk','Turkey','411-8038 Facilisis. Avenue'),
  ('Cherokee Price','(315) 133-3344','donec@yahoo.edu','South Korea','557-1668 In St.'),
  ('Kelsie Kelley','(931) 207-7889','commodo@outlook.org','Russian Federation','7897 Nisi. Street'),
  ('Fulton Puckett','1-972-527-8644','semper.erat@icloud.net','Canada','649-4514 Consequat Street'),
  ('Leslie Haley','1-879-272-1278','commodo.at@protonmail.edu','Norway','6433 Ut Road');

INSERT INTO Turis.clientes 
VALUES

  ('Phoebe Jenkins','(354) 796-8416','sem@icloud.edu','Chile','959-6259 Dolor, Avenue'),
  ('Moana Ferguson','(595) 448-2486','suspendisse@outlook.com','Norway','P.O. Box 775, 8620 Quis St.'),
  ('Fredericka Cole','1-231-574-2461','aliquam@icloud.edu','United States','Ap #450-8897 Ultricies Ave'),
  ('Elijah Koch','(821) 858-2495','nec.quam@google.ca','Sweden','P.O. Box 323, 1333 Lacus Avenue'),
  ('Brittany Combs','1-511-623-9627','vestibulum@yahoo.net','Poland','572-7030 Urna. Road'),
  ('Germane Stafford','1-377-327-9275','rutrum.fusce@google.com','Canada','208-634 A, St.'),
  ('Mara Hahn','1-432-147-9706','iaculis.odio.nam@outlook.net','Peru','P.O. Box 145, 1315 Nullam Av.'),
  ('Kelly Moon','(476) 401-2815','eu.eros@icloud.net','South Korea','186-9486 Nullam Rd.'),
  ('Gary Gross','1-747-337-8512','non.lobortis.quis@yahoo.net','Chile','792-7700 Vel, Rd.'),
  ('Ivory Rice','(498) 378-4444','neque.in.ornare@aol.net','Belgium','P.O. Box 719, 6349 Metus. St.');

INSERT INTO Turis.clientes 
VALUES

  ('Thor Blankenship','1-345-679-2764','fringilla.purus.mauris@aol.ca','China','9636 Lorem St.'),
  ('Colorado Cunningham','1-566-697-0475','et.arcu@google.org','Ireland','P.O. Box 526, 4253 Ultricies Rd.'),
  ('Daria Patterson','1-672-292-2553','congue.elit@yahoo.com','Belgium','537-8336 Ac Rd.'),
  ('Ursula Rice','1-642-368-7022','ut.sagittis@yahoo.net','South Africa','Ap #338-8981 Nec St.'),
  ('Callum Herring','(658) 516-4645','hendrerit.consectetuer.cursus@aol.couk','South Korea','P.O. Box 178, 4207 Est Ave'),
  ('Wing Chang','1-667-643-5613','nec.ante@hotmail.org','Brazil','P.O. Box 930, 2288 Sed Ave'),
  ('Karly Price','1-655-753-0117','tempor.lorem.eget@yahoo.couk','Canada','419-5612 Magna. St.'),
  ('Inga Sims','(697) 983-3380','purus.ac@protonmail.net','Mexico','Ap #575-3823 Non Road'),
  ('Amanda Lewis','1-766-311-5605','cursus.integer.mollis@aol.ca','India','502-4413 Erat, Rd.'),
  ('Amanda Tran','(925) 991-1318','mattis@hotmail.ca','Nigeria','P.O. Box 603, 5231 Libero. Ave');

INSERT INTO Turis.clientes 
VALUES

  ('Moana Marshall','1-447-418-4012','aliquam@yahoo.edu','Vietnam','4427 Non Av.'),
  ('Reuben Gillespie','(467) 336-5625','porta.elit@aol.ca','Austria','Ap #235-8412 Pellentesque Road'),
  ('Elijah Sosa','1-617-221-8256','nulla.aliquet.proin@protonmail.edu','Belgium','Ap #684-1338 Sit St.'),
  ('Haley Beck','1-391-533-6155','cursus@aol.edu','France','660-2494 Ipsum Av.'),
  ('Tyler Cameron','1-893-782-1377','fermentum.convallis.ligula@yahoo.edu','Sweden','3901 Eu Avenue'),
  ('Nola Hurley','(566) 618-1248','in@hotmail.ca','Philippines','5729 Sed Av.'),
  ('Alana Lang','1-785-356-6758','dui.semper.et@aol.couk','United Kingdom','3908 Et St.'),
  ('Fitzgerald Conrad','1-427-815-9469','ridiculus.mus.donec@hotmail.net','Russian Federation','977-4710 A, St.'),
  ('Dara Christian','(276) 124-2116','penatibus.et@protonmail.net','Sweden','370-5629 Vitae Avenue'),
  ('Cheryl Lynch','(217) 477-4703','curabitur.sed.tortor@icloud.couk','Ukraine','Ap #925-1149 Enim Street');

INSERT INTO Turis.clientes 
VALUES

  ('Karyn Haney','(303) 244-3747','sed.pharetra.felis@outlook.couk','Australia','P.O. Box 660, 9312 Est Av.'),
  ('Tara Avila','1-238-554-8365','nec.ante.maecenas@protonmail.couk','New Zealand','Ap #878-8096 Penatibus Ave'),
  ('Bianca Elliott','1-750-808-8287','dapibus.rutrum@icloud.net','Singapore','202-6501 Commodo Ave'),
  ('Stephanie Parker','1-591-153-1423','accumsan.sed@yahoo.couk','Chile','P.O. Box 552, 3160 Ultricies Road'),
  ('Hamish Carroll','1-584-683-1512','penatibus@outlook.couk','South Africa','143-1406 Diam Rd.'),
  ('Cameron Hart','(763) 653-7636','enim@yahoo.ca','Sweden','505-2112 Eu, St.'),
  ('Jack Dean','1-768-286-5487','ante.iaculis@hotmail.org','Russian Federation','560-971 Et, Avenue'),
  ('Myra Mendez','1-215-425-4991','venenatis.a.magna@hotmail.edu','Chile','P.O. Box 769, 5534 Nibh St.'),
  ('Vielka Parker','(486) 888-1114','donec.consectetuer@google.org','Norway','1125 Dis St.'),
  ('Victor Mccarthy','(555) 838-0065','auctor@google.couk','Chile','P.O. Box 274, 4665 Dui. Avenue');

INSERT INTO Turis.clientes 
VALUES
  ('Colorado Reilly','1-386-723-4894','libero.integer@hotmail.net','Canada','Ap #151-6799 Auctor Avenue'),
  ('Nicole Fuentes','1-687-566-5785','curabitur@outlook.org','Russian Federation','519-4581 Non, Ave'),
  ('Bradley Monroe','(765) 228-9175','fermentum.vel.mauris@outlook.org','Brazil','Ap #589-5993 Nec St.'),
  ('Ulric Davenport','(415) 429-3697','scelerisque@hotmail.ca','Italy','847-3200 Et Street'),
  ('Kaseem Fulton','(671) 862-0684','nunc.pulvinar@google.couk','Brazil','661-8664 Non, St.'),
  ('Iola Duffy','(514) 627-1147','morbi.neque.tellus@aol.org','Norway','357-8466 Habitant Road'),
  ('Ursa Poole','1-985-654-3248','proin.nisl.sem@aol.couk','South Africa','Ap #616-3491 Aliquam Av.'),
  ('Lois Crawford','(497) 989-2713','gravida.sit@icloud.couk','Costa Rica','4889 Sed Road'),
  ('Kay Munoz','1-367-595-6188','odio.sagittis@aol.org','Canada','P.O. Box 955, 5580 Lectus. Avenue'),
  ('Bell Chase','1-817-554-6253','tristique.neque@icloud.net','United States','882-766 Sagittis St.');
INSERT INTO Turis.clientes 
VALUES
  ('Malik Horton','1-623-668-8957','curabitur.ut@outlook.ca','South Korea','125 Turpis St.'),
  ('Oleg Hall','(114) 368-7311','odio@icloud.org','India','180-6652 Per Rd.'),
  ('Melinda Welch','(148) 650-1355','at.egestas@yahoo.com','Indonesia','9678 Rutrum. Ave'),
  ('Hashim Juarez','1-872-887-6631','etiam.gravida.molestie@hotmail.ca','Ukraine','486-1191 Amet Ave'),
  ('Seth Lott','1-460-988-9114','non.nisi.aenean@icloud.com','Belgium','Ap #866-3823 Magna Street'),
  ('Scott Dorsey','1-630-547-8611','magna.cras.convallis@protonmail.net','Sweden','235-9317 Sit St.'),
  ('Phillip Young','(611) 538-5365','feugiat.nec.diam@hotmail.ca','Vietnam','685-5540 Vulputate, Rd.'),
  ('Bevis Waller','1-343-418-6567','nisi.a.odio@outlook.ca','Spain','200-1471 Malesuada. Av.'),
  ('Lucy George','1-485-837-4214','curabitur.massa.vestibulum@aol.org','Colombia','Ap #284-1568 Amet Street'),
  ('Sean Cantu','(740) 982-5267','semper.erat@outlook.org','Spain','Ap #167-8663 Nibh. Road');
INSERT INTO Turis.clientes 
VALUES
  ('Sarah Sandoval','(267) 449-3847','nulla.cras@icloud.edu','United States','P.O. Box 437, 1517 Sed St.'),
  ('Erica Woodard','1-938-114-2392','lobortis@aol.org','Germany','530-8253 Ligula. St.'),
  ('Buckminster Bauer','(467) 555-7152','donec.at@aol.edu','India','P.O. Box 513, 8684 Tellus. Ave'),
  ('Kalia Olsen','(196) 565-4799','dui@google.edu','Turkey','661-2924 Nisl. St.'),
  ('Brooke Gomez','1-133-857-5144','risus@aol.net','Ukraine','Ap #447-4690 Neque Street'),
  ('Cameron Carson','(419) 265-7801','sed.eget@aol.ca','Germany','P.O. Box 234, 3671 Sem St.'),
  ('Jorden Bernard','(447) 197-5490','nec.ligula@google.net','Chile','288-1138 In St.'),
  ('Jordan Molina','(340) 676-1611','quam@icloud.com','Brazil','208-7866 Adipiscing. Street'),
  ('McKenzie Slater','(574) 410-5532','tempus.risus.donec@google.ca','Peru','4827 Risus. Rd.'),
  ('Jarrod Salinas','1-774-524-7231','sagittis.semper@hotmail.org','France','Ap #846-6827 Mauris. Av.');
INSERT INTO Turis.clientes 
VALUES
  ('Colt Heath','1-527-747-8387','cras.convallis@google.net','China','705-8329 Metus. Rd.'),
  ('Margaret Mitchell','(563) 660-4667','mauris.rhoncus@icloud.couk','Netherlands','P.O. Box 310, 2050 Diam. Avenue'),
  ('Aileen Kline','1-234-622-7731','tincidunt.aliquam@google.edu','United Kingdom','930-8300 Metus Avenue'),
  ('Jackson Rutledge','(728) 973-9662','adipiscing.ligula.aenean@protonmail.edu','United Kingdom','768-922 Nulla Rd.'),
  ('Julie Clarke','(754) 747-2689','donec.egestas@hotmail.edu','New Zealand','Ap #698-5036 Fusce St.'),
  ('Kermit Guthrie','(840) 641-2406','fames@icloud.com','United Kingdom','644 Nec St.'),
  ('Winifred Dunlap','1-897-724-4703','ac@icloud.com','New Zealand','Ap #852-1887 Dictum. Rd.'),
  ('Noah Reyes','1-424-110-1328','sit.amet.diam@aol.com','Vietnam','Ap #799-7598 Ipsum. Rd.'),
  ('Audra Medina','1-276-868-0353','tortor.nunc.commodo@yahoo.ca','United Kingdom','671-3164 Scelerisque, Ave'),
  ('Ria Rose','(707) 475-5121','blandit.mattis@aol.edu','Australia','5691 Adipiscing. Rd.');


  create table  Turis.funcionarios 
  (
  Fun_cd    int primary key identity(1,1),
  Fun_nm    char(40) not null,
  Fun_email nchar(40) not null,
  Fun_fone  nchar(40) not null,
  Fun_end   nchar(40) not null,
  )

  select * from  Turis.funcionarios

  INSERT INTO  Turis.funcionarios 
VALUES
  ('Lana Holland','(830) 611-5875','aliquam.nec@outlook.org','Ap #934-4776 Magna Av.'),
  ('Kathleen Carney','1-433-501-6436','posuere.cubilia.curae@aol.edu','Ap #838-6639 Convallis Street'),
  ('Roanna Swanson','(213) 227-1599','a.ultricies@hotmail.ca','760-8433 Non Ave'),
  ('Shea Petty','1-840-514-3520','libero.integer@yahoo.ca','Ap #662-2906 Non, Avenue'),
  ('Rashad Clarke','(822) 617-6563','at.augue@yahoo.ca','P.O. Box 441, 9405 Fames Road'),
  ('Kai Palmer','(697) 655-4993','faucibus@outlook.net','P.O. Box 710, 901 Nullam Road'),
  ('Sydney Roberson','(414) 148-5355','velit@protonmail.ca','P.O. Box 724, 2785 Rutrum Avenue'),
  ('Lisandra Wilkerson','(276) 531-3669','accumsan.neque@aol.org','Ap #727-2126 Sit Road'),
  ('Illiana Levy','(290) 306-5346','vehicula.risus.nulla@protonmail.ca','994 Erat. Street'),
  ('Phoebe Fisher','1-647-264-3413','odio.etiam@protonmail.couk','4950 Ut, Street');
INSERT INTO Turis.funcionarios 
VALUES
  ('Sydney Cannon','1-669-557-1552','quis@yahoo.net','P.O. Box 539, 5778 Metus. Ave'),
  ('Leigh Berg','1-367-485-3254','sed@outlook.couk','P.O. Box 873, 3062 Quam. St.'),
  ('Cally Daniels','(452) 972-9879','ornare@yahoo.ca','579-4845 Dignissim. Rd.'),
  ('Lavinia Alvarado','1-802-963-8322','tempus.eu@icloud.net','774-9902 Nam Rd.'),
  ('Ethan Baldwin','1-524-832-8752','pede.nunc@google.ca','Ap #927-7273 Sit St.'),
  ('Jescie Fowler','1-226-781-1444','molestie@aol.couk','Ap #419-8641 A, Street'),
  ('Dante Conrad','(455) 641-6185','eget@icloud.net','Ap #228-6849 Penatibus St.'),
  ('Zachery Kennedy','1-531-453-2664','feugiat.nec.diam@icloud.edu','6093 Lorem St.'),
  ('Martha Brewer','1-668-991-8472','eros@outlook.com','Ap #316-5041 Dictum Rd.'),
  ('Pearl Harrington','(843) 984-7658','suspendisse.eleifend.cras@protonmail.com','Ap #495-8981 In Street');
INSERT INTO Turis.funcionarios 
VALUES
  ('Alexandra Dejesus','1-151-217-1300','aliquam.gravida@yahoo.edu','2253 Eget, Rd.'),
  ('Anika Pickett','1-960-554-5161','tellus.phasellus.elit@protonmail.couk','P.O. Box 988, 4103 Luctus Avenue'),
  ('Vivian Dennis','(458) 669-0711','pede.et@aol.couk','P.O. Box 440, 5702 Volutpat Street'),
  ('Daphne Cleveland','(713) 926-1759','dui@outlook.net','P.O. Box 744, 5872 Fringilla Street'),
  ('Ann Stephenson','1-357-723-7697','nec.tellus@outlook.couk','Ap #970-8378 Quis Avenue'),
  ('Dante Benton','1-753-398-8156','nisi.nibh.lacinia@icloud.org','P.O. Box 421, 9915 Egestas. Av.'),
  ('Maia Miranda','1-885-258-4572','pharetra.sed.hendrerit@icloud.net','Ap #352-5644 Sollicitudin Av.'),
  ('Cade Bryant','1-336-674-2174','velit.pellentesque@outlook.edu','Ap #870-7493 Enim Road'),
  ('Conan Powell','(615) 478-1576','aliquet.vel.vulputate@google.edu','409-5351 Vel Rd.'),
  ('Laura Kaufman','(534) 349-3489','vel.mauris@google.edu','1103 Nulla Street');
INSERT INTO Turis.funcionarios 
VALUES
  ('Lillith Dunlap','(780) 422-2402','quam@hotmail.org','896-2138 Sed Rd.'),
  ('Bryar Hart','1-769-547-8311','curabitur.vel.lectus@outlook.com','Ap #227-2154 Varius Road'),
  ('Caldwell Bradford','1-956-535-8768','magna@yahoo.couk','6627 Eu St.'),
  ('Kennedy Simmons','1-580-125-8226','sit.amet@protonmail.com','P.O. Box 694, 6719 Ullamcorper. Rd.'),
  ('Amanda Nolan','1-435-553-2011','sagittis@yahoo.net','P.O. Box 679, 918 Aliquam Rd.'),
  ('Dawn Mcmillan','1-711-938-4077','tempor.bibendum.donec@yahoo.couk','Ap #108-9756 Nulla St.'),
  ('Wendy Underwood','(835) 238-5835','ut.eros.non@hotmail.couk','341-3412 Lectus Ave'),
  ('Cecilia Mcgowan','(472) 264-7289','purus.gravida@outlook.edu','Ap #100-3721 At Rd.'),
  ('Rooney Kelley','(164) 873-4856','non.cursus.non@hotmail.edu','694-9673 Nulla Ave'),
  ('Desiree Workman','(811) 143-8860','at.auctor@icloud.edu','798-5473 Cras Ave');
INSERT INTO Turis.funcionarios 
VALUES
  ('Wyoming Reynolds','1-843-387-5454','pharetra@hotmail.ca','Ap #843-4689 Dolor. Avenue'),
  ('Calvin Albert','(467) 415-7260','integer.eu@yahoo.net','Ap #766-4488 Euismod Av.'),
  ('Amela Myers','(478) 524-3485','tincidunt@icloud.com','353-832 Vivamus Av.'),
  ('Brett Knight','1-832-301-2903','tempor@outlook.edu','605-4199 Massa. Rd.'),
  ('Gil Downs','(858) 297-8783','aliquet@protonmail.couk','Ap #870-9098 Felis Road'),
  ('Chelsea Logan','1-663-478-0014','ut@hotmail.com','6733 Pede. Avenue'),
  ('Kirsten Koch','(512) 180-8581','convallis.ante.lectus@google.ca','130-7958 Eu Road'),
  ('Michelle Bates','1-564-581-6132','in.lorem.donec@hotmail.couk','579-5649 Parturient Av.'),
  ('Omar Evans','1-642-816-7648','aenean@google.ca','755-9489 Lacus. Rd.'),
  ('Hillary Hardy','1-671-624-7959','consectetuer.mauris@hotmail.net','Ap #156-5646 Ipsum Street');
INSERT INTO Turis.funcionarios 
VALUES
  ('Axel England','(546) 844-5479','eu.odio@outlook.com','Ap #642-7086 Lacus, Rd.'),
  ('Kelly Vazquez','(471) 626-6159','natoque.penatibus@aol.edu','Ap #406-2463 Ipsum Road'),
  ('Chancellor Harvey','1-394-437-1672','ipsum.cursus@protonmail.com','Ap #822-3980 Ut Avenue'),
  ('Victor Wells','(488) 555-6808','aenean.euismod.mauris@yahoo.ca','P.O. Box 629, 9800 Erat, St.'),
  ('Odette Good','1-654-531-5702','suspendisse.aliquet.molestie@google.com','Ap #423-6651 Amet St.'),
  ('Doris Morris','1-766-866-9130','metus@aol.ca','303-1220 Donec Road'),
  ('Rebekah Howard','(128) 720-0761','ante.dictum@hotmail.ca','Ap #709-5699 Ut Av.'),
  ('Carissa Daniel','(214) 318-4894','adipiscing.non.luctus@hotmail.ca','9590 Ut St.'),
  ('Odysseus Donaldson','(383) 827-9553','est.mauris@google.net','Ap #313-5887 Venenatis St.'),
  ('Theodore Salas','1-217-463-7621','ut.erat@icloud.ca','9680 Faucibus Street');
INSERT INTO Turis.funcionarios 
VALUES
  ('Lenore Boone','1-513-712-5269','convallis.convallis@hotmail.com','716-1673 Massa Street'),
  ('Yen Marsh','1-973-913-8387','felis.donec@icloud.org','209-6042 Arcu. St.'),
  ('Derek Hull','1-860-448-0774','tortor.nunc@yahoo.org','Ap #365-3326 Posuere Rd.'),
  ('Inez Barry','1-227-337-4353','in.lobortis.tellus@protonmail.ca','Ap #563-2484 Euismod Avenue'),
  ('Amal Calhoun','1-882-417-3632','vel.lectus@outlook.edu','806-5957 Cum St.'),
  ('Ruby Deleon','(175) 766-7850','arcu@hotmail.com','184-4135 Augue Rd.'),
  ('Nola Willis','1-310-473-5464','nibh.vulputate.mauris@google.net','P.O. Box 178, 7944 Risus Rd.'),
  ('Sydnee Valentine','(470) 232-8354','a.felis.ullamcorper@aol.edu','578-7260 Eget Ave'),
  ('Florence Berg','1-865-478-5236','aliquet.proin.velit@protonmail.ca','Ap #888-4934 Sociis Street'),
  ('Beau Waters','(733) 415-8504','ut.sagittis@yahoo.org','698-8396 Lectus, Avenue');
INSERT INTO Turis.funcionarios 
VALUES
  ('Aurelia Sears','1-521-646-2466','maecenas@outlook.edu','P.O. Box 915, 2435 Quis Road'),
  ('Mira Lyons','(813) 533-2375','urna.suscipit.nonummy@protonmail.couk','Ap #568-839 Nec, Rd.'),
  ('Rana Benton','(827) 321-2411','velit.eu@yahoo.ca','4533 Nulla. Rd.'),
  ('Jin Barr','1-729-396-9744','fusce.feugiat.lorem@yahoo.ca','852-6571 Massa. Avenue'),
  ('Mia Garrett','1-345-587-3393','nunc@icloud.couk','Ap #501-7359 Tellus, Street'),
  ('Latifah Hicks','(655) 742-4001','iaculis.odio@hotmail.edu','P.O. Box 750, 2238 Ultricies St.'),
  ('Bruce Bray','1-845-277-5325','lorem.ipsum.dolor@icloud.org','Ap #178-5153 Diam St.'),
  ('Barclay Cross','(327) 357-2910','vitae.posuere.at@protonmail.org','Ap #231-430 Mauris Road'),
  ('Briar Black','1-807-903-3368','nullam.lobortis@outlook.couk','P.O. Box 968, 1573 Aliquet, Rd.'),
  ('Joan Miller','(659) 417-6880','vulputate.risus.a@protonmail.org','3733 Urna Rd.');
INSERT INTO Turis.funcionarios 
VALUES
  ('Lucas Petty','1-547-637-2821','egestas@aol.couk','839-3755 Euismod Rd.'),
  ('Isaac Weeks','1-587-825-0701','erat.in@hotmail.net','382-8873 Netus Street'),
  ('Francis Mccoy','(392) 633-8927','eget.dictum@protonmail.edu','200-5430 Eget Street'),
  ('Erich Puckett','1-722-841-6259','in@outlook.edu','797-5458 Non Ave'),
  ('Ruth Gates','(642) 802-5887','non.cursus@aol.edu','906-9921 Non, Street'),
  ('Axel Mcfadden','1-440-439-1044','lorem.auctor.quis@yahoo.net','6267 Lobortis St.'),
  ('Christian Parks','1-834-687-9356','vel.venenatis.vel@outlook.org','167-6938 Nunc Av.'),
  ('Elmo Young','(621) 224-6983','vel.arcu@yahoo.org','P.O. Box 662, 4462 Phasellus Ave'),
  ('Lilah Fulton','1-647-741-3652','pede@protonmail.org','545-8110 Risus. St.'),
  ('Melyssa Sandoval','(306) 156-2682','dapibus@google.net','P.O. Box 877, 9397 Sapien Rd.');
INSERT INTO Turis.funcionarios 
VALUES
  ('Hoyt Le','(147) 464-9478','nullam@aol.org','229-2503 At, Rd.'),
  ('Colby Porter','1-137-587-2648','arcu.curabitur.ut@outlook.edu','Ap #706-7594 Vitae St.'),
  ('Carter Le','1-532-708-1515','vitae.velit@hotmail.net','1937 Tortor Road'),
  ('Quinn Curtis','(555) 488-3297','risus@icloud.org','Ap #814-164 Mauris. St.'),
  ('Isaac Leon','(623) 507-6371','arcu.vestibulum@protonmail.ca','7123 Netus Rd.'),
  ('Odette White','(629) 337-8328','mauris.elit.dictum@yahoo.net','8130 Augue Road'),
  ('Sierra Walls','1-677-378-7323','dolor@yahoo.edu','Ap #338-7641 In, Avenue'),
  ('Melissa Odom','1-435-916-5345','pharetra.ut@aol.couk','169-7757 Etiam Road'),
  ('Brandon Oliver','(534) 611-4790','ridiculus.mus@yahoo.couk','Ap #359-9351 Magnis Avenue'),
  ('Aquila Summers','1-255-634-3765','etiam.bibendum@outlook.edu','7454 Sociis Road');
