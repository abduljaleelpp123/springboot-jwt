/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.4.28-MariaDB : Database - lendo_abdul_home_project
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lendo_abdul_home_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `lendo_abdul_home_project`;

/*Table structure for table `abdul_comments` */

DROP TABLE IF EXISTS `abdul_comments`;

CREATE TABLE `abdul_comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` varchar(90) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `name` varchar(90) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `abdul_comments` */

insert  into `abdul_comments`(`id`,`body`,`email`,`name`,`post_id`) values 
(1,'Doloribus error aut. Magni in ea.','lila_pandey@rutherford.test','Lila Pandey',1),
(2,'Corporis repudiandae sed. Repudiandae voluptas ipsum. Molestiae assumenda aut.','do_khanna_shobhana@crona.test','Shobhana Khanna DO',1);

/*Table structure for table `abdul_post` */

DROP TABLE IF EXISTS `abdul_post`;

CREATE TABLE `abdul_post` (
  `postid` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`postid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `abdul_post` */

insert  into `abdul_post`(`postid`,`body`,`title`,`user_id`) values 
(1,'Viridis aperio tripudio. Vilis patior curis. Quae aedificium aperte. Dedecor benevolentia beatus. Et tyrannus arbustum. Claro nulla tripudio. Et adflicto necessitatibus. Suppono decerno adsuesco. Ultra candidus copiose. Quisquam sum conduco. Caelum video vetus. Qui audacia sordeo. Toties aureus sumo. Bonus vomer et. Cogito aut cunabula. Degusto spargo xiphias. Tamen deleo tum. Tergo laudantium venustas.','Tracto decet vulariter thymbra baiulus triumphus.',1),
(2,'Thymbra canonicus utpote. Tardus quo corona. Voluntarius venio deficio. Laudantium blandior patria. Amplexus ullus aut. Magnam viduata desparatus. Conor cetera absorbeo. Versus demoror vester. Deprimo auris antepono. Clamo nostrum torrens. Usus tres templum. Animi depraedor ulterius. Tego conforto certe. Defessus turbo theca. Adsum asper anser. Varius bellum combibo. Tenetur summopere sopor. Magni crapula velit. Auris decimus triduana.','Abduco stultus creo denuo titulus',1),
(3,'Alias commemoro dolorem. Consequuntur virgo vitiosus. Quis velut cervus. Deprimo cubitum cognatus. Consequatur admoneo verbum. Cupio universe caute. Summa decor ventus. Vito sed adulescens. Utroque aut aduro. Spero tripudio textor. Cedo ea debeo. Aduro itaque ara.','Vacuus aut vir abscido concido vulgus stabilis.',1),
(4,'Verto arbitro acquiro. Apostolus adipiscor doloribus. Deporto bonus denego. Atque via eos. Reiciendis inventore textor. Aestivus consectetur adipisci. Pel accedo convoco. Autus abutor sophismata. Cito tempora desidero. Vito ipsum audax. Vicinus degenero facere. Utpote omnis vulgus. Adinventitias temeritas audeo. Casso conatus beatus. Denego qui aedificium. Cohibeo corrigo cursus. Ago unde quia. Verto damno vir.','Solutio voveo contabesco solium stabilis terebro timidus non.',1);

/*Table structure for table `abdul_roles` */

DROP TABLE IF EXISTS `abdul_roles`;

CREATE TABLE `abdul_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` enum('ROLE_ADMIN','ROLE_USER') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `abdul_roles` */

insert  into `abdul_roles`(`id`,`name`) values 
(1,'ROLE_ADMIN'),
(2,'ROLE_USER');

/*Table structure for table `abdul_user_roles` */

DROP TABLE IF EXISTS `abdul_user_roles`;

CREATE TABLE `abdul_user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK7qrfxoym1qpcc7wyjw2tbjq9y` (`role_id`),
  CONSTRAINT `FK71tk7vk2dpocfmfrci1t4fi3g` FOREIGN KEY (`user_id`) REFERENCES `abdul_users` (`id`),
  CONSTRAINT `FK7qrfxoym1qpcc7wyjw2tbjq9y` FOREIGN KEY (`role_id`) REFERENCES `abdul_roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `abdul_user_roles` */

insert  into `abdul_user_roles`(`user_id`,`role_id`) values 
(1,1),
(2,1),
(3,1);

/*Table structure for table `abdul_users` */

DROP TABLE IF EXISTS `abdul_users`;

CREATE TABLE `abdul_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gender` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKcg4vpbnefm2wtrrfu1xx4q561` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `abdul_users` */

insert  into `abdul_users`(`id`,`gender`,`name`,`password`,`status`,`username`) values 
(1,'male','Abduljaleel','$2a$10$c8Qgnq99mmH.1dGoaJ1rjOjyc99InNV95GXEEXjRhSwMy7FSDBHDS','active','jal@gmal.com'),
(2,'male','bassam','$2a$10$i8WHiJ8iQSw3XrT0AVCfze2Cgt0aD5WU0hwdwdLh0bD47KRQJnnkC','active','bassam@gmail.com'),
(3,'male','dana','$2a$10$Bg6O.QM.O5zUvaONoLjgf.iGHFxLj5MUENPzF6BeLRZKwf1nG3W0W','active','dana@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
