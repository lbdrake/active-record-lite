-- MySQL dump 10.13
-- Original file adapted and expanded for use with sqlite3


DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  id INTEGER PRIMARY KEY,
  name VARCHAR(35) NOT NULL DEFAULT '',
  country_code VARCHAR(3) NOT NULL DEFAULT '',
  district VARCHAR(20) NOT NULL DEFAULT '',
  population INTEGER NOT NULL DEFAULT '0',
  FOREIGN KEY(country_code) REFERENCES country(code)
);


DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
  id INTEGER PRIMARY KEY,
  code VARCHAR(3),
  name VARCHAR(52) NOT NULL DEFAULT '',
  continent_code VARCHAR(100) NOT NULL DEFAULT 'Asia',
  region VARCHAR(26) NOT NULL DEFAULT '',
  surface_area DECIMAL(10,2) NOT NULL DEFAULT '0.00',
  indep_year INTEGER,
  population INTEGER NOT NULL DEFAULT '0',
  life_expectancy DECIMAL(3,1),
  gnp DECIMAL(10,2),
  gnp_old DECIMAL(10,2),
  local_name VARCHAR(45) NOT NULL DEFAULT '',
  government_form VARCHAR(45) NOT NULL DEFAULT '',
  head_of_state VARCHAR(60),
  capital INTEGER,
  code2 VARCHAR(2) NOT NULL DEFAULT '',
  FOREIGN KEY(continent_code) REFERENCES continent(code)
);


DROP TABLE IF EXISTS continents;
CREATE TABLE continents (
  code VARCHAR(100) PRIMARY KEY
);

INSERT INTO cities VALUES (1,'Kabul','AFG','Kabol',1780000);
INSERT INTO cities VALUES (2,'Qandahar','AFG','Qandahar',237500);
INSERT INTO cities VALUES (3,'Herat','AFG','Herat',186800);
INSERT INTO cities VALUES (4,'Mazar-e-Sharif','AFG','Balkh',127800);
INSERT INTO cities VALUES (5,'Amsterdam','NLD','Noord-Holland',731200);
INSERT INTO cities VALUES (6,'Rotterdam','NLD','Zuid-Holland',593321);
INSERT INTO cities VALUES (7,'Haag','NLD','Zuid-Holland',440900);
INSERT INTO cities VALUES (8,'Utrecht','NLD','Utrecht',234323);
INSERT INTO cities VALUES (9,'Eindhoven','NLD','Noord-Brabant',201843);
INSERT INTO cities VALUES (10,'Tilburg','NLD','Noord-Brabant',193238);
INSERT INTO cities VALUES (11,'Groningen','NLD','Groningen',172701);
INSERT INTO cities VALUES (12,'Breda','NLD','Noord-Brabant',160398);
INSERT INTO cities VALUES (13,'Apeldoorn','NLD','Gelderland',153491);
INSERT INTO cities VALUES (14,'Nijmegen','NLD','Gelderland',152463);
INSERT INTO cities VALUES (15,'Enschede','NLD','Overijssel',149544);
INSERT INTO cities VALUES (16,'Haarlem','NLD','Noord-Holland',148772);
INSERT INTO cities VALUES (17,'Almere','NLD','Flevoland',142465);
INSERT INTO cities VALUES (18,'Arnhem','NLD','Gelderland',138020);
INSERT INTO cities VALUES (19,'Zaanstad','NLD','Noord-Holland',135621);
INSERT INTO cities VALUES (20,'�s-Hertogenbosch','NLD','Noord-Brabant',129170);
INSERT INTO cities VALUES (21,'Amersfoort','NLD','Utrecht',126270);
INSERT INTO cities VALUES (22,'Maastricht','NLD','Limburg',122087);
INSERT INTO cities VALUES (23,'Dordrecht','NLD','Zuid-Holland',119811);
INSERT INTO cities VALUES (24,'Leiden','NLD','Zuid-Holland',117196);
INSERT INTO cities VALUES (25,'Haarlemmermeer','NLD','Noord-Holland',110722);
INSERT INTO cities VALUES (26,'Zoetermeer','NLD','Zuid-Holland',110214);
INSERT INTO cities VALUES (27,'Emmen','NLD','Drenthe',105853);
INSERT INTO cities VALUES (28,'Zwolle','NLD','Overijssel',105819);
INSERT INTO cities VALUES (29,'Ede','NLD','Gelderland',101574);
INSERT INTO cities VALUES (30,'Delft','NLD','Zuid-Holland',95268);
INSERT INTO cities VALUES (31,'Heerlen','NLD','Limburg',95052);
INSERT INTO cities VALUES (32,'Alkmaar','NLD','Noord-Holland',92713);
INSERT INTO cities VALUES (33,'Willemstad','ANT','Cura�ao',2345);
INSERT INTO cities VALUES (34,'Tirana','ALB','Tirana',270000);
INSERT INTO cities VALUES (35,'Alger','DZA','Alger',2168000);
INSERT INTO cities VALUES (36,'Oran','DZA','Oran',609823);
INSERT INTO cities VALUES (37,'Constantine','DZA','Constantine',443727);
INSERT INTO cities VALUES (38,'Annaba','DZA','Annaba',222518);
INSERT INTO cities VALUES (39,'Batna','DZA','Batna',183377);
INSERT INTO cities VALUES (40,'S�tif','DZA','S�tif',179055);
INSERT INTO cities VALUES (41,'Sidi Bel Abb�s','DZA','Sidi Bel Abb�s',153106);
INSERT INTO cities VALUES (42,'Skikda','DZA','Skikda',128747);
INSERT INTO cities VALUES (43,'Biskra','DZA','Biskra',128281);
INSERT INTO cities VALUES (44,'Blida (el-Boulaida)','DZA','Blida',127284);
INSERT INTO cities VALUES (45,'B�ja�a','DZA','B�ja�a',117162);
INSERT INTO cities VALUES (46,'Mostaganem','DZA','Mostaganem',115212);
INSERT INTO cities VALUES (47,'T�bessa','DZA','T�bessa',112007);
INSERT INTO cities VALUES (48,'Tlemcen (Tilimsen)','DZA','Tlemcen',110242);
INSERT INTO cities VALUES (49,'B�char','DZA','B�char',107311);
INSERT INTO cities VALUES (50,'Tiaret','DZA','Tiaret',100118);
INSERT INTO cities VALUES (51,'Ech-Chleff (el-Asnam)','DZA','Chlef',96794);
INSERT INTO cities VALUES (52,'Gharda�a','DZA','Gharda�a',89415);
INSERT INTO cities VALUES (53,'Tafuna','ASM','Tutuila',5200);
INSERT INTO cities VALUES (54,'Fagatogo','ASM','Tutuila',2323);
INSERT INTO cities VALUES (55,'Andorra la Vella','AND','Andorra la Vella',21189);
INSERT INTO cities VALUES (56,'Luanda','AGO','Luanda',2022000);
INSERT INTO cities VALUES (57,'Huambo','AGO','Huambo',163100);
INSERT INTO cities VALUES (58,'Lobito','AGO','Benguela',130000);
INSERT INTO cities VALUES (59,'Benguela','AGO','Benguela',128300);
INSERT INTO cities VALUES (60,'Namibe','AGO','Namibe',118200);
INSERT INTO cities VALUES (61,'South Hill','AIA','�',961);
INSERT INTO cities VALUES (62,'The Valley','AIA','�',595);
INSERT INTO cities VALUES (63,'Saint John�s','ATG','St John',24000);
INSERT INTO cities VALUES (64,'Dubai','ARE','Dubai',669181);
INSERT INTO cities VALUES (65,'Abu Dhabi','ARE','Abu Dhabi',398695);
INSERT INTO cities VALUES (66,'Sharja','ARE','Sharja',320095);
INSERT INTO cities VALUES (67,'al-Ayn','ARE','Abu Dhabi',225970);
INSERT INTO cities VALUES (68,'Ajman','ARE','Ajman',114395);
INSERT INTO cities VALUES (69,'Buenos Aires','ARG','Distrito Federal',2982146);
INSERT INTO cities VALUES (70,'La Matanza','ARG','Buenos Aires',1266461);
INSERT INTO cities VALUES (71,'C�rdoba','ARG','C�rdoba',1157507);
INSERT INTO cities VALUES (72,'Rosario','ARG','Santa F�',907718);
INSERT INTO cities VALUES (73,'Lomas de Zamora','ARG','Buenos Aires',622013);
INSERT INTO cities VALUES (74,'Quilmes','ARG','Buenos Aires',559249);
INSERT INTO cities VALUES (75,'Almirante Brown','ARG','Buenos Aires',538918);
INSERT INTO cities VALUES (76,'La Plata','ARG','Buenos Aires',521936);
INSERT INTO cities VALUES (77,'Mar del Plata','ARG','Buenos Aires',512880);
INSERT INTO cities VALUES (78,'San Miguel de Tucum�n','ARG','Tucum�n',470809);
INSERT INTO cities VALUES (79,'Lan�s','ARG','Buenos Aires',469735);
INSERT INTO cities VALUES (80,'Merlo','ARG','Buenos Aires',463846);
INSERT INTO cities VALUES (81,'General San Mart�n','ARG','Buenos Aires',422542);
INSERT INTO cities VALUES (82,'Salta','ARG','Salta',367550);
INSERT INTO cities VALUES (83,'Moreno','ARG','Buenos Aires',356993);
INSERT INTO cities VALUES (84,'Santa F�','ARG','Santa F�',353063);
INSERT INTO cities VALUES (85,'Avellaneda','ARG','Buenos Aires',353046);
INSERT INTO cities VALUES (86,'Tres de Febrero','ARG','Buenos Aires',352311);
INSERT INTO cities VALUES (87,'Mor�n','ARG','Buenos Aires',349246);
INSERT INTO cities VALUES (88,'Florencio Varela','ARG','Buenos Aires',315432);
INSERT INTO cities VALUES (89,'San Isidro','ARG','Buenos Aires',306341);
INSERT INTO cities VALUES (90,'Tigre','ARG','Buenos Aires',296226);
INSERT INTO cities VALUES (91,'Malvinas Argentinas','ARG','Buenos Aires',290335);
INSERT INTO cities VALUES (92,'Vicente L�pez','ARG','Buenos Aires',288341);
INSERT INTO cities VALUES (93,'Berazategui','ARG','Buenos Aires',276916);
INSERT INTO cities VALUES (94,'Corrientes','ARG','Corrientes',258103);
INSERT INTO cities VALUES (95,'San Miguel','ARG','Buenos Aires',248700);
INSERT INTO cities VALUES (96,'Bah�a Blanca','ARG','Buenos Aires',239810);
INSERT INTO cities VALUES (97,'Esteban Echeverr�a','ARG','Buenos Aires',235760);
INSERT INTO cities VALUES (98,'Resistencia','ARG','Chaco',229212);
INSERT INTO cities VALUES (99,'Jos� C. Paz','ARG','Buenos Aires',221754);
INSERT INTO cities VALUES (100,'Paran�','ARG','Entre Rios',207041);
INSERT INTO cities VALUES (101,'Godoy Cruz','ARG','Mendoza',206998);
INSERT INTO cities VALUES (102,'Posadas','ARG','Misiones',201273);
INSERT INTO cities VALUES (103,'Guaymall�n','ARG','Mendoza',200595);
INSERT INTO cities VALUES (104,'Santiago del Estero','ARG','Santiago del Estero',189947);
INSERT INTO cities VALUES (105,'San Salvador de Jujuy','ARG','Jujuy',178748);
INSERT INTO cities VALUES (106,'Hurlingham','ARG','Buenos Aires',170028);
INSERT INTO cities VALUES (107,'Neuqu�n','ARG','Neuqu�n',167296);
INSERT INTO cities VALUES (108,'Ituzaing�','ARG','Buenos Aires',158197);
INSERT INTO cities VALUES (109,'San Fernando','ARG','Buenos Aires',153036);
INSERT INTO cities VALUES (110,'Formosa','ARG','Formosa',147636);
INSERT INTO cities VALUES (111,'Las Heras','ARG','Mendoza',145823);
INSERT INTO cities VALUES (112,'La Rioja','ARG','La Rioja',138117);
INSERT INTO cities VALUES (113,'San Fernando del Valle de Cata','ARG','Catamarca',134935);
INSERT INTO cities VALUES (114,'R�o Cuarto','ARG','C�rdoba',134355);
INSERT INTO cities VALUES (115,'Comodoro Rivadavia','ARG','Chubut',124104);
INSERT INTO cities VALUES (116,'Mendoza','ARG','Mendoza',123027);
INSERT INTO cities VALUES (117,'San Nicol�s de los Arroyos','ARG','Buenos Aires',119302);
INSERT INTO cities VALUES (118,'San Juan','ARG','San Juan',119152);
INSERT INTO cities VALUES (119,'Escobar','ARG','Buenos Aires',116675);
INSERT INTO cities VALUES (120,'Concordia','ARG','Entre Rios',116485);
INSERT INTO cities VALUES (121,'Pilar','ARG','Buenos Aires',113428);
INSERT INTO cities VALUES (122,'San Luis','ARG','San Luis',110136);
INSERT INTO cities VALUES (123,'Ezeiza','ARG','Buenos Aires',99578);
INSERT INTO cities VALUES (124,'San Rafael','ARG','Mendoza',94651);
INSERT INTO cities VALUES (125,'Tandil','ARG','Buenos Aires',91101);
INSERT INTO cities VALUES (126,'Yerevan','ARM','Yerevan',1248700);
INSERT INTO cities VALUES (127,'Gjumri','ARM','�irak',211700);
INSERT INTO cities VALUES (128,'Vanadzor','ARM','Lori',172700);
INSERT INTO cities VALUES (129,'Oranjestad','ABW','�',29034);
INSERT INTO cities VALUES (130,'Sydney','AUS','New South Wales',3276207);
INSERT INTO cities VALUES (131,'Melbourne','AUS','Victoria',2865329);
INSERT INTO cities VALUES (132,'Brisbane','AUS','Queensland',1291117);
INSERT INTO cities VALUES (133,'Perth','AUS','West Australia',1096829);
INSERT INTO cities VALUES (134,'Adelaide','AUS','South Australia',978100);
INSERT INTO cities VALUES (135,'Canberra','AUS','Capital Region',322723);
INSERT INTO cities VALUES (136,'Gold Coast','AUS','Queensland',311932);
INSERT INTO cities VALUES (137,'Newcastle','AUS','New South Wales',270324);
INSERT INTO cities VALUES (138,'Central Coast','AUS','New South Wales',227657);
INSERT INTO cities VALUES (139,'Wollongong','AUS','New South Wales',219761);
INSERT INTO cities VALUES (140,'Hobart','AUS','Tasmania',126118);
INSERT INTO cities VALUES (141,'Geelong','AUS','Victoria',125382);
INSERT INTO cities VALUES (142,'Townsville','AUS','Queensland',109914);
INSERT INTO cities VALUES (143,'Cairns','AUS','Queensland',92273);
INSERT INTO cities VALUES (144,'Baku','AZE','Baki',1787800);
INSERT INTO cities VALUES (145,'G�nc�','AZE','G�nc�',299300);
INSERT INTO cities VALUES (146,'Sumqayit','AZE','Sumqayit',283000);
INSERT INTO cities VALUES (147,'Ming��evir','AZE','Ming��evir',93900);
INSERT INTO cities VALUES (148,'Nassau','BHS','New Providence',172000);
INSERT INTO cities VALUES (149,'al-Manama','BHR','al-Manama',148000);
INSERT INTO cities VALUES (150,'Dhaka','BGD','Dhaka',3612850);
INSERT INTO cities VALUES (151,'Chittagong','BGD','Chittagong',1392860);
INSERT INTO cities VALUES (152,'Khulna','BGD','Khulna',663340);
INSERT INTO cities VALUES (153,'Rajshahi','BGD','Rajshahi',294056);
INSERT INTO cities VALUES (154,'Narayanganj','BGD','Dhaka',202134);
INSERT INTO cities VALUES (155,'Rangpur','BGD','Rajshahi',191398);
INSERT INTO cities VALUES (156,'Mymensingh','BGD','Dhaka',188713);
INSERT INTO cities VALUES (157,'Barisal','BGD','Barisal',170232);
INSERT INTO cities VALUES (158,'Tungi','BGD','Dhaka',168702);
INSERT INTO cities VALUES (159,'Jessore','BGD','Khulna',139710);
INSERT INTO cities VALUES (160,'Comilla','BGD','Chittagong',135313);
INSERT INTO cities VALUES (161,'Nawabganj','BGD','Rajshahi',130577);
INSERT INTO cities VALUES (162,'Dinajpur','BGD','Rajshahi',127815);
INSERT INTO cities VALUES (163,'Bogra','BGD','Rajshahi',120170);
INSERT INTO cities VALUES (164,'Sylhet','BGD','Sylhet',117396);
INSERT INTO cities VALUES (165,'Brahmanbaria','BGD','Chittagong',109032);
INSERT INTO cities VALUES (166,'Tangail','BGD','Dhaka',106004);
INSERT INTO cities VALUES (167,'Jamalpur','BGD','Dhaka',103556);
INSERT INTO cities VALUES (168,'Pabna','BGD','Rajshahi',103277);
INSERT INTO cities VALUES (169,'Naogaon','BGD','Rajshahi',101266);
INSERT INTO cities VALUES (170,'Sirajganj','BGD','Rajshahi',99669);
INSERT INTO cities VALUES (171,'Narsinghdi','BGD','Dhaka',98342);
INSERT INTO cities VALUES (172,'Saidpur','BGD','Rajshahi',96777);
INSERT INTO cities VALUES (173,'Gazipur','BGD','Dhaka',96717);
INSERT INTO cities VALUES (174,'Bridgetown','BRB','St Michael',6070);
INSERT INTO cities VALUES (175,'Antwerpen','BEL','Antwerpen',446525);
INSERT INTO cities VALUES (176,'Gent','BEL','East Flanderi',224180);
INSERT INTO cities VALUES (177,'Charleroi','BEL','Hainaut',200827);
INSERT INTO cities VALUES (178,'Li�ge','BEL','Li�ge',185639);
INSERT INTO cities VALUES (179,'Bruxelles [Brussel]','BEL','Bryssel',133859);
INSERT INTO cities VALUES (180,'Brugge','BEL','West Flanderi',116246);
INSERT INTO cities VALUES (181,'Schaerbeek','BEL','Bryssel',105692);
INSERT INTO cities VALUES (182,'Namur','BEL','Namur',105419);
INSERT INTO cities VALUES (183,'Mons','BEL','Hainaut',90935);
INSERT INTO cities VALUES (184,'Belize cities','BLZ','Belize cities',55810);
INSERT INTO cities VALUES (185,'Belmopan','BLZ','Cayo',7105);
INSERT INTO cities VALUES (186,'Cotonou','BEN','Atlantique',536827);
INSERT INTO cities VALUES (187,'Porto-Novo','BEN','Ou�m�',194000);
INSERT INTO cities VALUES (188,'Djougou','BEN','Atacora',134099);
INSERT INTO cities VALUES (189,'Parakou','BEN','Borgou',103577);
INSERT INTO cities VALUES (190,'Saint George','BMU','Saint George�s',1800);
INSERT INTO cities VALUES (191,'Hamilton','BMU','Hamilton',1200);
INSERT INTO cities VALUES (192,'Thimphu','BTN','Thimphu',22000);
INSERT INTO cities VALUES (193,'Santa Cruz de la Sierra','BOL','Santa Cruz',935361);
INSERT INTO cities VALUES (194,'La Paz','BOL','La Paz',758141);
INSERT INTO cities VALUES (195,'El Alto','BOL','La Paz',534466);
INSERT INTO cities VALUES (196,'Cochabamba','BOL','Cochabamba',482800);
INSERT INTO cities VALUES (197,'Oruro','BOL','Oruro',223553);
INSERT INTO cities VALUES (198,'Sucre','BOL','Chuquisaca',178426);
INSERT INTO cities VALUES (199,'Potos�','BOL','Potos�',140642);
INSERT INTO cities VALUES (200,'Tarija','BOL','Tarija',125255);
INSERT INTO cities VALUES (201,'Sarajevo','BIH','Federaatio',360000);
INSERT INTO cities VALUES (202,'Banja Luka','BIH','Republika Srpska',143079);
INSERT INTO cities VALUES (203,'Zenica','BIH','Federaatio',96027);
INSERT INTO cities VALUES (204,'Gaborone','BWA','Gaborone',213017);
INSERT INTO cities VALUES (205,'Francistown','BWA','Francistown',101805);
INSERT INTO cities VALUES (206,'S�o Paulo','BRA','S�o Paulo',9968485);
INSERT INTO cities VALUES (207,'Rio de Janeiro','BRA','Rio de Janeiro',5598953);
INSERT INTO cities VALUES (208,'Salvador','BRA','Bahia',2302832);
INSERT INTO cities VALUES (209,'Belo Horizonte','BRA','Minas Gerais',2139125);
INSERT INTO cities VALUES (210,'Fortaleza','BRA','Cear�',2097757);
INSERT INTO cities VALUES (211,'Bras�lia','BRA','Distrito Federal',1969868);
INSERT INTO cities VALUES (212,'Curitiba','BRA','Paran�',1584232);
INSERT INTO cities VALUES (213,'Recife','BRA','Pernambuco',1378087);
INSERT INTO cities VALUES (214,'Porto Alegre','BRA','Rio Grande do Sul',1314032);
INSERT INTO cities VALUES (215,'Manaus','BRA','Amazonas',1255049);
INSERT INTO cities VALUES (216,'Bel�m','BRA','Par�',1186926);
INSERT INTO cities VALUES (217,'Guarulhos','BRA','S�o Paulo',1095874);
INSERT INTO cities VALUES (218,'Goi�nia','BRA','Goi�s',1056330);
INSERT INTO cities VALUES (219,'Campinas','BRA','S�o Paulo',950043);
INSERT INTO cities VALUES (220,'S�o Gon�alo','BRA','Rio de Janeiro',869254);
INSERT INTO cities VALUES (221,'Nova Igua�u','BRA','Rio de Janeiro',862225);
INSERT INTO cities VALUES (222,'S�o Lu�s','BRA','Maranh�o',837588);
INSERT INTO cities VALUES (223,'Macei�','BRA','Alagoas',786288);
INSERT INTO cities VALUES (224,'Duque de Caxias','BRA','Rio de Janeiro',746758);
INSERT INTO cities VALUES (225,'S�o Bernardo do Campo','BRA','S�o Paulo',723132);
INSERT INTO cities VALUES (226,'Teresina','BRA','Piau�',691942);
INSERT INTO cities VALUES (227,'Natal','BRA','Rio Grande do Norte',688955);
INSERT INTO cities VALUES (228,'Osasco','BRA','S�o Paulo',659604);
INSERT INTO cities VALUES (229,'Campo Grande','BRA','Mato Grosso do Sul',649593);
INSERT INTO cities VALUES (230,'Santo Andr�','BRA','S�o Paulo',630073);
INSERT INTO cities VALUES (231,'Jo�o Pessoa','BRA','Para�ba',584029);
INSERT INTO cities VALUES (232,'Jaboat�o dos Guararapes','BRA','Pernambuco',558680);
INSERT INTO cities VALUES (233,'Contagem','BRA','Minas Gerais',520801);
INSERT INTO cities VALUES (234,'S�o Jos� dos Campos','BRA','S�o Paulo',515553);
INSERT INTO cities VALUES (235,'Uberl�ndia','BRA','Minas Gerais',487222);
INSERT INTO cities VALUES (236,'Feira de Santana','BRA','Bahia',479992);
INSERT INTO cities VALUES (237,'Ribeir�o Preto','BRA','S�o Paulo',473276);
INSERT INTO cities VALUES (238,'Sorocaba','BRA','S�o Paulo',466823);
INSERT INTO cities VALUES (239,'Niter�i','BRA','Rio de Janeiro',459884);
INSERT INTO cities VALUES (240,'Cuiab�','BRA','Mato Grosso',453813);
INSERT INTO cities VALUES (241,'Juiz de Fora','BRA','Minas Gerais',450288);
INSERT INTO cities VALUES (242,'Aracaju','BRA','Sergipe',445555);
INSERT INTO cities VALUES (243,'S�o Jo�o de Meriti','BRA','Rio de Janeiro',440052);
INSERT INTO cities VALUES (244,'Londrina','BRA','Paran�',432257);
INSERT INTO cities VALUES (245,'Joinville','BRA','Santa Catarina',428011);
INSERT INTO cities VALUES (246,'Belford Roxo','BRA','Rio de Janeiro',425194);
INSERT INTO cities VALUES (247,'Santos','BRA','S�o Paulo',408748);
INSERT INTO cities VALUES (248,'Ananindeua','BRA','Par�',400940);
INSERT INTO cities VALUES (249,'Campos dos Goytacazes','BRA','Rio de Janeiro',398418);
INSERT INTO cities VALUES (250,'Mau�','BRA','S�o Paulo',375055);
INSERT INTO cities VALUES (251,'Carapicu�ba','BRA','S�o Paulo',357552);
INSERT INTO cities VALUES (252,'Olinda','BRA','Pernambuco',354732);
INSERT INTO cities VALUES (253,'Campina Grande','BRA','Para�ba',352497);
INSERT INTO cities VALUES (254,'S�o Jos� do Rio Preto','BRA','S�o Paulo',351944);
INSERT INTO cities VALUES (255,'Caxias do Sul','BRA','Rio Grande do Sul',349581);
INSERT INTO cities VALUES (256,'Moji das Cruzes','BRA','S�o Paulo',339194);
INSERT INTO cities VALUES (257,'Diadema','BRA','S�o Paulo',335078);
INSERT INTO cities VALUES (258,'Aparecida de Goi�nia','BRA','Goi�s',324662);
INSERT INTO cities VALUES (259,'Piracicaba','BRA','S�o Paulo',319104);
INSERT INTO cities VALUES (260,'Cariacica','BRA','Esp�rito Santo',319033);
INSERT INTO cities VALUES (261,'Vila Velha','BRA','Esp�rito Santo',318758);
INSERT INTO cities VALUES (262,'Pelotas','BRA','Rio Grande do Sul',315415);
INSERT INTO cities VALUES (263,'Bauru','BRA','S�o Paulo',313670);
INSERT INTO cities VALUES (264,'Porto Velho','BRA','Rond�nia',309750);
INSERT INTO cities VALUES (265,'Serra','BRA','Esp�rito Santo',302666);
INSERT INTO cities VALUES (266,'Betim','BRA','Minas Gerais',302108);
INSERT INTO cities VALUES (267,'Jund�a�','BRA','S�o Paulo',296127);
INSERT INTO cities VALUES (268,'Canoas','BRA','Rio Grande do Sul',294125);
INSERT INTO cities VALUES (269,'Franca','BRA','S�o Paulo',290139);
INSERT INTO cities VALUES (270,'S�o Vicente','BRA','S�o Paulo',286848);
INSERT INTO cities VALUES (271,'Maring�','BRA','Paran�',286461);
INSERT INTO cities VALUES (272,'Montes Claros','BRA','Minas Gerais',286058);
INSERT INTO cities VALUES (273,'An�polis','BRA','Goi�s',282197);
INSERT INTO cities VALUES (274,'Florian�polis','BRA','Santa Catarina',281928);
INSERT INTO cities VALUES (275,'Petr�polis','BRA','Rio de Janeiro',279183);
INSERT INTO cities VALUES (276,'Itaquaquecetuba','BRA','S�o Paulo',270874);
INSERT INTO cities VALUES (277,'Vit�ria','BRA','Esp�rito Santo',270626);
INSERT INTO cities VALUES (278,'Ponta Grossa','BRA','Paran�',268013);
INSERT INTO cities VALUES (279,'Rio Branco','BRA','Acre',259537);
INSERT INTO cities VALUES (280,'Foz do Igua�u','BRA','Paran�',259425);
INSERT INTO cities VALUES (281,'Macap�','BRA','Amap�',256033);
INSERT INTO cities VALUES (282,'Ilh�us','BRA','Bahia',254970);
INSERT INTO cities VALUES (283,'Vit�ria da Conquista','BRA','Bahia',253587);
INSERT INTO cities VALUES (284,'Uberaba','BRA','Minas Gerais',249225);
INSERT INTO cities VALUES (285,'Paulista','BRA','Pernambuco',248473);
INSERT INTO cities VALUES (286,'Limeira','BRA','S�o Paulo',245497);
INSERT INTO cities VALUES (287,'Blumenau','BRA','Santa Catarina',244379);
INSERT INTO cities VALUES (288,'Caruaru','BRA','Pernambuco',244247);
INSERT INTO cities VALUES (289,'Santar�m','BRA','Par�',241771);
INSERT INTO cities VALUES (290,'Volta Redonda','BRA','Rio de Janeiro',240315);
INSERT INTO cities VALUES (291,'Novo Hamburgo','BRA','Rio Grande do Sul',239940);
INSERT INTO cities VALUES (292,'Caucaia','BRA','Cear�',238738);
INSERT INTO cities VALUES (293,'Santa Maria','BRA','Rio Grande do Sul',238473);
INSERT INTO cities VALUES (294,'Cascavel','BRA','Paran�',237510);
INSERT INTO cities VALUES (295,'Guaruj�','BRA','S�o Paulo',237206);
INSERT INTO cities VALUES (296,'Ribeir�o das Neves','BRA','Minas Gerais',232685);
INSERT INTO cities VALUES (297,'Governador Valadares','BRA','Minas Gerais',231724);
INSERT INTO cities VALUES (298,'Taubat�','BRA','S�o Paulo',229130);
INSERT INTO cities VALUES (299,'Imperatriz','BRA','Maranh�o',224564);
INSERT INTO cities VALUES (300,'Gravata�','BRA','Rio Grande do Sul',223011);

INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ABW','Aruba','North America','Caribbean',193.00,NULL,103000,78.4,828.00,793.00,'Aruba','Nonmetropolitan Territory of The Netherlands','Beatrix',129,'AW');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('AFG','Afghanistan','Asia','Southern and Central Asia',652090.00,1919,22720000,45.9,5976.00,NULL,'Afganistan/Afqanestan','Islamic Emirate','Mohammad Omar',1,'AF');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('AGO','Angola','Africa','Central Africa',1246700.00,1975,12878000,38.3,6648.00,7984.00,'Angola','Republic','Jos� Eduardo dos Santos',56,'AO');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('AIA','Anguilla','North America','Caribbean',96.00,NULL,8000,76.1,63.20,NULL,'Anguilla','Dependent Territory of the UK','Elisabeth II',62,'AI');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ALB','Albania','Europe','Southern Europe',28748.00,1912,3401200,71.6,3205.00,2500.00,'Shqip�ria','Republic','Rexhep Mejdani',34,'AL');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('AND','Andorra','Europe','Southern Europe',468.00,1278,78000,83.5,1630.00,NULL,'Andorra','Parliamentary Coprincipality','',55,'AD');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ANT','Netherlands Antilles','North America','Caribbean',800.00,NULL,217000,74.7,1941.00,NULL,'Nederlandse Antillen','Nonmetropolitan Territory of The Netherlands','Beatrix',33,'AN');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ARE','United Arab Emirates','Asia','Middle East',83600.00,1971,2441000,74.1,37966.00,36846.00,'Al-Imarat al-�Arabiya al-Muttahida','Emirate Federation','Zayid bin Sultan al-Nahayan',65,'AE');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ARG','Argentina','South America','South America',2780400.00,1816,37032000,75.1,340238.00,323310.00,'Argentina','Federal Republic','Fernando de la R�a',69,'AR');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ARM','Armenia','Asia','Middle East',29800.00,1991,3520000,66.4,1813.00,1627.00,'Hajastan','Republic','Robert Kot�arjan',126,'AM');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ASM','American Samoa','Oceania','Polynesia',199.00,NULL,68000,75.1,334.00,NULL,'Amerika Samoa','US Territory','George W. Bush',54,'AS');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ATA','Antarctica','Antarctica','Antarctica',13120000.00,NULL,0,NULL,0.00,NULL,'�','Co-administrated','',NULL,'AQ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ATF','French Southern territories','Antarctica','Antarctica',7780.00,NULL,0,NULL,0.00,NULL,'Terres australes fran�aises','Nonmetropolitan Territory of France','Jacques Chirac',NULL,'TF');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ATG','Antigua and Barbuda','North America','Caribbean',442.00,1981,68000,70.5,612.00,584.00,'Antigua and Barbuda','Constitutional Monarchy','Elisabeth II',63,'AG');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('AUS','Australia','Oceania','Australia and New Zealand',7741220.00,1901,18886000,79.8,351182.00,392911.00,'Australia','Constitutional Monarchy, Federation','Elisabeth II',135,'AU');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('AUT','Austria','Europe','Western Europe',83859.00,1918,8091800,77.7,211860.00,206025.00,'�sterreich','Federal Republic','Thomas Klestil',1523,'AT');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('AZE','Azerbaijan','Asia','Middle East',86600.00,1991,7734000,62.9,4127.00,4100.00,'Az�rbaycan','Federal Republic','Heyd�r �liyev',144,'AZ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BDI','Burundi','Africa','Eastern Africa',27834.00,1962,6695000,46.2,903.00,982.00,'Burundi/Uburundi','Republic','Pierre Buyoya',552,'BI');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BEL','Belgium','Europe','Western Europe',30518.00,1830,10239000,77.8,249704.00,243948.00,'Belgi�/Belgique','Constitutional Monarchy, Federation','Albert II',179,'BE');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BEN','Benin','Africa','Western Africa',112622.00,1960,6097000,50.2,2357.00,2141.00,'B�nin','Republic','Mathieu K�r�kou',187,'BJ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BFA','Burkina Faso','Africa','Western Africa',274000.00,1960,11937000,46.7,2425.00,2201.00,'Burkina Faso','Republic','Blaise Compaor�',549,'BF');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BGD','Bangladesh','Asia','Southern and Central Asia',143998.00,1971,129155000,60.2,32852.00,31966.00,'Bangladesh','Republic','Shahabuddin Ahmad',150,'BD');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BGR','Bulgaria','Europe','Eastern Europe',110994.00,1908,8190900,70.9,12178.00,10169.00,'Balgarija','Republic','Petar Stojanov',539,'BG');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BHR','Bahrain','Asia','Middle East',694.00,1971,617000,73.0,6366.00,6097.00,'Al-Bahrayn','Monarchy (Emirate)','Hamad ibn Isa al-Khalifa',149,'BH');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BHS','Bahamas','North America','Caribbean',13878.00,1973,307000,71.1,3527.00,3347.00,'The Bahamas','Constitutional Monarchy','Elisabeth II',148,'BS');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BIH','Bosnia and Herzegovina','Europe','Southern Europe',51197.00,1992,3972000,71.5,2841.00,NULL,'Bosna i Hercegovina','Federal Republic','Ante Jelavic',201,'BA');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BLR','Belarus','Europe','Eastern Europe',207600.00,1991,10236000,68.0,13714.00,NULL,'Belarus','Republic','Aljaksandr Luka�enka',3520,'BY');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BLZ','Belize','North America','Central America',22696.00,1981,241000,70.9,630.00,616.00,'Belize','Constitutional Monarchy','Elisabeth II',185,'BZ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BMU','Bermuda','North America','North America',53.00,NULL,65000,76.9,2328.00,2190.00,'Bermuda','Dependent Territory of the UK','Elisabeth II',191,'BM');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BOL','Bolivia','South America','South America',1098581.00,1825,8329000,63.7,8571.00,7967.00,'Bolivia','Republic','Hugo B�nzer Su�rez',194,'BO');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BRA','Brazil','South America','South America',8547403.00,1822,170115000,62.9,776739.00,804108.00,'Brasil','Federal Republic','Fernando Henrique Cardoso',211,'BR');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BRB','Barbados','North America','Caribbean',430.00,1966,270000,73.0,2223.00,2186.00,'Barbados','Constitutional Monarchy','Elisabeth II',174,'BB');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BRN','Brunei','Asia','Southeast Asia',5765.00,1984,328000,73.6,11705.00,12460.00,'Brunei Darussalam','Monarchy (Sultanate)','Haji Hassan al-Bolkiah',538,'BN');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BTN','Bhutan','Asia','Southern and Central Asia',47000.00,1910,2124000,52.4,372.00,383.00,'Druk-Yul','Monarchy','Jigme Singye Wangchuk',192,'BT');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BVT','Bouvet Island','Antarctica','Antarctica',59.00,NULL,0,NULL,0.00,NULL,'Bouvet�ya','Dependent Territory of Norway','Harald V',NULL,'BV');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('BWA','Botswana','Africa','Southern Africa',581730.00,1966,1622000,39.3,4834.00,4935.00,'Botswana','Republic','Festus G. Mogae',204,'BW');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('CAF','Central African Republic','Africa','Central Africa',622984.00,1960,3615000,44.0,1054.00,993.00,'Centrafrique/B�-Afr�ka','Republic','Ange-F�lix Patass�',1889,'CF');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('CAN','Canada','North America','North America',9970610.00,1867,31147000,79.4,598862.00,625626.00,'Canada','Constitutional Monarchy, Federation','Elisabeth II',1822,'CA');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('CCK','Cocos (Keeling) Islands','Oceania','Australia and New Zealand',14.00,NULL,600,NULL,0.00,NULL,'Cocos (Keeling) Islands','Territory of Australia','Elisabeth II',2317,'CC');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('CHE','Switzerland','Europe','Western Europe',41284.00,1499,7160400,79.6,264478.00,256092.00,'Schweiz/Suisse/Svizzera/Svizra','Federation','Adolf Ogi',3248,'CH');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('CHL','Chile','South America','South America',756626.00,1810,15211000,75.7,72949.00,75780.00,'Chile','Republic','Ricardo Lagos Escobar',554,'CL');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('CHN','China','Asia','Eastern Asia',9572900.00,-1523,1277558000,71.4,982268.00,917719.00,'Zhongquo','PeoplesRepublic','Jiang Zemin',1891,'CN');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('CIV','C�te d�Ivoire','Africa','Western Africa',322463.00,1960,14786000,45.2,11345.00,10285.00,'C�te d�Ivoire','Republic','Laurent Gbagbo',2814,'CI');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('CMR','Cameroon','Africa','Central Africa',475442.00,1960,15085000,54.8,9174.00,8596.00,'Cameroun/Cameroon','Republic','Paul Biya',1804,'CM');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('COD','Congo, The Democratic Republic of the','Africa','Central Africa',2344858.00,1960,51654000,48.8,6964.00,2474.00,'R�publique D�mocratique du Congo','Republic','Joseph Kabila',2298,'CD');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('COG','Congo','Africa','Central Africa',342000.00,1960,2943000,47.4,2108.00,2287.00,'Congo','Republic','Denis Sassou-Nguesso',2296,'CG');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('COK','Cook Islands','Oceania','Polynesia',236.00,NULL,20000,71.1,100.00,NULL,'The Cook Islands','Nonmetropolitan Territory of New Zealand','Elisabeth II',583,'CK');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('COL','Colombia','South America','South America',1138914.00,1810,42321000,70.3,102896.00,105116.00,'Colombia','Republic','Andr�s Pastrana Arango',2257,'CO');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('COM','Comoros','Africa','Eastern Africa',1862.00,1975,578000,60.0,4401.00,4361.00,'Komori/Comores','Republic','Azali Assoumani',2295,'KM');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('CPV','Cape Verde','Africa','Western Africa',4033.00,1975,428000,68.9,435.00,420.00,'Cabo Verde','Republic','Ant�nio Mascarenhas Monteiro',1859,'CV');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('CRI','Costa Rica','North America','Central America',51100.00,1821,4023000,75.8,10226.00,9757.00,'Costa Rica','Republic','Miguel �ngel Rodr�guez Echeverr�a',584,'CR');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('CUB','Cuba','North America','Caribbean',110861.00,1902,11201000,76.2,17843.00,18862.00,'Cuba','Socialistic Republic','Fidel Castro Ruz',2413,'CU');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('CXR','Christmas Island','Oceania','Australia and New Zealand',135.00,NULL,2500,NULL,0.00,NULL,'Christmas Island','Territory of Australia','Elisabeth II',1791,'CX');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('CYM','Cayman Islands','North America','Caribbean',264.00,NULL,38000,78.9,1263.00,1186.00,'Cayman Islands','Dependent Territory of the UK','Elisabeth II',553,'KY');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('CYP','Cyprus','Asia','Middle East',9251.00,1960,754700,76.7,9333.00,8246.00,'K�pros/Kibris','Republic','Glafkos Klerides',2430,'CY');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('CZE','Czech Republic','Europe','Eastern Europe',78866.00,1993,10278100,74.5,55017.00,52037.00,'�esko','Republic','V�clav Havel',3339,'CZ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('DEU','Germany','Europe','Western Europe',357022.00,1955,82164700,77.4,2133367.00,2102826.00,'Deutschland','Federal Republic','Johannes Rau',3068,'DE');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('DJI','Djibouti','Africa','Eastern Africa',23200.00,1977,638000,50.8,382.00,373.00,'Djibouti/Jibuti','Republic','Ismail Omar Guelleh',585,'DJ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('DMA','Dominica','North America','Caribbean',751.00,1978,71000,73.4,256.00,243.00,'Dominica','Republic','Vernon Shaw',586,'DM');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('DNK','Denmark','Europe','Nordic Countries',43094.00,800,5330000,76.5,174099.00,169264.00,'Danmark','Constitutional Monarchy','Margrethe II',3315,'DK');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('DOM','Dominican Republic','North America','Caribbean',48511.00,1844,8495000,73.2,15846.00,15076.00,'Rep�blica Dominicana','Republic','Hip�lito Mej�a Dom�nguez',587,'DO');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('DZA','Algeria','Africa','Northern Africa',2381741.00,1962,31471000,69.7,49982.00,46966.00,'Al-Jaza�ir/Alg�rie','Republic','Abdelaziz Bouteflika',35,'DZ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ECU','Ecuador','South America','South America',283561.00,1822,12646000,71.1,19770.00,19769.00,'Ecuador','Republic','Gustavo Noboa Bejarano',594,'EC');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('EGY','Egypt','Africa','Northern Africa',1001449.00,1922,68470000,63.3,82710.00,75617.00,'Misr','Republic','Hosni Mubarak',608,'EG');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ERI','Eritrea','Africa','Eastern Africa',117600.00,1993,3850000,55.8,650.00,755.00,'Ertra','Republic','Isayas Afewerki [Isaias Afwerki]',652,'ER');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ESH','Western Sahara','Africa','Northern Africa',266000.00,NULL,293000,49.8,60.00,NULL,'As-Sahrawiya','Occupied by Marocco','Mohammed Abdel Aziz',2453,'EH');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ESP','Spain','Europe','Southern Europe',505992.00,1492,39441700,78.8,553233.00,532031.00,'Espa�a','Constitutional Monarchy','Juan Carlos I',653,'ES');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('EST','Estonia','Europe','Baltic Countries',45227.00,1991,1439200,69.5,5328.00,3371.00,'Eesti','Republic','Lennart Meri',3791,'EE');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ETH','Ethiopia','Africa','Eastern Africa',1104300.00,-1000,62565000,45.2,6353.00,6180.00,'YeItyop�iya','Republic','Negasso Gidada',756,'ET');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('FIN','Finland','Europe','Nordic Countries',338145.00,1917,5171300,77.4,121914.00,119833.00,'Suomi','Republic','Tarja Halonen',3236,'FI');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('FJI','Fiji Islands','Oceania','Melanesia',18274.00,1970,817000,67.9,1536.00,2149.00,'Fiji Islands','Republic','Josefa Iloilo',764,'FJ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('FLK','Falkland Islands','South America','South America',12173.00,NULL,2000,NULL,0.00,NULL,'Falkland Islands','Dependent Territory of the UK','Elisabeth II',763,'FK');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('FRA','France','Europe','Western Europe',551500.00,843,59225700,78.8,1424285.00,1392448.00,'France','Republic','Jacques Chirac',2974,'FR');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('FRO','Faroe Islands','Europe','Nordic Countries',1399.00,NULL,43000,78.4,0.00,NULL,'F�royar','Part of Denmark','Margrethe II',901,'FO');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('FSM','Micronesia, Federated States of','Oceania','Micronesia',702.00,1990,119000,68.6,212.00,NULL,'Micronesia','Federal Republic','Leo A. Falcam',2689,'FM');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GAB','Gabon','Africa','Central Africa',267668.00,1960,1226000,50.1,5493.00,5279.00,'Le Gabon','Republic','Omar Bongo',902,'GA');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GBR','United Kingdom','Europe','British Islands',242900.00,1066,59623400,77.7,1378330.00,1296830.00,'United Kingdom','Constitutional Monarchy','Elisabeth II',456,'GB');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GEO','Georgia','Asia','Middle East',69700.00,1991,4968000,64.5,6064.00,5924.00,'Sakartvelo','Republic','Eduard �evardnadze',905,'GE');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GHA','Ghana','Africa','Western Africa',238533.00,1957,20212000,57.4,7137.00,6884.00,'Ghana','Republic','John Kufuor',910,'GH');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GIB','Gibraltar','Europe','Southern Europe',6.00,NULL,25000,79.0,258.00,NULL,'Gibraltar','Dependent Territory of the UK','Elisabeth II',915,'GI');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GIN','Guinea','Africa','Western Africa',245857.00,1958,7430000,45.6,2352.00,2383.00,'Guin�e','Republic','Lansana Cont�',926,'GN');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GLP','Guadeloupe','North America','Caribbean',1705.00,NULL,456000,77.0,3501.00,NULL,'Guadeloupe','Overseas Department of France','Jacques Chirac',919,'GP');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GMB','Gambia','Africa','Western Africa',11295.00,1965,1305000,53.2,320.00,325.00,'The Gambia','Republic','Yahya Jammeh',904,'GM');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GNB','Guinea-Bissau','Africa','Western Africa',36125.00,1974,1213000,49.0,293.00,272.00,'Guin�-Bissau','Republic','Kumba Ial�',927,'GW');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GNQ','Equatorial Guinea','Africa','Central Africa',28051.00,1968,453000,53.6,283.00,542.00,'Guinea Ecuatorial','Republic','Teodoro Obiang Nguema Mbasogo',2972,'GQ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GRC','Greece','Europe','Southern Europe',131626.00,1830,10545700,78.4,120724.00,119946.00,'Ell�da','Republic','Kostis Stefanopoulos',2401,'GR');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GRD','Grenada','North America','Caribbean',344.00,1974,94000,64.5,318.00,NULL,'Grenada','Constitutional Monarchy','Elisabeth II',916,'GD');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GRL','Greenland','North America','North America',2166090.00,NULL,56000,68.1,0.00,NULL,'Kalaallit Nunaat/Gr�nland','Part of Denmark','Margrethe II',917,'GL');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GTM','Guatemala','North America','Central America',108889.00,1821,11385000,66.2,19008.00,17797.00,'Guatemala','Republic','Alfonso Portillo Cabrera',922,'GT');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GUF','French Guiana','South America','South America',90000.00,NULL,181000,76.1,681.00,NULL,'Guyane fran�aise','Overseas Department of France','Jacques Chirac',3014,'GF');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GUM','Guam','Oceania','Micronesia',549.00,NULL,168000,77.8,1197.00,1136.00,'Guam','US Territory','George W. Bush',921,'GU');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('GUY','Guyana','South America','South America',214969.00,1966,861000,64.0,722.00,743.00,'Guyana','Republic','Bharrat Jagdeo',928,'GY');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('HKG','Hong Kong','Asia','Eastern Asia',1075.00,NULL,6782000,79.5,166448.00,173610.00,'Xianggang/Hong Kong','Special Administrative Region of China','Jiang Zemin',937,'HK');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('HMD','Heard Island and McDonald Islands','Antarctica','Antarctica',359.00,NULL,0,NULL,0.00,NULL,'Heard and McDonald Islands','Territory of Australia','Elisabeth II',NULL,'HM');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('HND','Honduras','North America','Central America',112088.00,1838,6485000,69.9,5333.00,4697.00,'Honduras','Republic','Carlos Roberto Flores Facuss�',933,'HN');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('HRV','Croatia','Europe','Southern Europe',56538.00,1991,4473000,73.7,20208.00,19300.00,'Hrvatska','Republic','�tipe Mesic',2409,'HR');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('HTI','Haiti','North America','Caribbean',27750.00,1804,8222000,49.2,3459.00,3107.00,'Ha�ti/Dayti','Republic','Jean-Bertrand Aristide',929,'HT');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('HUN','Hungary','Europe','Eastern Europe',93030.00,1918,10043200,71.4,48267.00,45914.00,'Magyarorsz�g','Republic','Ferenc M�dl',3483,'HU');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('IDN','Indonesia','Asia','Southeast Asia',1904569.00,1945,212107000,68.0,84982.00,215002.00,'Indonesia','Republic','Abdurrahman Wahid',939,'ID');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('IND','India','Asia','Southern and Central Asia',3287263.00,1947,1013662000,62.5,447114.00,430572.00,'Bharat/India','Federal Republic','Kocheril Raman Narayanan',1109,'IN');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('IOT','British Indian Ocean Territory','Africa','Eastern Africa',78.00,NULL,0,NULL,0.00,NULL,'British Indian Ocean Territory','Dependent Territory of the UK','Elisabeth II',NULL,'IO');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('IRL','Ireland','Europe','British Islands',70273.00,1921,3775100,76.8,75921.00,73132.00,'Ireland/�ire','Republic','Mary McAleese',1447,'IE');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('IRN','Iran','Asia','Southern and Central Asia',1648195.00,1906,67702000,69.7,195746.00,160151.00,'Iran','Islamic Republic','Ali Mohammad Khatami-Ardakani',1380,'IR');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('IRQ','Iraq','Asia','Middle East',438317.00,1932,23115000,66.5,11500.00,NULL,'Al-�Iraq','Republic','Saddam Hussein al-Takriti',1365,'IQ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ISL','Iceland','Europe','Nordic Countries',103000.00,1944,279000,79.4,8255.00,7474.00,'�sland','Republic','�lafur Ragnar Gr�msson',1449,'IS');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ISR','Israel','Asia','Middle East',21056.00,1948,6217000,78.6,97477.00,98577.00,'Yisra�el/Isra�il','Republic','Moshe Katzav',1450,'IL');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ITA','Italy','Europe','Southern Europe',301316.00,1861,57680000,79.0,1161755.00,1145372.00,'Italia','Republic','Carlo Azeglio Ciampi',1464,'IT');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('JAM','Jamaica','North America','Caribbean',10990.00,1962,2583000,75.2,6871.00,6722.00,'Jamaica','Constitutional Monarchy','Elisabeth II',1530,'JM');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('JOR','Jordan','Asia','Middle East',88946.00,1946,5083000,77.4,7526.00,7051.00,'Al-Urdunn','Constitutional Monarchy','Abdullah II',1786,'JO');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('JPN','Japan','Asia','Eastern Asia',377829.00,-660,126714000,80.7,3787042.00,4192638.00,'Nihon/Nippon','Constitutional Monarchy','Akihito',1532,'JP');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('KAZ','Kazakstan','Asia','Southern and Central Asia',2724900.00,1991,16223000,63.2,24375.00,23383.00,'Qazaqstan','Republic','Nursultan Nazarbajev',1864,'KZ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('KEN','Kenya','Africa','Eastern Africa',580367.00,1963,30080000,48.0,9217.00,10241.00,'Kenya','Republic','Daniel arap Moi',1881,'KE');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('KGZ','Kyrgyzstan','Asia','Southern and Central Asia',199900.00,1991,4699000,63.4,1626.00,1767.00,'Kyrgyzstan','Republic','Askar Akajev',2253,'KG');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('KHM','Cambodia','Asia','Southeast Asia',181035.00,1953,11168000,56.5,5121.00,5670.00,'K�mpuch�a','Constitutional Monarchy','Norodom Sihanouk',1800,'KH');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('KIR','Kiribati','Oceania','Micronesia',726.00,1979,83000,59.8,40.70,NULL,'Kiribati','Republic','Teburoro Tito',2256,'KI');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('KNA','Saint Kitts and Nevis','North America','Caribbean',261.00,1983,38000,70.7,299.00,NULL,'Saint Kitts and Nevis','Constitutional Monarchy','Elisabeth II',3064,'KN');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('KOR','South Korea','Asia','Eastern Asia',99434.00,1948,46844000,74.4,320749.00,442544.00,'Taehan Min�guk (Namhan)','Republic','Kim Dae-jung',2331,'KR');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('KWT','Kuwait','Asia','Middle East',17818.00,1961,1972000,76.1,27037.00,30373.00,'Al-Kuwayt','Constitutional Monarchy (Emirate)','Jabir al-Ahmad al-Jabir al-Sabah',2429,'KW');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('LAO','Laos','Asia','Southeast Asia',236800.00,1953,5433000,53.1,1292.00,1746.00,'Lao','Republic','Khamtay Siphandone',2432,'LA');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('LBN','Lebanon','Asia','Middle East',10400.00,1941,3282000,71.3,17121.00,15129.00,'Lubnan','Republic','�mile Lahoud',2438,'LB');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('LBR','Liberia','Africa','Western Africa',111369.00,1847,3154000,51.0,2012.00,NULL,'Liberia','Republic','Charles Taylor',2440,'LR');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('LBY','Libyan Arab Jamahiriya','Africa','Northern Africa',1759540.00,1951,5605000,75.5,44806.00,40562.00,'Libiya','Socialistic State','Muammar al-Qadhafi',2441,'LY');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('LCA','Saint Lucia','North America','Caribbean',622.00,1979,154000,72.3,571.00,NULL,'Saint Lucia','Constitutional Monarchy','Elisabeth II',3065,'LC');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('LIE','Liechtenstein','Europe','Western Europe',160.00,1806,32300,78.8,1119.00,1084.00,'Liechtenstein','Constitutional Monarchy','Hans-Adam II',2446,'LI');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('LKA','Sri Lanka','Asia','Southern and Central Asia',65610.00,1948,18827000,71.8,15706.00,15091.00,'Sri Lanka/Ilankai','Republic','Chandrika Kumaratunga',3217,'LK');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('LSO','Lesotho','Africa','Southern Africa',30355.00,1966,2153000,50.8,1061.00,1161.00,'Lesotho','Constitutional Monarchy','Letsie III',2437,'LS');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('LTU','Lithuania','Europe','Baltic Countries',65301.00,1991,3698500,69.1,10692.00,9585.00,'Lietuva','Republic','Valdas Adamkus',2447,'LT');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('LUX','Luxembourg','Europe','Western Europe',2586.00,1867,435700,77.1,16321.00,15519.00,'Luxembourg/L�tzebuerg','Constitutional Monarchy','Henri',2452,'LU');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('LVA','Latvia','Europe','Baltic Countries',64589.00,1991,2424200,68.4,6398.00,5639.00,'Latvija','Republic','Vaira Vike-Freiberga',2434,'LV');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MAC','Macao','Asia','Eastern Asia',18.00,NULL,473000,81.6,5749.00,5940.00,'Macau/Aomen','Special Administrative Region of China','Jiang Zemin',2454,'MO');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MAR','Morocco','Africa','Northern Africa',446550.00,1956,28351000,69.1,36124.00,33514.00,'Al-Maghrib','Constitutional Monarchy','Mohammed VI',2486,'MA');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MCO','Monaco','Europe','Western Europe',1.50,1861,34000,78.8,776.00,NULL,'Monaco','Constitutional Monarchy','Rainier III',2695,'MC');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MDA','Moldova','Europe','Eastern Europe',33851.00,1991,4380000,64.5,1579.00,1872.00,'Moldova','Republic','Vladimir Voronin',2690,'MD');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MDG','Madagascar','Africa','Eastern Africa',587041.00,1960,15942000,55.0,3750.00,3545.00,'Madagasikara/Madagascar','Federal Republic','Didier Ratsiraka',2455,'MG');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MDV','Maldives','Asia','Southern and Central Asia',298.00,1965,286000,62.2,199.00,NULL,'Dhivehi Raajje/Maldives','Republic','Maumoon Abdul Gayoom',2463,'MV');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MEX','Mexico','North America','Central America',1958201.00,1810,98881000,71.5,414972.00,401461.00,'M�xico','Federal Republic','Vicente Fox Quesada',2515,'MX');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MHL','Marshall Islands','Oceania','Micronesia',181.00,1990,64000,65.5,97.00,NULL,'Marshall Islands/Majol','Republic','Kessai Note',2507,'MH');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MKD','Macedonia','Europe','Southern Europe',25713.00,1991,2024000,73.8,1694.00,1915.00,'Makedonija','Republic','Boris Trajkovski',2460,'MK');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MLI','Mali','Africa','Western Africa',1240192.00,1960,11234000,46.7,2642.00,2453.00,'Mali','Republic','Alpha Oumar Konar�',2482,'ML');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MLT','Malta','Europe','Southern Europe',316.00,1964,380200,77.9,3512.00,3338.00,'Malta','Republic','Guido de Marco',2484,'MT');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MMR','Myanmar','Asia','Southeast Asia',676578.00,1948,45611000,54.9,180375.00,171028.00,'Myanma Pye','Republic','kenraali Than Shwe',2710,'MM');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MNG','Mongolia','Asia','Eastern Asia',1566500.00,1921,2662000,67.3,1043.00,933.00,'Mongol Uls','Republic','Natsagiin Bagabandi',2696,'MN');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MNP','Northern Mariana Islands','Oceania','Micronesia',464.00,NULL,78000,75.5,0.00,NULL,'Northern Mariana Islands','Commonwealth of the US','George W. Bush',2913,'MP');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MOZ','Mozambique','Africa','Eastern Africa',801590.00,1975,19680000,37.5,2891.00,2711.00,'Mo�ambique','Republic','Joaqu�m A. Chissano',2698,'MZ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MRT','Mauritania','Africa','Western Africa',1025520.00,1960,2670000,50.8,998.00,1081.00,'Muritaniya/Mauritanie','Republic','Maaouiya Ould Sid�Ahmad Taya',2509,'MR');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MSR','Montserrat','North America','Caribbean',102.00,NULL,11000,78.0,109.00,NULL,'Montserrat','Dependent Territory of the UK','Elisabeth II',2697,'MS');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MTQ','Martinique','North America','Caribbean',1102.00,NULL,395000,78.3,2731.00,2559.00,'Martinique','Overseas Department of France','Jacques Chirac',2508,'MQ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MUS','Mauritius','Africa','Eastern Africa',2040.00,1968,1158000,71.0,4251.00,4186.00,'Mauritius','Republic','Cassam Uteem',2511,'MU');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MWI','Malawi','Africa','Eastern Africa',118484.00,1964,10925000,37.6,1687.00,2527.00,'Malawi','Republic','Bakili Muluzi',2462,'MW');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MYS','Malaysia','Asia','Southeast Asia',329758.00,1957,22244000,70.8,69213.00,97884.00,'Malaysia','Constitutional Monarchy, Federation','Salahuddin Abdul Aziz Shah Alhaj',2464,'MY');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('MYT','Mayotte','Africa','Eastern Africa',373.00,NULL,149000,59.5,0.00,NULL,'Mayotte','Territorial Collectivity of France','Jacques Chirac',2514,'YT');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('NAM','Namibia','Africa','Southern Africa',824292.00,1990,1726000,42.5,3101.00,3384.00,'Namibia','Republic','Sam Nujoma',2726,'NA');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('NCL','New Caledonia','Oceania','Melanesia',18575.00,NULL,214000,72.8,3563.00,NULL,'Nouvelle-Cal�donie','Nonmetropolitan Territory of France','Jacques Chirac',3493,'NC');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('NER','Niger','Africa','Western Africa',1267000.00,1960,10730000,41.3,1706.00,1580.00,'Niger','Republic','Mamadou Tandja',2738,'NE');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('NFK','Norfolk Island','Oceania','Australia and New Zealand',36.00,NULL,2000,NULL,0.00,NULL,'Norfolk Island','Territory of Australia','Elisabeth II',2806,'NF');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('NGA','Nigeria','Africa','Western Africa',923768.00,1960,111506000,51.6,65707.00,58623.00,'Nigeria','Federal Republic','Olusegun Obasanjo',2754,'NG');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('NIC','Nicaragua','North America','Central America',130000.00,1838,5074000,68.7,1988.00,2023.00,'Nicaragua','Republic','Arnoldo Alem�n Lacayo',2734,'NI');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('NIU','Niue','Oceania','Polynesia',260.00,NULL,2000,NULL,0.00,NULL,'Niue','Nonmetropolitan Territory of New Zealand','Elisabeth II',2805,'NU');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('NLD','Netherlands','Europe','Western Europe',41526.00,1581,15864000,78.3,371362.00,360478.00,'Nederland','Constitutional Monarchy','Beatrix',5,'NL');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('NOR','Norway','Europe','Nordic Countries',323877.00,1905,4478500,78.7,145895.00,153370.00,'Norge','Constitutional Monarchy','Harald V',2807,'NO');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('NPL','Nepal','Asia','Southern and Central Asia',147181.00,1769,23930000,57.8,4768.00,4837.00,'Nepal','Constitutional Monarchy','Gyanendra Bir Bikram',2729,'NP');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('NRU','Nauru','Oceania','Micronesia',21.00,1968,12000,60.8,197.00,NULL,'Naoero/Nauru','Republic','Bernard Dowiyogo',2728,'NR');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('NZL','New Zealand','Oceania','Australia and New Zealand',270534.00,1907,3862000,77.8,54669.00,64960.00,'New Zealand/Aotearoa','Constitutional Monarchy','Elisabeth II',3499,'NZ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('OMN','Oman','Asia','Middle East',309500.00,1951,2542000,71.8,16904.00,16153.00,'�Uman','Monarchy (Sultanate)','Qabus ibn Sa�id',2821,'OM');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('PAK','Pakistan','Asia','Southern and Central Asia',796095.00,1947,156483000,61.1,61289.00,58549.00,'Pakistan','Republic','Mohammad Rafiq Tarar',2831,'PK');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('PAN','Panama','North America','Central America',75517.00,1903,2856000,75.5,9131.00,8700.00,'Panam�','Republic','Mireya Elisa Moscoso Rodr�guez',2882,'PA');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('PCN','Pitcairn','Oceania','Polynesia',49.00,NULL,50,NULL,0.00,NULL,'Pitcairn','Dependent Territory of the UK','Elisabeth II',2912,'PN');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('PER','Peru','South America','South America',1285216.00,1821,25662000,70.0,64140.00,65186.00,'Per�/Piruw','Republic','Valentin Paniagua Corazao',2890,'PE');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('PHL','Philippines','Asia','Southeast Asia',300000.00,1946,75967000,67.5,65107.00,82239.00,'Pilipinas','Republic','Gloria Macapagal-Arroyo',766,'PH');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('PLW','Palau','Oceania','Micronesia',459.00,1994,19000,68.6,105.00,NULL,'Belau/Palau','Republic','Kuniwo Nakamura',2881,'PW');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('PNG','Papua New Guinea','Oceania','Melanesia',462840.00,1975,4807000,63.1,4988.00,6328.00,'Papua New Guinea/Papua Niugini','Constitutional Monarchy','Elisabeth II',2884,'PG');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('POL','Poland','Europe','Eastern Europe',323250.00,1918,38653600,73.2,151697.00,135636.00,'Polska','Republic','Aleksander Kwasniewski',2928,'PL');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('PRI','Puerto Rico','North America','Caribbean',8875.00,NULL,3869000,75.6,34100.00,32100.00,'Puerto Rico','Commonwealth of the US','George W. Bush',2919,'PR');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('PRK','North Korea','Asia','Eastern Asia',120538.00,1948,24039000,70.7,5332.00,NULL,'Choson Minjujuui In�min Konghwaguk (Bukhan)','Socialistic Republic','Kim Jong-il',2318,'KP');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('PRT','Portugal','Europe','Southern Europe',91982.00,1143,9997600,75.8,105954.00,102133.00,'Portugal','Republic','Jorge Samp�io',2914,'PT');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('PRY','Paraguay','South America','South America',406752.00,1811,5496000,73.7,8444.00,9555.00,'Paraguay','Republic','Luis �ngel Gonz�lez Macchi',2885,'PY');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('PSE','Palestine','Asia','Middle East',6257.00,NULL,3101000,71.4,4173.00,NULL,'Filastin','Autonomous Area','Yasser (Yasir) Arafat',4074,'PS');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('PYF','French Polynesia','Oceania','Polynesia',4000.00,NULL,235000,74.8,818.00,781.00,'Polyn�sie fran�aise','Nonmetropolitan Territory of France','Jacques Chirac',3016,'PF');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('QAT','Qatar','Asia','Middle East',11000.00,1971,599000,72.4,9472.00,8920.00,'Qatar','Monarchy','Hamad ibn Khalifa al-Thani',2973,'QA');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('REU','R�union','Africa','Eastern Africa',2510.00,NULL,699000,72.7,8287.00,7988.00,'R�union','Overseas Department of France','Jacques Chirac',3017,'RE');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ROM','Romania','Europe','Eastern Europe',238391.00,1878,22455500,69.9,38158.00,34843.00,'Rom�nia','Republic','Ion Iliescu',3018,'RO');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('RUS','Russian Federation','Europe','Eastern Europe',17075400.00,1991,146934000,67.2,276608.00,442989.00,'Rossija','Federal Republic','Vladimir Putin',3580,'RU');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('RWA','Rwanda','Africa','Eastern Africa',26338.00,1962,7733000,39.3,2036.00,1863.00,'Rwanda/Urwanda','Republic','Paul Kagame',3047,'RW');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SAU','Saudi Arabia','Asia','Middle East',2149690.00,1932,21607000,67.8,137635.00,146171.00,'Al-�Arabiya as-Sa�udiya','Monarchy','Fahd ibn Abdul-Aziz al-Sa�ud',3173,'SA');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SDN','Sudan','Africa','Northern Africa',2505813.00,1956,29490000,56.6,10162.00,NULL,'As-Sudan','Islamic Republic','Omar Hassan Ahmad al-Bashir',3225,'SD');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SEN','Senegal','Africa','Western Africa',196722.00,1960,9481000,62.2,4787.00,4542.00,'S�n�gal/Sounougal','Republic','Abdoulaye Wade',3198,'SN');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SGP','Singapore','Asia','Southeast Asia',618.00,1965,3567000,80.1,86503.00,96318.00,'Singapore/Singapura/Xinjiapo/Singapur','Republic','Sellapan Rama Nathan',3208,'SG');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SGS','South Georgia and the South Sandwich Islands','Antarctica','Antarctica',3903.00,NULL,0,NULL,0.00,NULL,'South Georgia and the South Sandwich Islands','Dependent Territory of the UK','Elisabeth II',NULL,'GS');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SHN','Saint Helena','Africa','Western Africa',314.00,NULL,6000,76.8,0.00,NULL,'Saint Helena','Dependent Territory of the UK','Elisabeth II',3063,'SH');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SJM','Svalbard and Jan Mayen','Europe','Nordic Countries',62422.00,NULL,3200,NULL,0.00,NULL,'Svalbard og Jan Mayen','Dependent Territory of Norway','Harald V',938,'SJ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SLB','Solomon Islands','Oceania','Melanesia',28896.00,1978,444000,71.3,182.00,220.00,'Solomon Islands','Constitutional Monarchy','Elisabeth II',3161,'SB');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SLE','Sierra Leone','Africa','Western Africa',71740.00,1961,4854000,45.3,746.00,858.00,'Sierra Leone','Republic','Ahmed Tejan Kabbah',3207,'SL');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SLV','El Salvador','North America','Central America',21041.00,1841,6276000,69.7,11863.00,11203.00,'El Salvador','Republic','Francisco Guillermo Flores P�rez',645,'SV');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SMR','San Marino','Europe','Southern Europe',61.00,885,27000,81.1,510.00,NULL,'San Marino','Republic',NULL,3171,'SM');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SOM','Somalia','Africa','Eastern Africa',637657.00,1960,10097000,46.2,935.00,NULL,'Soomaaliya','Republic','Abdiqassim Salad Hassan',3214,'SO');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SPM','Saint Pierre and Miquelon','North America','North America',242.00,NULL,7000,77.6,0.00,NULL,'Saint-Pierre-et-Miquelon','Territorial Collectivity of France','Jacques Chirac',3067,'PM');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('STP','Sao Tome and Principe','Africa','Central Africa',964.00,1975,147000,65.3,6.00,NULL,'S�o Tom� e Pr�ncipe','Republic','Miguel Trovoada',3172,'ST');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SUR','Suriname','South America','South America',163265.00,1975,417000,71.4,870.00,706.00,'Suriname','Republic','Ronald Venetiaan',3243,'SR');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SVK','Slovakia','Europe','Eastern Europe',49012.00,1993,5398700,73.7,20594.00,19452.00,'Slovensko','Republic','Rudolf Schuster',3209,'SK');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SVN','Slovenia','Europe','Southern Europe',20256.00,1991,1987800,74.9,19756.00,18202.00,'Slovenija','Republic','Milan Kucan',3212,'SI');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SWE','Sweden','Europe','Nordic Countries',449964.00,836,8861400,79.6,226492.00,227757.00,'Sverige','Constitutional Monarchy','Carl XVI Gustaf',3048,'SE');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SWZ','Swaziland','Africa','Southern Africa',17364.00,1968,1008000,40.4,1206.00,1312.00,'kaNgwane','Monarchy','Mswati III',3244,'SZ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SYC','Seychelles','Africa','Eastern Africa',455.00,1976,77000,70.4,536.00,539.00,'Sesel/Seychelles','Republic','France-Albert Ren�',3206,'SC');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('SYR','Syria','Asia','Middle East',185180.00,1941,16125000,68.5,65984.00,64926.00,'Suriya','Republic','Bashar al-Assad',3250,'SY');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('TCA','Turks and Caicos Islands','North America','Caribbean',430.00,NULL,17000,73.3,96.00,NULL,'The Turks and Caicos Islands','Dependent Territory of the UK','Elisabeth II',3423,'TC');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('TCD','Chad','Africa','Central Africa',1284000.00,1960,7651000,50.5,1208.00,1102.00,'Tchad/Tshad','Republic','Idriss D�by',3337,'TD');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('TGO','Togo','Africa','Western Africa',56785.00,1960,4629000,54.7,1449.00,1400.00,'Togo','Republic','Gnassingb� Eyad�ma',3332,'TG');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('THA','Thailand','Asia','Southeast Asia',513115.00,1350,61399000,68.6,116416.00,153907.00,'Prathet Thai','Constitutional Monarchy','Bhumibol Adulyadej',3320,'TH');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('TJK','Tajikistan','Asia','Southern and Central Asia',143100.00,1991,6188000,64.1,1990.00,1056.00,'To�ikiston','Republic','Emomali Rahmonov',3261,'TJ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('TKL','Tokelau','Oceania','Polynesia',12.00,NULL,2000,NULL,0.00,NULL,'Tokelau','Nonmetropolitan Territory of New Zealand','Elisabeth II',3333,'TK');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('TKM','Turkmenistan','Asia','Southern and Central Asia',488100.00,1991,4459000,60.9,4397.00,2000.00,'T�rkmenostan','Republic','Saparmurad Nijazov',3419,'TM');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('TMP','East Timor','Asia','Southeast Asia',14874.00,NULL,885000,46.0,0.00,NULL,'Timor Timur','Administrated by the UN','Jos� Alexandre Gusm�o',1522,'TP');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('TON','Tonga','Oceania','Polynesia',650.00,1970,99000,67.9,146.00,170.00,'Tonga','Monarchy','Taufaahau Tupou IV',3334,'TO');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('TTO','Trinidad and Tobago','North America','Caribbean',5130.00,1962,1295000,68.0,6232.00,5867.00,'Trinidad and Tobago','Republic','Arthur N. R. Robinson',3336,'TT');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('TUN','Tunisia','Africa','Northern Africa',163610.00,1956,9586000,73.7,20026.00,18898.00,'Tunis/Tunisie','Republic','Zine al-Abidine Ben Ali',3349,'TN');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('TUR','Turkey','Asia','Middle East',774815.00,1923,66591000,71.0,210721.00,189122.00,'T�rkiye','Republic','Ahmet Necdet Sezer',3358,'TR');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('TUV','Tuvalu','Oceania','Polynesia',26.00,1978,12000,66.3,6.00,NULL,'Tuvalu','Constitutional Monarchy','Elisabeth II',3424,'TV');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('TWN','Taiwan','Asia','Eastern Asia',36188.00,1945,22256000,76.4,256254.00,263451.00,'T�ai-wan','Republic','Chen Shui-bian',3263,'TW');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('TZA','Tanzania','Africa','Eastern Africa',883749.00,1961,33517000,52.3,8005.00,7388.00,'Tanzania','Republic','Benjamin William Mkapa',3306,'TZ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('UGA','Uganda','Africa','Eastern Africa',241038.00,1962,21778000,42.9,6313.00,6887.00,'Uganda','Republic','Yoweri Museveni',3425,'UG');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('UKR','Ukraine','Europe','Eastern Europe',603700.00,1991,50456000,66.0,42168.00,49677.00,'Ukrajina','Republic','Leonid Kut�ma',3426,'UA');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('UMI','United States Minor Outlying Islands','Oceania','Micronesia/Caribbean',16.00,NULL,0,NULL,0.00,NULL,'United States Minor Outlying Islands','Dependent Territory of the US','George W. Bush',NULL,'UM');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('URY','Uruguay','South America','South America',175016.00,1828,3337000,75.2,20831.00,19967.00,'Uruguay','Republic','Jorge Batlle Ib��ez',3492,'UY');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('USA','United States','North America','North America',9363520.00,1776,278357000,77.1,8510700.00,8110900.00,'United States','Federal Republic','George W. Bush',3813,'US');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('UZB','Uzbekistan','Asia','Southern and Central Asia',447400.00,1991,24318000,63.7,14194.00,21300.00,'Uzbekiston','Republic','Islam Karimov',3503,'UZ');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('VAT','Holy See (Vatican cities State)','Europe','Southern Europe',0.40,1929,1000,NULL,9.00,NULL,'Santa Sede/Citt� del Vaticano','Independent Church State','Johannes Paavali II',3538,'VA');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('VCT','Saint Vincent and the Grenadines','North America','Caribbean',388.00,1979,114000,72.3,285.00,NULL,'Saint Vincent and the Grenadines','Constitutional Monarchy','Elisabeth II',3066,'VC');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('VEN','Venezuela','South America','South America',912050.00,1811,24170000,73.1,95023.00,88434.00,'Venezuela','Federal Republic','Hugo Ch�vez Fr�as',3539,'VE');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('VGB','Virgin Islands, British','North America','Caribbean',151.00,NULL,21000,75.4,612.00,573.00,'British Virgin Islands','Dependent Territory of the UK','Elisabeth II',537,'VG');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('VIR','Virgin Islands, U.S.','North America','Caribbean',347.00,NULL,93000,78.1,0.00,NULL,'Virgin Islands of the United States','US Territory','George W. Bush',4067,'VI');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('VNM','Vietnam','Asia','Southeast Asia',331689.00,1945,79832000,69.3,21929.00,22834.00,'Vi�t Nam','Socialistic Republic','Tr�n Duc Luong',3770,'VN');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('VUT','Vanuatu','Oceania','Melanesia',12189.00,1980,190000,60.6,261.00,246.00,'Vanuatu','Republic','John Bani',3537,'VU');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('WLF','Wallis and Futuna','Oceania','Polynesia',200.00,NULL,15000,NULL,0.00,NULL,'Wallis-et-Futuna','Nonmetropolitan Territory of France','Jacques Chirac',3536,'WF');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('WSM','Samoa','Oceania','Polynesia',2831.00,1962,180000,69.2,141.00,157.00,'Samoa','Parlementary Monarchy','Malietoa Tanumafili II',3169,'WS');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('YEM','Yemen','Asia','Middle East',527968.00,1918,18112000,59.8,6041.00,5729.00,'Al-Yaman','Republic','Ali Abdallah Salih',1780,'YE');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('YUG','Yugoslavia','Europe','Southern Europe',102173.00,1918,10640000,72.4,17000.00,NULL,'Jugoslavija','Federal Republic','Vojislav Ko�tunica',1792,'YU');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ZAF','South Africa','Africa','Southern Africa',1221037.00,1910,40377000,51.1,116729.00,129092.00,'South Africa','Republic','Thabo Mbeki',716,'ZA');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ZMB','Zambia','Africa','Eastern Africa',752618.00,1964,9169000,37.2,3377.00,3922.00,'Zambia','Republic','Frederick Chiluba',3162,'ZM');
INSERT INTO countries (code, name, continent_code, region, surface_area, indep_year, population, life_expectancy, gnp, gnp_old, local_name, government_form, head_of_state, capital, code2)
 VALUES ('ZWE','Zimbabwe','Africa','Eastern Africa',390757.00,1980,11669000,37.8,5951.00,8670.00,'Zimbabwe','Republic','Robert G. Mugabe',4068,'ZW');

INSERT INTO continents VALUES ('Africa');
INSERT INTO continents VALUES ('Asia');
INSERT INTO continents VALUES ('North America');
INSERT INTO continents VALUES ('Oceania');
INSERT INTO continents VALUES ('Antarctica');
INSERT INTO continents VALUES ('South America');
INSERT INTO continents VALUES ('Europe');
