create database ruhazat CHARACTER set utf8 collate utf8_hungarian_ci;

CREATE TABLE termekek(
	cikkszam int AUTO_INCREMENT PRIMARY KEY,
	megnev varchar(15),
    	nettoar int,
	afakulcs double,
	keszlet SMALLINT,
	akcio BINARY
);

INSERT INTO `termekek`(`megnev`, `nettoar`, `afakulcs`, `keszlet`, `akcio`) VALUES
('Pulóver', 5000, 0.25, 10, 1),
('Széldzseki', 12000, 0.25, 10, 0),
('Póló', 1500, 0, 15, 0),
('Nyakkendő', 8090, 0.25, 10, 0),
('Ing', 4500, 0.12, 8, 1),
('Öltöny', 25000, 0.12, 7, 1),
('Cipő', 18000, 0.25, 9, 1),
('Farmer', 8000, 0.25, 11, 0);

UPDATE termekek set megnev = "Férfi öltöny" WHERE megnev = "Öltöny";

UPDATE termekek SET nettoar = 11500, akcio = 1 WHERE megnev = "Széldzseki";

ALTER TABLE termekek ADD bruttoar double;

UPDATE termekek set bruttoar = nettoar * (1 + afakulcs);

UPDATE termekek set nettoar = nettoar * 0.75 WHERE akcio = 1;
UPDATE termekek set bruttoar = nettoar * (1 + afakulcs);

ALTER TABLE termekek MODIFY keszlet tinyint;

DELETE FROM termekek WHERE akcio = 0 AND nettoar < 2000;

CREATE TABLE szallitok(
	szallitokod int AUTO_INCREMENT PRIMARY KEY,
    cegnev varchar(20),
    szekhely varchar(20),
    cim varchar(40)
);

INSERT INTO `szallitok`(`cegnev`, `szekhely`, `cim`) VALUES
("Kinizsi Kft.","Szeged","Tisza L. sgt. 3."),
("Zsuzsi Butik","Makó","Szegedi u. 14."),
("Elegance","Szentes","Kossuth út 18.")	

UPDATE szallitok SET szekhely = "Hódmezővásárhely" WHERE cegnev = "Elegance"

alter table szallitok add irszam varchar(4);

UPDATE szallitok SET irszam = "6900" WHERE szekhely = "Makó";
UPDATE szallitok SET irszam = "6800" WHERE szekhely = "Hódmezővásárhely";

INSERT INTO `szallitok`(`cegnev`, `szekhely`, `cim`, `irszam`) VALUES ("Blöki kutyakozmetika","Szeged","Budai Nagy Antal u. 2.","6753");

CREATE TABLE vasarlas(
	cikkszam int,
    vasarlas_datuma date,
    mennyiseg SMALLINT,
    szallitokod int,
    PRIMARY KEY(cikkszam, vasarlas_datuma)
);

INSERT INTO `vasarlas`(`cikkszam`, `vasarlas_datuma`, `mennyiseg`, `szallitokod`) VALUES
(1,'2022-01-25',2,1),
(8,'2021-11-14',3,2),
(4,'2022-06-10',4,3),
(5,'2022-10-01',2,3),
(6,'2022-07-26',3,3)

DELETE FROM vasarlas WHERE vasarlas_datuma BETWEEN "2022-06-01" AND "2022-07-31;"

UPDATE vasarlas SET mennyiseg = mennyiseg * 2 WHERE cikkszam = 5;