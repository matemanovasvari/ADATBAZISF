-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Sze 12. 14:25
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `etelrendeles`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `etel`
--

CREATE TABLE `etel` (
  `etelID` int(11) NOT NULL,
  `etelnev` varchar(100) NOT NULL,
  `kategoria` varchar(30) NOT NULL,
  `ar` smallint(6) NOT NULL,
  `glutenmentes` binary(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `etel`
--

INSERT INTO `etel` (`etelID`, `etelnev`, `kategoria`, `ar`, `glutenmentes`) VALUES
(1, 'Hideg málnakrémleves', 'leves', 870, 0x00),
(2, 'Kelkáposztafőzelék', 'főzelék', 600, 0x00),
(3, 'Magyaros gombaleves', 'leves', 950, 0x01),
(4, 'Csirkemájjal rakott karfiol csőben sütve', 'készétel', 1300, 0x01),
(5, 'Eperhabos képviselőfánk', 'desszert', 800, 0x00);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendeles`
--

CREATE TABLE `rendeles` (
  `rendelesID` varchar(10) NOT NULL,
  `etelID` int(11) NOT NULL,
  `datum` date NOT NULL,
  `mennyiseg` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `rendeles`
--

INSERT INTO `rendeles` (`rendelesID`, `etelID`, `datum`, `mennyiseg`) VALUES
('R1', 3, '2022-11-08', 2),
('R2', 5, '2022-11-20', 1),
('R3', 1, '2022-12-04', 1),
('R4', 1, '2022-12-06', 2),
('R5', 4, '2022-12-06', 1),
('R6', 5, '2022-12-23', 3),
('R7', 2, '2023-10-01', NULL),
('R8', 3, '0000-00-00', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `etel`
--
ALTER TABLE `etel`
  ADD PRIMARY KEY (`etelID`);

--
-- A tábla indexei `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`rendelesID`),
  ADD KEY `fk_etel` (`etelID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `etel`
--
ALTER TABLE `etel`
  MODIFY `etelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `rendeles`
--
ALTER TABLE `rendeles`
  ADD CONSTRAINT `fk_etel` FOREIGN KEY (`etelID`) REFERENCES `etel` (`etelID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
