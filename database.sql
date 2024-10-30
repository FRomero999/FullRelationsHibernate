-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         9.0.0 - MySQL Community Server - GPL
-- SO del servidor:              Linux
-- HeidiSQL Versión:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para ad
CREATE DATABASE IF NOT EXISTS `ad` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ad`;

-- Volcando estructura para tabla ad.Actor
CREATE TABLE IF NOT EXISTS `Actor` (
                                       `id` int NOT NULL AUTO_INCREMENT,
                                       `name` varchar(150) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla ad.Actor: ~20 rows (aproximadamente)
INSERT INTO `Actor` (`id`, `name`) VALUES
                                       (1, 'Leonardo DiCaprio'),
                                       (2, 'Scarlett Johansson'),
                                       (3, 'Brad Pitt'),
                                       (4, 'Tom Hanks'),
                                       (5, 'Meryl Streep'),
                                       (6, 'Robert Downey Jr.'),
                                       (7, 'Denzel Washington'),
                                       (8, 'Jennifer Lawrence'),
                                       (9, 'Morgan Freeman'),
                                       (10, 'Natalie Portman'),
                                       (11, 'Christian Bale'),
                                       (12, 'Keanu Reeves'),
                                       (13, 'Gal Gadot'),
                                       (14, 'Chris Hemsworth'),
                                       (15, 'Emma Stone'),
                                       (16, 'Matt Damon'),
                                       (17, 'Ryan Gosling'),
                                       (18, 'Hugh Jackman'),
                                       (19, 'Anne Hathaway'),
                                       (20, 'Michael B. Jordan');

-- Volcando estructura para tabla ad.Movie
CREATE TABLE IF NOT EXISTS `Movie` (
                                       `id` int NOT NULL AUTO_INCREMENT,
                                       `title` varchar(75) NOT NULL DEFAULT '0',
    `studio_id` int DEFAULT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla ad.Movie: ~13 rows (aproximadamente)
INSERT INTO `Movie` (`id`, `title`, `studio_id`) VALUES
                                                     (1, 'Inception', 1),
                                                     (2, 'Titanic', 2),
                                                     (3, 'The Avengers', 6),
                                                     (4, 'Forrest Gump', 4),
                                                     (5, 'The Wolf of Wall Street', 3),
                                                     (6, 'The Godfather', 2),
                                                     (7, 'Pulp Fiction', 10),
                                                     (8, 'The Dark Knight', 1),
                                                     (9, 'Interstellar', 1),
                                                     (10, 'Joker', 1),
                                                     (11, 'Wonder Woman', 6),
                                                     (12, 'John Wick', 7),
                                                     (13, 'La La Land', 3);

-- Volcando estructura para tabla ad.Movie_Actor
CREATE TABLE IF NOT EXISTS `Movie_Actor` (
                                             `movie_id` int DEFAULT NULL,
                                             `actor_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla ad.Movie_Actor: ~20 rows (aproximadamente)
INSERT INTO `Movie_Actor` (`movie_id`, `actor_id`) VALUES
                                                       (1, 1),
                                                       (2, 1),
                                                       (3, 2),
                                                       (3, 6),
                                                       (4, 4),
                                                       (5, 1),
                                                       (6, 7),
                                                       (7, 8),
                                                       (8, 9),
                                                       (9, 10),
                                                       (10, 11),
                                                       (11, 3),
                                                       (11, 5),
                                                       (12, 2),
                                                       (13, 4),
                                                       (1, 13),
                                                       (2, 12),
                                                       (3, 14),
                                                       (13, 11),
                                                       (9, 10);

-- Volcando estructura para tabla ad.Studio
CREATE TABLE IF NOT EXISTS `Studio` (
                                        `id` int NOT NULL AUTO_INCREMENT,
                                        `name` varchar(75) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla ad.Studio: ~10 rows (aproximadamente)
INSERT INTO `Studio` (`id`, `name`) VALUES
                                        (1, 'Warner Bros.'),
                                        (2, 'Paramount Pictures'),
                                        (3, 'Universal Pictures'),
                                        (4, '20th Century Studios'),
                                        (5, 'Columbia Pictures'),
                                        (6, 'Walt Disney Studios Motion Pictures'),
                                        (7, 'Sony Pictures'),
                                        (8, 'Metro-Goldwyn-Mayer'),
                                        (9, 'Lionsgate Films'),
                                        (10, 'New Line Cinema');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
