-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Gép: localhost
-- Létrehozás ideje: 2016. Nov 28. 11:30
-- Kiszolgáló verziója: 5.7.13-0ubuntu0.16.04.2
-- PHP verzió: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `tanarkt`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `Orszagok`
--

CREATE TABLE `Orszagok` (
  `Orszagkod` int(11) NOT NULL,
  `Orszagnev` varchar(30) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `Fovaros` varchar(30) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `Terulet` bigint(20) NOT NULL,
  `Nepesseg` bigint(20) NOT NULL,
  `Foldresz` varchar(40) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `Penznem` varchar(20) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `Allamforma` varchar(30) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `Torvenyhozastipus` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `Torvenyhozasi_letszam` smallint(6) NOT NULL,
  `GDP` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `Orszagok`
--

INSERT INTO `Orszagok` (`Orszagkod`, `Orszagnev`, `Fovaros`, `Terulet`, `Nepesseg`, `Foldresz`, `Penznem`, `Allamforma`, `Torvenyhozastipus`, `Torvenyhozasi_letszam`, `GDP`) VALUES
(1, 'Albánia', 'Tirana', 28748, 3400000, 'Európa', 'lek', 'köztársaság', 'parlament', 140, 1200000000),
(2, 'Bahrein', 'ElManáma', 692, 540000, 'Ázsia', 'dinár', 'monarchia', 'feloszlatva', 0, 4300000000),
(3, 'Ausztria', 'Bécs', 83859, 7900000, 'Európa', 'schilling', 'köztársaság', 'képviselőház', 183, 183000000),
(4, 'Costa Rica', 'SanJosé', 51100, 3300000, 'Amerika', 'colón', 'köztársaság', 'nemzetgyűlés', 57, 7100000000),
(5, 'Algéria', 'Algír', 2381741, 26800000, 'Afrika', 'dinár', 'köztársaság', 'feloszlatva', 0, 44200000000),
(6, 'Belgium', 'Brüsszel', 30528, 10100000, 'Európa', 'frank', 'alkotmányos monarchia', 'képviselőház', 212, 228000000000),
(7, 'Banglades', 'Dhaka', 143998, 116700000, 'Ázsia', 'taka', 'köztársaság', 'parlament', 300, 25700000000),
(8, 'Bosznia-Hercegovina', 'Szarajevó', 51129, 4400000, 'Európa', 'dinár', 'köztársaság', 'parlament', 240, 6900000000),
(9, 'Angola', 'Luanda', 1246700, 10000000, 'Afrika', 'kwacha', 'köztársaság', 'nemzetgyűlés', 223, 7800000000),
(10, 'Bulgária', 'Szófia', 110994, 9000000, 'Európa', 'leva', 'elnöki köztársaság', 'parlament', 240, 10000000000),
(11, 'Guatemala', 'Guatemalaváros', 108889, 10000000, 'Amerika', 'quetzal', 'elnöki köztársaság', 'kongresszus', 80, 11000000000),
(12, 'Burundi', 'Bujumbura', 27834, 6000000, 'Afrika', 'frank', 'elnöki köztársaság', 'nemzetgyűlés', 81, 1100000000),
(13, 'Csehország', 'Prága', 78864, 10300000, 'Európa', 'korona', 'köztársaság', 'képviselőház', 200, 28100000000),
(14, 'India', 'Újdelhi', 3287263, 900000000, 'Ázsia', 'rúpia', 'szövetségi köztársaság', 'képviselőház', 545, 260000000000),
(15, 'Dánia', 'Koppenhága', 43094, 5200000, 'Európa', 'korona', 'alkotmányos monarchia', 'parlament', 179, 138000000000),
(16, 'Dél-Korea', 'Szöul', 99313, 44000000, 'Ázsia', 'von', 'köztársaság', 'nemzetgyűlés', 299, 337000000000),
(17, 'Észtország', 'Tallin', 45227, 1500000, 'Európa', 'korona', 'köztársaság', 'parlament', 101, 4100000000),
(18, 'Csád', 'Djamena', 1284000, 6100000, 'Afrika', 'frank', 'elnöki köztársaság', 'ideiglenes parlament', 57, 1200000000),
(19, 'Haiti', 'Port-au-Prince', 27750, 6800000, 'Amerika', 'gourde', 'elnöki köztársaság', 'képviselőház', 81, 1600000000),
(20, 'Andorra', 'Andorra le Vella', 468, 63000, 'Európa', 'frank', 'parlamentáris társfejedelemség', 'Völgyek Tanácsa', 28, 1300000000),
(21, 'Irak', 'Bagdad', 438317, 19800000, 'Ázsia', 'dinár', 'elnöki köztársaság', 'parlament', 250, 34000000000),
(22, 'Azerbajdzsán', 'Baku', 86600, 7400000, 'Európa', 'manát', 'köztársaság', 'átmeneti parlament', 50, 5400000000),
(23, 'Izrael', 'Jeruzsálem', 20770, 5300000, 'Ázsia', 'sékel', 'köztársaság', 'parlament', 120, 73000000000),
(24, 'Belarusz', 'Minszk', 207595, 10300000, 'Európa', 'rubel', 'köztársaság', 'Legfelső Tanács', 360, 25000000000),
(25, 'Kuba', 'Havanna', 110860, 10900000, 'Amerika', 'peso', 'szocialista köztársaság', 'nemzetgyűlés', 589, 16000000000),
(26, 'Dzsibuti', 'Dzsibuti', 23200, 574000, 'Afrika', 'frank', 'elnöki köztársaság', 'képviselőház', 65, 450000000000),
(27, 'Japán', 'Tokió', 377750, 124800000, 'Ázsia', 'jen', 'alkotmányos monarchia', 'képviselőház', 511, 3920000000000),
(28, 'Ciprus', 'Nicosia', 9251, 725000, 'Európa', 'font', 'elnöki köztársaság', 'parlament', 80, 7500000000),
(29, 'Kazahsztán', 'Almati', 2717300, 17200000, 'Ázsia', 'tenge', 'elnöki köztársaság', 'parlament', 177, 26500000000),
(30, 'Finnország', 'Helsinki', 338139, 5100000, 'Európa', 'márka', 'köztársaság', 'parlament', 200, 96700000000),
(31, 'Salvador', 'San Salvador', 21041, 5500000, 'Amerika', 'colón', 'elnöki köztársaság', 'nemzetgyűlés', 84, 7300000000),
(32, 'Egyiptom', 'Kairó', 997739, 55700000, 'Afrika', 'font', 'elnöki köztársaság', 'Népi Gyűlés', 454, 36800000000),
(33, 'Görögország', 'Athén', 131957, 10400000, 'Európa', 'drachma', 'köztársaság', 'nemzetgyűlés', 300, 76900000000),
(34, 'Jemen', 'Szanaa', 536869, 13400000, 'Ázsia', 'riál', 'elnöki köztársaság', 'parlament', 301, 6800000000),
(35, 'Hollandia', 'Amszterdam', 33939, 15300000, 'Európa', 'gulden', 'alkotmányos monarchia', 'alsóház', 150, 317000000000),
(36, 'Mexikó', 'Mexikóváros', 1958201, 93700000, 'Amerika', 'peso', 'szövetségi köztársaság', 'képviselőház', 500, 396000000000),
(37, 'Írország', 'Dublin', 70283, 3600000, 'Európa', 'font', 'köztársaság', 'képviselőház', 166, 45200000000),
(38, 'Kína', 'Peking', 9571300, 1200000000, 'Ázsia', 'jüan', 'népköztársaság', 'Országos Népi Gyűlés', 2977, 580000000000),
(39, 'Szerbia', 'Belgrád', 102173, 10700000, 'Európa', 'dinár', 'szövetségi köztársaság', 'alsóház', 138, 9600000000),
(40, 'Kuvait', 'Kuvaitváros', 17818, 1500000, 'Ázsia', 'dinár', 'monarchia', 'nemzetgyűlés', 50, 25000000000),
(41, 'Lettország', 'Riga', 64589, 2600000, 'Európa', 'lat', 'köztársaság', 'parlament', 100, 5100000000),
(42, 'Etiópia', 'Addisz-Abeda', 1251982, 54000000, 'Afrika', 'birr', 'köztársaság', 'alkotmányozó nemzetgyűlés', 547, 5400000000),
(43, 'Litvánia', 'Vilnius', 65300, 3800000, 'Európa', 'litas', 'köztársaság', 'parlament', 141, 5000000000),
(44, 'Laosz', 'Vientián', 236800, 4500000, 'Ázsia', 'kip', 'népköztársaság', 'nemzetgyűlés', 85, 1300000000),
(45, 'Macedónia', 'Szkopje', 25713, 2200000, 'Európa', 'dinár', 'köztársaság', 'parlament', 120, 1700000000),
(46, 'Saint Vincent', 'Kingstown', 389, 110000, 'Amerika', 'dollár', 'alkotmányos monarchia', 'képviselőház', 15, 230000000),
(47, 'Málta', 'Valletta', 316, 360000, 'Európa', 'líra', 'köztársaság', 'képviselőház', 65, 2600000000),
(48, 'Panama', 'Panamaváros', 77082, 2600000, 'Amerika', 'balboa', 'elnöki köztársaság', 'nemzetgyűlés', 72, 6700000000),
(49, 'Monaco', 'Monaco', 2, 30000, 'Európa', 'frank', 'alkotmányos monarchia', 'parlament', 18, 1100000000),
(50, 'Malajzia', 'Kuala Lumpur', 329758, 19000000, 'Ázsia', 'ringgit', 'alkotmányos monarchia', 'képviselőház', 180, 60000000000),
(51, 'Németország', 'Berlin', 356733, 81200000, 'Európa', 'márka', 'szövetségi köztársaság', 'parlament', 672, 1900000000000),
(52, 'Gambia', 'Banjul', 11295, 1200000, 'Afrika', 'dalasi', 'elnöki köztársaság', 'feloszlatva', 0, 440000000000),
(53, 'Olaszország', 'Róma', 301302, 58000000, 'Európa', 'líra', 'köztársaság', 'képviselőház', 630, 1120000000000),
(54, 'Mongólia', 'Ulánbátor', 1565000, 2400000, 'Ázsia', 'tugrik', 'köztársaság', 'parlament', 76, 960000000),
(55, 'Örményország', 'Jereván', 29800, 3700000, 'Európa', 'dram', 'köztársaság', 'Legfelső Tanács', 260, 2400000000),
(56, 'Argentína', 'Buenos Aires', 2766889, 33500000, 'Amerika', 'peso', 'szövetségi köztársaság', 'képviselőház', 259, 250000000000),
(57, 'Románia', 'Bukarest', 237500, 22800000, 'Európa', 'lej', 'elnöki köztársaság', 'képviselőház', 328, 25500000000),
(58, 'Nepál', 'Katmandu', 147781, 20400000, 'Ázsia', 'rúpia', 'alkotmányos monarchia', 'képviselőház', 205, 3300000000),
(59, 'Spanyolország', 'Madrid', 504782, 39100000, 'Európa', 'peseta', 'alkotmányos monarchia', 'képviselőház', 350, 534000000000),
(60, 'Kamerun', 'Yaoundé', 475442, 12600000, 'Afrika', 'frank', 'elnöki köztársaság', 'nemzetgyűlés', 180, 9700000000),
(61, 'Chile', 'Santiago de Chile', 756626, 13800000, 'Amerika', 'peso', 'elnöki köztársaság', 'képviselőház', 120, 42000000000),
(62, 'Svédország', 'Stockholm', 449964, 8700000, 'Európa', 'korona', 'alkotmányos monarchia', 'parlament', 349, 216000000000),
(63, 'Ecuador', 'Quito', 272045, 11300000, 'Amerika', 'sucre', 'elnöki köztársaság', 'kongresszus', 77, 13200000000),
(64, 'Szlovénia', 'Ljubljana', 20253, 2000000, 'Európa', 'tolar', 'köztársaság', 'alsóház', 90, 12600000000),
(65, 'Pakisztán', 'Iszlámábád', 796095, 122800000, 'Ázsia', 'rúpia', 'szövetségi köztársaság', 'nemzetgyűlés', 217, 53000000000),
(66, 'Ukrajna', 'Kijev', 603700, 52100000, 'Európa', 'karbovanyec', 'elnöki köztársaság', 'parlament', 450, 70300000000),
(67, 'Kolumbia', 'Bogotá', 1138914, 35600000, 'Amerika', 'peso', 'elnöki köztársaság', 'képviselőház', 161, 50000000000),
(68, 'Vatikán', 'Vatikánváros', 1, 830, 'Európa', 'líra', 'teokratikus monarchia', 'nincs', 0, 0),
(69, 'Kenya', 'Nairobi', 582646, 27000000, 'Afrika', 'shilling', 'elnöki köztársaság', 'nemzetgyűlés', 188, 7300000000),
(70, 'Törökország', 'Ankara', 779452, 59500000, 'Európa', 'líra', 'köztársaság', 'parlament', 450, 96000000000),
(71, 'Szingapúr', 'Szingapúr', 641, 2900000, 'Ázsia', 'dollár', 'köztársaság', 'parlament', 80, 55000000000),
(72, 'Szlovákia', 'Pozsony', 49036, 5400000, 'Európa', 'korona', 'köztársaság', 'parlament', 150, 10300000000),
(73, 'Peru', 'Lima', 1285216, 22800000, 'Amerika', 'sol', 'elnöki köztársaság', 'Demokratikus Alkotmányozó Kongresszus', 80, 34000000000),
(74, 'Svájc', 'Bern', 41293, 7000000, 'Európa', 'frank', 'szövetségi köztársaság', 'képviselőház', 200, 254000000000),
(75, 'Szíria', 'Damaszkusz', 185180, 13400000, 'Ázsia', 'font', 'elnöki köztársaság', 'nemzetgyűlés', 250, 16200000000),
(76, 'Nicaragua', 'managua', 130000, 4300000, 'Amerika', 'córdoba', 'elnöki köztársaság', 'nemzetgyűlés', 92, 1500000000),
(77, 'San Marino', 'San Marino', 61, 24000, 'Európa', 'líra', 'köztársaság', 'Általános Nagytanács', 60, 200000000000),
(78, 'Lesotho', 'Maseru', 30355, 1800000, 'Afrika', 'maloti', 'alkotmányos monarchia', 'nemzetgyűlés', 65, 1100000000),
(79, 'Portugália', 'Lisszabon', 92389, 9800000, 'Európa', 'escudo', 'köztársaság', 'parlament', 230, 77300000000),
(80, 'Tajvan', 'Tajpej', 36000, 21000000, 'Ázsia', 'dollár', 'köztársaság', 'parlament', 161, 240000000000),
(81, 'Oroszország', 'Moszkva', 17045400, 148500000, 'Európa', 'rubel', 'szövetségi köztársaság', 'alsóház', 450, 349000000000),
(82, 'Suriname', 'Paramaribo', 163265, 405000, 'Amerika', 'gulden', 'elnöki köztársaság', 'nemzetgyűlés', 51, 1400000000),
(83, 'Norvégia', 'Oslo', 323877, 4300000, 'Európa', 'korona', 'alkotmányos monarchia', 'parlament', 165, 112800000000),
(84, 'Vietnam', 'Hanoi', 330341, 70800000, 'Ázsia', 'dong', 'szocialista köztársaság', 'parlament', 395, 12000000000),
(85, 'Nagy-Britannia', 'London', 241752, 58000000, 'Európa', 'font', 'alkotmányos monarchia', 'alsóház', 651, 1040000000000),
(86, 'Honduras', 'Tegucigalpa', 112088, 5600000, 'Amerika', 'lempira', 'elnöki köztársaság', 'kongresszus', 128, 3200000000),
(87, 'Madagaszkár', 'Antananarivo', 587041, 12800000, 'Afrika', 'frank', 'köztársaság', 'nemzetgyűlés', 138, 3100000000),
(88, 'Moldova', 'Kisinyov', 33700, 4500000, 'Európa', 'lej', 'elnöki köztársaság', 'parlament', 104, 5200000000),
(89, 'Srí Lanka', 'Colombo', 64454, 17600000, 'Ázsia', 'rúpia', 'köztársaság', 'parlament', 225, 10600000000),
(90, 'Magyarország', 'Budapest', 93030, 10300000, 'Európa', 'forint', 'köztársaság', 'parlament', 386, 34000000000),
(91, 'Uruguay', 'Montevideo', 176215, 3100000, 'Amerika', 'peso', 'elnöki köztársaság', 'képviselőház', 99, 12000000000),
(92, 'Luxemburg', 'Luxembourg', 2586, 400000, 'Európa', 'frank', 'alkotmányos monarchia', 'képviselőház', 60, 14200000000),
(93, 'Ausztrália', 'Canberra', 7686848, 17700000, 'Ausztrália és óceánia', 'dollár', 'alkotmányos monarchia', 'törvényhozás', 147, 327000000000),
(94, 'Liechtenstein', 'Vaduz', 160, 30000, 'Európa', 'frank', 'alkotmányos monarchia', 'parlament', 25, 1100000000),
(95, 'Mali', 'Bamako', 1240192, 9200000, 'Afrika', 'frank', 'elnöki köztársaság', 'nemzetgyűlés', 129, 2800000000),
(96, 'Venezuela', 'Caracas', 912050, 20800000, 'Amerika', 'bolivar', 'szövetségi köztársaság', 'képviselőház', 201, 59000000000),
(97, 'Lengyelország', 'Varsó', 312685, 38400000, 'Európa', 'zloty', 'elnöki köztársaság', 'képviselőház', 460, 87200000000),
(98, 'Kiribati', 'Baikiri', 810, 76000, 'Ausztrália és óceánia', 'dollár', 'elnöki köztársaság', 'nemzetgyűlés', 39, 54000000000),
(99, 'Izland', 'Reykjavík', 103000, 264000, 'Európa', 'korona', 'köztársaság', 'parlament', 63, 6200000000),
(100, 'Nauru', 'Yaren', 21, 10000, 'Ausztrália és óceánia', 'dollár', 'köztársaság', 'parlament', 18, 11000000000),
(101, 'Horvátország', 'Zágráb', 56538, 4800000, 'Európa', 'kuna', 'köztársaság', 'képviselőház', 138, 9700000000),
(102, 'Niger', 'Niamey', 1267000, 8400000, 'Afrika', 'frank', 'elnöki köztársaság', 'nemzetgyűlés', 83, 2300000000),
(103, 'Grúzia', 'Tbiliszi', 69700, 5500000, 'Európa', 'kupon', 'elnöki köztársaság', 'Legfelső Tanács', 235, 3000000000),
(104, 'Palau', 'Koror', 508, 15000, 'Ausztrália és óceánia', 'dollár', 'elnöki köztársaság', 'képviselőház', 16, 13000000),
(105, 'Franciaország', 'Párizs', 543965, 57600000, 'Európa', 'frank', 'elnöki köztársaság', 'nemzetgyűlés', 577, 1290000000000),
(106, 'Szudán', 'Kartúm', 2505813, 27300000, 'Afrika', 'dinár', 'iszlám köztársaság', 'átmeneti nemzetgyűlés', 300, 11000000000),
(107, 'Tonga', 'Nukualofa', 748, 99000, 'Ausztrália és óceánia', 'panga', 'alkotmányos monarchia', 'parlament', 30, 160000000),
(108, 'Tunézia', 'Tunisz', 164150, 8600000, 'Afrika', 'dinár', 'elnöki köztársaság', 'nemzetgyűlés', 163, 15300000000),
(109, 'Tuvalu', 'Vaiaku', 26, 9500, 'Ausztrália és óceánia', 'dollár', 'alkotmányos monarchia', 'képviselőház', 12, 6000000),
(110, 'Zambia', 'Lusaka', 752614, 8600000, 'Afrika', 'kwacha', 'elnöki köztársaság', 'nemzetgyűlés', 150, 3200000000),
(111, 'Amerikai Egyesült Államok', 'Washington', 9372614, 258100000, 'Amerika', 'dollár', 'szövetségi köztársaság', 'képviselőház', 435, 6650000000000),
(112, 'Zimbabwe', 'Harare', 390579, 10600000, 'Afrika', 'dollár', 'elnöki köztársaság', 'képviselőház', 150, 5200000000),
(113, 'Barbados', 'Bridgetown', 430, 260000, 'Amerika', 'dollár', 'alkotmányos monarchia', 'képviselőház', 28, 1600000000),
(114, 'Benin', 'Porto-Novo', 112622, 5200000, 'Afrika', 'frank', 'elnöki köztársaság', 'nemzetgyűlés', 64, 2200000000),
(115, 'Guyana', 'Georgetown', 217969, 810000, 'Amerika', 'dollár', 'elnöki köztársaság', 'nemzetgyűlés', 65, 280000000),
(116, 'Irán', 'Teherán', 1648000, 61400000, 'Ázsia', 'rijál', 'elnöki köztársaság', 'medzslisz', 270, 135000000000),
(117, 'Bissau-Guinea', 'Bissau', 36125, 1000000, 'Afrika', 'peso', 'elnöki köztársaság', 'nemzetgyűlés', 100, 217000000000),
(118, 'Jordánia', 'Ammán', 97740, 4100000, 'Ázsia', 'dinár', 'alkotmányos monarchia', 'képviselőház', 80, 4900000000),
(119, 'Antigua és Barbuda', 'Saint Johns', 442, 67000, 'Amerika', 'dollár', 'alkotmányos monarchia', 'képviselőház', 17, 430000000),
(120, 'Elefántcsontpart', 'Yamoussoukro', 322462, 13400000, 'Afrika', 'frank', 'elnöki köztársaság', 'nemzetgyűlés', 175, 8400000000),
(121, 'Botswana', 'Gaborone', 582000, 1400000, 'Afrika', 'pula', 'elnöki köztársaság', 'nemzetgyűlés', 40, 3600000000),
(122, 'Afganisztán', 'Kabul', 652225, 22100000, 'Ázsia', 'afgháni', 'iszlám köztársaság', 'ideiglenes parlament', 205, 4100000000),
(123, 'Mauritius', 'Port Louis', 2040, 1100000, 'Afrika', 'rúpia', 'köztársaság', 'nemzetgyűlés', 71, 3300000000),
(124, 'Belize', 'Belmopan', 22965, 205000, 'Amerika', 'dollár', 'alkotmányos monarchia', 'képviselőház', 29, 500000000),
(125, 'Kambodzsa', 'Phnom Penh', 181035, 9600000, 'Ázsia', 'riel', 'alkotmányos monarchia', 'nemzetgyűlés', 120, 1200000000),
(126, 'Dél-Afrika', 'Pretoria', 1221037, 40700000, 'Afrika', 'rand', 'elnöki köztársaság', 'nemzetgyűlés', 400, 117000000000),
(127, 'Katar', 'Doha', 11437, 520000, 'Ázsia', 'rijál', 'monarchia', 'nincs', 0, 7900000000),
(128, 'Trinidad és Tobago', 'Port of Spain', 5128, 1300000, 'Amerika', 'dollár', 'elnöki köztársaság', 'képviselőház', 36, 4800000000),
(129, 'Egyenlítői-Guinea', 'Malabo', 28051, 447000, 'Afrika', 'frank', 'elnöki köztársaság', 'Népképviselők Kongresszusa', 80, 160000000000),
(130, 'Zöld-foki szigetek', 'Cidade de Praia', 4033, 398000, 'Afrika', 'escudo', 'köztársaság', 'nemzetgyűlés', 79, 350000000000),
(131, 'Namíbia', 'Windhoek', 824292, 1600000, 'Afrika', 'rand', 'elnöki köztársaság', 'nemzetgyűlés', 72, 2700000000),
(132, 'Maldív-szigetek', 'Male', 298, 237000, 'Ázsia', 'rúpia', 'elnöki köztársaság', 'medzslisz', 48, 190000000),
(133, 'Guinea', 'Conakry', 245857, 6300000, 'Afrika', 'frank', 'elnöki köztársaság', 'feloszlatva', 0, 3200000000),
(134, 'Dominika', 'Roseau', 750, 72000, 'Amerika', 'dollár', 'köztársaság', 'képviselőház', 21, 190000000),
(135, 'Libanon', 'Bejrút', 10400, 28000000, 'Ázsia', 'font', 'köztársaság', 'nemzetgyűlés', 128, 3700000000),
(136, 'Jamaica', 'Kingston', 10991, 2400000, 'Amerika', 'dollár', 'alkotmányos monarchia', 'képviselőház', 60, 3400000000),
(137, 'Burkina Faso', 'Ouagadougou', 274200, 9800000, 'Afrika', 'frank', 'elnöki köztársaság', 'nemzetgyűlés', 107, 2900000000),
(138, 'Üzbegisztán', 'Taskent', 447400, 21900000, 'Ázsia', 'szom', 'elnöki köztársaság', 'Legfelső Gyűlés', 250, 21000000000),
(139, 'Paraguay', 'Asunción', 406752, 4600000, 'Amerika', 'guaraní', 'elnöki köztársaság', 'képviselőház', 80, 6900000000),
(140, 'Marokkó', 'Rabat', 458730, 26700000, 'Afrika', 'dirham', 'alkotmányos monarchia', 'képviselőház', 333, 32300000000),
(141, 'Kirgizsztán', 'Pispek', 198500, 4500000, 'Ázsia', 'szom', 'elnöki köztársaság', 'képviselőház', 70, 3700000000),
(142, 'Bahama-szigetek', 'Nassau', 13939, 266000, 'Amerika', 'dollár', 'alkotmányos monarchia', 'képviselőház', 49, 3100000000),
(143, 'Fidzsi-szigetek', 'Suva', 18376, 760000, 'Ausztrália és óceánia', 'dollár', 'köztársaság', 'képviselőház', 70, 1600000000),
(144, 'Mozambik', 'Maputo', 801590, 16900000, 'Afrika', 'metical', 'köztársaság', 'Köztársasági Gyűlés', 250, 1300000000),
(145, 'Indonézia', 'Dzsakarta', 1904569, 188000000, 'Ázsia', 'rúpia', 'köztársaság', 'képviselőház', 500, 137000000000),
(146, 'Marshall-szigetek', 'Dalap-Uliga-Darrit', 180, 53000, 'Ausztrália és óceánia', 'dollár', 'köztársaság', 'parlament', 33, 75000000),
(147, 'Omán', 'Maszkat', 212457, 1700000, 'Ázsia', 'rijál', 'monarchia', 'nincs', 0, 9500000000),
(148, 'Eritrea', 'Aszmara', 98500, 3500000, 'Afrika', 'birr', 'köztársaság', 'ideiglenes nemzetgyűlés', 150, 300000000000),
(149, 'Új-Zéland', 'Wellington', 270986, 3500000, 'Ausztrália és óceánia', 'dollár', 'alkotmányos monarchia', 'képviselőház', 99, 46000000000),
(150, 'Tádzsikisztán', 'Dusanbe', 143100, 5700000, 'Ázsia', 'rubel', 'elnöki köztársaság', 'parlament', 181, 2700000000),
(151, 'Comore-szigetek', 'Moroni', 1862, 530000, 'Afrika', 'frank', 'elnöki köztársaság', 'szövetségi gyűlés', 42, 280000000000),
(152, 'Mikronézia', 'Palikir', 700, 110000, 'Ausztrália és óceánia', 'dollár', 'szövetségi köztársaság', 'kongresszus', 14, 100000000),
(153, 'Thaiföld', 'Bangkok', 513115, 58800000, 'Ázsia', 'baht', 'alkotmányos monarchia', 'képviselőház', 360, 120000000000),
(154, 'Seychelle-szigetek', 'Victoria', 454, 71000, 'Afrika', 'rúpia', 'elnöki köztársaság', 'nemzetgyűlés', 33, 450000000000),
(155, 'Pápua Új-Guinea', 'Port Moresby', 462840, 4100000, 'Ausztrália és óceánia', 'kina', 'alkotmányos monarchia', 'képviselőház', 109, 4600000000),
(156, 'Líbia', 'Tripoli', 1775500, 5000000, 'Afrika', 'dinár', 'iszlám köztársaság', 'Legfelső Népi Kongresszus', 1112, 26000000000),
(157, 'Salamon-szigetek', 'Honiara', 27556, 350000, 'Ausztrália és óceánia', 'dolár', 'alkotmányos monarchia', 'képviselőház', 47, 206000000),
(158, 'Nyugat-Szahara', 'El-Aaiún', 252120, 200000, 'Afrika', 'dirham', 'köztársaság', 'nincs', 0, 24000000000),
(159, 'Szaúd-Arábia', 'Rijád', 2240000, 17400000, 'Ázsia', 'rijál', 'monarchia', 'nincs', 0, 114000000000),
(160, 'Malawi', 'Lilongwe', 118484, 10400000, 'Afrika', 'kwacha', 'elnöki köztársaság', 'nemzetgyűlés', 177, 2300000000),
(161, 'Türkmenisztán', 'Asgabat', 488100, 4300000, 'Ázsia', 'manát', 'elnöki köztársaság', 'Népi Tanács', 50, 5400000000),
(162, 'Szomália', 'Mogadishu', 637657, 8500000, 'Afrika', 'shilling', 'köztársaság', 'feloszlatva', 0, 1000000000),
(163, 'Dominikai Köztársaság', 'Santo Domingo', 48243, 7400000, 'Amerika', 'peso', 'elnöki köztársaság', 'képviselőház', 120, 8000000000),
(164, 'Kongó', 'Brazzaville', 342000, 2500000, 'Afrika', 'frank', 'köztársaság', 'nemzetgyűlés', 125, 2300000000),
(165, 'Egyesült Arab Emírségek', 'Abu Dhabi', 83600, 1700000, 'Ázsia', 'dirham', 'emírségek szövetsége', 'szövetségi tanács', 40, 38000000000),
(166, 'Ruanda', 'Kigali', 26338, 6500000, 'Afrika', 'frank', 'elnöki köztársaság', 'parlament', 70, 1300000000),
(167, 'Mauritánia', 'Nouakchott', 1030700, 2100000, 'Afrika', 'ouguiya', 'elnöki köztársaság', 'nemzetgyűlés', 0, 1100000000),
(168, 'Észak-Korea', 'Phenjan', 120538, 23000000, 'Ázsia', 'von', 'népköztársaság', 'Legfelső Népgyűlés', 687, 21000000000),
(169, 'Tanzánia', 'Dar es Salaam', 945087, 27800000, 'Afrika', 'shilling', 'elnöki köztársaság', 'nemzetgyűlés', 216, 2700000000),
(170, 'Libéria', 'Monrovia', 97754, 2800000, 'Afrika', 'dollár', 'elnöki köztársaság', 'Ideiglenes Nemzetgyűlés', 35, 1300000000),
(171, 'Brunei', 'Bandar Seri Begawan', 5765, 280000, 'Ázsia', 'dollár', 'monarchia', 'nincs', 0, 8400000000),
(172, 'Togo', 'Lomé', 56785, 4000000, 'Afrika', 'frank', 'elnöki köztársaság', 'nemzetgyűlés', 81, 1300000000),
(173, 'Kanada', 'Ottawa', 9976139, 28100000, 'Amerika', 'dollár', 'alkotmányos monarchia', 'képviselőház', 295, 588000000000),
(174, 'Szenegál', 'Dakar', 196722, 8100000, 'Afrika', 'frank', 'köztársaság', 'nemzetgyűlés', 120, 6000000000),
(175, 'Fülöp-szigetek', 'Manila', 300000, 65700000, 'Ázsia', 'peso', 'elnöki köztársaság', 'képviselőház', 200, 54500000000),
(176, 'Ghána', 'Accra', 238533, 16300000, 'Afrika', 'cedi', 'köztársaság', 'parlament', 200, 7000000000),
(177, 'Brazília', 'Brasilia', 8511996, 156500000, 'Amerika', 'cruzeiro real', 'szövetségi köztársaság', 'képviselőház', 517, 470000000000),
(178, 'Nyugat-Szamoa', 'Apia', 2831, 163000, 'Ausztrália és óceánia', 'tala', 'alkotmányos monarchia', 'nemzetgyűlés', 49, 160000000),
(179, 'Nigéria', 'Abuja', 923768, 115700000, 'Afrika', 'naira', 'elnöki köztársaság', 'feloszlatva', 0, 36000000000),
(180, 'Szváziföld', 'Mbabane', 17363, 880000, 'Afrika', 'lilangeni', 'alkotmányos monarchia', 'nemzetgyűlés', 65, 920000000000),
(181, 'Bhután', 'Timpu', 47000, 1500000, 'Ázsia', 'ngultrum', 'alkotmányos monarchia', 'nemzetgyűlés', 150, 260000000000),
(182, 'Zaire', 'Kinshasa', 2345409, 41200000, 'Afrika', 'zaire', 'elnöki köztársaság', 'átmeneti parlament', 0, 8700000000),
(183, 'Grenada', 'Saint Georges', 345, 91000, 'Amerika', 'dollár', 'alkotmányos monarchia', 'képviselőház', 15, 220000000),
(184, 'Közép-Afrika', 'Bangui', 622436, 3200000, 'Afrika', 'frank', 'elnöki köztársaság', 'nemzetgyűlés', 85, 1300000000),
(185, 'Gabon', 'Libreville', 267667, 1200000, 'Afrika', 'frank', 'elnöki köztársaság', 'nemzetgyűlés', 120, 4900000000),
(186, 'Saint Kitts és Nevis', 'Basseterre', 262, 42000, 'Amerika', 'dollár', 'alkotmányos monarchia', 'nemzetgyűlés', 11, 188000000),
(187, 'Mianmar', 'Rangun', 676552, 44700000, 'Ázsia', 'kyat', 'szocialista köztársaság', 'feloszlatva', 0, 10000000000),
(188, 'Bolívia', 'La Paz', 1098581, 7100000, 'Amerika', 'boliviano', 'elnöki köztársaság', 'képviselőház', 130, 5500000000),
(189, 'Sao Tomé és Príncipe', 'Sao Tomé', 964, 126000, 'Afrika', 'dobra', 'köztársaság', 'nemzetgyűlés', 55, 42000000000),
(190, 'Uganda', 'Kampala', 241139, 18700000, 'Afrika', 'új shilling', 'elnöki köztársaság', 'alkotmányozó nemzetgyűlés', 288, 4500000000),
(191, 'Sierra Leone', 'Freetown', 71740, 4400000, 'Afrika', 'leone', 'elnöki köztársaság', 'feloszlatva', 0, 620000000000),
(192, 'Vanuatu', 'Port-Vila', 12190, 160000, 'Ausztrália és óceánia', 'vatu', 'köztársaság', 'parlament', 46, 200000000),
(193, 'Saint Lucia', 'Castries', 616, 158000, 'Amerika', 'dollár', 'alkotmányos monarchia', 'képviselőház', 17, 480000000);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `Orszagok`
--
ALTER TABLE `Orszagok`
  ADD PRIMARY KEY (`Orszagkod`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
