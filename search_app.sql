-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 26 Kas 2022, 11:54:06
-- Sunucu sürümü: 10.4.25-MariaDB
-- PHP Sürümü: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `search_app`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `searchs`
--

CREATE TABLE `searchs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `searchs`
--

INSERT INTO `searchs` (`id`, `title`, `description`) VALUES
(1, 'Hello', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque, sed'),
(2, 'World', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque, sed'),
(3, 'Hello World', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque, sed'),
(4, 'Turkey', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque, sed');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `searchs`
--
ALTER TABLE `searchs`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `searchs`
--
ALTER TABLE `searchs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
