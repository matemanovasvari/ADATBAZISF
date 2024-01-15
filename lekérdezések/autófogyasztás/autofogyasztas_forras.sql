CREATE TABLE `autofogyasztas` (
  `autotipus` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `kombinalt_fogyasztas` float NOT NULL,
  `varosi_fogyasztas` float NOT NULL,
  `orszaguti_fogyasztas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `autofogyasztas` (`autotipus`, `kombinalt_fogyasztas`, `varosi_fogyasztas`, `orszaguti_fogyasztas`) VALUES
('Audi A4', 9.83, 9.08, 7.61),
('AUDI A6 2.5 TDI quattro', 7.9, 11.3, 6.2),
('BMW X5', 12.42, 10.73, 9.08),
('KIA Picanto Hatchback 1.1 2 IPD', 4.85, 4.01, 3.51),
('KIA Sorento 2.5 CRDi EX Premium', 7.9, 10, 6.7),
('OPEL Astra 1.6 16V Comfort', 7.1, 9.6, 5.6),
('OPEL Corsa 1.2 16V ECO', 6.5, 8.5, 5.3),
('SKODA Fabia 1.2 12V Classic', 6, 7.7, 5.1),
('SKODA Octavia 1.6 SLX', 7.8, 10.8, 6),
('SUZUKI Swift x 1.6 L', 6.74, 8.74, 7.87),
('SUZUKI VITARA GLX PANORAMA AT', 5.7, 6.7, 5.1),
('Toyota Corolla 1.6 ', 6.1, 7.8, 5.2),
('Toyota Yaris 1.5 L', 6.38, 7.87, 7.15),
('VOLKSWAGEN Golf 2.0 L', 5.63, 7.87, 6.94),
('VOLKSWAGEN Passat 1.6 Comfortline Business ', 7.7, 10.7, 6),
('VOLKSWAGEN Polo 1.4 75 16V', 6.4, 8.8, 5.2);

1. Készítsen "auto" néven egy adatbázist, amely utf8 kódolású és a magyar ékezetes karaktereket használja!

CREATE DATABASE auto CHARACTER SET utf8 COLLATE utf8_hungarian_ci;

2. Importálja az "autofogyasztas" táblát az adatokkal együtt az AUTOFOGYASZTAS_FORRAS.SQL állományból!
(A táblázat néhány autótípus három fogyasztási adatát tartalmazza liter/100 km mértékegységben. A kombinált fogyasztást (átlagfogyasztás), a városban és az országúton mért fogyasztási adatokat.)

3. Készítsen lekérdezést, amely megszámolja, hány autó van a táblában!

SELECT COUNT(autotipus) AS autokMennyisege
FROM autofogyasztas;

4. Készítsen lekérdezést, amely az első 5 legjobb fogyasztású autót listázza az országúti fogyasztást figyelembe véve!
A listában jelenítse meg az autó típusát és az országúti fogyasztását!

SELECT autotipus, orszaguti_fogyasztas
FROM autofogyasztas
ORDER BY orszaguti_fogyasztas LIMIT 5

5. Az összes autó városi fogyasztását figyelembe véve, mennyi az átlagos fogyasztás 100 km-en?

SELECT AVG(varosi_fogyasztas) AS atlagos_fogyasztas
FROM autofogyasztas

6. Listázza az autók típusát, kombinált fogyasztását 100 km-en és azt, hogy egy 450 km-es út megtétele mennyibe kerülne, ha a benzin ára 350 Ft/liter. A számításhoz a kombinált fogyasztás adatát használja! A végeredményt rendezze fizetett összeg szerint!

SELECT autotipus, kombinalt_fogyasztas, kombinalt_fogyasztas * 350 * 4.5 AS ut_ara
FROM autofogyasztas
ORDER BY ut_ara

7. Adja meg minden autónál, hogy az országúti fogyasztás hány százaléka a városi fogyasztásnak! A listában az autó típusa és a kiszámolt százalékérték szerepeljen autótípus szerinti ábécé sorrendben!

SELECT autotipus,  orszaguti_fogyasztas / varosi_fogyasztas * 100
FROM autofogyasztas
ORDER BY autotipus

8. Adja meg milyen két határérték között ingadozik az autók városi fogyasztása!

SELECT MIN(varosi_fogyasztas) AS minimum_hatarertek, MAX(varosi_fogyasztas) AS maximum_hatarertek
FROM autofogyasztas;