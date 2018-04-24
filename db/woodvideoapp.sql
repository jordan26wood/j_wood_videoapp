-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 21, 2018 at 03:12 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `woodvideoapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL,
  `comments_auth` varchar(125) DEFAULT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comments_movie` int(11) NOT NULL,
  `comments_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kidsmovies`
--

DROP TABLE IF EXISTS `tbl_kidsmovies`;
CREATE TABLE IF NOT EXISTS `tbl_kidsmovies` (
  `kids_id` int(11) NOT NULL AUTO_INCREMENT,
  `kids_thumbnail` varchar(200) NOT NULL DEFAULT '.jpg',
  `kids_title` varchar(200) NOT NULL,
  `kids_year` varchar(50) NOT NULL,
  `kids_desc` varchar(1000) NOT NULL,
  `kids_trailer` varchar(200) NOT NULL,
  `kids_rating` varchar(15) NOT NULL,
  `kids_twitter` varchar(300) NOT NULL,
  `kids_fb` varchar(300) NOT NULL,
  `kids_insta` varchar(300) NOT NULL,
  PRIMARY KEY (`kids_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kidsmovies`
--

INSERT INTO `tbl_kidsmovies` (`kids_id`, `kids_thumbnail`, `kids_title`, `kids_year`, `kids_desc`, `kids_trailer`, `kids_rating`, `kids_twitter`, `kids_fb`, `kids_insta`) VALUES
(1, 'parentsMov2.jpg', 'Toy Story', '1990\'s', 'Woody, a good-hearted cowboy doll who belongs to a young boy named Andy, sees his position as Andy\'s favorite toy jeopardized when his parents buy him a Buzz Lightyear action figure. ', 'toystory.mp4', '9/10', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en'),
(2, 'parentsMov5.jpg', 'Recess', '1990\'s', 'Comic tales of a group of good friends, 4 boys and 2 girls, during breaks in primary school, as they grow up, relate to each other, and have brushes with authority.', 'recess.mp4', '7/10', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en'),
(3, 'kidsMov1.jpg', 'Teenage Mutant Ninja Turtles', '1980\'s', 'This show tells the adventures of four turtles who were transformed into humanoids by a strange ooze and were trained as ninja by a human martial arts master.', 'tmnt.mp4', '10/10', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en'),
(4, 'kidsMov2.jpg', 'Blues Clues', '1990\'s', 'A human host welcomes his preschool audience to the \"Blue\'s Clues\" house, where his animated puppy, Blue, helps find three clues to something they are trying to figure out. ', 'blues.mp4', '9/10', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en'),
(5, 'kidsMov3.jpg', 'The Magic School Bus', '1990\'s', 'Magically transforming into a plane, submarine, spaceship or surfboard, this bus carries Ms. Frizzle and her students on super adventures and teaches them about science.', 'magicschool.mp4', '7/10', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kidsmusic`
--

DROP TABLE IF EXISTS `tbl_kidsmusic`;
CREATE TABLE IF NOT EXISTS `tbl_kidsmusic` (
  `kidsmusic_id` int(11) NOT NULL AUTO_INCREMENT,
  `kidsmusic_title` varchar(200) NOT NULL,
  `kidsmusic_year` varchar(50) NOT NULL,
  `kidsmusic_desc` varchar(1000) NOT NULL,
  `kidsmusic_play` varchar(200) NOT NULL,
  `kidsmusic_rating` varchar(200) NOT NULL,
  `kidsmusic_thumbnail` varchar(200) NOT NULL,
  `kidsmusic_twitter` varchar(300) NOT NULL,
  `kidsmusic_facebook` varchar(300) NOT NULL,
  `kidsmusic_insta` varchar(300) NOT NULL,
  PRIMARY KEY (`kidsmusic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kidsmusic`
--

INSERT INTO `tbl_kidsmusic` (`kidsmusic_id`, `kidsmusic_title`, `kidsmusic_year`, `kidsmusic_desc`, `kidsmusic_play`, `kidsmusic_rating`, `kidsmusic_thumbnail`, `kidsmusic_twitter`, `kidsmusic_facebook`, `kidsmusic_insta`) VALUES
(1, 'Ed Sheeran', '2015', 'Edward Christopher Sheeran, MBE is an English singer, songwriter, guitarist, record producer, and actor. Sheeran was born in Halifax, West Yorkshire, and raised in Framlingham, Suffolk.', 'shape.mp3', '9/10', 'kidsMusic1.jpg', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en'),
(2, 'Post Malone', '2014', 'Post\'s music has been described as a \"melting pot of the country, grunge, hip-hop and R&B\" and Post himself has been described as versatile.His vocal style has been described as laconic.', 'postmalone.mp3', '10/10', 'kidsMusic2.jpg', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en '),
(3, 'Drake', '2010', 'Musical — and Jewish — Upbringing in Toronto. Born Aubrey Drake Graham on October 24, 1986, in Toronto, Canada, Drake grew up with music in his blood. ', 'drake.mp3', '9/10', 'kidsMusic3.jpg', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en'),
(4, 'Justin Bieber', '2009', 'Justin Drew Bieber is a Canadian singer and songwriter. After a talent manager discovered him through his YouTube.', 'justin.mp3', '7/10', 'kidsMusic4.jpg', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en'),
(5, 'Coldplay', '1900\'s', 'are a British rock band formed in 1996 by lead singer and pianist Chris Martin and lead guitarist Jonny Buckland at University College London (UCL). ... Will Champion joined as drummer and backing vocalist, completing the lineup.', 'coldplay.mp3', '7/10', 'kidsMusic5.jpg', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movie_thumbnail` varchar(200) NOT NULL DEFAULT '.jpg',
  `movie_title` varchar(200) NOT NULL,
  `movie_year` varchar(50) NOT NULL,
  `movie_desc` varchar(1000) NOT NULL,
  `movie_trailer` varchar(200) NOT NULL,
  `movie_rating` varchar(15) NOT NULL,
  `movie_twitter` varchar(300) NOT NULL,
  `movie_fb` varchar(300) NOT NULL,
  `movie_insta` varchar(300) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movie_thumbnail`, `movie_title`, `movie_year`, `movie_desc`, `movie_trailer`, `movie_rating`, `movie_twitter`, `movie_fb`, `movie_insta`) VALUES
(1, 'parentsMov1.jpg', 'Fresh Prince of Bel Air', '1990\'s', 'A streetwise, poor young man from Philadelphia is sent by his mother to live with his aunt, uncle and cousins in their Bel-Air mansion.', 'belair.mp4', '8/10', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en'),
(2, 'parentsMov2.jpg', 'Toys Story', '1990\'s', 'Woody, a good-hearted cowboy doll who belongs to a young boy named Andy, sees his position as Andy\'s favorite toy jeopardized when his parents buy him a Buzz Lightyear action figure. ', 'toystory.mp4', '9/10', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en'),
(3, 'parentsMov3.jpg', 'Mary Poppins', '1960\'s', 'When Jane and Michael, the children of the wealthy and uptight Banks family, they are pleasantly surprised by the arrival of the magical Mary Poppins.', 'marypoppins.mp4', '6/10', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en'),
(4, 'parentsMov4.jpg', 'Breakfast Club ', '1980\'s', 'They were five students with nothing in common, faced with spending a Saturday detention together in their high school library. ', 'breakfastclub.mp4', '9/10', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en'),
(5, 'parentsMov5.jpg', 'Recess', '1990\'s', 'Comic tales of a group of good friends, 4 boys and 2 girls, during breaks in primary school, as they grow up, relate to each other, and have brushes with authority.', 'recess.mp4', '7/10', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_music`
--

DROP TABLE IF EXISTS `tbl_music`;
CREATE TABLE IF NOT EXISTS `tbl_music` (
  `music_id` int(11) NOT NULL AUTO_INCREMENT,
  `music_title` varchar(200) NOT NULL,
  `music_year` varchar(50) NOT NULL,
  `music_desc` varchar(1000) NOT NULL,
  `music_play` varchar(200) NOT NULL,
  `music_rating` varchar(15) NOT NULL,
  `music_twitter` varchar(300) NOT NULL,
  `music_fb` varchar(300) NOT NULL,
  `music_insta` varchar(300) NOT NULL,
  `music_thumbnail` varchar(200) NOT NULL,
  PRIMARY KEY (`music_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`music_id`, `music_title`, `music_year`, `music_desc`, `music_play`, `music_rating`, `music_twitter`, `music_fb`, `music_insta`, `music_thumbnail`) VALUES
(1, 'The Beatles', '1950\'s', 'The Beatles were a legendary rock group that formed in Liverpool, England, in 1960, and went on to transform popular music as a creative, highly commercial art form over the next decade.', 'beatles.mp3', '9/10', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en', 'parentsMusic1.jpg'),
(2, 'ACDC', '1970\'s', 'AC/DC are an Australian rock band, formed in Sydney in 1973 by brothers Malcolm and Angus Young. A hard rock/blues rock band, their music has also been called heavy metal, although they refer to themselves as \"a rock and roll band, nothing more, nothing less\".', 'acdc.mp3', '8/10', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en', 'parentsMusic3.jpg'),
(3, 'David Bowie', '1960\'s', 'David Robert Jones, known professionally as David Bowie was an English singer-songwriter and actor. He was a leading figure in popular music for over five decades, acclaimed by critics and other musicians for his innovative work. ', 'davidbowie.mp3', '6.5/10', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en', 'parentsMusic4.jpg'),
(4, 'Led Zeppelin', '1970\'s', 'Led Zeppelin were an English rock band formed in London in 1968. The group consisted of guitarist Jimmy Page, singer Robert Plant, bassist and keyboardist John Paul Jones, and drummer John Bonham. ', 'ledzepp.mp3', '9/10', 'https://twitter.com/?lang=en', 'https://www.instagram.com/?hl=en', 'https://www.instagram.com/?hl=en', 'parentsMusic5.jpg'),
(5, 'Pink Floyd', '1960\'s', 'Pink Floyd were an English rock band formed in London in 1965. They achieved international acclaim with their progressive and psychedelic music.', 'pinkfloyd.mp3', '9/10', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://www.instagram.com/?hl=en', 'parentsMusic2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

DROP TABLE IF EXISTS `tbl_social`;
CREATE TABLE IF NOT EXISTS `tbl_social` (
  `id_social` int(11) NOT NULL AUTO_INCREMENT,
  `twitter_social` varchar(100) NOT NULL,
  `facebook_social` varchar(100) NOT NULL,
  `instagram_social` varchar(100) NOT NULL,
  PRIMARY KEY (`id_social`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
