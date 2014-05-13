CREATE DATABASE  IF NOT EXISTS `DBOZES2014`;

USE `DBOZES2014`;

DROP TABLE IF EXISTS Kategory;
DROP TABLE IF EXISTS Pub;
DROP TABLE IF EXISTS Restaurant;
DROP TABLE IF EXISTS Cinema;
/**
KATEGORIE
TABELA ZAWIERAJCA JEDYNIE NAZWY KATEGORII, KTORE REPREZENTUJA POSZCZEGOLNE TABELE
*/
create table if not exists Kategory(
ID int auto_increment not null,
KATEGORIA varchar(100)
);
/**
TABELE KATEGORII, PRZYKLADOWY REKORD:
ID			1
NAZWA		CZARNY KOT
ADRES		PIASTOWSKA 10
CITY		WROCLAW
LAT			48.78312086
LNG 		179.29232344
INFO		SWIETNA MUZYKA W KLIMACIE LAT 90'TYCH TANIE PIWO W PONIEDZIALKI, KIEPSKA OBSLUGA
OPEN_TIME	PON-PT 15-03 SOB-NIEDZ 18-04
-----------------------------------------------------------
OBECNIE TYCZY SIE WSZYSTKICH KATEGORII
*/
create table if not exists Pub (
ID int AUTO_INCREMENT not null,
NAZWA varchar(100),
ADRES varchar(255),
CITY varchar(255),
LAT decimal(3,12), 
LNG decimal(3,12),
INFO varchar(1000),
OPEN_TIME varchar(255)
);

create table if not exists Restaurant (
ID int AUTO_INCREMENT not null,
NAZWA varchar(100),
ADRES varchar(255),
LAT decimal(3,12), 
LNG decimal(3,12),
INFO varchar(1000),
OPEN_TIME varchar(255)
);

create table if not exists Cinema(
ID int AUTO_INCREMENT not null,
NAZWA varchar(100),
ADRES varchar(255),
LAT decimal(3,12), 
LNG decimal(3,12),
INFO varchar(1000),
OPEN_TIME varchar(255)
);


INSERT INTO Cinema values ('Kino Nowe Horyzonty', 'Kazimierza Wielkiego 19', 51.10944104,17.02644542,'Mniej uczesczane kino, czesto mozna obejrzec filmy nie prezentowane w dzych sieciach kin','PN-ND 8:00 - 23:00');
INSERT INTO Cinema values ('Multikino', 'Plac Grunwaldzki 22', 51.11226331 , 17.06034854 ,'Multikino w pasażu Grunwaldzkim na 2 pietrze','PN-ND 14:30 - 23:00');
INSERT INTO Pub values ('Carpe Diem','Wita Stwosza 16', 51.11022914 , 17.03433648 ,'Dosc duzy klub, Piwo za 3,5 w poniedzialki, muzyka Rock/Lata 90te, darmowe stoly do pilkarzykow','PN-PT 12:00 - 4:00 ,SB 16:00 - 4:00 ,ND 16:00 - 2:00');