CREATE DATABASE termek CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
CREATE TABLE zoldseg(
	sorszam int PRIMARY KEY,
	nev varchar(25),
	ar SMALLINT,
	besz_datum date,
    engedmenyes BINARY
);
INSERT INTO `zoldseg`(`sorszam`, `nev`, `ar`, `besz_datum`, `engedmenyes`)
VALUES 
(1,'salata',230,'2023-09-25',0),
(2,'zöldségzöld',30,'2023-09-22',1),
(3,'tök',110,'2023-09-18',0),
(4,'paprika',550,'2023-09-21',0);

ALTER TABLE zoldseg DROP PRIMARY KEY;
ALTER TABLE zoldseg DROP sorszam;
ALTER TABLE zoldseg ADD termekID int AUTO_INCREMENT PRIMARY KEY FIRST;
TRUNCATE zoldseg;
DROP TABLE zoldseg;
drop database termek;