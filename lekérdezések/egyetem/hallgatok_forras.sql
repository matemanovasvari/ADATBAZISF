CREATE DATABASE egyetem CHARACTER SET utf8 COLLATE utf8_hungarian_ci;

CREATE TABLE `hallgatok` (
  `tanuloID` varchar(3) COLLATE utf8_hungarian_ci NOT NULL,
  `tanuloNev` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `szulido` date DEFAULT NULL,
  `szaktipus` varchar(30) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `feleviAtlag` float DEFAULT NULL,
  `evvegiAtlag` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;


INSERT INTO `hallgatok` (`tanuloID`, `tanuloNev`, `szulido`, `szaktipus`, `feleviAtlag`, `evvegiAtlag`) VALUES
('A10', 'Tornyos Zsolt', '2001-03-15', 'felsőfokú szakképzés', 4.1, 2.5),
('A11', 'Vidóczi Bánk', '2002-06-30', 'MSc', 3.6, 4.4),
('A13', 'Pálvölgyi Ármin', '2001-03-12', 'BSc', 4.7, 3.5),
('A15', 'Egri Valéria', '2001-06-10', 'BSc', 4.1, 3),
('A16', 'Perjési Vanda', '2001-03-31', 'MSc', 4.6, 3),
('A17', 'Szekeres Helánia', '2000-06-05', 'BSc', 3.6, 4.6),
('A20', 'Galgóczy Zelma', '2003-02-22', 'MSc', 2.4, 3),
('A21', 'Somlai Taksony', '2001-08-06', 'felsőfokú szakképzés', 3.8, 3.2),
('A27', 'Turák Hajna', '2002-06-29', 'felsőfokú szakképzés', 4.6, 3.2),
('A29', 'Tagai Ágnes', '2000-08-16', 'felsőfokú szakképzés', 2.9, 4.8),
('A30', 'Csiba Gergely', '2001-02-24', 'felsőfokú szakképzés', 2.2, 2.8),
('A34', 'Illés Dorina', '2000-06-26', 'MSc', 2, 2.2),
('A35', 'Mudrony Melinda', '2000-05-01', 'felsőfokú szakképzés', 3.1, 2.3),
('A37', 'Balogh Judit', '2003-05-27', 'másodszakmás', 2.2, 2.3),
('A4', 'Daru Géza', '2003-05-22', 'BSc', 3, 4.4),
('A42', 'Németi László', '2002-02-25', 'BSc', 3.4, 3.7),
('A43', 'Jónyer Noémi', '2001-02-16', 'Phd', 2.6, 4.4),
('A44', 'Tomori Dorottya', '2001-07-31', 'MSc', 4.3, 3.4),
('A46', 'Pecze Irén', '2001-05-11', 'másodszakmás', 2, 2.9),
('A50', 'Szakál Szilvia', '2001-06-03', 'másodszakmás', 4.5, 3.5),
('B11', 'Kispéter Lipót', '2002-05-16', 'MSc', 3.8, 3.4),
('B12', 'Sárdi Kristóf', '2001-03-03', 'másodszakmás', 3.7, 4.2),
('B13', 'Gyenes Boglárka', '2001-07-08', 'BSc', 2.1, 2.8),
('B14', 'Rabló Ábrahám', '2002-04-10', 'másodszakmás', 4.8, 4.9),
('B15', 'Jeromos Fruzsina', '2003-06-02', 'BSc', 2.2, 2.5),
('B16', 'Forráskúti Álmos', '2001-07-06', 'MSc', 3.4, 4),
('B17', 'Fehér Tivadar', '2001-06-19', 'BSc', 4.5, 4.9),
('B18', 'Turú Jusztin', '2002-08-10', 'Phd', 4, 2.6),
('B19', 'Bende Lénárd', '2003-06-15', 'másodszakmás', 3.9, 4.6),
('B2', 'Pölös Konrád', '2003-03-20', 'BSc', 5, 4.9),
('B22', 'Zakar Enikő', '2001-06-04', 'másodszakmás', 4.9, 4.6),
('B26', 'Pór Ida', '2000-07-14', 'felsőfokú szakképzés', 2.5, 2),
('B27', 'Gyivicsán Pál', '2002-08-04', 'felsőfokú szakképzés', 2.1, 3.3),
('B33', 'Szukits Adrián', '2000-03-30', 'Phd', 3.1, 3.3),
('B38', 'Fodor Vince', '2003-02-27', 'másodszakmás', 4.3, 2.3),
('B39', 'Kalmár Erik', '2001-06-29', 'Phd', 4.5, 3.2),
('B40', 'Melian Inez', '2001-03-13', 'BSc', 3.9, 3.2),
('B41', 'Sánta Leonóra', '2001-05-17', 'másodszakmás', 4.8, 4.5),
('B42', 'Jurca Rebeka', '2000-03-28', 'felsőfokú szakképzés', 4.8, 5),
('B43', 'Pásztor Orsolya', '2003-08-08', 'MSc', 3.6, 3.1),
('B44', 'Wéber Mátyás', '2000-03-04', 'MSc', 3.9, 4.1),
('B48', 'Csifcsák Jenő', '2000-04-30', 'másodszakmás', 2.9, 2.6),
('B49', 'Dévényi Réka', '2000-02-14', 'MSc', 2, 2.9),
('B9', 'Brácsás Berta', '2001-07-03', 'Phd', 3.6, 3.2),
('C11', 'Kiss Róbert', '2001-03-08', 'Phd', 4.3, 4.1),
('C12', 'Selypes Atlasz', '2002-08-21', 'MSc', 4, 3.3),
('C17', 'Mingesz Gergely', '2000-04-27', 'BSc', 2.1, 2.9),
('C18', 'Jenei Szervác', '2000-06-21', 'BSc', 2.9, 2.4),
('C19', 'Tölgyesi Dóra', '2001-05-10', 'BSc', 4.4, 3.1),
('C2', 'Balta Hermina', '2002-08-01', 'másodszakmás', 3.9, 2.8),
('C21', 'Lalusta Dorina', '2001-03-15', 'Phd', 2.8, 2.9),
('C22', 'Felvégi Izabella', '2002-06-18', 'felsőfokú szakképzés', 2.6, 2.8),
('C24', 'Mári Menyhért', '2003-06-12', 'másodszakmás', 4.4, 4.3),
('C25', 'Vidra Gyöngyvér', '2000-04-01', 'Phd', 4.9, 2.9),
('C26', 'Nyíregyházi Ignác', '2002-04-10', 'felsőfokú szakképzés', 2.8, 2.2),
('C3', 'Császár Virgil', '2002-05-24', 'BSc', 2.4, 3),
('C30', 'Benkő Csaba', '2003-07-14', 'Phd', 3.1, 4.7),
('C36', 'Körmöczi Miklós', '2003-05-16', 'felsőfokú szakképzés', 3, 2.8),
('C42', 'Hegedűs Gergely', '2002-05-30', 'másodszakmás', 2.9, 3.8),
('C43', 'Prókai Mária', '2003-07-11', 'felsőfokú szakképzés', 4.1, 2.2),
('C44', 'Deák Zsófia', '2003-06-21', 'MSc', 4, 3),
('C5', 'Megyesi Alfréd', '2001-02-21', 'felsőfokú szakképzés', 2.7, 4.4),
('C50', 'Lábass Vajk', '2003-06-09', 'MSc', 3, 3.1),
('C7', 'Pirityi Jolán', '2000-03-19', 'másodszakmás', 4.1, 3.9),
('C8', 'Gyüre Nikolett', '2000-04-13', 'MSc', 2.2, 2.8),
('C9', 'Mándi Ramóna', '2002-05-20', 'BSc', 2.7, 3.5),
('D1', 'Pápai Hugó', '2000-06-08', 'felsőfokú szakképzés', 2.5, 4.2),
('D15', 'László Berta', '2003-07-06', 'másodszakmás', 2.8, 4.1),
('D21', 'Gyarló Franciska', '2000-08-31', 'MSc', 4.7, 4.8),
('D27', 'Szűcs Béla', '2003-06-29', 'Phd', 3.3, 2.8),
('D30', 'Kristó Benjámin', '2001-08-20', 'MSc', 3.5, 2),
('D34', 'Penczinger Titusz', '2003-02-27', 'MSc', 2.6, 2.4),
('D4', 'Satyinszlai Roxána', '2000-02-23', 'másodszakmás', 5, 3.1),
('D41', 'Nyilasi Bátor', '2003-05-30', 'másodszakmás', 4.8, 4.8),
('D46', 'Klemm Lívia', '2003-06-24', 'Phd', 2.4, 2),
('D49', 'Gesztesi Gergely', '2001-05-23', 'Phd', 2.2, 2.6),
('D50', 'Kuzma Gerzson', '2000-06-03', 'MSc', 2, 2.9),
('D51', 'Mécs Rozália', '2003-06-29', 'másodszakmás', 5, 2.8),
('D7', 'Badár Tivadar', '2001-03-03', 'Phd', 2.1, 4.7),
('D8', 'Fődi Lehel', '2001-06-13', 'BSc', 4.3, 4.2),
('E10', 'Satyinszlai Amália', '2000-03-26', 'BSc', 2.5, 3.3),
('E11', 'Kecskeméti Gedeon', '2001-06-24', 'felsőfokú szakképzés', 2.2, 3.7),
('E16', 'Gyovai Csenge', '2000-07-15', 'Phd', 2, 4.4),
('E17', 'Lehóczky Leonóra', '2002-06-12', 'BSc', 4.1, 4.1),
('E18', 'Ambrus Albin', '2000-03-07', 'MSc', 3.5, 4),
('E19', 'Czeglédi Sára', '2002-08-27', 'másodszakmás', 4.8, 5),
('E22', 'Ádok Valentin', '2002-05-26', 'felsőfokú szakképzés', 3.4, 4.1),
('E23', 'Hanusz Malvin', '2003-02-26', 'felsőfokú szakképzés', 3.4, 4.2),
('E24', 'Héjas Ádám', '2003-08-05', 'felsőfokú szakképzés', 3.3, 3.9),
('E25', 'Kispéter Viktória', '2002-05-18', 'BSc', 2.1, 3.2),
('E26', 'Csorba Jakab', '2003-05-02', 'BSc', 4.8, 4.5),
('E34', 'Kátay Roxána', '2000-03-24', 'BSc', 4.9, 3.1),
('E41', 'Tanács Ivett', '2002-08-24', 'Phd', 3.7, 4.5),
('E42', 'Romanek Emília', '2000-08-21', 'Phd', 4.5, 4.8),
('E43', 'Berkó Egon', '2003-08-12', 'felsőfokú szakképzés', 2.8, 3.4),
('E44', 'Fenyvesi Jusztin', '2001-05-21', 'felsőfokú szakképzés', 4.1, 2.7),
('E45', 'Szendrődi Apollónia', '2000-07-10', 'Phd', 4.8, 2.5),
('E46', 'Zelei Álmos', '2002-05-21', 'Phd', 4.3, 5),
('E6', 'Kőris Péter', '2002-06-18', 'Phd', 5, 4.7),
('E7', 'Galgóczy Jenő', '2002-05-18', 'Phd', 3.2, 4.4),
('F11', 'Uhljár Titusz', '2003-04-15', 'Phd', 5, 3.7),
('F12', 'Herczeg Jusztina', '2003-03-01', 'MSc', 3.2, 2.8),
('F17', 'Cirok Erna', '2000-03-23', 'felsőfokú szakképzés', 4.1, 3.8),
('F23', 'Antalóczy Irén', '2000-07-31', 'BSc', 3.2, 4.2),
('F31', 'Vemhes Karolina', '2003-08-23', 'felsőfokú szakképzés', 2.1, 2.5),
('F40', 'Orudzsev Lukrécia', '2001-05-02', 'Phd', 2.9, 2.1),
('F41', 'Simon Ferenc', '2003-03-23', 'MSc', 2.5, 4.8),
('F42', 'Jeles Antal', '2003-05-20', 'felsőfokú szakképzés', 4.8, 4.3),
('F44', 'Nyíri Fanni', '2002-02-21', 'MSc', 3.7, 4.4),
('F9', 'Kerekes Mária', '2000-05-10', 'MSc', 2.5, 2.8),
('G1', 'Nyilasi Boldizsár', '2003-04-28', 'BSc', 2.3, 3.1),
('G10', 'Csörghő Beatrix', '2001-05-18', 'MSc', 2, 2.4),
('G11', 'Németh Elemér', '2000-08-25', 'másodszakmás', 2.4, 2.9),
('G12', 'Vass Simeon', '2002-06-20', 'másodszakmás', 2.1, 4.2),
('G14', 'Knébel Ákos', '2001-02-24', 'másodszakmás', 4.8, 2.7),
('G16', 'Baumann Mirjam', '2000-08-27', 'Phd', 2.7, 2.3),
('G17', 'Meszlényi Mária', '2002-02-21', 'felsőfokú szakképzés', 4.5, 2.1),
('G18', 'Guba Levente', '2003-06-29', 'BSc', 2, 3.6),
('G19', 'Karikó Katalin', '2000-04-26', 'Phd', 2.6, 3.7),
('G2', 'Mahler Jeromos', '2003-02-27', 'Phd', 3.8, 2.6),
('G20', 'Monori Domonkos', '2003-07-10', 'másodszakmás', 2.6, 3.1),
('G21', 'Várkonyi Ábel', '2000-07-30', 'BSc', 2.6, 3.5),
('G22', 'Limpek Csilla', '2000-05-09', 'másodszakmás', 3.1, 4.3),
('G3', 'Serfőző Karola', '2001-03-27', 'másodszakmás', 5, 3.7),
('G34', 'Paszt Mária', '2000-03-24', 'Phd', 3.1, 3.5),
('G36', 'Guba Domonkos', '2001-04-26', 'BSc', 3.4, 2.7),
('G37', 'Huszka Lénárd', '2000-02-17', 'MSc', 2.1, 4.4),
('G43', 'Magyarossy Pál', '2003-03-21', 'MSc', 4.2, 2.6),
('G44', 'Bohus Zsuzsanna', '2000-08-16', 'BSc', 3.9, 3.7),
('G46', 'Göndör Marcell', '2002-05-07', 'felsőfokú szakképzés', 3.4, 3.3),
('G49', 'Busa Archibáld', '2002-06-02', 'felsőfokú szakképzés', 2.9, 3.9),
('G7', 'Balogh Bánk', '2001-08-19', 'MSc', 3.4, 2.6),
('H1', 'Hideg Soma', '2002-07-05', 'MSc', 4.9, 3.9),
('H10', 'Gyémánt Nárcisz', '2000-07-02', 'felsőfokú szakképzés', 3.4, 4.2),
('H11', 'Szukits Albert', '2003-02-13', 'másodszakmás', 4, 4),
('H15', 'Zsandár Gáspár', '2002-04-23', 'másodszakmás', 5, 2.7),
('H24', 'Mihók Henrietta', '2002-05-13', 'BSc', 3.6, 3.7),
('H25', 'Rajnai Bánk', '2002-08-29', 'Phd', 3.1, 2.4),
('H28', 'Darida Mózes', '2002-06-18', 'Phd', 4.1, 4.3),
('H29', 'Lehóczky Amália', '2003-06-11', 'Phd', 2.7, 4.2),
('H3', 'Kuti Vanda', '2002-06-30', 'felsőfokú szakképzés', 2.9, 3.2),
('H30', 'Homonnai Marcell', '2003-03-09', 'Phd', 3.1, 4),
('H31', 'Tömösi Lilla', '2002-03-27', 'BSc', 2.4, 4.6),
('H33', 'Halászi Leonóra', '2000-07-21', 'másodszakmás', 4.1, 5),
('H34', 'Héja Xénia', '2002-07-31', 'MSc', 2, 3.4),
('H35', 'Rontó Bertalan', '2003-04-25', 'MSc', 3.7, 3.5),
('H39', 'Horcsik Ábel', '2000-05-23', 'másodszakmás', 3.3, 4.8),
('H4', 'Tagai Daniella', '2003-04-07', 'Phd', 4.6, 5),
('H40', 'Sipos Szilárd', '2001-06-02', 'felsőfokú szakképzés', 4.8, 4.6),
('H5', 'Gázser Jácint', '2000-08-16', 'MSc', 4.5, 2.4),
('I11', 'Szegfű Olivér', '2001-02-14', 'BSc', 3.7, 2.4),
('I12', 'Bite Matild', '2003-03-13', 'felsőfokú szakképzés', 2.6, 4.8),
('I14', 'Garai Borbála', '2003-05-19', 'Phd', 4.6, 4.2),
('I17', 'Somorjai Hugó', '2002-08-22', 'MSc', 3, 4.7),
('I18', 'Bácsi Bátor', '2002-05-08', 'BSc', 2.6, 4.7),
('I2', 'Gyurkovics Mária', '2002-05-20', 'felsőfokú szakképzés', 2.3, 4.1),
('I20', 'Reheczky Patrícia', '2002-07-18', 'másodszakmás', 2.1, 4.1),
('I21', 'Kőhalmi Kartal', '2003-03-14', 'másodszakmás', 2.3, 2.8),
('I22', 'Komlóssy Mária', '2003-08-05', 'másodszakmás', 3.3, 4.8),
('I25', 'Simó Ráhel', '2003-05-29', 'BSc', 3.3, 4.1),
('I3', 'Ehman Ida', '2002-06-04', 'másodszakmás', 2.9, 4.4),
('I32', 'Sonkoly Mária', '2000-06-29', 'Phd', 2.4, 3.5),
('I35', 'Orudzser Dezső', '2002-03-12', 'másodszakmás', 4.8, 2.4),
('I36', 'Porth Buda', '2002-07-21', 'MSc', 3.9, 2.2),
('I37', 'Kucsora Béla', '2001-08-20', 'MSc', 3.3, 2),
('I38', 'Gurics Helánia', '2000-07-26', 'BSc', 3.8, 4.8),
('I39', 'Tagai Franciska', '2003-03-11', 'BSc', 2.3, 2.6),
('I4', 'Lambert Ulrik', '2000-06-12', 'másodszakmás', 2.8, 3.5),
('I40', 'Móricz Dániel', '2000-06-15', 'MSc', 4.7, 3.7),
('I41', 'Busa Helga', '2000-08-27', 'MSc', 3.4, 4),
('I42', 'Papdi Kata', '2001-06-04', 'BSc', 2.2, 4.4),
('I43', 'Pokol Sára', '2003-04-24', 'másodszakmás', 2.6, 2.8),
('I44', 'Gárgyán Erzsébet', '2001-07-14', 'Phd', 2.8, 2.2),
('I45', 'Borsos Petra', '2003-08-10', 'felsőfokú szakképzés', 4.3, 4.3),
('I46', 'Járóka Malvin', '2003-08-01', 'másodszakmás', 3.9, 3.6),
('I49', 'Duba Roxána', '2001-04-13', 'Phd', 4.5, 2.6),
('I7', 'Radnóti Rozália', '2001-05-25', 'MSc', 3.6, 2.7),
('J1', 'Mágori Katalin', '2003-03-17', 'BSc', 3.5, 2.8),
('J10', 'Gyémánt Gellért', '2000-02-14', 'Phd', 4.9, 3.8),
('J11', 'Puskás Fanni', '2003-06-16', 'Phd', 2.4, 3.9),
('J12', 'Antal Pál', '2001-05-06', 'felsőfokú szakképzés', 3.5, 2.3),
('J14', 'Deér Kinga', '2001-08-31', 'felsőfokú szakképzés', 2.9, 5),
('J17', 'Kéri Ibolya', '2002-07-02', 'BSc', 3.3, 3.4),
('J18', 'Mandász Kitti', '2002-07-02', 'Phd', 3.9, 3.2),
('J23', 'Miklóssy Vencel', '2003-07-06', 'BSc', 2, 4.3),
('J24', 'Lányi Zsuzsanna', '2002-05-07', 'Phd', 2.6, 3.1),
('J25', 'Balogi Jolán', '2003-03-15', 'felsőfokú szakképzés', 3.1, 4.2),
('J26', 'Pákozdi Jusztin', '2002-03-18', 'másodszakmás', 2.5, 4.1),
('J27', 'Csanád Tamás', '2000-03-31', 'másodszakmás', 4.7, 4.1),
('J33', 'Barkóczi Izolda', '2003-04-12', 'BSc', 3.1, 4.5),
('J34', 'Sebők Mihály', '2003-04-24', 'Phd', 3.4, 3.8),
('J4', 'Somosi Nikolett', '2001-03-23', 'felsőfokú szakképzés', 3.5, 4.3),
('J40', 'Horváth Orsolya', '2000-02-19', 'felsőfokú szakképzés', 4.3, 4.2),
('J41', 'Roll Bence', '2000-07-16', 'BSc', 4.1, 3),
('J42', 'Szlávik Mária', '2003-04-12', 'Phd', 2.7, 4.8),
('J43', 'Minarik Orsolya', '2000-02-21', 'másodszakmás', 4.3, 3.6),
('J48', 'Tallósy Adrienn', '2002-07-13', 'MSc', 3.3, 4.8),
('J50', 'Gyimó Flóra', '2003-06-06', 'MSc', 2, 2.3),
('J51', 'Bőrös Béla', '2000-04-12', 'BSc', 4.9, 4.8),
('J52', 'Blazsovszky Mendel', '2003-06-02', 'MSc', 2.8, 2.2);


ALTER TABLE `hallgatok` ADD PRIMARY KEY (`tanuloID`);

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT AVG(feleviAtlag) AS feleviAtlag, AVG(evvegiAtlag) AS evvegiAtlag FROM hallgatok;

SELECT DISTINCT szaktipus FROM hallgatok;

SELECT tanuloNev, szulido
FROM hallgatok
ORDER BY szulido DESC LIMIT 10

SELECT tanuloNev, szaktipus, evvegiAtlag
FROM hallgatok
ORDER BY evvegiAtlag DESC, tanuloNev;

SELECT tanuloNev, evvegiAtlag - feleviAtlag AS javitas_rontas,
(evvegiAtlag / feleviAtlag - 1) * 100 AS javitas_rontas_szazalek
FROM hallgatok
ORDER BY tanuloNev;

SELECT tanuloNev, feleviAtlag
FROM hallgatok
ORDER BY feleviAtlag LIMIT 20;

SELECT MAX(feleviAtlag) - MIN(feleviAtlag) AS feleviAtlagIngadozas,
MAX(evvegiAtlag) - MIN(evvegiAtlag) AS evvegiAtlagIngadozas
FROM hallgatok

SELECT COUNT(DISTINCT szaktipus) AS kulonbozoSzaktipusokSzama
FROM hallgatok;

SELECT COUNT(tanuloID) AS tanulokSzama
FROM hallgatok;

SELECT tanuloNev, feleviAtlag, feleviAtlag * 1.15 AS tervezettEvvegiAtlag
FROM hallgatok;

SELECT tanuloNev, evvegiAtlag
FROM hallgatok
WHERE evvegiAtlag - 1 > (SELECT AVG(evvegiAtlag) FROM hallgatok)
ORDER BY evvegiAtlag DESC;

