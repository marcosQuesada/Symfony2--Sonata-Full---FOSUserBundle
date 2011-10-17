-- phpMyAdmin SQL Dump
-- version 3.3.7deb5build0.10.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 17-10-2011 a las 22:48:43
-- Versión del servidor: 5.1.49
-- Versión de PHP: 5.3.3-1ubuntu9.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sandbox`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fos_user_user`
--

CREATE TABLE IF NOT EXISTS `fos_user_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `username_canonical` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_canonical` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `algorithm` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C560D76192FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_C560D761A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `fos_user_user`
--

INSERT INTO `fos_user_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `algorithm`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `created_at`, `updated_at`) VALUES
(1, 'usuarioadmin', 'usuarioadmin', 'admin@mail.com', 'admin@mail.com', 1, 'sha512', 't62amhhdpbksgw8wk4c4840o0csgock', '749ee2261285d981fd3230e0abc2f6c3637549ac1444d8851b867d1e31f116f490491823f4aceb2d853d3904f24ea20ddcd198a84e96d438bbba720aa64a4acb', NULL, 0, 0, NULL, '2eifzdlrk4sgwcgoocg4o0wss4kw0sw4okoswcgwwgoo8co0o0', NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', 0, NULL, '2011-10-15 20:13:50', '2011-10-15 20:13:50'),
(2, 'admin', 'admin', 'mail@mail.com', 'mail@mail.com', 1, 'sha512', 'ivva53lg84oowoko4w0scscsg0cc0w8', '4c5edc82865c130c507909ba8a17f861c9169f43221a5cc78067b5dee742cdeca23b6720ed6c6a43f02d18328ccbd8202ca72939ee2776e701af863010e3da8d', '2011-10-16 19:05:23', 0, 0, NULL, '56a89kuvd0wskw8w8kskow0o8cggso0ok8c48ko0gwckckgg4g', NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', 0, NULL, '2011-10-15 20:14:01', '2011-10-16 19:05:23'),
(3, 'marcos', 'marcos', 'marcos@mail.com', 'marcos@mail.com', 1, 'sha512', 's3395ouepq84kwwc0wcw0sgkgws8c4o', 'a90bc8a20c31513d5670c3ee149932bb7d067173a9793289be9b2d129bcfc26928bf0a5f01e8302d5e2027620d2b5ca1306e0457c0afdb87b86082b2055d92c4', NULL, 0, 0, NULL, '24dustjfi2sk8cwgkgs4wk8o80kwg8ok88co8wwwooo4oc84oc', NULL, 'a:1:{i:0;s:17:"ROLE_SONATA_ADMIN";}', 0, NULL, '2011-10-15 20:15:57', '2011-10-15 20:16:29');
