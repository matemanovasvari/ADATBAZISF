CREATE TABLE `aru` (
  `Arukod` int(11) NOT NULL,
  `Arunev` varchar(20) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `Kategorianev` varchar(30) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `Egysegar` smallint(6) NOT NULL,
  `Keszlet` smallint(6) NOT NULL,
  `Egyseg` varchar(10) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `Engedmenyes` binary(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `aru` (`Arukod`, `Arunev`, `Kategorianev`, `Egysegar`, `Keszlet`, `Egyseg`, `Engedmenyes`) VALUES
(1, 'Konyakos meggy', 'Édesség', 668, 12, 'doboz', 0x49),
(2, 'Sovány tej', 'Tejtermék', 98, 130, 'liter', 0x49),
(3, 'Zsíros tej', 'Tejtermék', 105, 150, 'liter', 0x48),
(4, 'Tehéntúró', 'Tejtermék', 213, 32, 'csomag', 0x48),
(5, 'Trappista sajt', 'Tejtermék', 1120, 14, 'kg', 0x48),
(6, 'Paprika', 'Zöldség', 655, 3, 'kg', 0x48),
(7, 'Paradicsom', 'Zöldség', 599, 5, 'kg', 0x48),
(8, 'Füstölt tarja', 'Húsáru', 1568, 9, 'kg', 0x49),
(9, 'Párizsi', 'Húsáru', 542, 10, 'kg', 0x49),
(10, 'Milka csoki', 'Édesség', 159, 60, 'tábla', 0x48),
(11, 'Téliszalámi', 'Húsáru', 2560, 17, 'kg', 0x48),
(12, 'Sonka', 'Húsáru', 1620, 2, 'kg', 0x49);



CREATE TABLE `eladas` (
  `arukod` int(11) NOT NULL,
  `datum` date NOT NULL,
  `mennyiseg` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `eladas` (`arukod`, `datum`, `mennyiseg`) VALUES
(1, '2013-05-25', 5),
(1, '2013-06-10', 4),
(2, '2013-05-25', 3),
(2, '2013-05-27', 15),
(3, '2013-05-25', 4),
(3, '2013-05-26', 5),
(4, '2013-05-26', 10),
(7, '2013-05-25', 15),
(8, '2013-05-15', 5),
(11, '2013-06-16', 3),
(12, '2013-06-15', 5);


ALTER TABLE `aru`
  ADD PRIMARY KEY (`Arukod`);


ALTER TABLE `eladas`
  ADD PRIMARY KEY (`arukod`,`datum`);


ALTER TABLE `eladas`
  ADD CONSTRAINT `eladas_ibfk_1` FOREIGN KEY (`arukod`) REFERENCES `aru` (`Arukod`);
