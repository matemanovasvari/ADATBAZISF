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