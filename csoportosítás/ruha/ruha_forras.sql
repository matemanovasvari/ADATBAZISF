CREATE TABLE `kategoriak` (
  `kategoriakod` int(11) NOT NULL,
  `kategorianev` varchar(30) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `kategoriak` (`kategoriakod`, `kategorianev`) VALUES
(1, 'farmernadrág'),
(2, 'vászonnadrág'),
(3, 'pamutnadrág'),
(4, 'kötött pulóver'),
(5, 'rövid ujjú top'),
(6, 'hosszú ujjú top'),
(7, 'női blúz');


CREATE TABLE `termekek` (
  `termekkod` int(11) NOT NULL,
  `termeknev` varchar(30) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `kategoriakod` int(11) NOT NULL,
  `meret` varchar(5) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `szin` varchar(15) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL,
  `raktarkeszlet` int(11) NOT NULL,
  `beszerzes_datuma` date NOT NULL,
  `akcios_e` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `termekek` (`termekkod`, `termeknev`, `kategoriakod`, `meret`, `szin`, `ar`, `raktarkeszlet`, `beszerzes_datuma`, `akcios_e`) VALUES
(1, 'LEE COOPER', 1, 'S', 'fekete', 6500, 0, '2021-11-22', 1),
(2, 'LEE COOPER', 1, 'L', 'zöld', 7000, 6, '2022-01-15', 1),
(3, 'LEE COOPER', 1, 'XL', 'kék', 7200, 2, '2022-01-15', 0),
(4, 'Rocco Jeans', 1, 'M', 'kék', 6000, 1, '2021-11-18', 0),
(5, 'Rocco Jeans', 1, 'M', 'fekete', 6000, 3, '2021-12-05', 0),
(6, 'Rocco Jeans', 1, 'S', 'kék', 6500, 14, '2021-12-05', 0),
(7, 'Rocco Jeans', 1, 'L', 'kék', 7000, 15, '2022-02-14', 1),
(8, 'Rocco Jeans', 1, 'XL', 'kék', 7500, 3, '2022-01-15', 0),
(9, 'Rocco Jeans', 1, 'XXL', 'kék', 7800, 8, '2021-11-22', 1),
(10, 'Könnyű nyári nadrág', 2, 'S', 'olajzöld', 4200, 1, '2022-02-14', 0),
(11, 'Könnyű nyári nadrág', 2, 'L', 'olajzöld', 5000, 3, '2021-12-05', 0),
(12, 'Könnyű nyári nadrág', 2, 'L', 'krém', 5000, 0, '2021-02-14', 1),
(13, 'Könnyű nyári nadrág', 2, 'XL', 'olajzöld', 5400, 5, '2021-11-22', 0),
(14, 'Könnyű nyári nadrág', 2, 'XL', 'krém', 5400, 1, '2021-11-30', 0),
(15, 'Női nadrág', 3, 'L', 'fekete', 2300, 6, '2022-01-04', 0),
(16, 'Női nadrág', 3, 'L', 'barna', 2300, 10, '2021-11-30', 0),
(17, 'Női nadrág', 3, 'L', 'sárga', 2300, 12, '2021-11-30', 1),
(18, 'Női kötött pulóver', 4, 'S', 'barna', 5100, 5, '2022-02-05', 1),
(19, 'Női kötött pulóver', 4, 'M', 'sárga', 5150, 11, '2022-01-04', 0),
(20, 'Női kötött pulóver', 4, 'M', 'piros', 5150, 2, '2022-01-05', 0),
(21, 'Női kötött pulóver', 4, 'L', 'sárga', 5400, 0, '2022-01-15', 1),
(22, 'Női kötött pulóver', 4, 'L', 'barna', 5400, 3, '2021-11-22', 1),
(23, 'Női kötött pulóver', 4, 'XL', 'sárga', 5550, 1, '2022-01-04', 0),
(24, 'Női top', 5, 'M', 'fehér', 2300, 10, '2022-01-15', 0),
(25, 'Női top', 5, 'L', 'fehér', 2400, 15, '2021-12-05', 0),
(26, 'Női top', 5, 'L', 'fekete', 2400, 20, '2021-12-05', 1),
(27, 'Női top', 5, 'L', 'zöld', 2400, 8, '2021-11-22', 0),
(28, 'Női top', 6, 'S', 'fehér', 2900, 8, '2022-02-14', 0),
(29, 'Női top', 6, 'S', 'fekete', 2900, 17, '2021-11-30', 1),
(30, 'Női top', 6, 'M', 'kék', 3000, 9, '2022-02-14', 0),
(31, 'Női top', 6, 'XL', 'fehér', 3800, 2, '2021-11-30', 0),
(32, 'Női top', 6, 'XL', 'fekete', 3800, 13, '2021-12-05', 1),
(33, 'Divatos női blúz', 7, 'S', 'krém', 6500, 3, '2022-01-15', 0),
(34, 'Divatos női blúz', 7, 'M', 'krém', 6500, 5, '2021-11-22', 1),
(35, 'Divatos női blúz', 7, 'L', 'krém', 6500, 7, '2021-12-05', 0);

ALTER TABLE `kategoriak`
  ADD PRIMARY KEY (`kategoriakod`);

ALTER TABLE `termekek`
  ADD PRIMARY KEY (`termekkod`);

