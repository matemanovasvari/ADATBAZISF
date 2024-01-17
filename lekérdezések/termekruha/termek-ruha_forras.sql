CREATE TABLE termek_ruha (
  `cikkszam` int(11) NOT NULL,
  `megnev` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `kategoriakod` smallint(6) NOT NULL,
  `meret` varchar(3) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `szin` varchar(20) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `nettoar` int(11) NOT NULL,
  `keszlet` smallint(6) NOT NULL,
  `besz_datum` date NOT NULL,
  `akcio` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO termek_ruha (`cikkszam`, `megnev`, `kategoriakod`, `meret`, `szin`, `nettoar`, `keszlet`, `besz_datum`, `akcio`) VALUES
(1, 'LEE COOPER', 1, 'S', 'fekete', 6500, 0, '2021-11-22', b'1'),
(2, 'LEE COOPER', 1, 'L', 'zöld', 7000, 6, '2022-01-15', b'1'),
(3, 'LEE COOPER', 1, 'XL', 'kék', 7200, 2, '2022-01-15', b'0'),
(4, 'Rocco Jeans', 1, 'M', 'kék', 6000, 1, '2021-11-18', b'0'),
(5, 'Rocco Jeans', 1, 'M', 'fekete', 6000, 3, '2021-12-05', b'0'),
(6, 'Rocco Jeans', 1, 'S', 'kék', 6500, 14, '2021-12-05', b'0'),
(7, 'Rocco Jeans', 1, 'L', 'kék', 7000, 15, '2022-02-14', b'1'),
(8, 'Rocco Jeans', 1, 'XL', 'kék', 7500, 3, '2022-01-15', b'0'),
(9, 'Rocco Jeans', 1, 'XXL', 'kék', 7800, 8, '2021-11-22', b'1'),
(10, 'Könnyű nyári nadrág', 2, 'S', 'olajzöld', 4200, 1, '2022-02-14', b'0'),
(11, 'Könnyű nyári nadrág', 2, 'L', 'olajzöld', 5000, 3, '2021-12-05', b'0'),
(12, 'Könnyű nyári nadrág', 2, 'L', 'krém', 5000, 0, '2021-02-14', b'1'),
(13, 'Könnyű nyári nadrág', 2, 'XL', 'olajzöld', 5400, 5, '2021-11-22', b'0'),
(14, 'Könnyű nyári nadrág', 2, 'XL', 'krém', 5400, 1, '2021-11-30', b'0'),
(15, 'Női nadrág', 3, 'L', 'fekete', 2300, 6, '2022-01-04', b'0'),
(16, 'Női nadrág', 3, 'L', 'barna', 2300, 10, '2021-11-30', b'0'),
(17, 'Női nadrág', 3, 'L', 'sárga', 2300, 12, '2021-11-30', b'1'),
(18, 'Női kötött pulóver', 4, 'S', 'barna', 5100, 5, '2022-02-05', b'1'),
(19, 'Női kötött pulóver', 4, 'M', 'sárga', 5150, 11, '2022-01-04', b'0'),
(20, 'Női kötött pulóver', 4, 'M', 'piros', 5150, 2, '2022-01-05', b'0'),
(21, 'Női kötött pulóver', 4, 'L', 'sárga', 5400, 0, '2022-01-15', b'1'),
(22, 'Női kötött pulóver', 4, 'L', 'barna', 5400, 3, '2021-11-22', b'1'),
(23, 'Női kötött pulóver', 4, 'XL', 'sárga', 5550, 1, '2022-01-04', b'0'),
(24, 'Női top', 5, 'M', 'fehér', 2300, 10, '2022-01-15', b'0'),
(25, 'Női top', 5, 'L', 'fehér', 2400, 15, '2021-12-05', b'0'),
(26, 'Női top', 50, 'L', 'fekete', 2400, 20, '2021-12-05', b'1'),
(27, 'Női top', 5, 'L', 'zöld', 2400, 8, '2021-11-22', b'0'),
(28, 'Női top', 6, 'S', 'fehér', 2900, 8, '2022-02-14', b'0'),
(29, 'Női top', 6, 'S', 'fekete', 2900, 17, '2021-11-30', b'1'),
(30, 'Női top', 6, 'M', 'kék', 3000, 9, '2022-02-14', b'0'),
(31, 'Női top', 6, 'XL', 'fehér', 3800, 2, '2021-11-30', b'0'),
(32, 'Női top', 6, 'XL', 'fekete', 3800, 13, '2021-12-05', b'1'),
(33, 'Divatos női blúz', 7, 'S', 'krém', 6500, 3, '2022-01-15', b'0'),
(34, 'Divatos női blúz', 7, 'M', 'krém', 6500, 5, '2021-11-22', b'1'),
(35, 'Divatos női blúz', 7, 'L', 'krém', 6500, 7, '2021-12-05', b'0');


ALTER TABLE termek_ruha
  ADD PRIMARY KEY (`cikkszam`);

1. Hány termék van az adattáblában?

SELECT COUNT(*)
FROM termek_ruha;

2. Adja meg az összes raktárkészletet!

SELECT SUM(keszlet)
FROM termek_ruha;

3. Minden termék árát 20%-kal leárazták. Listázza a termékek nevét, eredeti és engedményes árát!

SELECT megnev, nettoar, nettoar - nettoar * 0.2 AS engedmenyes_ar
FROM termek_ruha;

4. Mekkora a termékek raktárkészlet-értéke termékenként (a raktáron lévő termékek értéke)?

SELECT megnev, keszlet * nettoar AS termek_keszlet_erteke
FROM termek_ruha;

5. Mekkora az üzlet teljes raktárkészlet-értéke?

SELECT SUM(keszlet * nettoar)
FROM termek_ruha;

6. Listázza a termékek nevét, méretét, színét és beszerzési dátumát! Rendezze beszerzési dátum szerint csökkenő sorrendbe, azonos dátum esetén névsorrendbe!

SELECT megnev, meret, szin, besz_datum
FROM termek_ruha
ORDER BY besz_datum DESC, besz_datum;

7. A bolt minden termékből beszerez még 10-10 darabot. Listázza a termékek nevét, régi és új raktárkészletét!

SELECT megnev, keszlet, keszlet + 10 AS uj_raktarkeszlet
FROM termek_ruha;

8. Listázza azon termék nevét, raktárkészletét és árát, amelynek legnagyobb az egységára!



9. Listázza azt a terméket, amelyet legrégebben szerezte be!
10. Melyik az első 5 olyan termék, amelyet legutóbb szereztek be? A listában szerepeljen a termék neve, cikkszáma, mérete és beszerzés dátuma!
11. Melyek azok a termékek és mennyibe kerülnek, amelyek az átlagárnál drágábbak?
12. Milyen színűek a termékek? Minden szín csak egyszer jelenjen meg!
13. Milyen méretezésű ruhákat árulnak a boltban? Sorolja fel a méreteket, mindegyiket csak egyszer!
14. Listázza a legkisebb árú termékkel egyező árú termékek cikkszámát, nevét, árát, színét és méretét!
15. Számítsa ki a termékek súlyozott átlagárát és jelenítsük meg mellette az átlagárat!
