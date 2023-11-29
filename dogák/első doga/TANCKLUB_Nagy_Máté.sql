create database tancklub CHARACTER SET = "utf8" COLLATE utf8_hungarian_ci;	

create table parok(
    tancparID int AUTO_INCREMENT PRIMARY KEY,
  	fiunev varchar(50),
    lanynev varchar(50),
    osztályS varchar(1),
    osztalyL varchar(1),
    kezdes date,
    pontszamS tinyint,
    pontszamL tinyint,
    OB BINARY
);

INSERT INTO `parok`(`fiunev`, `lanynev`, `osztályS`, `osztalyL`, `kezdes`, `pontszamS`, `pontszamL`, `OB`) VALUES
('Varga Zoltán','Komlósi Éva','D','D','2021-05-06',18,32,1),
('Hevesi Gábor','Vass Kornélia','E','E','2022-11-04',45,80,0),
('Cseles Martin','Joó Anna','D','C','2018-02-20',30,21,1),
('Kelemen Pál','Korom Orsolya','C','B','2015-06-11',11,5,0),
('Remete Bence','Kass Renáta','E','D','2022-03-27',32,45,0)

update parok set osztalyL = "D", pontszamL = 0 where fiunev = "Hevesi Gábor" AND lanynev = "Vass Kornélia";

alter table parok MODIFY pontszamS SMALLINT;
alter table parok MODIFY pontszamL SMALLINT;

alter table parok add aktiv BINARY;

update parok set aktiv = 1;

update parok set lanynev = "Komlóssy Éva" WHERE lanynev = "Komlósi Éva";

update parok set aktiv = 0 where tancparID = 4;

DELETE FROM parok WHERE fiunev = "Cseles Martin" AND lanynev = "Joó Anna";

alter table parok drop OB;