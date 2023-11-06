create DATABASE fotorendeles DEFAULT CHARACTER SET utf8 collate utf8_hungarian_ci;

create table foto(
    fotoAZ varchar(10) PRIMARY KEY,
    meret_sz SMALLINT,
    meret_m SMALLINT,
    szines BINARY,
    fotos varchar(40),
    muterem varchar(100),
    keszult date
)

INSERT INTO `foto`(`fotoAZ`, `meret_sz`, `meret_m`, `szines`, `fotos`, `muterem`, `keszult`) 
VALUES 
('C000123',12,20,1,'Kerepes János','1.sz műterem','2016-05-20'),('B000256',10,15,1,'Nagy Rózsa','2.sz műterem','2016-05-14'),('E001236',9,13,0,'Nagy Rózsa','1.sz műterem','2016-09-20'),('E001158',40,25,1,'Kerepes János','1.sz műterem','2016-09-15'),('E001159',20,15,0,'Kerepes János','2.sz műterem','2016-09-15')

ALTER TABLE foto MODIFY fotos varchar(30);

UPDATE foto set meret_sz = 9, meret_m = 13 where keszult = '2016-05-14' AND fotos = 'Nagy Rózsa';