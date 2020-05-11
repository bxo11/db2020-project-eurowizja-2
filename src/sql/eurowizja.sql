-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 11 Maj 2020, 22:30
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `eurowizja`
--

DELIMITER $$
--
-- Procedury
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `addArtist` (IN `new_name` VARCHAR(20), IN `new_country` VARCHAR(20))  BEGIN
INSERT INTO artists
VALUES (NULL,
        new_name,
        (SELECT countries.ID_country FROM countries WHERE countries.Name=new_country),
        (SELECT points.ID_points FROM points ORDER BY points.ID_points DESC LIMIT 1),
        (SELECT songs.ID_song FROM songs ORDER BY songs.ID_song DESC LIMIT 1));


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteArtist` (IN `artist_name` VARCHAR(20))  BEGIN
DELETE FROM artists
WHERE artists.Name = artist_name;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `randPoints` ()  BEGIN
UPDATE points SET points.Score = FLOOR(RAND() * (1000 + 1));
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `readBestTrio` ()  BEGIN
SELECT artists.Name, points.Score
from (points
INNER JOIN artists on artists.ID_points = points.ID_points)
order by points.Score limit 3;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `readCountries` ()  BEGIN
SELECT countries.Name, count(countries.ID_country) AS Ilosc_uczestnikow FROM countries
RIGHT JOIN artists ON artists.ID_country=countries.ID_country
RIGHT JOIN people ON people.ID_artist=artists.ID_artist
GROUP BY countries.Name
ORDER BY Ilosc_uczestnikow DESC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `readEveryone` ()  BEGIN
SELECT artists.Name,people.Name,people.Surname,songs.Name,songs.Gendre,countries.Name
FROM artists
LEFT JOIN people ON people.ID_artist=artists.ID_artist
LEFT JOIN countries ON countries.ID_country=artists.ID_country
LEFT JOIN songs ON songs.ID_song=artists.ID_song
ORDER BY artists.Name ASC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `readPoints` ()  BEGIN
SELECT artists.Name,points.Score FROM artists LEFT JOIN points ON artists.ID_points=points.ID_points ORDER BY points.Score;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `readSongs` ()  BEGIN
SELECT songs.Gendre, COUNT(songs.Gendre) AS ilosc_piosenek FROM songs
GROUP BY songs.Gendre
ORDER BY ilosc_piosenek DESC;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `readWinner` ()  BEGIN
SELECT artists.Name 
from (points
INNER JOIN artists on artists.ID_points = points.ID_points)
order by points.Score limit 1;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updatePeopleData` (IN `old_name` VARCHAR(20), IN `old_surname` VARCHAR(20), IN `new_name` VARCHAR(20), IN `new_surname` VARCHAR(20))  BEGIN
SET SQL_SAFE_UPDATES=0;
UPDATE people
SET Name = new_name, Surname = new_surname
WHERE (Name = old_name AND Surname = old_surname);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updatePoints` (IN `artistName` VARCHAR(20), IN `new_score` INT)  BEGIN
UPDATE (points
LEFT JOIN artists on artists.ID_points = points.ID_points)
SET points.Score = new_score
WHERE artists.Name = artistName;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateSongName` (IN `artistName` VARCHAR(20), IN `new_song_name` VARCHAR(20), IN `new_gendre` VARCHAR(20))  BEGIN
UPDATE songs
LEFT JOIN artists ON artists.ID_song =songs.ID_song
SET songs.Name = new_song_name,songs.Gendre = new_gendre
WHERE artists.Name = artistName;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `artists`
--

CREATE TABLE `artists` (
  `ID_artist` int(11) NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `ID_country` int(11) NOT NULL,
  `ID_points` int(11) NOT NULL,
  `ID_song` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `artists`
--

INSERT INTO `artists` (`ID_artist`, `Name`, `ID_country`, `ID_points`, `ID_song`) VALUES
(1, 'Michela Pace', 1, 1, 1),
(2, 'Jonida Maliqi', 2, 2, 2),
(3, 'Lake Malawi', 3, 3, 3),
(4, 'S!sters', 4, 4, 4),
(5, 'Siergiej Łazariew', 5, 5, 5),
(6, 'Leonora', 6, 6, 6),
(7, 'Serhat', 7, 7, 7),
(8, 'Tamara Todewska', 8, 8, 8),
(9, 'John Lundvik', 9, 9, 9),
(10, 'Zala Kralj & Gašper', 10, 10, 10),
(11, 'Tamta', 11, 11, 11),
(12, 'Duncan Laurence', 12, 12, 12),
(13, 'Katerine Duska', 13, 13, 13),
(14, 'Kobi Marimi', 14, 14, 14),
(15, 'KEiiNO', 15, 15, 15),
(16, 'Michael Rice', 16, 16, 16),
(17, 'Hatari', 17, 17, 17),
(18, 'Victor Crone', 18, 18, 18),
(19, 'Zena', 19, 19, 19),
(20, 'Chingiz', 20, 20, 20),
(21, 'Bilal Hassani', 21, 21, 21),
(22, 'Mahmood', 22, 22, 22),
(23, 'Nevena Božović', 23, 23, 23),
(24, 'Luca Hänni', 24, 24, 24),
(25, 'Kate Miller-Heidke', 25, 25, 25),
(26, 'Miki', 26, 26, 26);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `countries`
--

CREATE TABLE `countries` (
  `ID_country` int(11) NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `countries`
--

INSERT INTO `countries` (`ID_country`, `Name`) VALUES
(1, 'Malta'),
(2, 'Albania'),
(3, 'Czechy'),
(4, 'Niemcy'),
(5, 'Rosja'),
(6, 'Dania'),
(7, 'San Marino'),
(8, 'Macedonia Północna'),
(9, 'Szwecja'),
(10, 'Słowienia'),
(11, 'Cypr'),
(12, 'Holandia'),
(13, 'Grecja'),
(14, 'Izrael'),
(15, 'Norwegia'),
(16, 'Wielka Brytania'),
(17, 'Islandia'),
(18, 'Estonia'),
(19, 'Białoruś'),
(20, 'Azerbejdżan'),
(21, 'Francja'),
(22, 'Włochy'),
(23, 'Serbia'),
(24, 'Szwajcaria'),
(25, 'Australia'),
(26, 'Hiszpania');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `people`
--

CREATE TABLE `people` (
  `ID_people` int(11) NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Surname` varchar(20) CHARACTER SET utf8 NOT NULL,
  `ID_artist` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `people`
--

INSERT INTO `people` (`ID_people`, `Name`, `Surname`, `ID_artist`) VALUES
(1, 'Michela', 'Pace', 1),
(2, 'Jonida', 'Maliqi', 2),
(3, 'Lake', 'Malawi', 3),
(4, 'Laurita', 'Spinelli', 4),
(5, 'Carlotta', 'Truman', 4),
(6, 'Siergiej', 'Łazariew', 5),
(7, 'Leonora', 'Jepsen', 6),
(8, 'Ahmet', 'Hacıpaşalıoğlu', 7),
(9, 'Tamara', 'Todewska', 8),
(10, 'John', 'Lundvik', 9),
(11, 'Zala', 'Kralj', 10),
(12, 'Gašper', 'Šantl', 10),
(13, 'Tamta', 'Goduadze', 11),
(14, 'Duncan', 'Laurence', 12),
(15, 'Katerine', 'Duska', 13),
(16, 'Kobi', 'Marimi', 14),
(17, 'Tom', 'Hugo', 15),
(18, 'Fred', 'Buljo', 15),
(19, 'Alexandra', 'Rotan', 15),
(20, 'Michael', 'Rice', 16),
(21, 'Klemens', 'Hannigan', 17),
(22, 'Matthias', 'Haraldsson', 17),
(23, 'Einar', 'Stefánsson', 17),
(24, 'Victor', 'Crone', 18),
(25, 'Zinaida', 'Kuprianowicz ', 19),
(27, 'Chingiz', 'Mustafayev', 20),
(28, 'Bilal', 'Hassani', 21),
(29, 'Alessandro', 'Mahmoud', 22),
(30, 'Nevena', 'Božović', 23),
(31, 'Luca', 'Hänni', 24),
(32, 'Kate', 'Miller-Heidke', 25),
(33, 'Miguel', 'Pozo', 26);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `points`
--

CREATE TABLE `points` (
  `ID_points` int(11) NOT NULL,
  `Score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `points`
--

INSERT INTO `points` (`ID_points`, `Score`) VALUES
(1, 981),
(2, 671),
(3, 411),
(4, 41),
(5, 976),
(6, 753),
(7, 839),
(8, 933),
(9, 147),
(10, 941),
(11, 260),
(12, 478),
(13, 611),
(14, 620),
(15, 266),
(16, 474),
(17, 568),
(18, 420),
(19, 394),
(20, 713),
(21, 379),
(22, 757),
(23, 648),
(24, 970),
(25, 905),
(26, 615);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `songs`
--

CREATE TABLE `songs` (
  `ID_song` int(11) NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Gendre` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `songs`
--

INSERT INTO `songs` (`ID_song`, `Name`, `Gendre`) VALUES
(1, 'Chameleon', 'Pop'),
(2, 'Ktheju tokës', 'Pop'),
(3, 'Friend of a Friend', 'Indie Pop'),
(4, 'Sister', 'Pop'),
(5, 'Scream', 'Pop'),
(6, 'Love Is Forever', 'Pop'),
(7, 'Say Na Na Na', 'Euro Disco'),
(8, 'Proud', 'Pop'),
(9, 'Too Late for Love', 'Pop'),
(10, 'Sebi', 'Indie Pop'),
(11, 'Replay', 'Pop'),
(12, 'Arcade', 'Pop'),
(13, 'Better Love', 'Indie Pop'),
(14, 'Home', 'Pop Opera'),
(15, 'Spirit in the Sky', 'Pop'),
(16, 'Bigger than Us', 'Pop'),
(17, 'Hatrið mun sigra', 'Techno'),
(18, 'Storm', 'Pop'),
(19, 'Like It', 'Pop'),
(20, 'Truth', 'Electropop'),
(21, 'Roi', 'Pop'),
(22, 'Soldi', 'Rap'),
(23, 'Kruna', 'Pop'),
(24, 'She Got Me', 'Dance-pop'),
(25, 'Zero Gravity', 'Pop Opera'),
(26, 'La venda', 'Dance-pop');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`ID_artist`),
  ADD KEY `Artist_ibfk_1` (`ID_country`),
  ADD KEY `Artist_ibfk_2` (`ID_points`),
  ADD KEY `Artist_ibfk_3` (`ID_song`);

--
-- Indeksy dla tabeli `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`ID_country`);

--
-- Indeksy dla tabeli `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`ID_people`),
  ADD KEY `People_ibfk_1` (`ID_artist`);

--
-- Indeksy dla tabeli `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`ID_points`);

--
-- Indeksy dla tabeli `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`ID_song`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `artists`
--
ALTER TABLE `artists`
  MODIFY `ID_artist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT dla tabeli `countries`
--
ALTER TABLE `countries`
  MODIFY `ID_country` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT dla tabeli `people`
--
ALTER TABLE `people`
  MODIFY `ID_people` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT dla tabeli `points`
--
ALTER TABLE `points`
  MODIFY `ID_points` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT dla tabeli `songs`
--
ALTER TABLE `songs`
  MODIFY `ID_song` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `artists`
--
ALTER TABLE `artists`
  ADD CONSTRAINT `Artist_ibfk_1` FOREIGN KEY (`ID_country`) REFERENCES `countries` (`ID_country`),
  ADD CONSTRAINT `Artist_ibfk_2` FOREIGN KEY (`ID_points`) REFERENCES `points` (`ID_points`),
  ADD CONSTRAINT `Artist_ibfk_3` FOREIGN KEY (`ID_song`) REFERENCES `songs` (`ID_song`);

--
-- Ograniczenia dla tabeli `people`
--
ALTER TABLE `people`
  ADD CONSTRAINT `People_ibfk_1` FOREIGN KEY (`ID_artist`) REFERENCES `artists` (`ID_artist`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
