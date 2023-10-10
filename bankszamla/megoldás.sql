create database bank CHARACTER set utf8 collate utf8_hungarian_ci;

CREATE TABLE bankszamla(
	szlaszam int PRIMARY KEY,
    tulajdonos varchar(30),
    szlanyitas date,
    valutanem varchar(10),
    egyenleg int,
    kiemelt BINARY
);

ALTER TABLE bankszamla MODIFY valutanem varchar(3);

ALTER TABLE bankszamla ADD bankado SMALLINT;

UPDATE bankszamla SET bankado = egyenleg * 0.0015 WHERE valutanem = "HUF";

ALTER TABLE bankszamla DROP kiemelt;

DELETE FROM bankszamla WHERE valutanem = "USD";