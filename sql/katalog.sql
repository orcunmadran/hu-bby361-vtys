-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 06 Ara 2022, 09:52:03
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `katalog`
--
CREATE DATABASE IF NOT EXISTS `katalog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `katalog`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `eserler`
--

CREATE TABLE `eserler` (
  `eserID` int(11) NOT NULL,
  `eserDamga` timestamp NOT NULL DEFAULT current_timestamp(),
  `eserAdi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `eserDetay` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eserURL` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yazarID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `eserler`
--

INSERT INTO `eserler` (`eserID`, `eserDamga`, `eserAdi`, `eserDetay`, `eserURL`, `yazarID`) VALUES
(7, '2022-12-06 08:42:24', 'Serenad', 'Serenad özet', 'hede...', 2),
(8, '2022-12-06 08:47:27', 'Kar', 'kar özet', 'hödö...', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazarlar`
--

CREATE TABLE `yazarlar` (
  `yazarID` int(11) NOT NULL,
  `yazarAdi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yazarSoyadi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yazarURL` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `yazarlar`
--

INSERT INTO `yazarlar` (`yazarID`, `yazarAdi`, `yazarSoyadi`, `yazarURL`) VALUES
(1, 'Orhan', 'Pamuk', NULL),
(2, 'Zülfü', 'Livaneli', NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `eserler`
--
ALTER TABLE `eserler`
  ADD PRIMARY KEY (`eserID`),
  ADD UNIQUE KEY `eserURL` (`eserURL`);

--
-- Tablo için indeksler `yazarlar`
--
ALTER TABLE `yazarlar`
  ADD PRIMARY KEY (`yazarID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `eserler`
--
ALTER TABLE `eserler`
  MODIFY `eserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `yazarlar`
--
ALTER TABLE `yazarlar`
  MODIFY `yazarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
