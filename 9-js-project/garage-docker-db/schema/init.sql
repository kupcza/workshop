USE db;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Create syntax for TABLE 'garage'
CREATE TABLE `garage` (
    `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `owner_name` varchar(255) NOT NULL,
    `owner_money` int(8) unsigned NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Create syntax for TABLE 'cars'
CREATE TABLE `cars` (
    `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `garage_id` int(11) unsigned NOT NULL,
    `brand` varchar(255) DEFAULT NULL,
    `model` varchar(255) DEFAULT NULL,
    `year` year(4) DEFAULT NULL,
    `price` INT(11) unsigned NOT NULL,
    `created_at` timestamp NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_car_garage` (`garage_id`),
    CONSTRAINT `fk_car_garage` FOREIGN KEY (`garage_id`) REFERENCES `garage` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

COMMIT;