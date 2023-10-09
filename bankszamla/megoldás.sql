create database bank CHARACTER set utf8 collate utf8_hungarian_ci;

CREATE TABLE bankszamla(
	szlaszam int PRIMARY KEY,
    tulajdonos varchar(30),
    szlanyitas date,
    valutanem varchar(10),
    egyenleg int,
    kiemelt BINARY
);