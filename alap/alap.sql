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
(1,'saláta',230,'2023-09-25',0),
(2,'zöldségzöld',30,'2023-09-22',1),
(3,'tök',110,'2023-09-18',0),
(4,'paprika',550,'2023-09-21',0);

RENAME TABLE zoldseg TO novenyek;
RENAME TABLE novenyek TO zoldseg;

alter table zoldseg modify nev varchar(30);

alter table zoldseg modify nev varchar(7);

alter table zoldseg MODIFY ar int;

alter table zoldseg MODIFY ar tinyint;

alter table zoldseg CHANGE ar bruttoar SMALLINT;
