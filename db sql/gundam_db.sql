-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2021 at 12:09 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gundam_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `film_id` int(11) NOT NULL,
  `film_name` varchar(200) DEFAULT NULL,
  `film_type` varchar(200) DEFAULT NULL,
  `film_release` varchar(100) DEFAULT NULL,
  `film_timeline` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`film_id`, `film_name`, `film_type`, `film_release`, `film_timeline`) VALUES
(1, 'MS Gundam', 'TV series/Compilation movies', '1979-1980/1981-1982', 'U.C. 0079-80'),
(2, 'MS Zeta gundam', 'TV series/Compilation movies', '1985-1986/2005-2006', 'U.C. 0087-88'),
(3, 'MS Gundam ZZ', 'TV series', '1986–1987', 'U.C. 0088-89'),
(4, 'MS Gundam: Char’s Counterattack', 'Movie', '1988', 'U.C. 0093'),
(5, 'SD Gundam', 'TV series/Movie/Ova', '1988–1989, 1991, 1993/1988, 1990/1993', 'Unknown'),
(6, 'MS Gundam 0080: War in the Pocket', 'Ova', '1989', 'U.C. 0079-80'),
(7, 'MS Gundam F91', 'Ova/Compilation Movie', '1991', 'U.C. 0123'),
(8, 'MS Gundam 0083: Stardust Memory', 'TV Series', '1991-1992/1992', 'U.C. 0083'),
(9, 'MS Victory Gundam', 'TV Series', '1993-1994', 'U.C. 0153'),
(10, 'Mobile Fighter G Gundam', 'TV Series/comp/Ova', '1994–1995', 'F.C. 60'),
(11, 'MS Gundam Wing', 'Ova/Compilation Movie', '1995-1996/1996', 'A.C.195'),
(12, 'After War Gundam X', 'TV Series', '1996', 'A.W. 0015'),
(13, 'MS Gundam: The 08th MS Team', 'OVA/Compilation movie', '1996/1998', 'U.C. 0079'),
(14, 'Gundam Wing: Endless Waltz', 'OVA/Compilation movie', '1997/1998', 'A.C.196'),
(15, 'Turn A Gundam', 'TV series/Compilation movies', '1999-2000/2002', 'C.C. 2345'),
(16, 'Gundam Evolve', 'Animated shorts', '2001–2005', 'Various3'),
(17, 'MS Gundam SEED', 'TV series/Compilation specials', '2002', 'Cosmic Era 0071'),
(18, 'Superior Defender Gundam Force', 'TV seriess', '2002-2003/2004', 'Cosmic Era 0071'),
(19, 'MS Gundam IGLOO: The Hidden One Year War', 'Movies', '2003–2004', 'Neotopia'),
(20, 'MS Gundam SEED Destiny', 'TV series/Compilation specials', '2004', 'U.C. 0079');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `product_release` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_release`) VALUES
(1, 'Nightingale (HGUC)', 785032, 'Jul(Apr. 21, 2021 Pre-order start.)'),
(2, 'Gundam Deathscythe (HGAC)', 168221, 'Late May, 2021'),
(3, 'Xi Gundam VS Penelope Funnel Missile Effect Set (HGUC)', 1876161, 'Late Apr., 2021'),
(4, 'Xi Gundam (HGUC) ', 712466, 'Late Apr., 2021'),
(5, 'Re:Rising Gundam (HGBD:R)', 890583, 'Late Sep., 2020'),
(6, 'Bound-doc (HGUC) (Gundam Model Kits)', 594378, 'Late Oct., 2020'),
(7, '*Bargain Item* Aun [Rize] Armor (HGBD:R)', 61683, 'Late Aug., 2020'),
(8, 'Gundam Animarize (HGBD:R)', 237751, 'Late Aug., 2020'),
(9, 'Gundam Hajiraboshi (HG)', 178313, 'Late Aug., 2020'),
(10, 'RX-78-02 Gundam (Gundam The Origin Ver.) (HG)', 273414, 'TBA');

-- --------------------------------------------------------

--
-- Table structure for table `productmg`
--

CREATE TABLE `productmg` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `product_release` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productmg`
--

INSERT INTO `productmg` (`product_id`, `product_name`, `product_price`, `product_release`) VALUES
(1, 'Mobile Ginn (MG)', 511165, 'Mid Apr., 2021'),
(2, 'Unicorn Gundam Ver.Ka (MGEX)', 2887226, 'TBA'),
(3, 'Wing Gundam Zero EW Ver.Ka (MG)', 653816, 'Late Nov., 2020'),
(4, 'Gundam Kyrios (MG)', 594378, 'Late May, 2020'),
(5, 'FAZZ Ver.Ka (MG)', 1307632, 'Mid Feb., 2020'),
(6, 'Gundam Barbatos (MG)', 534940, 'Mid Dec., 2019'),
(7, 'Gunner Zaku Warrior (Lunamaria Hawke Custom) (MG)', 511165, 'Late Sep., 2019'),
(8, 'Gundam NT-1 Ver.2.0 (MG)', 689479, 'Late Jun., 2019');

-- --------------------------------------------------------

--
-- Table structure for table `productpg`
--

CREATE TABLE `productpg` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `product_release` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productpg`
--

INSERT INTO `productpg` (`product_id`, `product_name`, `product_price`, `product_release`) VALUES
(1, 'PG Unleashed RX-78-2 Gundam (PG)', 3302102, 'Mid Dec., 2020'),
(2, 'Perfect Strike Gundam (PG)', 3136997, 'Late Feb., 2020'),
(3, 'LED Unit for Gundam Exia (PG)', 1757675, 'Late Dec., 2018'),
(4, '00 Gundam Seven Sword/G (PG)', 2886037, 'Mid Dec., 2018'),
(5, 'Gundam Exia (Lighting Model) (PG)', 4015356, 'Late Nov., 2017'),
(6, 'Gundam Exia (PG)', 2259868, 'Late Nov., 2017');

-- --------------------------------------------------------

--
-- Table structure for table `productrg`
--

CREATE TABLE `productrg` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `product_release` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productrg`
--

INSERT INTO `productrg` (`product_id`, `product_name`, `product_price`, `product_release`) VALUES
(1, 'Hi-Nu Gundam (RG)', 505221, 'Sep(Apr. 21, 2021 Pre-order start.)'),
(2, 'Wing Gundam (RG) ', 359268, 'Jun(Feb. 2, 2021 Pre-order start.)'),
(3, 'Mobile Suit Gundam Last Shooting Zeong Effect Set (RG)', 1069881, 'Late Jan., 2021'),
(4, 'Zeong (RG) ', 653816, 'Late Jan., 2021'),
(5, 'Force Impulse Gundam (RG)', 356627, 'Late Apr., 2020'),
(6, 'Nu Gundam Fin-Fannel Effect Set (RG)', 713254, 'Early Dec., 2019'),
(7, 'Nu Gundam (RG)', 499277, 'Early Aug., 2019'),
(8, 'Crossbone Gundam X1 (RG)', 297189, 'Late May, 2019'),
(9, 'Full Armor Unicorn Gundam (RG)', 641928, 'Mid Dec., 2018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`film_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `productmg`
--
ALTER TABLE `productmg`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `productpg`
--
ALTER TABLE `productpg`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `productrg`
--
ALTER TABLE `productrg`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `film_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `productmg`
--
ALTER TABLE `productmg`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `productpg`
--
ALTER TABLE `productpg`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `productrg`
--
ALTER TABLE `productrg`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
