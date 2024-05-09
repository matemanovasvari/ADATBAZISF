CREATE TABLE `aru` (
  `arukod` int(11) NOT NULL,
  `arunev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `katkod` int(11) NOT NULL,
  `ar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `aru` (`arukod`, `arunev`, `katkod`, `ar`) VALUES
(1, 'Konyakos meggy', 1, 2899),
(2, 'Riska Tartós tej 1,5%', 2, 309),
(3, 'Magyar Tej 2,8%', 2, 662),
(4, 'Nádudvari félzsíros tehéntúró', 2, 1859),
(5, 'Trappista sajt', 2, 3899),
(6, 'Paprika', 3, 850),
(7, 'Paradicsom', 3, 780),
(8, 'Füstült tarja', 4, 4699),
(9, 'Párizsi', 4, 3390),
(10, 'Milka Oreo', 1, 385),
(11, 'Téliszalámi', 4, 4229),
(12, 'Sonka', 4, 4862),
(13, 'Szerencsi kézzel készített konyakmeggy', 1, 1399),
(14, 'Cherry Queen Konyakmeggy', 1, 1220),
(15, 'GRIZLY étcsokoládé', 1, 1990),
(16, 'Milka Choco Jelly', 1, 1084),
(17, 'Milka Alpesi tejcsokoládé', 1, 1087),
(18, 'Sport szelet XXL tejcsokoládéval', 1, 209),
(19, 'Snickers', 1, 269),
(20, 'Nestlé Balaton szelet étcsokoládés', 1, 149),
(21, 'Mars Szelet', 1, 250),
(22, '3Bit Tejcsokoládéval bevont keksz', 1, 219),
(23, 'Mizo Laktózmentes tartós tej 1,5%', 2, 535),
(24, 'Mizo Tartós tej 1,5%', 2, 443),
(25, 'Kuntej félzsíros rögös túró', 2, 1519),
(26, 'Nádudvari félzsíros túró', 2, 989),
(27, 'Tüzes páros kolbász', 4, 4859),
(28, 'Turista szalámi', 4, 11555),
(29, 'Füstölt csípős kolbász', 4, 3290),
(30, 'Gyulai kolbász', 4, 2310),
(31, 'Kígyóuborka', 3, 349),
(32, 'Retek', 3, 350),
(33, 'Karalábé', 3, 360),
(34, 'Paprika hegyes erős', 3, 169),
(35, 'Póréhagyma', 3, 389);

CREATE TABLE `eladas` (
  `arukod` int(11) NOT NULL,
  `datum` date NOT NULL,
  `mennyiseg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `eladas` (`arukod`, `datum`, `mennyiseg`) VALUES
(1, '2022-05-25', 5),
(1, '2022-06-10', 4),
(2, '2022-05-25', 3),
(2, '2022-05-27', 15),
(3, '2022-05-25', 4),
(3, '2022-05-26', 5),
(4, '2022-05-26', 10),
(7, '2022-05-25', 15),
(8, '2022-05-25', 5),
(11, '2022-06-16', 3),
(12, '2022-06-15', 5),
(25, '2022-07-10', 2),
(25, '2022-07-13', 1),
(30, '2022-03-21', 2),
(31, '2022-04-23', 10),
(34, '2022-04-03', 2),
(34, '2022-07-11', 4),
(34, '2022-08-12', 1),
(35, '2022-07-28', 1),
(35, '2022-07-29', 3),
(25, '2022-04-30', 3),
(23, '2022-09-10', 5),
(20, '2022-05-18', 4),
(20, '2022-06-01', 10),
(20, '2022-08-14', 6);


CREATE TABLE `kategoria` (
  `kategoriakod` int(11) NOT NULL,
  `kategorianev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `kategoria` (`kategoriakod`, `kategorianev`) VALUES
(1, 'Édesség'),
(2, 'Tejtermék'),
(3, 'Zöldség'),
(4, 'Húsáru'),
(5, 'Gyümölcs'),
(6, 'Pékáru');
ALTER TABLE `aru`   ADD PRIMARY KEY (`arukod`);
ALTER TABLE `kategoria`   ADD PRIMARY KEY (`kategoriakod`);


ALTER TABLE `eladas` ADD FOREIGN KEY (arukod) REFERENCES `aru` (arukod);
ALTER TABLE `aru` ADD FOREIGN KEY (katkod) REFERENCES `kategoria` (kategoriakod);