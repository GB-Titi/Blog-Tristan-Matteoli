-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 20 avr. 2021 à 11:58
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog-tristan`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_date` datetime DEFAULT NULL,
  `last_update_date` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `picture`, `title`, `content`, `publication_date`, `last_update_date`, `is_published`, `user_id`) VALUES
(9, '607d4aad2a5d1.jpeg', 'Article 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vestibulum quam non arcu ullamcorper sollicitudin. Maecenas enim odio, euismod eu sapien et, pellentesque dictum sem. Nam tempus placerat ex, non bibendum ligula aliquam eu. Quisque eget lectus non leo vulputate sodales et vitae elit. In commodo est ac sapien fermentum, ac dictum mi gravida. Cras eget massa sit amet justo dignissim vestibulum. Duis maximus nec odio sit amet commodo. Praesent bibendum posuere tortor eu faucibus. Aliquam sed risus augue. Sed posuere est ac urna scelerisque semper. Nullam eget tempor ante, in tristique tellus. Maecenas eu felis ut nibh luctus sollicitudin a id ex. Nulla facilisi.\r\n\r\nAenean ut odio quis nisl aliquet mattis. Integer laoreet blandit bibendum. Phasellus ligula purus, congue at cursus quis, condimentum nec sapien. Proin vitae imperdiet risus. Donec laoreet, neque nec finibus sollicitudin, nisl diam faucibus lorem, eu tristique sapien ex vel est. Nulla porttitor odio quis nulla tristique, quis tincidunt lorem ullamcorper. Vestibulum egestas congue rhoncus. Nulla purus augue, ultricies at vulputate eget, aliquam eu purus. In tincidunt suscipit ligula, rhoncus fermentum urna faucibus dictum. Maecenas cursus varius libero, vitae tempus eros rutrum a. Integer convallis enim est, id tristique leo sodales quis.', '2021-04-19 13:44:52', '2021-04-19 13:44:52', 1, 1),
(10, '607e9701bd595.jpeg', 'On adore trackmania', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 10:55:29', '2021-04-20 10:55:29', 1, 1),
(11, '607e970e06271.webp', 'ici c\'est le e-sport', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 10:55:42', '2021-04-20 10:55:42', 1, 1),
(12, '607e971b77aef.jpeg', 'On joue à hearstone ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 10:55:55', '2021-04-20 10:55:55', 1, 1),
(13, '607e972cb51d8.jpeg', 'Un ptit Lol ? Nahh la commu est claquée au sol...', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 10:56:12', '2021-04-20 10:56:12', 1, 1),
(14, '607e9739dc0ea.jpeg', 'Par contre overwatch c\'est aps mal !', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 10:56:25', '2021-04-20 10:56:25', 1, 1),
(15, '607e974bdbee1.jpeg', '<3 <3 <3 Rocket league <3 <3 <3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 10:56:43', '2021-04-20 10:56:43', 1, 1),
(16, '607e9757c716e.jpeg', 'Ca c\'est le jeu de pyj un peu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 10:56:55', '2021-04-20 10:56:55', 1, 1),
(17, '607e976294ac1.jpeg', 'Pas mal j\'avoue..', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 10:57:06', '2021-04-20 10:57:06', 1, 1),
(18, '607e976d75898.jpeg', 'Ca c\'est du jeu de voiture !', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 10:57:17', '2021-04-20 10:57:17', 1, 1),
(19, '607e977c6ba29.webp', 'Cs + overwatch nan ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 10:57:32', '2021-04-20 10:57:32', 1, 1),
(20, '607e97871d33a.jpeg', 'RUSH B MY FRIEND', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 10:57:43', '2021-04-20 10:57:43', 1, 1),
(21, '607e979429335.jpeg', 'MHHHHH GIVE ME MANA', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 10:57:56', '2021-04-20 10:57:56', 1, 1),
(22, '607e979e5af7d.png', 'Salut je suis un coach', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 10:58:06', '2021-04-20 10:58:06', 1, 1),
(23, '607e97a5d032d.webp', 'Bla bla bla', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 10:58:13', '2021-04-20 10:58:13', 1, 1),
(24, '607e99e28f8e9.png', 'beau le logo des ydays nan ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:07:46', '2021-04-20 11:07:46', 1, 1),
(25, '607e99ec82530.jpeg', 'Cover de qualité', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:07:56', '2021-04-20 11:07:56', 1, 1),
(26, '607e99f635b1f.jpeg', 'Beau joystick', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:08:06', '2021-04-20 11:08:06', 1, 1),
(27, '607e99fda3c76.png', 'Borne perso', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:08:13', '2021-04-20 11:08:13', 1, 1),
(28, '607e9a0c364fb.jpeg', 'Waaaaaa joli !', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:08:28', '2021-04-20 11:08:28', 1, 1),
(29, '607e9a16c1d4f.jpeg', 'Rhalala joli retrowave', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:08:38', '2021-04-20 11:08:38', 1, 1),
(30, '607e9a1f3f36b.jpeg', 'DBZZZZZZZZZ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:08:47', '2021-04-20 11:08:47', 1, 1),
(31, '607e9a37c4258.webp', 'Encore une borne', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:09:11', '2021-04-20 11:09:11', 1, 1),
(32, '607e9a41e0e03.jpeg', 'Puis une autre', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:09:21', '2021-04-20 11:09:21', 1, 1),
(33, '607e9a4d3881c.png', 'Ca va être long 40articles..', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:09:33', '2021-04-20 11:09:33', 1, 1),
(34, '607e9a524923d.png', 'Ca va être long 40articles..', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:09:38', '2021-04-20 11:09:38', 1, 1),
(35, '607e9a5400cd0.png', 'Ca va être long 40articles..', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:09:40', '2021-04-20 11:09:40', 1, 1),
(36, '607e9a55a0644.png', 'Ca va être long 40articles..', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:09:41', '2021-04-20 11:09:41', 1, 1),
(37, '607e9a6c741f1.jpeg', 'Tuto peinture', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:10:04', '2021-04-20 11:10:04', 1, 1),
(38, '607e9a6e09744.jpeg', 'Tuto peinture', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:10:06', '2021-04-20 11:10:06', 1, 1),
(39, '607e9a6f80382.jpeg', 'Tuto peinture', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:10:07', '2021-04-20 11:10:07', 1, 1),
(40, '607e9aa3e260c.jpeg', 'Tuto peinture', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:10:59', '2021-04-20 11:10:59', 1, 1),
(41, '607e9aa5a3689.jpeg', 'Tuto peinture', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:11:01', '2021-04-20 11:11:01', 1, 1),
(42, '607e9aa726d6f.jpeg', 'Tuto peinture', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:11:03', '2021-04-20 11:11:03', 1, 1),
(43, '607e9ab38781b.jpeg', 'je suis un ia Rocket', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:11:15', '2021-04-20 11:11:15', 1, 1),
(44, '607e9ab4e0403.jpeg', 'je suis un ia Rocket', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:11:16', '2021-04-20 11:11:16', 1, 1),
(45, '607e9ab6571ca.jpeg', 'je suis un ia Rocket', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:11:18', '2021-04-20 11:11:18', 1, 1),
(46, '607e9ab7b8b50.jpeg', 'je suis un ia Rocket', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:11:19', '2021-04-20 11:11:19', 1, 1),
(47, '607e9ab9305d9.jpeg', 'je suis un ia Rocket', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:11:21', '2021-04-20 11:11:21', 1, 1),
(48, '607e9abac07cf.jpeg', 'je suis un ia Rocket', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:11:22', '2021-04-20 11:11:22', 1, 1),
(49, '607e9ae3b3a3f.webp', 'Jolie image non ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:12:03', '2021-04-20 11:12:03', 1, 1),
(50, '607e9afb76dea.jpeg', 'GIF ME MANA !!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:12:27', '2021-04-20 11:12:27', 1, 1),
(51, '607e9b0d93016.jpeg', 'On joue aux cartes?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:12:45', '2021-04-20 11:12:45', 1, 1),
(52, '607e9b1acfeff.jpeg', 'Ouiii ça c\'est mon jeux <3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:12:58', '2021-04-20 11:12:58', 1, 1),
(53, '607e9b2563846.jpeg', 'Bon jeu de pyj ça...........', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:13:09', '2021-04-20 11:13:09', 1, 1);
INSERT INTO `article` (`id`, `picture`, `title`, `content`, `publication_date`, `last_update_date`, `is_published`, `user_id`) VALUES
(54, '607e9b31f1564.jpeg', 'RUSH B MY FRIEND', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:13:21', '2021-04-20 11:13:21', 1, 1),
(55, '607e9b42ba7ae.jpeg', 'P\'tit cours de peinture ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce iaculis dapibus luctus. Aliquam malesuada et libero sit amet tempus. Aliquam et nunc dapibus, hendrerit sapien nec, varius mauris. Phasellus aliquet maximus dignissim. Sed tincidunt erat at ullamcorper tincidunt. Vestibulum ex orci, porttitor eu sem a, consectetur consectetur libero. Quisque at lorem suscipit eros volutpat aliquam. Phasellus sed dolor vestibulum, dictum felis et, hendrerit nisi. Nullam rutrum eros viverra sodales dictum. Morbi pulvinar laoreet velit ac fringilla. In hac habitasse platea dictumst.\r\n\r\nPraesent ex lorem, ultricies in laoreet eget, tempus eget massa. Suspendisse velit lacus, placerat id viverra eget, laoreet nec justo. Integer lobortis, eros vel tincidunt tempus, ligula nulla tempor sapien, non auctor neque neque vel nunc. Integer in varius turpis, vel dapibus libero. Curabitur lacinia suscipit mauris ut lacinia. Vestibulum condimentum ultricies luctus. Nulla eu malesuada quam.', '2021-04-20 11:13:38', '2021-04-20 11:13:38', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `article_category`
--

CREATE TABLE `article_category` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `label`) VALUES
(1, 'php'),
(2, 'HTML'),
(3, 'CSS'),
(4, 'JavaScript');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `article_id` int(11) NOT NULL,
  `username_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `content`, `active`, `created_at`, `article_id`, `username_id`) VALUES
(8, 'Super article', 1, '2021-04-19 14:46:05', 9, 1),
(9, 'J\'aime bien les warhammer', 0, '2021-04-19 15:18:26', 9, 1),
(10, 'J\'aime bien les warhammer', 0, '2021-04-19 15:18:44', 9, 1),
(11, 'J\'aime bien les warhammer', 0, '2021-04-19 15:24:03', 9, 1),
(12, 'J\'aime bien les warhammer', 0, '2021-04-19 15:25:11', 9, 1),
(13, 'J\'aime bien les warhammer', 0, '2021-04-19 15:26:39', 9, 1),
(14, 'Super article vraiment !', 1, '2021-04-19 15:26:49', 9, 1),
(15, 'J\'adore vraiment les Warhammer !!!!', 1, '2021-04-20 11:58:18', 55, 1);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210419083014', '2021-04-19 10:31:03', 75);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `username`, `is_verified`) VALUES
(1, 'tristanmatteoli@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$aFdwak1OUnpXZmxwdGRpRQ$LuNwSYNXoapZ6QqJJC/fEYHkwjKicE4T3uobAyus0A4', 'GrosBoule', 0),
(2, 'test@test.fr', '[]', '$argon2id$v=19$m=65536,t=4,p=1$dm5ueXlHLlkzRlJGUlQ3ZQ$vwAijMZlD2aKPADMgSF1u9A1ld7+bdi+5xs5t3VfiBY', 'Test', 0),
(3, 'admin@admin.ex', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$eUxJMUhDS0VGTk9kREcxOA$NaUdga4cuNdYWZqZQ729RXZH6pcu6ypx4bh9QYdMBrM', 'Admin', 0),
(4, 'newuser@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$OW9Rd1VJVzVmUE4xaXhWZA$B9ebCWp/Op9IgyQtYiuncEUkz0GoBSpdWYtkisP9EiY', 'NewUser', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E66A76ED395` (`user_id`);

--
-- Index pour la table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`article_id`,`category_id`),
  ADD KEY `IDX_53A4EDAA7294869C` (`article_id`),
  ADD KEY `IDX_53A4EDAA12469DE2` (`category_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D9BEC0C47294869C` (`article_id`),
  ADD KEY `IDX_D9BEC0C4ED766068` (`username_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `FK_53A4EDAA12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_53A4EDAA7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `FK_D9BEC0C47294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `FK_D9BEC0C4ED766068` FOREIGN KEY (`username_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
