-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 28-11-2011 a las 16:52:14
-- Versión del servidor: 5.5.9
-- Versión de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;



--
-- Base de datos: `integrador`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `billitems`
--

DROP TABLE IF EXISTS `billitems`;
CREATE TABLE `billitems` (
  `idBillitem` int(11) NOT NULL AUTO_INCREMENT,
  `idDish` int(11) NOT NULL,
  `idBill` int(11) NOT NULL,
  PRIMARY KEY (`idBillitem`),
  KEY `idDish` (`idDish`),
  KEY `idBill` (`idBill`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2185 ;

--
-- Volcar la base de datos para la tabla `billitems`
--

INSERT INTO `billitems` VALUES(16, 7, 10);
INSERT INTO `billitems` VALUES(17, 7, 10);
INSERT INTO `billitems` VALUES(18, 7, 10);
INSERT INTO `billitems` VALUES(19, 7, 10);
INSERT INTO `billitems` VALUES(20, 7, 10);
INSERT INTO `billitems` VALUES(21, 7, 10);
INSERT INTO `billitems` VALUES(22, 7, 10);
INSERT INTO `billitems` VALUES(23, 7, 10);
INSERT INTO `billitems` VALUES(24, 7, 10);
INSERT INTO `billitems` VALUES(25, 7, 10);
INSERT INTO `billitems` VALUES(26, 7, 10);
INSERT INTO `billitems` VALUES(27, 7, 10);
INSERT INTO `billitems` VALUES(28, 7, 10);
INSERT INTO `billitems` VALUES(29, 4, 10);
INSERT INTO `billitems` VALUES(30, 4, 10);
INSERT INTO `billitems` VALUES(31, 4, 10);
INSERT INTO `billitems` VALUES(32, 4, 10);
INSERT INTO `billitems` VALUES(33, 4, 10);
INSERT INTO `billitems` VALUES(34, 4, 10);
INSERT INTO `billitems` VALUES(35, 4, 10);
INSERT INTO `billitems` VALUES(36, 4, 10);
INSERT INTO `billitems` VALUES(37, 4, 10);
INSERT INTO `billitems` VALUES(38, 4, 10);
INSERT INTO `billitems` VALUES(39, 4, 10);
INSERT INTO `billitems` VALUES(40, 4, 10);
INSERT INTO `billitems` VALUES(41, 4, 10);
INSERT INTO `billitems` VALUES(42, 4, 10);
INSERT INTO `billitems` VALUES(43, 6, 10);
INSERT INTO `billitems` VALUES(44, 6, 10);
INSERT INTO `billitems` VALUES(45, 6, 10);
INSERT INTO `billitems` VALUES(46, 6, 10);
INSERT INTO `billitems` VALUES(47, 6, 10);
INSERT INTO `billitems` VALUES(48, 6, 10);
INSERT INTO `billitems` VALUES(49, 6, 10);
INSERT INTO `billitems` VALUES(50, 6, 10);
INSERT INTO `billitems` VALUES(51, 6, 10);
INSERT INTO `billitems` VALUES(52, 6, 10);
INSERT INTO `billitems` VALUES(53, 6, 10);
INSERT INTO `billitems` VALUES(54, 6, 10);
INSERT INTO `billitems` VALUES(55, 1, 11);
INSERT INTO `billitems` VALUES(56, 1, 11);
INSERT INTO `billitems` VALUES(57, 1, 11);
INSERT INTO `billitems` VALUES(58, 1, 11);
INSERT INTO `billitems` VALUES(59, 1, 11);
INSERT INTO `billitems` VALUES(60, 1, 11);
INSERT INTO `billitems` VALUES(61, 1, 11);
INSERT INTO `billitems` VALUES(62, 1, 11);
INSERT INTO `billitems` VALUES(63, 1, 11);
INSERT INTO `billitems` VALUES(64, 1, 11);
INSERT INTO `billitems` VALUES(65, 1, 11);
INSERT INTO `billitems` VALUES(66, 1, 11);
INSERT INTO `billitems` VALUES(67, 1, 11);
INSERT INTO `billitems` VALUES(68, 1, 11);
INSERT INTO `billitems` VALUES(69, 1, 11);
INSERT INTO `billitems` VALUES(70, 1, 11);
INSERT INTO `billitems` VALUES(71, 1, 11);
INSERT INTO `billitems` VALUES(72, 1, 11);
INSERT INTO `billitems` VALUES(73, 1, 11);
INSERT INTO `billitems` VALUES(74, 1, 11);
INSERT INTO `billitems` VALUES(75, 1, 11);
INSERT INTO `billitems` VALUES(76, 1, 11);
INSERT INTO `billitems` VALUES(77, 1, 11);
INSERT INTO `billitems` VALUES(78, 1, 11);
INSERT INTO `billitems` VALUES(79, 1, 11);
INSERT INTO `billitems` VALUES(80, 1, 11);
INSERT INTO `billitems` VALUES(81, 1, 11);
INSERT INTO `billitems` VALUES(82, 1, 11);
INSERT INTO `billitems` VALUES(83, 1, 11);
INSERT INTO `billitems` VALUES(84, 1, 11);
INSERT INTO `billitems` VALUES(85, 1, 11);
INSERT INTO `billitems` VALUES(86, 1, 11);
INSERT INTO `billitems` VALUES(87, 1, 11);
INSERT INTO `billitems` VALUES(88, 1, 11);
INSERT INTO `billitems` VALUES(89, 1, 11);
INSERT INTO `billitems` VALUES(90, 1, 11);
INSERT INTO `billitems` VALUES(91, 1, 11);
INSERT INTO `billitems` VALUES(92, 1, 11);
INSERT INTO `billitems` VALUES(93, 1, 11);
INSERT INTO `billitems` VALUES(94, 1, 11);
INSERT INTO `billitems` VALUES(95, 1, 11);
INSERT INTO `billitems` VALUES(96, 1, 11);
INSERT INTO `billitems` VALUES(97, 1, 11);
INSERT INTO `billitems` VALUES(98, 1, 11);
INSERT INTO `billitems` VALUES(99, 1, 11);
INSERT INTO `billitems` VALUES(100, 1, 11);
INSERT INTO `billitems` VALUES(101, 1, 11);
INSERT INTO `billitems` VALUES(102, 1, 11);
INSERT INTO `billitems` VALUES(103, 1, 11);
INSERT INTO `billitems` VALUES(104, 1, 11);
INSERT INTO `billitems` VALUES(105, 1, 11);
INSERT INTO `billitems` VALUES(106, 1, 11);
INSERT INTO `billitems` VALUES(107, 1, 11);
INSERT INTO `billitems` VALUES(108, 1, 11);
INSERT INTO `billitems` VALUES(109, 1, 11);
INSERT INTO `billitems` VALUES(110, 1, 11);
INSERT INTO `billitems` VALUES(111, 1, 11);
INSERT INTO `billitems` VALUES(112, 1, 11);
INSERT INTO `billitems` VALUES(113, 1, 11);
INSERT INTO `billitems` VALUES(114, 1, 11);
INSERT INTO `billitems` VALUES(115, 1, 11);
INSERT INTO `billitems` VALUES(116, 1, 11);
INSERT INTO `billitems` VALUES(117, 1, 11);
INSERT INTO `billitems` VALUES(118, 1, 11);
INSERT INTO `billitems` VALUES(119, 1, 11);
INSERT INTO `billitems` VALUES(120, 1, 11);
INSERT INTO `billitems` VALUES(121, 1, 11);
INSERT INTO `billitems` VALUES(122, 1, 11);
INSERT INTO `billitems` VALUES(123, 1, 11);
INSERT INTO `billitems` VALUES(124, 1, 11);
INSERT INTO `billitems` VALUES(125, 1, 11);
INSERT INTO `billitems` VALUES(126, 1, 11);
INSERT INTO `billitems` VALUES(127, 1, 11);
INSERT INTO `billitems` VALUES(128, 1, 11);
INSERT INTO `billitems` VALUES(129, 1, 11);
INSERT INTO `billitems` VALUES(130, 1, 11);
INSERT INTO `billitems` VALUES(131, 1, 11);
INSERT INTO `billitems` VALUES(132, 1, 11);
INSERT INTO `billitems` VALUES(133, 1, 11);
INSERT INTO `billitems` VALUES(134, 1, 11);
INSERT INTO `billitems` VALUES(135, 1, 11);
INSERT INTO `billitems` VALUES(136, 1, 11);
INSERT INTO `billitems` VALUES(137, 1, 11);
INSERT INTO `billitems` VALUES(138, 1, 11);
INSERT INTO `billitems` VALUES(139, 1, 11);
INSERT INTO `billitems` VALUES(140, 1, 11);
INSERT INTO `billitems` VALUES(141, 1, 11);
INSERT INTO `billitems` VALUES(142, 1, 11);
INSERT INTO `billitems` VALUES(143, 1, 11);
INSERT INTO `billitems` VALUES(144, 1, 11);
INSERT INTO `billitems` VALUES(145, 1, 11);
INSERT INTO `billitems` VALUES(146, 1, 11);
INSERT INTO `billitems` VALUES(147, 1, 11);
INSERT INTO `billitems` VALUES(148, 1, 11);
INSERT INTO `billitems` VALUES(149, 1, 11);
INSERT INTO `billitems` VALUES(150, 1, 11);
INSERT INTO `billitems` VALUES(151, 1, 11);
INSERT INTO `billitems` VALUES(152, 1, 11);
INSERT INTO `billitems` VALUES(153, 1, 11);
INSERT INTO `billitems` VALUES(154, 1, 11);
INSERT INTO `billitems` VALUES(155, 1, 11);
INSERT INTO `billitems` VALUES(156, 1, 11);
INSERT INTO `billitems` VALUES(157, 1, 11);
INSERT INTO `billitems` VALUES(158, 1, 11);
INSERT INTO `billitems` VALUES(159, 1, 11);
INSERT INTO `billitems` VALUES(160, 1, 11);
INSERT INTO `billitems` VALUES(161, 1, 11);
INSERT INTO `billitems` VALUES(162, 1, 11);
INSERT INTO `billitems` VALUES(163, 1, 11);
INSERT INTO `billitems` VALUES(164, 1, 11);
INSERT INTO `billitems` VALUES(165, 1, 11);
INSERT INTO `billitems` VALUES(166, 1, 11);
INSERT INTO `billitems` VALUES(167, 1, 11);
INSERT INTO `billitems` VALUES(168, 1, 11);
INSERT INTO `billitems` VALUES(169, 1, 11);
INSERT INTO `billitems` VALUES(170, 1, 11);
INSERT INTO `billitems` VALUES(171, 1, 11);
INSERT INTO `billitems` VALUES(172, 1, 11);
INSERT INTO `billitems` VALUES(173, 1, 11);
INSERT INTO `billitems` VALUES(174, 1, 11);
INSERT INTO `billitems` VALUES(175, 1, 11);
INSERT INTO `billitems` VALUES(176, 1, 11);
INSERT INTO `billitems` VALUES(177, 1, 11);
INSERT INTO `billitems` VALUES(178, 5, 11);
INSERT INTO `billitems` VALUES(179, 5, 11);
INSERT INTO `billitems` VALUES(180, 5, 11);
INSERT INTO `billitems` VALUES(181, 5, 11);
INSERT INTO `billitems` VALUES(182, 5, 11);
INSERT INTO `billitems` VALUES(183, 5, 11);
INSERT INTO `billitems` VALUES(184, 5, 11);
INSERT INTO `billitems` VALUES(185, 5, 11);
INSERT INTO `billitems` VALUES(186, 5, 11);
INSERT INTO `billitems` VALUES(187, 5, 11);
INSERT INTO `billitems` VALUES(188, 5, 11);
INSERT INTO `billitems` VALUES(189, 5, 11);
INSERT INTO `billitems` VALUES(190, 5, 11);
INSERT INTO `billitems` VALUES(191, 5, 11);
INSERT INTO `billitems` VALUES(192, 5, 11);
INSERT INTO `billitems` VALUES(193, 5, 11);
INSERT INTO `billitems` VALUES(194, 5, 11);
INSERT INTO `billitems` VALUES(195, 5, 11);
INSERT INTO `billitems` VALUES(196, 5, 11);
INSERT INTO `billitems` VALUES(197, 5, 11);
INSERT INTO `billitems` VALUES(198, 5, 11);
INSERT INTO `billitems` VALUES(199, 5, 11);
INSERT INTO `billitems` VALUES(200, 5, 11);
INSERT INTO `billitems` VALUES(201, 5, 11);
INSERT INTO `billitems` VALUES(202, 5, 11);
INSERT INTO `billitems` VALUES(203, 5, 11);
INSERT INTO `billitems` VALUES(204, 5, 11);
INSERT INTO `billitems` VALUES(205, 5, 11);
INSERT INTO `billitems` VALUES(206, 5, 11);
INSERT INTO `billitems` VALUES(207, 5, 11);
INSERT INTO `billitems` VALUES(208, 5, 11);
INSERT INTO `billitems` VALUES(209, 5, 11);
INSERT INTO `billitems` VALUES(210, 5, 11);
INSERT INTO `billitems` VALUES(211, 5, 11);
INSERT INTO `billitems` VALUES(212, 5, 11);
INSERT INTO `billitems` VALUES(213, 5, 11);
INSERT INTO `billitems` VALUES(214, 5, 11);
INSERT INTO `billitems` VALUES(215, 5, 11);
INSERT INTO `billitems` VALUES(216, 5, 11);
INSERT INTO `billitems` VALUES(217, 5, 11);
INSERT INTO `billitems` VALUES(218, 5, 11);
INSERT INTO `billitems` VALUES(219, 5, 11);
INSERT INTO `billitems` VALUES(220, 5, 11);
INSERT INTO `billitems` VALUES(221, 5, 11);
INSERT INTO `billitems` VALUES(222, 5, 11);
INSERT INTO `billitems` VALUES(223, 5, 11);
INSERT INTO `billitems` VALUES(224, 5, 11);
INSERT INTO `billitems` VALUES(225, 5, 11);
INSERT INTO `billitems` VALUES(226, 5, 11);
INSERT INTO `billitems` VALUES(227, 5, 11);
INSERT INTO `billitems` VALUES(228, 5, 11);
INSERT INTO `billitems` VALUES(229, 5, 11);
INSERT INTO `billitems` VALUES(230, 5, 11);
INSERT INTO `billitems` VALUES(231, 5, 11);
INSERT INTO `billitems` VALUES(232, 5, 11);
INSERT INTO `billitems` VALUES(233, 5, 11);
INSERT INTO `billitems` VALUES(234, 5, 11);
INSERT INTO `billitems` VALUES(235, 5, 11);
INSERT INTO `billitems` VALUES(236, 5, 11);
INSERT INTO `billitems` VALUES(237, 5, 11);
INSERT INTO `billitems` VALUES(238, 5, 11);
INSERT INTO `billitems` VALUES(239, 5, 11);
INSERT INTO `billitems` VALUES(240, 5, 11);
INSERT INTO `billitems` VALUES(241, 5, 11);
INSERT INTO `billitems` VALUES(242, 5, 11);
INSERT INTO `billitems` VALUES(243, 5, 11);
INSERT INTO `billitems` VALUES(244, 5, 11);
INSERT INTO `billitems` VALUES(245, 5, 11);
INSERT INTO `billitems` VALUES(246, 5, 11);
INSERT INTO `billitems` VALUES(247, 5, 11);
INSERT INTO `billitems` VALUES(248, 5, 11);
INSERT INTO `billitems` VALUES(249, 5, 11);
INSERT INTO `billitems` VALUES(250, 5, 11);
INSERT INTO `billitems` VALUES(251, 5, 11);
INSERT INTO `billitems` VALUES(252, 5, 11);
INSERT INTO `billitems` VALUES(253, 5, 11);
INSERT INTO `billitems` VALUES(254, 5, 11);
INSERT INTO `billitems` VALUES(255, 5, 11);
INSERT INTO `billitems` VALUES(256, 5, 11);
INSERT INTO `billitems` VALUES(257, 5, 11);
INSERT INTO `billitems` VALUES(258, 5, 11);
INSERT INTO `billitems` VALUES(259, 5, 11);
INSERT INTO `billitems` VALUES(260, 5, 11);
INSERT INTO `billitems` VALUES(261, 5, 11);
INSERT INTO `billitems` VALUES(262, 5, 11);
INSERT INTO `billitems` VALUES(263, 5, 11);
INSERT INTO `billitems` VALUES(264, 5, 11);
INSERT INTO `billitems` VALUES(265, 5, 11);
INSERT INTO `billitems` VALUES(266, 5, 11);
INSERT INTO `billitems` VALUES(267, 5, 11);
INSERT INTO `billitems` VALUES(268, 5, 11);
INSERT INTO `billitems` VALUES(269, 5, 11);
INSERT INTO `billitems` VALUES(270, 5, 11);
INSERT INTO `billitems` VALUES(271, 5, 11);
INSERT INTO `billitems` VALUES(272, 5, 11);
INSERT INTO `billitems` VALUES(273, 5, 11);
INSERT INTO `billitems` VALUES(274, 5, 11);
INSERT INTO `billitems` VALUES(275, 5, 11);
INSERT INTO `billitems` VALUES(276, 5, 11);
INSERT INTO `billitems` VALUES(277, 5, 11);
INSERT INTO `billitems` VALUES(278, 5, 11);
INSERT INTO `billitems` VALUES(279, 5, 11);
INSERT INTO `billitems` VALUES(280, 5, 11);
INSERT INTO `billitems` VALUES(281, 5, 11);
INSERT INTO `billitems` VALUES(282, 5, 11);
INSERT INTO `billitems` VALUES(283, 5, 11);
INSERT INTO `billitems` VALUES(284, 5, 11);
INSERT INTO `billitems` VALUES(285, 5, 11);
INSERT INTO `billitems` VALUES(286, 5, 11);
INSERT INTO `billitems` VALUES(287, 5, 11);
INSERT INTO `billitems` VALUES(288, 5, 11);
INSERT INTO `billitems` VALUES(289, 5, 11);
INSERT INTO `billitems` VALUES(290, 5, 11);
INSERT INTO `billitems` VALUES(291, 5, 11);
INSERT INTO `billitems` VALUES(292, 5, 11);
INSERT INTO `billitems` VALUES(293, 5, 11);
INSERT INTO `billitems` VALUES(294, 5, 11);
INSERT INTO `billitems` VALUES(295, 5, 11);
INSERT INTO `billitems` VALUES(296, 5, 11);
INSERT INTO `billitems` VALUES(297, 5, 11);
INSERT INTO `billitems` VALUES(298, 5, 11);
INSERT INTO `billitems` VALUES(299, 5, 11);
INSERT INTO `billitems` VALUES(300, 5, 11);
INSERT INTO `billitems` VALUES(301, 5, 11);
INSERT INTO `billitems` VALUES(302, 5, 11);
INSERT INTO `billitems` VALUES(303, 5, 11);
INSERT INTO `billitems` VALUES(304, 5, 11);
INSERT INTO `billitems` VALUES(305, 5, 11);
INSERT INTO `billitems` VALUES(306, 5, 11);
INSERT INTO `billitems` VALUES(307, 5, 11);
INSERT INTO `billitems` VALUES(308, 5, 11);
INSERT INTO `billitems` VALUES(309, 5, 11);
INSERT INTO `billitems` VALUES(310, 5, 11);
INSERT INTO `billitems` VALUES(311, 5, 11);
INSERT INTO `billitems` VALUES(312, 5, 11);
INSERT INTO `billitems` VALUES(313, 5, 11);
INSERT INTO `billitems` VALUES(314, 5, 11);
INSERT INTO `billitems` VALUES(315, 5, 11);
INSERT INTO `billitems` VALUES(316, 5, 11);
INSERT INTO `billitems` VALUES(317, 5, 11);
INSERT INTO `billitems` VALUES(318, 5, 11);
INSERT INTO `billitems` VALUES(319, 5, 11);
INSERT INTO `billitems` VALUES(320, 5, 11);
INSERT INTO `billitems` VALUES(321, 5, 11);
INSERT INTO `billitems` VALUES(322, 5, 11);
INSERT INTO `billitems` VALUES(323, 5, 11);
INSERT INTO `billitems` VALUES(324, 5, 11);
INSERT INTO `billitems` VALUES(325, 5, 11);
INSERT INTO `billitems` VALUES(326, 5, 11);
INSERT INTO `billitems` VALUES(327, 5, 11);
INSERT INTO `billitems` VALUES(328, 5, 11);
INSERT INTO `billitems` VALUES(329, 5, 11);
INSERT INTO `billitems` VALUES(330, 5, 11);
INSERT INTO `billitems` VALUES(331, 5, 11);
INSERT INTO `billitems` VALUES(332, 5, 11);
INSERT INTO `billitems` VALUES(333, 5, 11);
INSERT INTO `billitems` VALUES(334, 5, 11);
INSERT INTO `billitems` VALUES(335, 5, 11);
INSERT INTO `billitems` VALUES(336, 5, 11);
INSERT INTO `billitems` VALUES(337, 5, 11);
INSERT INTO `billitems` VALUES(338, 5, 11);
INSERT INTO `billitems` VALUES(339, 5, 11);
INSERT INTO `billitems` VALUES(340, 5, 11);
INSERT INTO `billitems` VALUES(341, 5, 11);
INSERT INTO `billitems` VALUES(342, 5, 11);
INSERT INTO `billitems` VALUES(343, 5, 11);
INSERT INTO `billitems` VALUES(344, 5, 11);
INSERT INTO `billitems` VALUES(345, 5, 11);
INSERT INTO `billitems` VALUES(346, 5, 11);
INSERT INTO `billitems` VALUES(347, 5, 11);
INSERT INTO `billitems` VALUES(348, 5, 11);
INSERT INTO `billitems` VALUES(349, 5, 11);
INSERT INTO `billitems` VALUES(350, 5, 11);
INSERT INTO `billitems` VALUES(351, 5, 11);
INSERT INTO `billitems` VALUES(352, 5, 11);
INSERT INTO `billitems` VALUES(353, 5, 11);
INSERT INTO `billitems` VALUES(354, 5, 11);
INSERT INTO `billitems` VALUES(355, 5, 11);
INSERT INTO `billitems` VALUES(356, 5, 11);
INSERT INTO `billitems` VALUES(357, 5, 11);
INSERT INTO `billitems` VALUES(358, 5, 11);
INSERT INTO `billitems` VALUES(359, 5, 11);
INSERT INTO `billitems` VALUES(360, 5, 11);
INSERT INTO `billitems` VALUES(361, 5, 11);
INSERT INTO `billitems` VALUES(362, 5, 11);
INSERT INTO `billitems` VALUES(363, 5, 11);
INSERT INTO `billitems` VALUES(364, 5, 11);
INSERT INTO `billitems` VALUES(365, 5, 11);
INSERT INTO `billitems` VALUES(366, 5, 11);
INSERT INTO `billitems` VALUES(367, 5, 11);
INSERT INTO `billitems` VALUES(368, 5, 11);
INSERT INTO `billitems` VALUES(369, 5, 11);
INSERT INTO `billitems` VALUES(370, 5, 11);
INSERT INTO `billitems` VALUES(371, 5, 11);
INSERT INTO `billitems` VALUES(372, 5, 11);
INSERT INTO `billitems` VALUES(373, 5, 11);
INSERT INTO `billitems` VALUES(374, 5, 11);
INSERT INTO `billitems` VALUES(375, 5, 11);
INSERT INTO `billitems` VALUES(376, 5, 11);
INSERT INTO `billitems` VALUES(377, 5, 11);
INSERT INTO `billitems` VALUES(378, 5, 11);
INSERT INTO `billitems` VALUES(379, 5, 11);
INSERT INTO `billitems` VALUES(380, 5, 11);
INSERT INTO `billitems` VALUES(381, 5, 11);
INSERT INTO `billitems` VALUES(382, 5, 11);
INSERT INTO `billitems` VALUES(383, 5, 11);
INSERT INTO `billitems` VALUES(384, 5, 11);
INSERT INTO `billitems` VALUES(385, 5, 11);
INSERT INTO `billitems` VALUES(386, 5, 11);
INSERT INTO `billitems` VALUES(387, 5, 11);
INSERT INTO `billitems` VALUES(388, 5, 11);
INSERT INTO `billitems` VALUES(389, 5, 11);
INSERT INTO `billitems` VALUES(390, 5, 11);
INSERT INTO `billitems` VALUES(391, 5, 11);
INSERT INTO `billitems` VALUES(392, 5, 11);
INSERT INTO `billitems` VALUES(393, 5, 11);
INSERT INTO `billitems` VALUES(394, 5, 11);
INSERT INTO `billitems` VALUES(395, 5, 11);
INSERT INTO `billitems` VALUES(396, 5, 11);
INSERT INTO `billitems` VALUES(397, 5, 11);
INSERT INTO `billitems` VALUES(398, 5, 11);
INSERT INTO `billitems` VALUES(399, 5, 11);
INSERT INTO `billitems` VALUES(400, 5, 11);
INSERT INTO `billitems` VALUES(401, 5, 11);
INSERT INTO `billitems` VALUES(402, 5, 11);
INSERT INTO `billitems` VALUES(403, 5, 11);
INSERT INTO `billitems` VALUES(404, 5, 11);
INSERT INTO `billitems` VALUES(405, 5, 11);
INSERT INTO `billitems` VALUES(406, 5, 11);
INSERT INTO `billitems` VALUES(407, 5, 11);
INSERT INTO `billitems` VALUES(408, 5, 11);
INSERT INTO `billitems` VALUES(409, 5, 11);
INSERT INTO `billitems` VALUES(410, 5, 11);
INSERT INTO `billitems` VALUES(411, 5, 11);
INSERT INTO `billitems` VALUES(412, 5, 11);
INSERT INTO `billitems` VALUES(413, 5, 11);
INSERT INTO `billitems` VALUES(414, 5, 11);
INSERT INTO `billitems` VALUES(415, 5, 11);
INSERT INTO `billitems` VALUES(416, 5, 11);
INSERT INTO `billitems` VALUES(417, 5, 11);
INSERT INTO `billitems` VALUES(418, 5, 11);
INSERT INTO `billitems` VALUES(419, 5, 11);
INSERT INTO `billitems` VALUES(420, 5, 11);
INSERT INTO `billitems` VALUES(421, 5, 11);
INSERT INTO `billitems` VALUES(422, 5, 11);
INSERT INTO `billitems` VALUES(423, 5, 11);
INSERT INTO `billitems` VALUES(424, 5, 11);
INSERT INTO `billitems` VALUES(425, 5, 11);
INSERT INTO `billitems` VALUES(426, 5, 11);
INSERT INTO `billitems` VALUES(427, 5, 11);
INSERT INTO `billitems` VALUES(428, 5, 11);
INSERT INTO `billitems` VALUES(429, 5, 11);
INSERT INTO `billitems` VALUES(430, 5, 11);
INSERT INTO `billitems` VALUES(431, 5, 11);
INSERT INTO `billitems` VALUES(432, 5, 11);
INSERT INTO `billitems` VALUES(433, 5, 11);
INSERT INTO `billitems` VALUES(434, 5, 11);
INSERT INTO `billitems` VALUES(435, 5, 11);
INSERT INTO `billitems` VALUES(436, 5, 11);
INSERT INTO `billitems` VALUES(437, 5, 11);
INSERT INTO `billitems` VALUES(438, 5, 11);
INSERT INTO `billitems` VALUES(439, 5, 11);
INSERT INTO `billitems` VALUES(440, 5, 11);
INSERT INTO `billitems` VALUES(441, 5, 11);
INSERT INTO `billitems` VALUES(442, 5, 11);
INSERT INTO `billitems` VALUES(443, 5, 11);
INSERT INTO `billitems` VALUES(444, 5, 11);
INSERT INTO `billitems` VALUES(445, 5, 11);
INSERT INTO `billitems` VALUES(446, 5, 11);
INSERT INTO `billitems` VALUES(447, 5, 11);
INSERT INTO `billitems` VALUES(448, 5, 11);
INSERT INTO `billitems` VALUES(449, 5, 11);
INSERT INTO `billitems` VALUES(450, 5, 11);
INSERT INTO `billitems` VALUES(451, 5, 11);
INSERT INTO `billitems` VALUES(452, 5, 11);
INSERT INTO `billitems` VALUES(453, 5, 11);
INSERT INTO `billitems` VALUES(454, 5, 11);
INSERT INTO `billitems` VALUES(455, 5, 11);
INSERT INTO `billitems` VALUES(456, 5, 11);
INSERT INTO `billitems` VALUES(457, 5, 11);
INSERT INTO `billitems` VALUES(458, 5, 11);
INSERT INTO `billitems` VALUES(459, 5, 11);
INSERT INTO `billitems` VALUES(460, 5, 11);
INSERT INTO `billitems` VALUES(461, 5, 11);
INSERT INTO `billitems` VALUES(462, 5, 11);
INSERT INTO `billitems` VALUES(463, 5, 11);
INSERT INTO `billitems` VALUES(464, 5, 11);
INSERT INTO `billitems` VALUES(465, 5, 11);
INSERT INTO `billitems` VALUES(466, 5, 11);
INSERT INTO `billitems` VALUES(467, 5, 11);
INSERT INTO `billitems` VALUES(468, 5, 11);
INSERT INTO `billitems` VALUES(469, 5, 11);
INSERT INTO `billitems` VALUES(470, 5, 11);
INSERT INTO `billitems` VALUES(471, 5, 11);
INSERT INTO `billitems` VALUES(472, 5, 11);
INSERT INTO `billitems` VALUES(473, 5, 11);
INSERT INTO `billitems` VALUES(474, 5, 11);
INSERT INTO `billitems` VALUES(475, 5, 11);
INSERT INTO `billitems` VALUES(476, 5, 11);
INSERT INTO `billitems` VALUES(477, 5, 11);
INSERT INTO `billitems` VALUES(478, 5, 11);
INSERT INTO `billitems` VALUES(479, 5, 11);
INSERT INTO `billitems` VALUES(480, 5, 11);
INSERT INTO `billitems` VALUES(481, 5, 11);
INSERT INTO `billitems` VALUES(482, 5, 11);
INSERT INTO `billitems` VALUES(483, 5, 11);
INSERT INTO `billitems` VALUES(484, 5, 11);
INSERT INTO `billitems` VALUES(485, 5, 11);
INSERT INTO `billitems` VALUES(486, 5, 11);
INSERT INTO `billitems` VALUES(487, 5, 11);
INSERT INTO `billitems` VALUES(488, 5, 11);
INSERT INTO `billitems` VALUES(489, 5, 11);
INSERT INTO `billitems` VALUES(490, 5, 11);
INSERT INTO `billitems` VALUES(491, 5, 11);
INSERT INTO `billitems` VALUES(492, 5, 11);
INSERT INTO `billitems` VALUES(493, 5, 11);
INSERT INTO `billitems` VALUES(494, 5, 11);
INSERT INTO `billitems` VALUES(495, 5, 11);
INSERT INTO `billitems` VALUES(496, 5, 11);
INSERT INTO `billitems` VALUES(497, 5, 11);
INSERT INTO `billitems` VALUES(498, 5, 11);
INSERT INTO `billitems` VALUES(499, 5, 11);
INSERT INTO `billitems` VALUES(500, 5, 11);
INSERT INTO `billitems` VALUES(501, 5, 11);
INSERT INTO `billitems` VALUES(502, 5, 11);
INSERT INTO `billitems` VALUES(503, 5, 11);
INSERT INTO `billitems` VALUES(504, 5, 11);
INSERT INTO `billitems` VALUES(505, 5, 11);
INSERT INTO `billitems` VALUES(506, 5, 11);
INSERT INTO `billitems` VALUES(507, 5, 11);
INSERT INTO `billitems` VALUES(508, 5, 11);
INSERT INTO `billitems` VALUES(509, 5, 11);
INSERT INTO `billitems` VALUES(510, 5, 11);
INSERT INTO `billitems` VALUES(511, 5, 11);
INSERT INTO `billitems` VALUES(512, 5, 11);
INSERT INTO `billitems` VALUES(513, 5, 11);
INSERT INTO `billitems` VALUES(514, 5, 11);
INSERT INTO `billitems` VALUES(515, 5, 11);
INSERT INTO `billitems` VALUES(516, 5, 11);
INSERT INTO `billitems` VALUES(517, 5, 11);
INSERT INTO `billitems` VALUES(518, 5, 11);
INSERT INTO `billitems` VALUES(519, 5, 11);
INSERT INTO `billitems` VALUES(520, 5, 11);
INSERT INTO `billitems` VALUES(521, 5, 11);
INSERT INTO `billitems` VALUES(522, 5, 11);
INSERT INTO `billitems` VALUES(523, 5, 11);
INSERT INTO `billitems` VALUES(524, 5, 11);
INSERT INTO `billitems` VALUES(525, 5, 11);
INSERT INTO `billitems` VALUES(526, 5, 11);
INSERT INTO `billitems` VALUES(527, 5, 11);
INSERT INTO `billitems` VALUES(528, 5, 11);
INSERT INTO `billitems` VALUES(529, 5, 11);
INSERT INTO `billitems` VALUES(530, 5, 11);
INSERT INTO `billitems` VALUES(531, 5, 11);
INSERT INTO `billitems` VALUES(532, 5, 11);
INSERT INTO `billitems` VALUES(533, 5, 11);
INSERT INTO `billitems` VALUES(534, 5, 11);
INSERT INTO `billitems` VALUES(535, 5, 11);
INSERT INTO `billitems` VALUES(536, 5, 11);
INSERT INTO `billitems` VALUES(537, 5, 11);
INSERT INTO `billitems` VALUES(538, 5, 11);
INSERT INTO `billitems` VALUES(539, 5, 11);
INSERT INTO `billitems` VALUES(540, 5, 11);
INSERT INTO `billitems` VALUES(541, 5, 11);
INSERT INTO `billitems` VALUES(542, 5, 11);
INSERT INTO `billitems` VALUES(543, 5, 11);
INSERT INTO `billitems` VALUES(544, 5, 11);
INSERT INTO `billitems` VALUES(545, 5, 11);
INSERT INTO `billitems` VALUES(546, 5, 11);
INSERT INTO `billitems` VALUES(547, 5, 11);
INSERT INTO `billitems` VALUES(548, 5, 11);
INSERT INTO `billitems` VALUES(549, 5, 11);
INSERT INTO `billitems` VALUES(550, 5, 11);
INSERT INTO `billitems` VALUES(551, 5, 11);
INSERT INTO `billitems` VALUES(552, 5, 11);
INSERT INTO `billitems` VALUES(553, 5, 11);
INSERT INTO `billitems` VALUES(554, 5, 11);
INSERT INTO `billitems` VALUES(555, 5, 11);
INSERT INTO `billitems` VALUES(556, 5, 11);
INSERT INTO `billitems` VALUES(557, 5, 11);
INSERT INTO `billitems` VALUES(558, 5, 11);
INSERT INTO `billitems` VALUES(559, 5, 11);
INSERT INTO `billitems` VALUES(560, 5, 11);
INSERT INTO `billitems` VALUES(561, 5, 11);
INSERT INTO `billitems` VALUES(562, 5, 11);
INSERT INTO `billitems` VALUES(563, 5, 11);
INSERT INTO `billitems` VALUES(564, 5, 11);
INSERT INTO `billitems` VALUES(565, 5, 11);
INSERT INTO `billitems` VALUES(566, 5, 11);
INSERT INTO `billitems` VALUES(567, 5, 11);
INSERT INTO `billitems` VALUES(568, 5, 11);
INSERT INTO `billitems` VALUES(569, 5, 11);
INSERT INTO `billitems` VALUES(570, 5, 11);
INSERT INTO `billitems` VALUES(571, 5, 11);
INSERT INTO `billitems` VALUES(572, 5, 11);
INSERT INTO `billitems` VALUES(573, 5, 11);
INSERT INTO `billitems` VALUES(574, 5, 11);
INSERT INTO `billitems` VALUES(575, 5, 11);
INSERT INTO `billitems` VALUES(576, 5, 11);
INSERT INTO `billitems` VALUES(577, 5, 11);
INSERT INTO `billitems` VALUES(578, 5, 11);
INSERT INTO `billitems` VALUES(579, 5, 11);
INSERT INTO `billitems` VALUES(580, 5, 11);
INSERT INTO `billitems` VALUES(581, 5, 11);
INSERT INTO `billitems` VALUES(582, 5, 11);
INSERT INTO `billitems` VALUES(583, 5, 11);
INSERT INTO `billitems` VALUES(584, 5, 11);
INSERT INTO `billitems` VALUES(585, 5, 11);
INSERT INTO `billitems` VALUES(586, 5, 11);
INSERT INTO `billitems` VALUES(587, 5, 11);
INSERT INTO `billitems` VALUES(588, 5, 11);
INSERT INTO `billitems` VALUES(589, 5, 11);
INSERT INTO `billitems` VALUES(590, 5, 11);
INSERT INTO `billitems` VALUES(591, 5, 11);
INSERT INTO `billitems` VALUES(592, 5, 11);
INSERT INTO `billitems` VALUES(593, 5, 11);
INSERT INTO `billitems` VALUES(594, 5, 11);
INSERT INTO `billitems` VALUES(595, 5, 11);
INSERT INTO `billitems` VALUES(596, 5, 11);
INSERT INTO `billitems` VALUES(597, 5, 11);
INSERT INTO `billitems` VALUES(598, 5, 11);
INSERT INTO `billitems` VALUES(599, 5, 11);
INSERT INTO `billitems` VALUES(600, 5, 11);
INSERT INTO `billitems` VALUES(601, 5, 11);
INSERT INTO `billitems` VALUES(602, 5, 11);
INSERT INTO `billitems` VALUES(603, 5, 11);
INSERT INTO `billitems` VALUES(604, 5, 11);
INSERT INTO `billitems` VALUES(605, 5, 11);
INSERT INTO `billitems` VALUES(606, 5, 11);
INSERT INTO `billitems` VALUES(607, 5, 11);
INSERT INTO `billitems` VALUES(608, 5, 11);
INSERT INTO `billitems` VALUES(609, 5, 11);
INSERT INTO `billitems` VALUES(610, 5, 11);
INSERT INTO `billitems` VALUES(611, 5, 11);
INSERT INTO `billitems` VALUES(612, 5, 11);
INSERT INTO `billitems` VALUES(613, 5, 11);
INSERT INTO `billitems` VALUES(614, 5, 11);
INSERT INTO `billitems` VALUES(615, 5, 11);
INSERT INTO `billitems` VALUES(616, 5, 11);
INSERT INTO `billitems` VALUES(617, 5, 11);
INSERT INTO `billitems` VALUES(618, 5, 11);
INSERT INTO `billitems` VALUES(619, 5, 11);
INSERT INTO `billitems` VALUES(620, 5, 11);
INSERT INTO `billitems` VALUES(621, 5, 11);
INSERT INTO `billitems` VALUES(622, 5, 11);
INSERT INTO `billitems` VALUES(623, 5, 11);
INSERT INTO `billitems` VALUES(624, 5, 11);
INSERT INTO `billitems` VALUES(625, 5, 11);
INSERT INTO `billitems` VALUES(626, 5, 11);
INSERT INTO `billitems` VALUES(627, 5, 11);
INSERT INTO `billitems` VALUES(628, 5, 11);
INSERT INTO `billitems` VALUES(629, 5, 11);
INSERT INTO `billitems` VALUES(630, 5, 11);
INSERT INTO `billitems` VALUES(631, 5, 11);
INSERT INTO `billitems` VALUES(632, 5, 11);
INSERT INTO `billitems` VALUES(633, 5, 11);
INSERT INTO `billitems` VALUES(634, 5, 11);
INSERT INTO `billitems` VALUES(635, 5, 11);
INSERT INTO `billitems` VALUES(636, 5, 11);
INSERT INTO `billitems` VALUES(637, 5, 11);
INSERT INTO `billitems` VALUES(638, 5, 11);
INSERT INTO `billitems` VALUES(639, 5, 11);
INSERT INTO `billitems` VALUES(640, 5, 11);
INSERT INTO `billitems` VALUES(641, 5, 11);
INSERT INTO `billitems` VALUES(642, 5, 11);
INSERT INTO `billitems` VALUES(643, 5, 11);
INSERT INTO `billitems` VALUES(644, 5, 11);
INSERT INTO `billitems` VALUES(645, 5, 11);
INSERT INTO `billitems` VALUES(646, 5, 11);
INSERT INTO `billitems` VALUES(647, 5, 11);
INSERT INTO `billitems` VALUES(648, 5, 11);
INSERT INTO `billitems` VALUES(649, 5, 11);
INSERT INTO `billitems` VALUES(650, 5, 11);
INSERT INTO `billitems` VALUES(651, 5, 11);
INSERT INTO `billitems` VALUES(652, 5, 11);
INSERT INTO `billitems` VALUES(653, 5, 11);
INSERT INTO `billitems` VALUES(654, 5, 11);
INSERT INTO `billitems` VALUES(655, 5, 11);
INSERT INTO `billitems` VALUES(656, 5, 11);
INSERT INTO `billitems` VALUES(657, 5, 11);
INSERT INTO `billitems` VALUES(658, 5, 11);
INSERT INTO `billitems` VALUES(659, 5, 11);
INSERT INTO `billitems` VALUES(660, 5, 11);
INSERT INTO `billitems` VALUES(661, 5, 11);
INSERT INTO `billitems` VALUES(662, 5, 11);
INSERT INTO `billitems` VALUES(663, 5, 11);
INSERT INTO `billitems` VALUES(664, 5, 11);
INSERT INTO `billitems` VALUES(665, 5, 11);
INSERT INTO `billitems` VALUES(666, 5, 11);
INSERT INTO `billitems` VALUES(667, 5, 11);
INSERT INTO `billitems` VALUES(668, 5, 11);
INSERT INTO `billitems` VALUES(669, 5, 11);
INSERT INTO `billitems` VALUES(670, 5, 11);
INSERT INTO `billitems` VALUES(671, 5, 11);
INSERT INTO `billitems` VALUES(672, 5, 11);
INSERT INTO `billitems` VALUES(673, 5, 11);
INSERT INTO `billitems` VALUES(674, 5, 11);
INSERT INTO `billitems` VALUES(675, 5, 11);
INSERT INTO `billitems` VALUES(676, 5, 11);
INSERT INTO `billitems` VALUES(677, 5, 11);
INSERT INTO `billitems` VALUES(678, 5, 11);
INSERT INTO `billitems` VALUES(679, 5, 11);
INSERT INTO `billitems` VALUES(680, 5, 11);
INSERT INTO `billitems` VALUES(681, 5, 11);
INSERT INTO `billitems` VALUES(682, 5, 11);
INSERT INTO `billitems` VALUES(683, 5, 11);
INSERT INTO `billitems` VALUES(684, 5, 11);
INSERT INTO `billitems` VALUES(685, 5, 11);
INSERT INTO `billitems` VALUES(686, 5, 11);
INSERT INTO `billitems` VALUES(687, 5, 11);
INSERT INTO `billitems` VALUES(688, 5, 11);
INSERT INTO `billitems` VALUES(689, 5, 11);
INSERT INTO `billitems` VALUES(690, 5, 11);
INSERT INTO `billitems` VALUES(691, 5, 11);
INSERT INTO `billitems` VALUES(692, 5, 11);
INSERT INTO `billitems` VALUES(693, 5, 11);
INSERT INTO `billitems` VALUES(694, 5, 11);
INSERT INTO `billitems` VALUES(695, 5, 11);
INSERT INTO `billitems` VALUES(696, 5, 11);
INSERT INTO `billitems` VALUES(697, 5, 11);
INSERT INTO `billitems` VALUES(698, 5, 11);
INSERT INTO `billitems` VALUES(699, 5, 11);
INSERT INTO `billitems` VALUES(700, 5, 11);
INSERT INTO `billitems` VALUES(701, 5, 11);
INSERT INTO `billitems` VALUES(702, 5, 11);
INSERT INTO `billitems` VALUES(703, 5, 11);
INSERT INTO `billitems` VALUES(704, 5, 11);
INSERT INTO `billitems` VALUES(705, 5, 11);
INSERT INTO `billitems` VALUES(706, 5, 11);
INSERT INTO `billitems` VALUES(707, 5, 11);
INSERT INTO `billitems` VALUES(708, 5, 11);
INSERT INTO `billitems` VALUES(709, 5, 11);
INSERT INTO `billitems` VALUES(710, 5, 11);
INSERT INTO `billitems` VALUES(711, 5, 11);
INSERT INTO `billitems` VALUES(712, 5, 11);
INSERT INTO `billitems` VALUES(713, 5, 11);
INSERT INTO `billitems` VALUES(714, 5, 11);
INSERT INTO `billitems` VALUES(715, 5, 11);
INSERT INTO `billitems` VALUES(716, 5, 11);
INSERT INTO `billitems` VALUES(717, 5, 11);
INSERT INTO `billitems` VALUES(718, 5, 11);
INSERT INTO `billitems` VALUES(719, 5, 11);
INSERT INTO `billitems` VALUES(720, 5, 11);
INSERT INTO `billitems` VALUES(721, 5, 11);
INSERT INTO `billitems` VALUES(722, 5, 11);
INSERT INTO `billitems` VALUES(723, 5, 11);
INSERT INTO `billitems` VALUES(724, 5, 11);
INSERT INTO `billitems` VALUES(725, 5, 11);
INSERT INTO `billitems` VALUES(726, 5, 11);
INSERT INTO `billitems` VALUES(727, 5, 11);
INSERT INTO `billitems` VALUES(728, 5, 11);
INSERT INTO `billitems` VALUES(729, 5, 11);
INSERT INTO `billitems` VALUES(730, 5, 11);
INSERT INTO `billitems` VALUES(731, 5, 11);
INSERT INTO `billitems` VALUES(732, 5, 11);
INSERT INTO `billitems` VALUES(733, 5, 11);
INSERT INTO `billitems` VALUES(734, 5, 11);
INSERT INTO `billitems` VALUES(735, 5, 11);
INSERT INTO `billitems` VALUES(736, 5, 11);
INSERT INTO `billitems` VALUES(737, 5, 11);
INSERT INTO `billitems` VALUES(738, 5, 11);
INSERT INTO `billitems` VALUES(739, 5, 11);
INSERT INTO `billitems` VALUES(740, 5, 11);
INSERT INTO `billitems` VALUES(741, 5, 11);
INSERT INTO `billitems` VALUES(742, 5, 11);
INSERT INTO `billitems` VALUES(743, 5, 11);
INSERT INTO `billitems` VALUES(744, 5, 11);
INSERT INTO `billitems` VALUES(745, 5, 11);
INSERT INTO `billitems` VALUES(746, 5, 11);
INSERT INTO `billitems` VALUES(747, 5, 11);
INSERT INTO `billitems` VALUES(748, 5, 11);
INSERT INTO `billitems` VALUES(749, 5, 11);
INSERT INTO `billitems` VALUES(750, 5, 11);
INSERT INTO `billitems` VALUES(751, 5, 11);
INSERT INTO `billitems` VALUES(752, 5, 11);
INSERT INTO `billitems` VALUES(753, 5, 11);
INSERT INTO `billitems` VALUES(754, 5, 11);
INSERT INTO `billitems` VALUES(755, 5, 11);
INSERT INTO `billitems` VALUES(756, 5, 11);
INSERT INTO `billitems` VALUES(757, 5, 11);
INSERT INTO `billitems` VALUES(758, 5, 11);
INSERT INTO `billitems` VALUES(759, 5, 11);
INSERT INTO `billitems` VALUES(760, 5, 11);
INSERT INTO `billitems` VALUES(761, 5, 11);
INSERT INTO `billitems` VALUES(762, 5, 11);
INSERT INTO `billitems` VALUES(763, 5, 11);
INSERT INTO `billitems` VALUES(764, 5, 11);
INSERT INTO `billitems` VALUES(765, 5, 11);
INSERT INTO `billitems` VALUES(766, 5, 11);
INSERT INTO `billitems` VALUES(767, 5, 11);
INSERT INTO `billitems` VALUES(768, 5, 11);
INSERT INTO `billitems` VALUES(769, 5, 11);
INSERT INTO `billitems` VALUES(770, 5, 11);
INSERT INTO `billitems` VALUES(771, 5, 11);
INSERT INTO `billitems` VALUES(772, 5, 11);
INSERT INTO `billitems` VALUES(773, 5, 11);
INSERT INTO `billitems` VALUES(774, 5, 11);
INSERT INTO `billitems` VALUES(775, 5, 11);
INSERT INTO `billitems` VALUES(776, 5, 11);
INSERT INTO `billitems` VALUES(777, 5, 11);
INSERT INTO `billitems` VALUES(778, 5, 11);
INSERT INTO `billitems` VALUES(779, 5, 11);
INSERT INTO `billitems` VALUES(780, 5, 11);
INSERT INTO `billitems` VALUES(781, 5, 11);
INSERT INTO `billitems` VALUES(782, 5, 11);
INSERT INTO `billitems` VALUES(783, 5, 11);
INSERT INTO `billitems` VALUES(784, 5, 11);
INSERT INTO `billitems` VALUES(785, 5, 11);
INSERT INTO `billitems` VALUES(786, 5, 11);
INSERT INTO `billitems` VALUES(787, 5, 11);
INSERT INTO `billitems` VALUES(788, 5, 11);
INSERT INTO `billitems` VALUES(789, 5, 11);
INSERT INTO `billitems` VALUES(790, 5, 11);
INSERT INTO `billitems` VALUES(791, 5, 11);
INSERT INTO `billitems` VALUES(792, 5, 11);
INSERT INTO `billitems` VALUES(793, 5, 11);
INSERT INTO `billitems` VALUES(794, 5, 11);
INSERT INTO `billitems` VALUES(795, 5, 11);
INSERT INTO `billitems` VALUES(796, 5, 11);
INSERT INTO `billitems` VALUES(797, 5, 11);
INSERT INTO `billitems` VALUES(798, 5, 11);
INSERT INTO `billitems` VALUES(799, 5, 11);
INSERT INTO `billitems` VALUES(800, 5, 11);
INSERT INTO `billitems` VALUES(801, 5, 11);
INSERT INTO `billitems` VALUES(802, 5, 11);
INSERT INTO `billitems` VALUES(803, 5, 11);
INSERT INTO `billitems` VALUES(804, 5, 11);
INSERT INTO `billitems` VALUES(805, 5, 11);
INSERT INTO `billitems` VALUES(806, 5, 11);
INSERT INTO `billitems` VALUES(807, 5, 11);
INSERT INTO `billitems` VALUES(808, 5, 11);
INSERT INTO `billitems` VALUES(809, 5, 11);
INSERT INTO `billitems` VALUES(810, 5, 11);
INSERT INTO `billitems` VALUES(811, 5, 11);
INSERT INTO `billitems` VALUES(812, 5, 11);
INSERT INTO `billitems` VALUES(813, 5, 11);
INSERT INTO `billitems` VALUES(814, 5, 11);
INSERT INTO `billitems` VALUES(815, 5, 11);
INSERT INTO `billitems` VALUES(816, 5, 11);
INSERT INTO `billitems` VALUES(817, 5, 11);
INSERT INTO `billitems` VALUES(818, 5, 11);
INSERT INTO `billitems` VALUES(819, 5, 11);
INSERT INTO `billitems` VALUES(820, 5, 11);
INSERT INTO `billitems` VALUES(821, 5, 11);
INSERT INTO `billitems` VALUES(822, 5, 11);
INSERT INTO `billitems` VALUES(823, 5, 11);
INSERT INTO `billitems` VALUES(824, 5, 11);
INSERT INTO `billitems` VALUES(825, 5, 11);
INSERT INTO `billitems` VALUES(826, 5, 11);
INSERT INTO `billitems` VALUES(827, 5, 11);
INSERT INTO `billitems` VALUES(828, 5, 11);
INSERT INTO `billitems` VALUES(829, 5, 11);
INSERT INTO `billitems` VALUES(830, 5, 11);
INSERT INTO `billitems` VALUES(831, 5, 11);
INSERT INTO `billitems` VALUES(832, 5, 11);
INSERT INTO `billitems` VALUES(833, 5, 11);
INSERT INTO `billitems` VALUES(834, 5, 11);
INSERT INTO `billitems` VALUES(835, 5, 11);
INSERT INTO `billitems` VALUES(836, 5, 11);
INSERT INTO `billitems` VALUES(837, 5, 11);
INSERT INTO `billitems` VALUES(838, 5, 11);
INSERT INTO `billitems` VALUES(839, 5, 11);
INSERT INTO `billitems` VALUES(840, 5, 11);
INSERT INTO `billitems` VALUES(841, 5, 11);
INSERT INTO `billitems` VALUES(842, 5, 11);
INSERT INTO `billitems` VALUES(843, 5, 11);
INSERT INTO `billitems` VALUES(844, 5, 11);
INSERT INTO `billitems` VALUES(845, 5, 11);
INSERT INTO `billitems` VALUES(846, 5, 11);
INSERT INTO `billitems` VALUES(847, 5, 11);
INSERT INTO `billitems` VALUES(848, 5, 11);
INSERT INTO `billitems` VALUES(849, 5, 11);
INSERT INTO `billitems` VALUES(850, 5, 11);
INSERT INTO `billitems` VALUES(851, 5, 11);
INSERT INTO `billitems` VALUES(852, 5, 11);
INSERT INTO `billitems` VALUES(853, 5, 11);
INSERT INTO `billitems` VALUES(854, 5, 11);
INSERT INTO `billitems` VALUES(855, 5, 11);
INSERT INTO `billitems` VALUES(856, 5, 11);
INSERT INTO `billitems` VALUES(857, 5, 11);
INSERT INTO `billitems` VALUES(858, 5, 11);
INSERT INTO `billitems` VALUES(859, 5, 11);
INSERT INTO `billitems` VALUES(860, 5, 11);
INSERT INTO `billitems` VALUES(861, 5, 11);
INSERT INTO `billitems` VALUES(862, 5, 11);
INSERT INTO `billitems` VALUES(863, 5, 11);
INSERT INTO `billitems` VALUES(864, 5, 11);
INSERT INTO `billitems` VALUES(865, 5, 11);
INSERT INTO `billitems` VALUES(866, 5, 11);
INSERT INTO `billitems` VALUES(867, 5, 11);
INSERT INTO `billitems` VALUES(868, 5, 11);
INSERT INTO `billitems` VALUES(869, 5, 11);
INSERT INTO `billitems` VALUES(870, 5, 11);
INSERT INTO `billitems` VALUES(871, 5, 11);
INSERT INTO `billitems` VALUES(872, 5, 11);
INSERT INTO `billitems` VALUES(873, 5, 11);
INSERT INTO `billitems` VALUES(874, 5, 11);
INSERT INTO `billitems` VALUES(875, 5, 11);
INSERT INTO `billitems` VALUES(876, 5, 11);
INSERT INTO `billitems` VALUES(877, 5, 11);
INSERT INTO `billitems` VALUES(878, 5, 11);
INSERT INTO `billitems` VALUES(879, 5, 11);
INSERT INTO `billitems` VALUES(880, 5, 11);
INSERT INTO `billitems` VALUES(881, 5, 11);
INSERT INTO `billitems` VALUES(882, 5, 11);
INSERT INTO `billitems` VALUES(883, 5, 11);
INSERT INTO `billitems` VALUES(884, 5, 11);
INSERT INTO `billitems` VALUES(885, 5, 11);
INSERT INTO `billitems` VALUES(886, 5, 11);
INSERT INTO `billitems` VALUES(887, 5, 11);
INSERT INTO `billitems` VALUES(888, 5, 11);
INSERT INTO `billitems` VALUES(889, 5, 11);
INSERT INTO `billitems` VALUES(890, 5, 11);
INSERT INTO `billitems` VALUES(891, 5, 11);
INSERT INTO `billitems` VALUES(892, 5, 11);
INSERT INTO `billitems` VALUES(893, 5, 11);
INSERT INTO `billitems` VALUES(894, 5, 11);
INSERT INTO `billitems` VALUES(895, 5, 11);
INSERT INTO `billitems` VALUES(896, 5, 11);
INSERT INTO `billitems` VALUES(897, 5, 11);
INSERT INTO `billitems` VALUES(898, 5, 11);
INSERT INTO `billitems` VALUES(899, 5, 11);
INSERT INTO `billitems` VALUES(900, 5, 11);
INSERT INTO `billitems` VALUES(901, 5, 11);
INSERT INTO `billitems` VALUES(902, 5, 11);
INSERT INTO `billitems` VALUES(903, 5, 11);
INSERT INTO `billitems` VALUES(904, 5, 11);
INSERT INTO `billitems` VALUES(905, 5, 11);
INSERT INTO `billitems` VALUES(906, 5, 11);
INSERT INTO `billitems` VALUES(907, 5, 11);
INSERT INTO `billitems` VALUES(908, 5, 11);
INSERT INTO `billitems` VALUES(909, 5, 11);
INSERT INTO `billitems` VALUES(910, 5, 11);
INSERT INTO `billitems` VALUES(911, 5, 11);
INSERT INTO `billitems` VALUES(912, 5, 11);
INSERT INTO `billitems` VALUES(913, 5, 11);
INSERT INTO `billitems` VALUES(914, 5, 11);
INSERT INTO `billitems` VALUES(915, 5, 11);
INSERT INTO `billitems` VALUES(916, 5, 11);
INSERT INTO `billitems` VALUES(917, 5, 11);
INSERT INTO `billitems` VALUES(918, 5, 11);
INSERT INTO `billitems` VALUES(919, 5, 11);
INSERT INTO `billitems` VALUES(920, 5, 11);
INSERT INTO `billitems` VALUES(921, 5, 11);
INSERT INTO `billitems` VALUES(922, 5, 11);
INSERT INTO `billitems` VALUES(923, 5, 11);
INSERT INTO `billitems` VALUES(924, 5, 11);
INSERT INTO `billitems` VALUES(925, 5, 11);
INSERT INTO `billitems` VALUES(926, 5, 11);
INSERT INTO `billitems` VALUES(927, 5, 11);
INSERT INTO `billitems` VALUES(928, 5, 11);
INSERT INTO `billitems` VALUES(929, 5, 11);
INSERT INTO `billitems` VALUES(930, 5, 11);
INSERT INTO `billitems` VALUES(931, 5, 11);
INSERT INTO `billitems` VALUES(932, 5, 11);
INSERT INTO `billitems` VALUES(933, 5, 11);
INSERT INTO `billitems` VALUES(934, 5, 11);
INSERT INTO `billitems` VALUES(935, 5, 11);
INSERT INTO `billitems` VALUES(936, 5, 11);
INSERT INTO `billitems` VALUES(937, 5, 11);
INSERT INTO `billitems` VALUES(938, 5, 11);
INSERT INTO `billitems` VALUES(939, 5, 11);
INSERT INTO `billitems` VALUES(940, 5, 11);
INSERT INTO `billitems` VALUES(941, 5, 11);
INSERT INTO `billitems` VALUES(942, 5, 11);
INSERT INTO `billitems` VALUES(943, 5, 11);
INSERT INTO `billitems` VALUES(944, 5, 11);
INSERT INTO `billitems` VALUES(945, 5, 11);
INSERT INTO `billitems` VALUES(946, 5, 11);
INSERT INTO `billitems` VALUES(947, 5, 11);
INSERT INTO `billitems` VALUES(948, 5, 11);
INSERT INTO `billitems` VALUES(949, 5, 11);
INSERT INTO `billitems` VALUES(950, 5, 11);
INSERT INTO `billitems` VALUES(951, 5, 11);
INSERT INTO `billitems` VALUES(952, 5, 11);
INSERT INTO `billitems` VALUES(953, 5, 11);
INSERT INTO `billitems` VALUES(954, 5, 11);
INSERT INTO `billitems` VALUES(955, 5, 11);
INSERT INTO `billitems` VALUES(956, 5, 11);
INSERT INTO `billitems` VALUES(957, 5, 11);
INSERT INTO `billitems` VALUES(958, 5, 11);
INSERT INTO `billitems` VALUES(959, 5, 11);
INSERT INTO `billitems` VALUES(960, 5, 11);
INSERT INTO `billitems` VALUES(961, 5, 11);
INSERT INTO `billitems` VALUES(962, 5, 11);
INSERT INTO `billitems` VALUES(963, 5, 11);
INSERT INTO `billitems` VALUES(964, 5, 11);
INSERT INTO `billitems` VALUES(965, 5, 11);
INSERT INTO `billitems` VALUES(966, 5, 11);
INSERT INTO `billitems` VALUES(967, 5, 11);
INSERT INTO `billitems` VALUES(968, 5, 11);
INSERT INTO `billitems` VALUES(969, 5, 11);
INSERT INTO `billitems` VALUES(970, 5, 11);
INSERT INTO `billitems` VALUES(971, 5, 11);
INSERT INTO `billitems` VALUES(972, 5, 11);
INSERT INTO `billitems` VALUES(973, 5, 11);
INSERT INTO `billitems` VALUES(974, 5, 11);
INSERT INTO `billitems` VALUES(975, 5, 11);
INSERT INTO `billitems` VALUES(976, 5, 11);
INSERT INTO `billitems` VALUES(977, 5, 11);
INSERT INTO `billitems` VALUES(978, 5, 11);
INSERT INTO `billitems` VALUES(979, 5, 11);
INSERT INTO `billitems` VALUES(980, 5, 11);
INSERT INTO `billitems` VALUES(981, 5, 11);
INSERT INTO `billitems` VALUES(982, 5, 11);
INSERT INTO `billitems` VALUES(983, 5, 11);
INSERT INTO `billitems` VALUES(984, 5, 11);
INSERT INTO `billitems` VALUES(985, 5, 11);
INSERT INTO `billitems` VALUES(986, 5, 11);
INSERT INTO `billitems` VALUES(987, 5, 11);
INSERT INTO `billitems` VALUES(988, 5, 11);
INSERT INTO `billitems` VALUES(989, 5, 11);
INSERT INTO `billitems` VALUES(990, 5, 11);
INSERT INTO `billitems` VALUES(991, 5, 11);
INSERT INTO `billitems` VALUES(992, 5, 11);
INSERT INTO `billitems` VALUES(993, 5, 11);
INSERT INTO `billitems` VALUES(994, 5, 11);
INSERT INTO `billitems` VALUES(995, 5, 11);
INSERT INTO `billitems` VALUES(996, 5, 11);
INSERT INTO `billitems` VALUES(997, 5, 11);
INSERT INTO `billitems` VALUES(998, 5, 11);
INSERT INTO `billitems` VALUES(999, 5, 11);
INSERT INTO `billitems` VALUES(1000, 5, 11);
INSERT INTO `billitems` VALUES(1001, 5, 11);
INSERT INTO `billitems` VALUES(1002, 5, 11);
INSERT INTO `billitems` VALUES(1003, 5, 11);
INSERT INTO `billitems` VALUES(1004, 5, 11);
INSERT INTO `billitems` VALUES(1005, 5, 11);
INSERT INTO `billitems` VALUES(1006, 5, 11);
INSERT INTO `billitems` VALUES(1007, 5, 11);
INSERT INTO `billitems` VALUES(1008, 5, 11);
INSERT INTO `billitems` VALUES(1009, 5, 11);
INSERT INTO `billitems` VALUES(1010, 5, 11);
INSERT INTO `billitems` VALUES(1011, 5, 11);
INSERT INTO `billitems` VALUES(1012, 5, 11);
INSERT INTO `billitems` VALUES(1013, 5, 11);
INSERT INTO `billitems` VALUES(1014, 5, 11);
INSERT INTO `billitems` VALUES(1015, 5, 11);
INSERT INTO `billitems` VALUES(1016, 5, 11);
INSERT INTO `billitems` VALUES(1017, 5, 11);
INSERT INTO `billitems` VALUES(1018, 5, 11);
INSERT INTO `billitems` VALUES(1019, 5, 11);
INSERT INTO `billitems` VALUES(1020, 5, 11);
INSERT INTO `billitems` VALUES(1021, 5, 11);
INSERT INTO `billitems` VALUES(1022, 5, 11);
INSERT INTO `billitems` VALUES(1023, 5, 11);
INSERT INTO `billitems` VALUES(1024, 5, 11);
INSERT INTO `billitems` VALUES(1025, 5, 11);
INSERT INTO `billitems` VALUES(1026, 5, 11);
INSERT INTO `billitems` VALUES(1027, 5, 11);
INSERT INTO `billitems` VALUES(1028, 5, 11);
INSERT INTO `billitems` VALUES(1029, 5, 11);
INSERT INTO `billitems` VALUES(1030, 5, 11);
INSERT INTO `billitems` VALUES(1031, 5, 11);
INSERT INTO `billitems` VALUES(1032, 5, 11);
INSERT INTO `billitems` VALUES(1033, 5, 11);
INSERT INTO `billitems` VALUES(1034, 5, 11);
INSERT INTO `billitems` VALUES(1035, 5, 11);
INSERT INTO `billitems` VALUES(1036, 5, 11);
INSERT INTO `billitems` VALUES(1037, 5, 11);
INSERT INTO `billitems` VALUES(1038, 5, 11);
INSERT INTO `billitems` VALUES(1039, 5, 11);
INSERT INTO `billitems` VALUES(1040, 5, 11);
INSERT INTO `billitems` VALUES(1041, 5, 11);
INSERT INTO `billitems` VALUES(1042, 5, 11);
INSERT INTO `billitems` VALUES(1043, 5, 11);
INSERT INTO `billitems` VALUES(1044, 5, 11);
INSERT INTO `billitems` VALUES(1045, 5, 11);
INSERT INTO `billitems` VALUES(1046, 5, 11);
INSERT INTO `billitems` VALUES(1047, 5, 11);
INSERT INTO `billitems` VALUES(1048, 5, 11);
INSERT INTO `billitems` VALUES(1049, 5, 11);
INSERT INTO `billitems` VALUES(1050, 5, 11);
INSERT INTO `billitems` VALUES(1051, 5, 11);
INSERT INTO `billitems` VALUES(1052, 5, 11);
INSERT INTO `billitems` VALUES(1053, 5, 11);
INSERT INTO `billitems` VALUES(1054, 5, 11);
INSERT INTO `billitems` VALUES(1055, 5, 11);
INSERT INTO `billitems` VALUES(1056, 5, 11);
INSERT INTO `billitems` VALUES(1057, 5, 11);
INSERT INTO `billitems` VALUES(1058, 5, 11);
INSERT INTO `billitems` VALUES(1059, 5, 11);
INSERT INTO `billitems` VALUES(1060, 5, 11);
INSERT INTO `billitems` VALUES(1061, 5, 11);
INSERT INTO `billitems` VALUES(1062, 5, 11);
INSERT INTO `billitems` VALUES(1063, 5, 11);
INSERT INTO `billitems` VALUES(1064, 5, 11);
INSERT INTO `billitems` VALUES(1065, 5, 11);
INSERT INTO `billitems` VALUES(1066, 5, 11);
INSERT INTO `billitems` VALUES(1067, 5, 11);
INSERT INTO `billitems` VALUES(1068, 5, 11);
INSERT INTO `billitems` VALUES(1069, 5, 11);
INSERT INTO `billitems` VALUES(1070, 5, 11);
INSERT INTO `billitems` VALUES(1071, 5, 11);
INSERT INTO `billitems` VALUES(1072, 5, 11);
INSERT INTO `billitems` VALUES(1073, 5, 11);
INSERT INTO `billitems` VALUES(1074, 5, 11);
INSERT INTO `billitems` VALUES(1075, 5, 11);
INSERT INTO `billitems` VALUES(1076, 5, 11);
INSERT INTO `billitems` VALUES(1077, 5, 11);
INSERT INTO `billitems` VALUES(1078, 5, 11);
INSERT INTO `billitems` VALUES(1079, 5, 11);
INSERT INTO `billitems` VALUES(1080, 5, 11);
INSERT INTO `billitems` VALUES(1081, 5, 11);
INSERT INTO `billitems` VALUES(1082, 5, 11);
INSERT INTO `billitems` VALUES(1083, 5, 11);
INSERT INTO `billitems` VALUES(1084, 5, 11);
INSERT INTO `billitems` VALUES(1085, 5, 11);
INSERT INTO `billitems` VALUES(1086, 5, 11);
INSERT INTO `billitems` VALUES(1087, 5, 11);
INSERT INTO `billitems` VALUES(1088, 5, 11);
INSERT INTO `billitems` VALUES(1089, 5, 11);
INSERT INTO `billitems` VALUES(1090, 5, 11);
INSERT INTO `billitems` VALUES(1091, 5, 11);
INSERT INTO `billitems` VALUES(1092, 5, 11);
INSERT INTO `billitems` VALUES(1093, 5, 11);
INSERT INTO `billitems` VALUES(1094, 5, 11);
INSERT INTO `billitems` VALUES(1095, 5, 11);
INSERT INTO `billitems` VALUES(1096, 5, 11);
INSERT INTO `billitems` VALUES(1097, 5, 11);
INSERT INTO `billitems` VALUES(1098, 5, 11);
INSERT INTO `billitems` VALUES(1099, 5, 11);
INSERT INTO `billitems` VALUES(1100, 5, 11);
INSERT INTO `billitems` VALUES(1101, 5, 11);
INSERT INTO `billitems` VALUES(1102, 5, 11);
INSERT INTO `billitems` VALUES(1103, 5, 11);
INSERT INTO `billitems` VALUES(1104, 5, 11);
INSERT INTO `billitems` VALUES(1105, 5, 11);
INSERT INTO `billitems` VALUES(1106, 5, 11);
INSERT INTO `billitems` VALUES(1107, 5, 11);
INSERT INTO `billitems` VALUES(1108, 5, 11);
INSERT INTO `billitems` VALUES(1109, 5, 11);
INSERT INTO `billitems` VALUES(1110, 5, 11);
INSERT INTO `billitems` VALUES(1111, 5, 11);
INSERT INTO `billitems` VALUES(1112, 5, 11);
INSERT INTO `billitems` VALUES(1113, 5, 11);
INSERT INTO `billitems` VALUES(1114, 5, 11);
INSERT INTO `billitems` VALUES(1115, 5, 11);
INSERT INTO `billitems` VALUES(1116, 5, 11);
INSERT INTO `billitems` VALUES(1117, 5, 11);
INSERT INTO `billitems` VALUES(1118, 5, 11);
INSERT INTO `billitems` VALUES(1119, 5, 11);
INSERT INTO `billitems` VALUES(1120, 5, 11);
INSERT INTO `billitems` VALUES(1121, 5, 11);
INSERT INTO `billitems` VALUES(1122, 5, 11);
INSERT INTO `billitems` VALUES(1123, 5, 11);
INSERT INTO `billitems` VALUES(1124, 5, 11);
INSERT INTO `billitems` VALUES(1125, 5, 11);
INSERT INTO `billitems` VALUES(1126, 5, 11);
INSERT INTO `billitems` VALUES(1127, 5, 11);
INSERT INTO `billitems` VALUES(1128, 5, 11);
INSERT INTO `billitems` VALUES(1129, 5, 11);
INSERT INTO `billitems` VALUES(1130, 5, 11);
INSERT INTO `billitems` VALUES(1131, 5, 11);
INSERT INTO `billitems` VALUES(1132, 5, 11);
INSERT INTO `billitems` VALUES(1133, 5, 11);
INSERT INTO `billitems` VALUES(1134, 5, 11);
INSERT INTO `billitems` VALUES(1135, 5, 11);
INSERT INTO `billitems` VALUES(1136, 5, 11);
INSERT INTO `billitems` VALUES(1137, 5, 11);
INSERT INTO `billitems` VALUES(1138, 5, 11);
INSERT INTO `billitems` VALUES(1139, 5, 11);
INSERT INTO `billitems` VALUES(1140, 5, 11);
INSERT INTO `billitems` VALUES(1141, 5, 11);
INSERT INTO `billitems` VALUES(1142, 5, 11);
INSERT INTO `billitems` VALUES(1143, 5, 11);
INSERT INTO `billitems` VALUES(1144, 5, 11);
INSERT INTO `billitems` VALUES(1145, 5, 11);
INSERT INTO `billitems` VALUES(1146, 5, 11);
INSERT INTO `billitems` VALUES(1147, 5, 11);
INSERT INTO `billitems` VALUES(1148, 5, 11);
INSERT INTO `billitems` VALUES(1149, 5, 11);
INSERT INTO `billitems` VALUES(1150, 5, 11);
INSERT INTO `billitems` VALUES(1151, 5, 11);
INSERT INTO `billitems` VALUES(1152, 5, 11);
INSERT INTO `billitems` VALUES(1153, 5, 11);
INSERT INTO `billitems` VALUES(1154, 5, 11);
INSERT INTO `billitems` VALUES(1155, 5, 11);
INSERT INTO `billitems` VALUES(1156, 5, 11);
INSERT INTO `billitems` VALUES(1157, 5, 11);
INSERT INTO `billitems` VALUES(1158, 5, 11);
INSERT INTO `billitems` VALUES(1159, 5, 11);
INSERT INTO `billitems` VALUES(1160, 5, 11);
INSERT INTO `billitems` VALUES(1161, 5, 11);
INSERT INTO `billitems` VALUES(1162, 5, 11);
INSERT INTO `billitems` VALUES(1163, 5, 11);
INSERT INTO `billitems` VALUES(1164, 5, 11);
INSERT INTO `billitems` VALUES(1165, 5, 11);
INSERT INTO `billitems` VALUES(1166, 5, 11);
INSERT INTO `billitems` VALUES(1167, 5, 11);
INSERT INTO `billitems` VALUES(1168, 5, 11);
INSERT INTO `billitems` VALUES(1169, 5, 11);
INSERT INTO `billitems` VALUES(1170, 5, 11);
INSERT INTO `billitems` VALUES(1171, 5, 11);
INSERT INTO `billitems` VALUES(1172, 5, 11);
INSERT INTO `billitems` VALUES(1173, 5, 11);
INSERT INTO `billitems` VALUES(1174, 5, 11);
INSERT INTO `billitems` VALUES(1175, 5, 11);
INSERT INTO `billitems` VALUES(1176, 5, 11);
INSERT INTO `billitems` VALUES(1177, 5, 11);
INSERT INTO `billitems` VALUES(1178, 5, 11);
INSERT INTO `billitems` VALUES(1179, 5, 11);
INSERT INTO `billitems` VALUES(1180, 5, 11);
INSERT INTO `billitems` VALUES(1181, 5, 11);
INSERT INTO `billitems` VALUES(1182, 5, 11);
INSERT INTO `billitems` VALUES(1183, 5, 11);
INSERT INTO `billitems` VALUES(1184, 5, 11);
INSERT INTO `billitems` VALUES(1185, 5, 11);
INSERT INTO `billitems` VALUES(1186, 5, 11);
INSERT INTO `billitems` VALUES(1187, 5, 11);
INSERT INTO `billitems` VALUES(1188, 5, 11);
INSERT INTO `billitems` VALUES(1189, 5, 11);
INSERT INTO `billitems` VALUES(1190, 5, 11);
INSERT INTO `billitems` VALUES(1191, 5, 11);
INSERT INTO `billitems` VALUES(1192, 5, 11);
INSERT INTO `billitems` VALUES(1193, 5, 11);
INSERT INTO `billitems` VALUES(1194, 5, 11);
INSERT INTO `billitems` VALUES(1195, 5, 11);
INSERT INTO `billitems` VALUES(1196, 5, 11);
INSERT INTO `billitems` VALUES(1197, 5, 11);
INSERT INTO `billitems` VALUES(1198, 5, 11);
INSERT INTO `billitems` VALUES(1199, 5, 11);
INSERT INTO `billitems` VALUES(1200, 5, 11);
INSERT INTO `billitems` VALUES(1201, 5, 11);
INSERT INTO `billitems` VALUES(1202, 5, 11);
INSERT INTO `billitems` VALUES(1203, 5, 11);
INSERT INTO `billitems` VALUES(1204, 5, 11);
INSERT INTO `billitems` VALUES(1205, 5, 11);
INSERT INTO `billitems` VALUES(1206, 5, 11);
INSERT INTO `billitems` VALUES(1207, 5, 11);
INSERT INTO `billitems` VALUES(1208, 5, 11);
INSERT INTO `billitems` VALUES(1209, 5, 11);
INSERT INTO `billitems` VALUES(1210, 5, 11);
INSERT INTO `billitems` VALUES(1211, 5, 11);
INSERT INTO `billitems` VALUES(1212, 5, 11);
INSERT INTO `billitems` VALUES(1213, 5, 11);
INSERT INTO `billitems` VALUES(1214, 5, 11);
INSERT INTO `billitems` VALUES(1215, 5, 11);
INSERT INTO `billitems` VALUES(1216, 5, 11);
INSERT INTO `billitems` VALUES(1217, 5, 11);
INSERT INTO `billitems` VALUES(1218, 5, 11);
INSERT INTO `billitems` VALUES(1219, 5, 11);
INSERT INTO `billitems` VALUES(1220, 5, 11);
INSERT INTO `billitems` VALUES(1221, 5, 11);
INSERT INTO `billitems` VALUES(1222, 5, 11);
INSERT INTO `billitems` VALUES(1223, 5, 11);
INSERT INTO `billitems` VALUES(1224, 5, 11);
INSERT INTO `billitems` VALUES(1225, 5, 11);
INSERT INTO `billitems` VALUES(1226, 5, 11);
INSERT INTO `billitems` VALUES(1227, 5, 11);
INSERT INTO `billitems` VALUES(1228, 5, 11);
INSERT INTO `billitems` VALUES(1229, 5, 11);
INSERT INTO `billitems` VALUES(1230, 5, 11);
INSERT INTO `billitems` VALUES(1231, 5, 11);
INSERT INTO `billitems` VALUES(1232, 5, 11);
INSERT INTO `billitems` VALUES(1233, 5, 11);
INSERT INTO `billitems` VALUES(1234, 5, 11);
INSERT INTO `billitems` VALUES(1235, 5, 11);
INSERT INTO `billitems` VALUES(1236, 5, 11);
INSERT INTO `billitems` VALUES(1237, 5, 11);
INSERT INTO `billitems` VALUES(1238, 5, 11);
INSERT INTO `billitems` VALUES(1239, 5, 11);
INSERT INTO `billitems` VALUES(1240, 5, 11);
INSERT INTO `billitems` VALUES(1241, 5, 11);
INSERT INTO `billitems` VALUES(1242, 5, 11);
INSERT INTO `billitems` VALUES(1243, 5, 11);
INSERT INTO `billitems` VALUES(1244, 5, 11);
INSERT INTO `billitems` VALUES(1245, 5, 11);
INSERT INTO `billitems` VALUES(1246, 5, 11);
INSERT INTO `billitems` VALUES(1247, 5, 11);
INSERT INTO `billitems` VALUES(1248, 5, 11);
INSERT INTO `billitems` VALUES(1249, 5, 11);
INSERT INTO `billitems` VALUES(1250, 5, 11);
INSERT INTO `billitems` VALUES(1251, 5, 11);
INSERT INTO `billitems` VALUES(1252, 5, 11);
INSERT INTO `billitems` VALUES(1253, 5, 11);
INSERT INTO `billitems` VALUES(1254, 5, 11);
INSERT INTO `billitems` VALUES(1255, 5, 11);
INSERT INTO `billitems` VALUES(1256, 5, 11);
INSERT INTO `billitems` VALUES(1257, 5, 11);
INSERT INTO `billitems` VALUES(1258, 5, 11);
INSERT INTO `billitems` VALUES(1259, 5, 11);
INSERT INTO `billitems` VALUES(1260, 5, 11);
INSERT INTO `billitems` VALUES(1261, 5, 11);
INSERT INTO `billitems` VALUES(1262, 5, 11);
INSERT INTO `billitems` VALUES(1263, 5, 11);
INSERT INTO `billitems` VALUES(1264, 5, 11);
INSERT INTO `billitems` VALUES(1265, 5, 11);
INSERT INTO `billitems` VALUES(1266, 5, 11);
INSERT INTO `billitems` VALUES(1267, 5, 11);
INSERT INTO `billitems` VALUES(1268, 5, 11);
INSERT INTO `billitems` VALUES(1269, 5, 11);
INSERT INTO `billitems` VALUES(1270, 5, 11);
INSERT INTO `billitems` VALUES(1271, 5, 11);
INSERT INTO `billitems` VALUES(1272, 5, 11);
INSERT INTO `billitems` VALUES(1273, 5, 11);
INSERT INTO `billitems` VALUES(1274, 5, 11);
INSERT INTO `billitems` VALUES(1275, 5, 11);
INSERT INTO `billitems` VALUES(1276, 5, 11);
INSERT INTO `billitems` VALUES(1277, 5, 11);
INSERT INTO `billitems` VALUES(1278, 5, 11);
INSERT INTO `billitems` VALUES(1279, 5, 11);
INSERT INTO `billitems` VALUES(1280, 5, 11);
INSERT INTO `billitems` VALUES(1281, 5, 11);
INSERT INTO `billitems` VALUES(1282, 5, 11);
INSERT INTO `billitems` VALUES(1283, 5, 11);
INSERT INTO `billitems` VALUES(1284, 5, 11);
INSERT INTO `billitems` VALUES(1285, 5, 11);
INSERT INTO `billitems` VALUES(1286, 5, 11);
INSERT INTO `billitems` VALUES(1287, 5, 11);
INSERT INTO `billitems` VALUES(1288, 5, 11);
INSERT INTO `billitems` VALUES(1289, 5, 11);
INSERT INTO `billitems` VALUES(1290, 5, 11);
INSERT INTO `billitems` VALUES(1291, 5, 11);
INSERT INTO `billitems` VALUES(1292, 5, 11);
INSERT INTO `billitems` VALUES(1293, 5, 11);
INSERT INTO `billitems` VALUES(1294, 5, 11);
INSERT INTO `billitems` VALUES(1295, 5, 11);
INSERT INTO `billitems` VALUES(1296, 5, 11);
INSERT INTO `billitems` VALUES(1297, 5, 11);
INSERT INTO `billitems` VALUES(1298, 5, 11);
INSERT INTO `billitems` VALUES(1299, 5, 11);
INSERT INTO `billitems` VALUES(1300, 5, 11);
INSERT INTO `billitems` VALUES(1301, 5, 11);
INSERT INTO `billitems` VALUES(1302, 5, 11);
INSERT INTO `billitems` VALUES(1303, 5, 11);
INSERT INTO `billitems` VALUES(1304, 5, 11);
INSERT INTO `billitems` VALUES(1305, 5, 11);
INSERT INTO `billitems` VALUES(1306, 5, 11);
INSERT INTO `billitems` VALUES(1307, 5, 11);
INSERT INTO `billitems` VALUES(1308, 5, 11);
INSERT INTO `billitems` VALUES(1309, 5, 11);
INSERT INTO `billitems` VALUES(1310, 5, 11);
INSERT INTO `billitems` VALUES(1311, 5, 11);
INSERT INTO `billitems` VALUES(1312, 5, 11);
INSERT INTO `billitems` VALUES(1313, 5, 11);
INSERT INTO `billitems` VALUES(1314, 5, 11);
INSERT INTO `billitems` VALUES(1315, 5, 11);
INSERT INTO `billitems` VALUES(1316, 5, 11);
INSERT INTO `billitems` VALUES(1317, 5, 11);
INSERT INTO `billitems` VALUES(1318, 5, 11);
INSERT INTO `billitems` VALUES(1319, 5, 11);
INSERT INTO `billitems` VALUES(1320, 5, 11);
INSERT INTO `billitems` VALUES(1321, 5, 11);
INSERT INTO `billitems` VALUES(1322, 5, 11);
INSERT INTO `billitems` VALUES(1323, 5, 11);
INSERT INTO `billitems` VALUES(1324, 5, 11);
INSERT INTO `billitems` VALUES(1325, 5, 11);
INSERT INTO `billitems` VALUES(1326, 5, 11);
INSERT INTO `billitems` VALUES(1327, 5, 11);
INSERT INTO `billitems` VALUES(1328, 5, 11);
INSERT INTO `billitems` VALUES(1329, 5, 11);
INSERT INTO `billitems` VALUES(1330, 5, 11);
INSERT INTO `billitems` VALUES(1331, 5, 11);
INSERT INTO `billitems` VALUES(1332, 5, 11);
INSERT INTO `billitems` VALUES(1333, 5, 11);
INSERT INTO `billitems` VALUES(1334, 5, 11);
INSERT INTO `billitems` VALUES(1335, 5, 11);
INSERT INTO `billitems` VALUES(1336, 5, 11);
INSERT INTO `billitems` VALUES(1337, 5, 11);
INSERT INTO `billitems` VALUES(1338, 5, 11);
INSERT INTO `billitems` VALUES(1339, 5, 11);
INSERT INTO `billitems` VALUES(1340, 5, 11);
INSERT INTO `billitems` VALUES(1341, 5, 11);
INSERT INTO `billitems` VALUES(1342, 5, 11);
INSERT INTO `billitems` VALUES(1343, 5, 11);
INSERT INTO `billitems` VALUES(1344, 5, 11);
INSERT INTO `billitems` VALUES(1345, 5, 11);
INSERT INTO `billitems` VALUES(1346, 5, 11);
INSERT INTO `billitems` VALUES(1347, 5, 11);
INSERT INTO `billitems` VALUES(1348, 5, 11);
INSERT INTO `billitems` VALUES(1349, 5, 11);
INSERT INTO `billitems` VALUES(1350, 5, 11);
INSERT INTO `billitems` VALUES(1351, 5, 11);
INSERT INTO `billitems` VALUES(1352, 5, 11);
INSERT INTO `billitems` VALUES(1353, 5, 11);
INSERT INTO `billitems` VALUES(1354, 5, 11);
INSERT INTO `billitems` VALUES(1355, 5, 11);
INSERT INTO `billitems` VALUES(1356, 5, 11);
INSERT INTO `billitems` VALUES(1357, 5, 11);
INSERT INTO `billitems` VALUES(1358, 5, 11);
INSERT INTO `billitems` VALUES(1359, 5, 11);
INSERT INTO `billitems` VALUES(1360, 5, 11);
INSERT INTO `billitems` VALUES(1361, 5, 11);
INSERT INTO `billitems` VALUES(1362, 5, 11);
INSERT INTO `billitems` VALUES(1363, 5, 11);
INSERT INTO `billitems` VALUES(1364, 5, 11);
INSERT INTO `billitems` VALUES(1365, 5, 11);
INSERT INTO `billitems` VALUES(1366, 5, 11);
INSERT INTO `billitems` VALUES(1367, 5, 11);
INSERT INTO `billitems` VALUES(1368, 5, 11);
INSERT INTO `billitems` VALUES(1369, 5, 11);
INSERT INTO `billitems` VALUES(1370, 5, 11);
INSERT INTO `billitems` VALUES(1371, 5, 11);
INSERT INTO `billitems` VALUES(1372, 5, 11);
INSERT INTO `billitems` VALUES(1373, 5, 11);
INSERT INTO `billitems` VALUES(1374, 5, 11);
INSERT INTO `billitems` VALUES(1375, 5, 11);
INSERT INTO `billitems` VALUES(1376, 5, 11);
INSERT INTO `billitems` VALUES(1377, 5, 11);
INSERT INTO `billitems` VALUES(1378, 5, 11);
INSERT INTO `billitems` VALUES(1379, 5, 11);
INSERT INTO `billitems` VALUES(1380, 5, 11);
INSERT INTO `billitems` VALUES(1381, 5, 11);
INSERT INTO `billitems` VALUES(1382, 5, 11);
INSERT INTO `billitems` VALUES(1383, 5, 11);
INSERT INTO `billitems` VALUES(1384, 5, 11);
INSERT INTO `billitems` VALUES(1385, 5, 11);
INSERT INTO `billitems` VALUES(1386, 5, 11);
INSERT INTO `billitems` VALUES(1387, 5, 11);
INSERT INTO `billitems` VALUES(1388, 5, 11);
INSERT INTO `billitems` VALUES(1389, 5, 11);
INSERT INTO `billitems` VALUES(1390, 5, 11);
INSERT INTO `billitems` VALUES(1391, 5, 11);
INSERT INTO `billitems` VALUES(1392, 5, 11);
INSERT INTO `billitems` VALUES(1393, 5, 11);
INSERT INTO `billitems` VALUES(1394, 5, 11);
INSERT INTO `billitems` VALUES(1395, 5, 11);
INSERT INTO `billitems` VALUES(1396, 5, 11);
INSERT INTO `billitems` VALUES(1397, 5, 11);
INSERT INTO `billitems` VALUES(1398, 5, 11);
INSERT INTO `billitems` VALUES(1399, 5, 11);
INSERT INTO `billitems` VALUES(1400, 5, 11);
INSERT INTO `billitems` VALUES(1401, 5, 11);
INSERT INTO `billitems` VALUES(1402, 5, 11);
INSERT INTO `billitems` VALUES(1403, 5, 11);
INSERT INTO `billitems` VALUES(1404, 5, 11);
INSERT INTO `billitems` VALUES(1405, 5, 11);
INSERT INTO `billitems` VALUES(1406, 5, 11);
INSERT INTO `billitems` VALUES(1407, 5, 11);
INSERT INTO `billitems` VALUES(1408, 5, 11);
INSERT INTO `billitems` VALUES(1409, 5, 11);
INSERT INTO `billitems` VALUES(1410, 5, 11);
INSERT INTO `billitems` VALUES(1411, 5, 11);
INSERT INTO `billitems` VALUES(1412, 5, 11);
INSERT INTO `billitems` VALUES(1413, 5, 11);
INSERT INTO `billitems` VALUES(1414, 5, 11);
INSERT INTO `billitems` VALUES(1415, 5, 11);
INSERT INTO `billitems` VALUES(1416, 5, 11);
INSERT INTO `billitems` VALUES(1417, 5, 11);
INSERT INTO `billitems` VALUES(1418, 5, 11);
INSERT INTO `billitems` VALUES(1419, 5, 11);
INSERT INTO `billitems` VALUES(1420, 5, 11);
INSERT INTO `billitems` VALUES(1421, 5, 11);
INSERT INTO `billitems` VALUES(1422, 5, 11);
INSERT INTO `billitems` VALUES(1423, 5, 11);
INSERT INTO `billitems` VALUES(1424, 5, 11);
INSERT INTO `billitems` VALUES(1425, 5, 11);
INSERT INTO `billitems` VALUES(1426, 5, 11);
INSERT INTO `billitems` VALUES(1427, 5, 11);
INSERT INTO `billitems` VALUES(1428, 5, 11);
INSERT INTO `billitems` VALUES(1429, 5, 11);
INSERT INTO `billitems` VALUES(1430, 5, 11);
INSERT INTO `billitems` VALUES(1431, 5, 11);
INSERT INTO `billitems` VALUES(1432, 5, 11);
INSERT INTO `billitems` VALUES(1433, 5, 11);
INSERT INTO `billitems` VALUES(1434, 5, 11);
INSERT INTO `billitems` VALUES(1435, 5, 11);
INSERT INTO `billitems` VALUES(1436, 5, 11);
INSERT INTO `billitems` VALUES(1437, 5, 11);
INSERT INTO `billitems` VALUES(1438, 5, 11);
INSERT INTO `billitems` VALUES(1439, 5, 11);
INSERT INTO `billitems` VALUES(1440, 5, 11);
INSERT INTO `billitems` VALUES(1441, 5, 11);
INSERT INTO `billitems` VALUES(1442, 5, 11);
INSERT INTO `billitems` VALUES(1443, 5, 11);
INSERT INTO `billitems` VALUES(1444, 5, 11);
INSERT INTO `billitems` VALUES(1445, 5, 11);
INSERT INTO `billitems` VALUES(1446, 5, 11);
INSERT INTO `billitems` VALUES(1447, 5, 11);
INSERT INTO `billitems` VALUES(1448, 5, 11);
INSERT INTO `billitems` VALUES(1449, 5, 11);
INSERT INTO `billitems` VALUES(1450, 5, 11);
INSERT INTO `billitems` VALUES(1451, 5, 11);
INSERT INTO `billitems` VALUES(1452, 5, 11);
INSERT INTO `billitems` VALUES(1453, 5, 11);
INSERT INTO `billitems` VALUES(1454, 5, 11);
INSERT INTO `billitems` VALUES(1455, 5, 11);
INSERT INTO `billitems` VALUES(1456, 5, 11);
INSERT INTO `billitems` VALUES(1457, 5, 11);
INSERT INTO `billitems` VALUES(1458, 5, 11);
INSERT INTO `billitems` VALUES(1459, 5, 11);
INSERT INTO `billitems` VALUES(1460, 5, 11);
INSERT INTO `billitems` VALUES(1461, 5, 11);
INSERT INTO `billitems` VALUES(1462, 5, 11);
INSERT INTO `billitems` VALUES(1463, 5, 11);
INSERT INTO `billitems` VALUES(1464, 5, 11);
INSERT INTO `billitems` VALUES(1465, 5, 11);
INSERT INTO `billitems` VALUES(1466, 5, 11);
INSERT INTO `billitems` VALUES(1467, 5, 11);
INSERT INTO `billitems` VALUES(1468, 5, 11);
INSERT INTO `billitems` VALUES(1469, 5, 11);
INSERT INTO `billitems` VALUES(1470, 5, 11);
INSERT INTO `billitems` VALUES(1471, 5, 11);
INSERT INTO `billitems` VALUES(1472, 5, 11);
INSERT INTO `billitems` VALUES(1473, 5, 11);
INSERT INTO `billitems` VALUES(1474, 5, 11);
INSERT INTO `billitems` VALUES(1475, 5, 11);
INSERT INTO `billitems` VALUES(1476, 5, 11);
INSERT INTO `billitems` VALUES(1477, 5, 11);
INSERT INTO `billitems` VALUES(1478, 5, 11);
INSERT INTO `billitems` VALUES(1479, 5, 11);
INSERT INTO `billitems` VALUES(1480, 5, 11);
INSERT INTO `billitems` VALUES(1481, 5, 11);
INSERT INTO `billitems` VALUES(1482, 5, 11);
INSERT INTO `billitems` VALUES(1483, 5, 11);
INSERT INTO `billitems` VALUES(1484, 5, 11);
INSERT INTO `billitems` VALUES(1485, 5, 11);
INSERT INTO `billitems` VALUES(1486, 5, 11);
INSERT INTO `billitems` VALUES(1487, 5, 11);
INSERT INTO `billitems` VALUES(1488, 5, 11);
INSERT INTO `billitems` VALUES(1489, 5, 11);
INSERT INTO `billitems` VALUES(1490, 5, 11);
INSERT INTO `billitems` VALUES(1491, 5, 11);
INSERT INTO `billitems` VALUES(1492, 5, 11);
INSERT INTO `billitems` VALUES(1493, 5, 11);
INSERT INTO `billitems` VALUES(1494, 5, 11);
INSERT INTO `billitems` VALUES(1495, 5, 11);
INSERT INTO `billitems` VALUES(1496, 5, 11);
INSERT INTO `billitems` VALUES(1497, 5, 11);
INSERT INTO `billitems` VALUES(1498, 5, 11);
INSERT INTO `billitems` VALUES(1499, 5, 11);
INSERT INTO `billitems` VALUES(1500, 5, 11);
INSERT INTO `billitems` VALUES(1501, 5, 11);
INSERT INTO `billitems` VALUES(1502, 5, 11);
INSERT INTO `billitems` VALUES(1503, 5, 11);
INSERT INTO `billitems` VALUES(1504, 5, 11);
INSERT INTO `billitems` VALUES(1505, 5, 11);
INSERT INTO `billitems` VALUES(1506, 5, 11);
INSERT INTO `billitems` VALUES(1507, 5, 11);
INSERT INTO `billitems` VALUES(1508, 5, 11);
INSERT INTO `billitems` VALUES(1509, 5, 11);
INSERT INTO `billitems` VALUES(1510, 5, 11);
INSERT INTO `billitems` VALUES(1511, 5, 11);
INSERT INTO `billitems` VALUES(1512, 5, 11);
INSERT INTO `billitems` VALUES(1513, 5, 11);
INSERT INTO `billitems` VALUES(1514, 5, 11);
INSERT INTO `billitems` VALUES(1515, 5, 11);
INSERT INTO `billitems` VALUES(1516, 5, 11);
INSERT INTO `billitems` VALUES(1517, 5, 11);
INSERT INTO `billitems` VALUES(1518, 5, 11);
INSERT INTO `billitems` VALUES(1519, 5, 11);
INSERT INTO `billitems` VALUES(1520, 5, 11);
INSERT INTO `billitems` VALUES(1521, 5, 11);
INSERT INTO `billitems` VALUES(1522, 5, 11);
INSERT INTO `billitems` VALUES(1523, 5, 11);
INSERT INTO `billitems` VALUES(1524, 5, 11);
INSERT INTO `billitems` VALUES(1525, 5, 11);
INSERT INTO `billitems` VALUES(1526, 5, 11);
INSERT INTO `billitems` VALUES(1527, 5, 11);
INSERT INTO `billitems` VALUES(1528, 5, 11);
INSERT INTO `billitems` VALUES(1529, 5, 11);
INSERT INTO `billitems` VALUES(1530, 5, 11);
INSERT INTO `billitems` VALUES(1531, 5, 11);
INSERT INTO `billitems` VALUES(1532, 5, 11);
INSERT INTO `billitems` VALUES(1533, 5, 11);
INSERT INTO `billitems` VALUES(1534, 5, 11);
INSERT INTO `billitems` VALUES(1535, 5, 11);
INSERT INTO `billitems` VALUES(1536, 5, 11);
INSERT INTO `billitems` VALUES(1537, 5, 11);
INSERT INTO `billitems` VALUES(1538, 5, 11);
INSERT INTO `billitems` VALUES(1539, 5, 11);
INSERT INTO `billitems` VALUES(1540, 5, 11);
INSERT INTO `billitems` VALUES(1541, 5, 11);
INSERT INTO `billitems` VALUES(1542, 5, 11);
INSERT INTO `billitems` VALUES(1543, 5, 11);
INSERT INTO `billitems` VALUES(1544, 5, 11);
INSERT INTO `billitems` VALUES(1545, 5, 11);
INSERT INTO `billitems` VALUES(1546, 5, 11);
INSERT INTO `billitems` VALUES(1547, 5, 11);
INSERT INTO `billitems` VALUES(1548, 5, 11);
INSERT INTO `billitems` VALUES(1549, 5, 11);
INSERT INTO `billitems` VALUES(1550, 5, 11);
INSERT INTO `billitems` VALUES(1551, 5, 11);
INSERT INTO `billitems` VALUES(1552, 5, 11);
INSERT INTO `billitems` VALUES(1553, 5, 11);
INSERT INTO `billitems` VALUES(1554, 5, 11);
INSERT INTO `billitems` VALUES(1555, 5, 11);
INSERT INTO `billitems` VALUES(1556, 5, 11);
INSERT INTO `billitems` VALUES(1557, 5, 11);
INSERT INTO `billitems` VALUES(1558, 5, 11);
INSERT INTO `billitems` VALUES(1559, 5, 11);
INSERT INTO `billitems` VALUES(1560, 5, 11);
INSERT INTO `billitems` VALUES(1561, 5, 11);
INSERT INTO `billitems` VALUES(1562, 5, 11);
INSERT INTO `billitems` VALUES(1563, 5, 11);
INSERT INTO `billitems` VALUES(1564, 5, 11);
INSERT INTO `billitems` VALUES(1565, 5, 11);
INSERT INTO `billitems` VALUES(1566, 5, 11);
INSERT INTO `billitems` VALUES(1567, 5, 11);
INSERT INTO `billitems` VALUES(1568, 5, 11);
INSERT INTO `billitems` VALUES(1569, 5, 11);
INSERT INTO `billitems` VALUES(1570, 5, 11);
INSERT INTO `billitems` VALUES(1571, 5, 11);
INSERT INTO `billitems` VALUES(1572, 5, 11);
INSERT INTO `billitems` VALUES(1573, 5, 11);
INSERT INTO `billitems` VALUES(1574, 5, 11);
INSERT INTO `billitems` VALUES(1575, 5, 11);
INSERT INTO `billitems` VALUES(1576, 5, 11);
INSERT INTO `billitems` VALUES(1577, 5, 11);
INSERT INTO `billitems` VALUES(1578, 5, 11);
INSERT INTO `billitems` VALUES(1579, 5, 11);
INSERT INTO `billitems` VALUES(1580, 5, 11);
INSERT INTO `billitems` VALUES(1581, 5, 11);
INSERT INTO `billitems` VALUES(1582, 5, 11);
INSERT INTO `billitems` VALUES(1583, 5, 11);
INSERT INTO `billitems` VALUES(1584, 5, 11);
INSERT INTO `billitems` VALUES(1585, 5, 11);
INSERT INTO `billitems` VALUES(1586, 5, 11);
INSERT INTO `billitems` VALUES(1587, 5, 11);
INSERT INTO `billitems` VALUES(1588, 5, 11);
INSERT INTO `billitems` VALUES(1589, 5, 11);
INSERT INTO `billitems` VALUES(1590, 5, 11);
INSERT INTO `billitems` VALUES(1591, 5, 11);
INSERT INTO `billitems` VALUES(1592, 5, 11);
INSERT INTO `billitems` VALUES(1593, 5, 11);
INSERT INTO `billitems` VALUES(1594, 5, 11);
INSERT INTO `billitems` VALUES(1595, 5, 11);
INSERT INTO `billitems` VALUES(1596, 5, 11);
INSERT INTO `billitems` VALUES(1597, 5, 11);
INSERT INTO `billitems` VALUES(1598, 5, 11);
INSERT INTO `billitems` VALUES(1599, 5, 11);
INSERT INTO `billitems` VALUES(1600, 5, 11);
INSERT INTO `billitems` VALUES(1601, 5, 11);
INSERT INTO `billitems` VALUES(1602, 5, 11);
INSERT INTO `billitems` VALUES(1603, 5, 11);
INSERT INTO `billitems` VALUES(1604, 5, 11);
INSERT INTO `billitems` VALUES(1605, 5, 11);
INSERT INTO `billitems` VALUES(1606, 5, 11);
INSERT INTO `billitems` VALUES(1607, 5, 11);
INSERT INTO `billitems` VALUES(1608, 5, 11);
INSERT INTO `billitems` VALUES(1609, 5, 11);
INSERT INTO `billitems` VALUES(1610, 5, 11);
INSERT INTO `billitems` VALUES(1611, 5, 11);
INSERT INTO `billitems` VALUES(1612, 5, 11);
INSERT INTO `billitems` VALUES(1613, 5, 11);
INSERT INTO `billitems` VALUES(1614, 5, 11);
INSERT INTO `billitems` VALUES(1615, 5, 11);
INSERT INTO `billitems` VALUES(1616, 5, 11);
INSERT INTO `billitems` VALUES(1617, 5, 11);
INSERT INTO `billitems` VALUES(1618, 5, 11);
INSERT INTO `billitems` VALUES(1619, 5, 11);
INSERT INTO `billitems` VALUES(1620, 5, 11);
INSERT INTO `billitems` VALUES(1621, 5, 11);
INSERT INTO `billitems` VALUES(1622, 5, 11);
INSERT INTO `billitems` VALUES(1623, 5, 11);
INSERT INTO `billitems` VALUES(1624, 5, 11);
INSERT INTO `billitems` VALUES(1625, 5, 11);
INSERT INTO `billitems` VALUES(1626, 5, 11);
INSERT INTO `billitems` VALUES(1627, 5, 11);
INSERT INTO `billitems` VALUES(1628, 5, 11);
INSERT INTO `billitems` VALUES(1629, 5, 11);
INSERT INTO `billitems` VALUES(1630, 5, 11);
INSERT INTO `billitems` VALUES(1631, 5, 11);
INSERT INTO `billitems` VALUES(1632, 5, 11);
INSERT INTO `billitems` VALUES(1633, 5, 11);
INSERT INTO `billitems` VALUES(1634, 5, 11);
INSERT INTO `billitems` VALUES(1635, 5, 11);
INSERT INTO `billitems` VALUES(1636, 5, 11);
INSERT INTO `billitems` VALUES(1637, 5, 11);
INSERT INTO `billitems` VALUES(1638, 5, 11);
INSERT INTO `billitems` VALUES(1639, 5, 11);
INSERT INTO `billitems` VALUES(1640, 5, 11);
INSERT INTO `billitems` VALUES(1641, 5, 11);
INSERT INTO `billitems` VALUES(1642, 5, 11);
INSERT INTO `billitems` VALUES(1643, 5, 11);
INSERT INTO `billitems` VALUES(1644, 5, 11);
INSERT INTO `billitems` VALUES(1645, 5, 11);
INSERT INTO `billitems` VALUES(1646, 5, 11);
INSERT INTO `billitems` VALUES(1647, 5, 11);
INSERT INTO `billitems` VALUES(1648, 5, 11);
INSERT INTO `billitems` VALUES(1649, 5, 11);
INSERT INTO `billitems` VALUES(1650, 5, 11);
INSERT INTO `billitems` VALUES(1651, 5, 11);
INSERT INTO `billitems` VALUES(1652, 5, 11);
INSERT INTO `billitems` VALUES(1653, 5, 11);
INSERT INTO `billitems` VALUES(1654, 5, 11);
INSERT INTO `billitems` VALUES(1655, 5, 11);
INSERT INTO `billitems` VALUES(1656, 5, 11);
INSERT INTO `billitems` VALUES(1657, 5, 11);
INSERT INTO `billitems` VALUES(1658, 5, 11);
INSERT INTO `billitems` VALUES(1659, 5, 11);
INSERT INTO `billitems` VALUES(1660, 5, 11);
INSERT INTO `billitems` VALUES(1661, 5, 11);
INSERT INTO `billitems` VALUES(1662, 5, 11);
INSERT INTO `billitems` VALUES(1663, 5, 11);
INSERT INTO `billitems` VALUES(1664, 5, 11);
INSERT INTO `billitems` VALUES(1665, 5, 11);
INSERT INTO `billitems` VALUES(1666, 5, 11);
INSERT INTO `billitems` VALUES(1667, 5, 11);
INSERT INTO `billitems` VALUES(1668, 5, 11);
INSERT INTO `billitems` VALUES(1669, 5, 11);
INSERT INTO `billitems` VALUES(1670, 5, 11);
INSERT INTO `billitems` VALUES(1671, 5, 11);
INSERT INTO `billitems` VALUES(1672, 5, 11);
INSERT INTO `billitems` VALUES(1673, 5, 11);
INSERT INTO `billitems` VALUES(1674, 5, 11);
INSERT INTO `billitems` VALUES(1675, 5, 11);
INSERT INTO `billitems` VALUES(1676, 5, 11);
INSERT INTO `billitems` VALUES(1677, 5, 11);
INSERT INTO `billitems` VALUES(1678, 5, 11);
INSERT INTO `billitems` VALUES(1679, 5, 11);
INSERT INTO `billitems` VALUES(1680, 5, 11);
INSERT INTO `billitems` VALUES(1681, 5, 11);
INSERT INTO `billitems` VALUES(1682, 5, 11);
INSERT INTO `billitems` VALUES(1683, 5, 11);
INSERT INTO `billitems` VALUES(1684, 5, 11);
INSERT INTO `billitems` VALUES(1685, 5, 11);
INSERT INTO `billitems` VALUES(1686, 5, 11);
INSERT INTO `billitems` VALUES(1687, 5, 11);
INSERT INTO `billitems` VALUES(1688, 5, 11);
INSERT INTO `billitems` VALUES(1689, 5, 11);
INSERT INTO `billitems` VALUES(1690, 5, 11);
INSERT INTO `billitems` VALUES(1691, 5, 11);
INSERT INTO `billitems` VALUES(1692, 5, 11);
INSERT INTO `billitems` VALUES(1693, 5, 11);
INSERT INTO `billitems` VALUES(1694, 5, 11);
INSERT INTO `billitems` VALUES(1695, 5, 11);
INSERT INTO `billitems` VALUES(1696, 5, 11);
INSERT INTO `billitems` VALUES(1697, 5, 11);
INSERT INTO `billitems` VALUES(1698, 5, 11);
INSERT INTO `billitems` VALUES(1699, 5, 11);
INSERT INTO `billitems` VALUES(1700, 5, 11);
INSERT INTO `billitems` VALUES(1701, 5, 11);
INSERT INTO `billitems` VALUES(1702, 5, 11);
INSERT INTO `billitems` VALUES(1703, 5, 11);
INSERT INTO `billitems` VALUES(1704, 5, 11);
INSERT INTO `billitems` VALUES(1705, 5, 11);
INSERT INTO `billitems` VALUES(1706, 5, 11);
INSERT INTO `billitems` VALUES(1707, 5, 11);
INSERT INTO `billitems` VALUES(1708, 5, 11);
INSERT INTO `billitems` VALUES(1709, 5, 11);
INSERT INTO `billitems` VALUES(1710, 5, 11);
INSERT INTO `billitems` VALUES(1711, 5, 11);
INSERT INTO `billitems` VALUES(1712, 5, 11);
INSERT INTO `billitems` VALUES(1713, 5, 11);
INSERT INTO `billitems` VALUES(1714, 5, 11);
INSERT INTO `billitems` VALUES(1715, 5, 11);
INSERT INTO `billitems` VALUES(1716, 5, 11);
INSERT INTO `billitems` VALUES(1717, 5, 11);
INSERT INTO `billitems` VALUES(1718, 5, 11);
INSERT INTO `billitems` VALUES(1719, 5, 11);
INSERT INTO `billitems` VALUES(1720, 5, 11);
INSERT INTO `billitems` VALUES(1721, 5, 11);
INSERT INTO `billitems` VALUES(1722, 5, 11);
INSERT INTO `billitems` VALUES(1723, 5, 11);
INSERT INTO `billitems` VALUES(1724, 5, 11);
INSERT INTO `billitems` VALUES(1725, 5, 11);
INSERT INTO `billitems` VALUES(1726, 5, 11);
INSERT INTO `billitems` VALUES(1727, 5, 11);
INSERT INTO `billitems` VALUES(1728, 5, 11);
INSERT INTO `billitems` VALUES(1729, 5, 11);
INSERT INTO `billitems` VALUES(1730, 5, 11);
INSERT INTO `billitems` VALUES(1731, 5, 11);
INSERT INTO `billitems` VALUES(1732, 5, 11);
INSERT INTO `billitems` VALUES(1733, 5, 11);
INSERT INTO `billitems` VALUES(1734, 5, 11);
INSERT INTO `billitems` VALUES(1735, 5, 11);
INSERT INTO `billitems` VALUES(1736, 5, 11);
INSERT INTO `billitems` VALUES(1737, 5, 11);
INSERT INTO `billitems` VALUES(1738, 5, 11);
INSERT INTO `billitems` VALUES(1739, 5, 11);
INSERT INTO `billitems` VALUES(1740, 5, 11);
INSERT INTO `billitems` VALUES(1741, 5, 11);
INSERT INTO `billitems` VALUES(1742, 5, 11);
INSERT INTO `billitems` VALUES(1743, 5, 11);
INSERT INTO `billitems` VALUES(1744, 5, 11);
INSERT INTO `billitems` VALUES(1745, 5, 11);
INSERT INTO `billitems` VALUES(1746, 5, 11);
INSERT INTO `billitems` VALUES(1747, 5, 11);
INSERT INTO `billitems` VALUES(1748, 5, 11);
INSERT INTO `billitems` VALUES(1749, 5, 11);
INSERT INTO `billitems` VALUES(1750, 5, 11);
INSERT INTO `billitems` VALUES(1751, 5, 11);
INSERT INTO `billitems` VALUES(1752, 5, 11);
INSERT INTO `billitems` VALUES(1753, 5, 11);
INSERT INTO `billitems` VALUES(1754, 5, 11);
INSERT INTO `billitems` VALUES(1755, 5, 11);
INSERT INTO `billitems` VALUES(1756, 5, 11);
INSERT INTO `billitems` VALUES(1757, 5, 11);
INSERT INTO `billitems` VALUES(1758, 5, 11);
INSERT INTO `billitems` VALUES(1759, 5, 11);
INSERT INTO `billitems` VALUES(1760, 5, 11);
INSERT INTO `billitems` VALUES(1761, 5, 11);
INSERT INTO `billitems` VALUES(1762, 5, 11);
INSERT INTO `billitems` VALUES(1763, 5, 11);
INSERT INTO `billitems` VALUES(1764, 5, 11);
INSERT INTO `billitems` VALUES(1765, 5, 11);
INSERT INTO `billitems` VALUES(1766, 5, 11);
INSERT INTO `billitems` VALUES(1767, 5, 11);
INSERT INTO `billitems` VALUES(1768, 5, 11);
INSERT INTO `billitems` VALUES(1769, 5, 11);
INSERT INTO `billitems` VALUES(1770, 5, 11);
INSERT INTO `billitems` VALUES(1771, 5, 11);
INSERT INTO `billitems` VALUES(1772, 5, 11);
INSERT INTO `billitems` VALUES(1773, 5, 11);
INSERT INTO `billitems` VALUES(1774, 5, 11);
INSERT INTO `billitems` VALUES(1775, 5, 11);
INSERT INTO `billitems` VALUES(1776, 5, 11);
INSERT INTO `billitems` VALUES(1777, 5, 11);
INSERT INTO `billitems` VALUES(1778, 5, 11);
INSERT INTO `billitems` VALUES(1779, 5, 11);
INSERT INTO `billitems` VALUES(1780, 5, 11);
INSERT INTO `billitems` VALUES(1781, 5, 11);
INSERT INTO `billitems` VALUES(1782, 5, 11);
INSERT INTO `billitems` VALUES(1783, 5, 11);
INSERT INTO `billitems` VALUES(1784, 5, 11);
INSERT INTO `billitems` VALUES(1785, 5, 11);
INSERT INTO `billitems` VALUES(1786, 5, 11);
INSERT INTO `billitems` VALUES(1787, 5, 11);
INSERT INTO `billitems` VALUES(1788, 5, 11);
INSERT INTO `billitems` VALUES(1789, 5, 11);
INSERT INTO `billitems` VALUES(1790, 5, 11);
INSERT INTO `billitems` VALUES(1791, 5, 11);
INSERT INTO `billitems` VALUES(1792, 5, 11);
INSERT INTO `billitems` VALUES(1793, 5, 11);
INSERT INTO `billitems` VALUES(1794, 5, 11);
INSERT INTO `billitems` VALUES(1795, 5, 11);
INSERT INTO `billitems` VALUES(1796, 5, 11);
INSERT INTO `billitems` VALUES(1797, 5, 11);
INSERT INTO `billitems` VALUES(1798, 5, 11);
INSERT INTO `billitems` VALUES(1799, 5, 11);
INSERT INTO `billitems` VALUES(1800, 5, 11);
INSERT INTO `billitems` VALUES(1801, 5, 11);
INSERT INTO `billitems` VALUES(1802, 5, 11);
INSERT INTO `billitems` VALUES(1803, 5, 11);
INSERT INTO `billitems` VALUES(1804, 5, 11);
INSERT INTO `billitems` VALUES(1805, 5, 11);
INSERT INTO `billitems` VALUES(1806, 5, 11);
INSERT INTO `billitems` VALUES(1807, 5, 11);
INSERT INTO `billitems` VALUES(1808, 5, 11);
INSERT INTO `billitems` VALUES(1809, 5, 11);
INSERT INTO `billitems` VALUES(1810, 5, 11);
INSERT INTO `billitems` VALUES(1811, 5, 11);
INSERT INTO `billitems` VALUES(1812, 5, 11);
INSERT INTO `billitems` VALUES(1813, 5, 11);
INSERT INTO `billitems` VALUES(1814, 5, 11);
INSERT INTO `billitems` VALUES(1815, 5, 11);
INSERT INTO `billitems` VALUES(1816, 5, 11);
INSERT INTO `billitems` VALUES(1817, 5, 11);
INSERT INTO `billitems` VALUES(1818, 5, 11);
INSERT INTO `billitems` VALUES(1819, 5, 11);
INSERT INTO `billitems` VALUES(1820, 5, 11);
INSERT INTO `billitems` VALUES(1821, 5, 11);
INSERT INTO `billitems` VALUES(1822, 5, 11);
INSERT INTO `billitems` VALUES(1823, 5, 11);
INSERT INTO `billitems` VALUES(1824, 5, 11);
INSERT INTO `billitems` VALUES(1825, 5, 11);
INSERT INTO `billitems` VALUES(1826, 5, 11);
INSERT INTO `billitems` VALUES(1827, 5, 11);
INSERT INTO `billitems` VALUES(1828, 5, 11);
INSERT INTO `billitems` VALUES(1829, 5, 11);
INSERT INTO `billitems` VALUES(1830, 5, 11);
INSERT INTO `billitems` VALUES(1831, 5, 11);
INSERT INTO `billitems` VALUES(1832, 5, 11);
INSERT INTO `billitems` VALUES(1833, 5, 11);
INSERT INTO `billitems` VALUES(1834, 5, 11);
INSERT INTO `billitems` VALUES(1835, 5, 11);
INSERT INTO `billitems` VALUES(1836, 5, 11);
INSERT INTO `billitems` VALUES(1837, 5, 11);
INSERT INTO `billitems` VALUES(1838, 5, 11);
INSERT INTO `billitems` VALUES(1839, 5, 11);
INSERT INTO `billitems` VALUES(1840, 5, 11);
INSERT INTO `billitems` VALUES(1841, 5, 11);
INSERT INTO `billitems` VALUES(1842, 5, 11);
INSERT INTO `billitems` VALUES(1843, 5, 11);
INSERT INTO `billitems` VALUES(1844, 5, 11);
INSERT INTO `billitems` VALUES(1845, 5, 11);
INSERT INTO `billitems` VALUES(1846, 5, 11);
INSERT INTO `billitems` VALUES(1847, 5, 11);
INSERT INTO `billitems` VALUES(1848, 5, 11);
INSERT INTO `billitems` VALUES(1849, 5, 11);
INSERT INTO `billitems` VALUES(1850, 5, 11);
INSERT INTO `billitems` VALUES(1851, 5, 11);
INSERT INTO `billitems` VALUES(1852, 5, 11);
INSERT INTO `billitems` VALUES(1853, 5, 11);
INSERT INTO `billitems` VALUES(1854, 5, 11);
INSERT INTO `billitems` VALUES(1855, 5, 11);
INSERT INTO `billitems` VALUES(1856, 5, 11);
INSERT INTO `billitems` VALUES(1857, 5, 11);
INSERT INTO `billitems` VALUES(1858, 5, 11);
INSERT INTO `billitems` VALUES(1859, 5, 11);
INSERT INTO `billitems` VALUES(1860, 5, 11);
INSERT INTO `billitems` VALUES(1861, 5, 11);
INSERT INTO `billitems` VALUES(1862, 5, 11);
INSERT INTO `billitems` VALUES(1863, 5, 11);
INSERT INTO `billitems` VALUES(1864, 5, 11);
INSERT INTO `billitems` VALUES(1865, 5, 11);
INSERT INTO `billitems` VALUES(1866, 5, 11);
INSERT INTO `billitems` VALUES(1867, 5, 11);
INSERT INTO `billitems` VALUES(1868, 5, 11);
INSERT INTO `billitems` VALUES(1869, 5, 11);
INSERT INTO `billitems` VALUES(1870, 5, 11);
INSERT INTO `billitems` VALUES(1871, 5, 11);
INSERT INTO `billitems` VALUES(1872, 5, 11);
INSERT INTO `billitems` VALUES(1873, 5, 11);
INSERT INTO `billitems` VALUES(1874, 5, 11);
INSERT INTO `billitems` VALUES(1875, 5, 11);
INSERT INTO `billitems` VALUES(1876, 5, 11);
INSERT INTO `billitems` VALUES(1877, 5, 11);
INSERT INTO `billitems` VALUES(1878, 5, 11);
INSERT INTO `billitems` VALUES(1879, 5, 11);
INSERT INTO `billitems` VALUES(1880, 5, 11);
INSERT INTO `billitems` VALUES(1881, 5, 11);
INSERT INTO `billitems` VALUES(1882, 5, 11);
INSERT INTO `billitems` VALUES(1883, 5, 11);
INSERT INTO `billitems` VALUES(1884, 5, 11);
INSERT INTO `billitems` VALUES(1885, 5, 11);
INSERT INTO `billitems` VALUES(1886, 5, 11);
INSERT INTO `billitems` VALUES(1887, 5, 11);
INSERT INTO `billitems` VALUES(1888, 5, 11);
INSERT INTO `billitems` VALUES(1889, 5, 11);
INSERT INTO `billitems` VALUES(1890, 5, 11);
INSERT INTO `billitems` VALUES(1891, 5, 11);
INSERT INTO `billitems` VALUES(1892, 5, 11);
INSERT INTO `billitems` VALUES(1893, 5, 11);
INSERT INTO `billitems` VALUES(1894, 5, 11);
INSERT INTO `billitems` VALUES(1895, 5, 11);
INSERT INTO `billitems` VALUES(1896, 5, 11);
INSERT INTO `billitems` VALUES(1897, 5, 11);
INSERT INTO `billitems` VALUES(1898, 5, 11);
INSERT INTO `billitems` VALUES(1899, 5, 11);
INSERT INTO `billitems` VALUES(1900, 5, 11);
INSERT INTO `billitems` VALUES(1901, 5, 11);
INSERT INTO `billitems` VALUES(1902, 5, 11);
INSERT INTO `billitems` VALUES(1903, 5, 11);
INSERT INTO `billitems` VALUES(1904, 5, 11);
INSERT INTO `billitems` VALUES(1905, 5, 11);
INSERT INTO `billitems` VALUES(1906, 5, 11);
INSERT INTO `billitems` VALUES(1907, 5, 11);
INSERT INTO `billitems` VALUES(1908, 5, 11);
INSERT INTO `billitems` VALUES(1909, 5, 11);
INSERT INTO `billitems` VALUES(1910, 5, 11);
INSERT INTO `billitems` VALUES(1911, 5, 11);
INSERT INTO `billitems` VALUES(1912, 5, 11);
INSERT INTO `billitems` VALUES(1913, 5, 11);
INSERT INTO `billitems` VALUES(1914, 5, 11);
INSERT INTO `billitems` VALUES(1915, 5, 11);
INSERT INTO `billitems` VALUES(1916, 5, 11);
INSERT INTO `billitems` VALUES(1917, 5, 11);
INSERT INTO `billitems` VALUES(1918, 5, 11);
INSERT INTO `billitems` VALUES(1919, 5, 11);
INSERT INTO `billitems` VALUES(1920, 5, 11);
INSERT INTO `billitems` VALUES(1921, 5, 11);
INSERT INTO `billitems` VALUES(1922, 5, 11);
INSERT INTO `billitems` VALUES(1923, 5, 11);
INSERT INTO `billitems` VALUES(1924, 5, 11);
INSERT INTO `billitems` VALUES(1925, 5, 11);
INSERT INTO `billitems` VALUES(1926, 5, 11);
INSERT INTO `billitems` VALUES(1927, 5, 11);
INSERT INTO `billitems` VALUES(1928, 5, 11);
INSERT INTO `billitems` VALUES(1929, 5, 11);
INSERT INTO `billitems` VALUES(1930, 5, 11);
INSERT INTO `billitems` VALUES(1931, 5, 11);
INSERT INTO `billitems` VALUES(1932, 5, 11);
INSERT INTO `billitems` VALUES(1933, 5, 11);
INSERT INTO `billitems` VALUES(1934, 5, 11);
INSERT INTO `billitems` VALUES(1935, 5, 11);
INSERT INTO `billitems` VALUES(1936, 5, 11);
INSERT INTO `billitems` VALUES(1937, 5, 11);
INSERT INTO `billitems` VALUES(1938, 5, 11);
INSERT INTO `billitems` VALUES(1939, 5, 11);
INSERT INTO `billitems` VALUES(1940, 5, 11);
INSERT INTO `billitems` VALUES(1941, 5, 11);
INSERT INTO `billitems` VALUES(1942, 5, 11);
INSERT INTO `billitems` VALUES(1943, 5, 11);
INSERT INTO `billitems` VALUES(1944, 5, 11);
INSERT INTO `billitems` VALUES(1945, 5, 11);
INSERT INTO `billitems` VALUES(1946, 5, 11);
INSERT INTO `billitems` VALUES(1947, 5, 11);
INSERT INTO `billitems` VALUES(1948, 5, 11);
INSERT INTO `billitems` VALUES(1949, 5, 11);
INSERT INTO `billitems` VALUES(1950, 5, 11);
INSERT INTO `billitems` VALUES(1951, 5, 11);
INSERT INTO `billitems` VALUES(1952, 5, 11);
INSERT INTO `billitems` VALUES(1953, 5, 11);
INSERT INTO `billitems` VALUES(1954, 5, 11);
INSERT INTO `billitems` VALUES(1955, 5, 11);
INSERT INTO `billitems` VALUES(1956, 5, 11);
INSERT INTO `billitems` VALUES(1957, 5, 11);
INSERT INTO `billitems` VALUES(1958, 5, 11);
INSERT INTO `billitems` VALUES(1959, 5, 11);
INSERT INTO `billitems` VALUES(1960, 5, 11);
INSERT INTO `billitems` VALUES(1961, 5, 11);
INSERT INTO `billitems` VALUES(1962, 5, 11);
INSERT INTO `billitems` VALUES(1963, 5, 11);
INSERT INTO `billitems` VALUES(1964, 5, 11);
INSERT INTO `billitems` VALUES(1965, 5, 11);
INSERT INTO `billitems` VALUES(1966, 5, 11);
INSERT INTO `billitems` VALUES(1967, 5, 11);
INSERT INTO `billitems` VALUES(1968, 5, 11);
INSERT INTO `billitems` VALUES(1969, 5, 11);
INSERT INTO `billitems` VALUES(1970, 5, 11);
INSERT INTO `billitems` VALUES(1971, 5, 11);
INSERT INTO `billitems` VALUES(1972, 5, 11);
INSERT INTO `billitems` VALUES(1973, 5, 11);
INSERT INTO `billitems` VALUES(1974, 5, 11);
INSERT INTO `billitems` VALUES(1975, 5, 11);
INSERT INTO `billitems` VALUES(1976, 5, 11);
INSERT INTO `billitems` VALUES(1977, 5, 11);
INSERT INTO `billitems` VALUES(1978, 5, 11);
INSERT INTO `billitems` VALUES(1979, 5, 11);
INSERT INTO `billitems` VALUES(1980, 5, 11);
INSERT INTO `billitems` VALUES(1981, 5, 11);
INSERT INTO `billitems` VALUES(1982, 5, 11);
INSERT INTO `billitems` VALUES(1983, 5, 11);
INSERT INTO `billitems` VALUES(1984, 5, 11);
INSERT INTO `billitems` VALUES(1985, 5, 11);
INSERT INTO `billitems` VALUES(1986, 5, 11);
INSERT INTO `billitems` VALUES(1987, 5, 11);
INSERT INTO `billitems` VALUES(1988, 5, 11);
INSERT INTO `billitems` VALUES(1989, 5, 11);
INSERT INTO `billitems` VALUES(1990, 5, 11);
INSERT INTO `billitems` VALUES(1991, 5, 11);
INSERT INTO `billitems` VALUES(1992, 5, 11);
INSERT INTO `billitems` VALUES(1993, 5, 11);
INSERT INTO `billitems` VALUES(1994, 5, 11);
INSERT INTO `billitems` VALUES(1995, 5, 11);
INSERT INTO `billitems` VALUES(1996, 5, 11);
INSERT INTO `billitems` VALUES(1997, 5, 11);
INSERT INTO `billitems` VALUES(1998, 5, 11);
INSERT INTO `billitems` VALUES(1999, 5, 11);
INSERT INTO `billitems` VALUES(2000, 5, 11);
INSERT INTO `billitems` VALUES(2001, 5, 11);
INSERT INTO `billitems` VALUES(2002, 5, 11);
INSERT INTO `billitems` VALUES(2003, 5, 11);
INSERT INTO `billitems` VALUES(2004, 5, 11);
INSERT INTO `billitems` VALUES(2005, 5, 11);
INSERT INTO `billitems` VALUES(2006, 5, 11);
INSERT INTO `billitems` VALUES(2007, 5, 11);
INSERT INTO `billitems` VALUES(2008, 5, 11);
INSERT INTO `billitems` VALUES(2009, 5, 11);
INSERT INTO `billitems` VALUES(2010, 5, 11);
INSERT INTO `billitems` VALUES(2011, 5, 11);
INSERT INTO `billitems` VALUES(2012, 5, 11);
INSERT INTO `billitems` VALUES(2013, 5, 11);
INSERT INTO `billitems` VALUES(2014, 5, 11);
INSERT INTO `billitems` VALUES(2015, 5, 11);
INSERT INTO `billitems` VALUES(2016, 5, 11);
INSERT INTO `billitems` VALUES(2017, 5, 11);
INSERT INTO `billitems` VALUES(2018, 5, 11);
INSERT INTO `billitems` VALUES(2019, 5, 11);
INSERT INTO `billitems` VALUES(2020, 5, 11);
INSERT INTO `billitems` VALUES(2021, 5, 11);
INSERT INTO `billitems` VALUES(2022, 5, 11);
INSERT INTO `billitems` VALUES(2023, 5, 11);
INSERT INTO `billitems` VALUES(2024, 5, 11);
INSERT INTO `billitems` VALUES(2025, 5, 11);
INSERT INTO `billitems` VALUES(2026, 5, 11);
INSERT INTO `billitems` VALUES(2027, 5, 11);
INSERT INTO `billitems` VALUES(2028, 5, 11);
INSERT INTO `billitems` VALUES(2029, 5, 11);
INSERT INTO `billitems` VALUES(2030, 5, 11);
INSERT INTO `billitems` VALUES(2031, 5, 11);
INSERT INTO `billitems` VALUES(2032, 5, 11);
INSERT INTO `billitems` VALUES(2033, 5, 11);
INSERT INTO `billitems` VALUES(2034, 5, 11);
INSERT INTO `billitems` VALUES(2035, 5, 11);
INSERT INTO `billitems` VALUES(2036, 5, 11);
INSERT INTO `billitems` VALUES(2037, 5, 11);
INSERT INTO `billitems` VALUES(2038, 5, 11);
INSERT INTO `billitems` VALUES(2039, 5, 11);
INSERT INTO `billitems` VALUES(2040, 5, 11);
INSERT INTO `billitems` VALUES(2041, 5, 11);
INSERT INTO `billitems` VALUES(2042, 5, 11);
INSERT INTO `billitems` VALUES(2043, 5, 11);
INSERT INTO `billitems` VALUES(2044, 5, 11);
INSERT INTO `billitems` VALUES(2045, 5, 11);
INSERT INTO `billitems` VALUES(2046, 5, 11);
INSERT INTO `billitems` VALUES(2047, 5, 11);
INSERT INTO `billitems` VALUES(2048, 5, 11);
INSERT INTO `billitems` VALUES(2049, 5, 11);
INSERT INTO `billitems` VALUES(2050, 5, 11);
INSERT INTO `billitems` VALUES(2051, 5, 11);
INSERT INTO `billitems` VALUES(2052, 5, 11);
INSERT INTO `billitems` VALUES(2053, 5, 11);
INSERT INTO `billitems` VALUES(2054, 5, 11);
INSERT INTO `billitems` VALUES(2055, 5, 11);
INSERT INTO `billitems` VALUES(2056, 5, 11);
INSERT INTO `billitems` VALUES(2057, 5, 11);
INSERT INTO `billitems` VALUES(2058, 5, 11);
INSERT INTO `billitems` VALUES(2059, 5, 11);
INSERT INTO `billitems` VALUES(2060, 5, 11);
INSERT INTO `billitems` VALUES(2061, 5, 11);
INSERT INTO `billitems` VALUES(2062, 5, 11);
INSERT INTO `billitems` VALUES(2063, 5, 11);
INSERT INTO `billitems` VALUES(2064, 5, 11);
INSERT INTO `billitems` VALUES(2065, 5, 11);
INSERT INTO `billitems` VALUES(2066, 5, 11);
INSERT INTO `billitems` VALUES(2067, 5, 11);
INSERT INTO `billitems` VALUES(2068, 5, 11);
INSERT INTO `billitems` VALUES(2069, 5, 11);
INSERT INTO `billitems` VALUES(2070, 5, 11);
INSERT INTO `billitems` VALUES(2071, 5, 11);
INSERT INTO `billitems` VALUES(2072, 5, 11);
INSERT INTO `billitems` VALUES(2073, 5, 11);
INSERT INTO `billitems` VALUES(2074, 5, 11);
INSERT INTO `billitems` VALUES(2075, 5, 11);
INSERT INTO `billitems` VALUES(2076, 5, 11);
INSERT INTO `billitems` VALUES(2077, 5, 11);
INSERT INTO `billitems` VALUES(2078, 5, 11);
INSERT INTO `billitems` VALUES(2079, 5, 11);
INSERT INTO `billitems` VALUES(2080, 5, 11);
INSERT INTO `billitems` VALUES(2081, 5, 11);
INSERT INTO `billitems` VALUES(2082, 5, 11);
INSERT INTO `billitems` VALUES(2083, 5, 11);
INSERT INTO `billitems` VALUES(2084, 5, 11);
INSERT INTO `billitems` VALUES(2085, 5, 11);
INSERT INTO `billitems` VALUES(2086, 5, 11);
INSERT INTO `billitems` VALUES(2087, 5, 11);
INSERT INTO `billitems` VALUES(2088, 5, 11);
INSERT INTO `billitems` VALUES(2089, 5, 11);
INSERT INTO `billitems` VALUES(2090, 5, 11);
INSERT INTO `billitems` VALUES(2091, 5, 11);
INSERT INTO `billitems` VALUES(2092, 5, 11);
INSERT INTO `billitems` VALUES(2093, 5, 11);
INSERT INTO `billitems` VALUES(2094, 5, 11);
INSERT INTO `billitems` VALUES(2095, 5, 11);
INSERT INTO `billitems` VALUES(2096, 5, 11);
INSERT INTO `billitems` VALUES(2097, 5, 11);
INSERT INTO `billitems` VALUES(2098, 5, 11);
INSERT INTO `billitems` VALUES(2099, 5, 11);
INSERT INTO `billitems` VALUES(2100, 5, 11);
INSERT INTO `billitems` VALUES(2101, 5, 11);
INSERT INTO `billitems` VALUES(2102, 5, 11);
INSERT INTO `billitems` VALUES(2103, 5, 11);
INSERT INTO `billitems` VALUES(2104, 5, 11);
INSERT INTO `billitems` VALUES(2105, 5, 11);
INSERT INTO `billitems` VALUES(2106, 5, 11);
INSERT INTO `billitems` VALUES(2107, 5, 11);
INSERT INTO `billitems` VALUES(2108, 5, 11);
INSERT INTO `billitems` VALUES(2109, 5, 11);
INSERT INTO `billitems` VALUES(2110, 5, 11);
INSERT INTO `billitems` VALUES(2111, 5, 11);
INSERT INTO `billitems` VALUES(2112, 5, 11);
INSERT INTO `billitems` VALUES(2113, 5, 11);
INSERT INTO `billitems` VALUES(2114, 5, 11);
INSERT INTO `billitems` VALUES(2115, 5, 11);
INSERT INTO `billitems` VALUES(2116, 5, 11);
INSERT INTO `billitems` VALUES(2117, 5, 11);
INSERT INTO `billitems` VALUES(2118, 5, 11);
INSERT INTO `billitems` VALUES(2119, 5, 11);
INSERT INTO `billitems` VALUES(2120, 5, 11);
INSERT INTO `billitems` VALUES(2121, 5, 11);
INSERT INTO `billitems` VALUES(2122, 5, 11);
INSERT INTO `billitems` VALUES(2123, 5, 11);
INSERT INTO `billitems` VALUES(2124, 5, 11);
INSERT INTO `billitems` VALUES(2125, 5, 11);
INSERT INTO `billitems` VALUES(2126, 5, 11);
INSERT INTO `billitems` VALUES(2127, 5, 11);
INSERT INTO `billitems` VALUES(2128, 5, 11);
INSERT INTO `billitems` VALUES(2129, 5, 11);
INSERT INTO `billitems` VALUES(2130, 5, 11);
INSERT INTO `billitems` VALUES(2131, 5, 11);
INSERT INTO `billitems` VALUES(2132, 5, 11);
INSERT INTO `billitems` VALUES(2133, 5, 11);
INSERT INTO `billitems` VALUES(2134, 5, 11);
INSERT INTO `billitems` VALUES(2135, 5, 11);
INSERT INTO `billitems` VALUES(2136, 5, 11);
INSERT INTO `billitems` VALUES(2137, 5, 11);
INSERT INTO `billitems` VALUES(2138, 5, 11);
INSERT INTO `billitems` VALUES(2139, 5, 11);
INSERT INTO `billitems` VALUES(2140, 5, 11);
INSERT INTO `billitems` VALUES(2141, 5, 11);
INSERT INTO `billitems` VALUES(2142, 5, 11);
INSERT INTO `billitems` VALUES(2143, 5, 11);
INSERT INTO `billitems` VALUES(2144, 5, 11);
INSERT INTO `billitems` VALUES(2145, 5, 11);
INSERT INTO `billitems` VALUES(2146, 5, 11);
INSERT INTO `billitems` VALUES(2147, 5, 11);
INSERT INTO `billitems` VALUES(2148, 5, 11);
INSERT INTO `billitems` VALUES(2149, 5, 11);
INSERT INTO `billitems` VALUES(2150, 5, 11);
INSERT INTO `billitems` VALUES(2151, 5, 11);
INSERT INTO `billitems` VALUES(2152, 5, 11);
INSERT INTO `billitems` VALUES(2153, 5, 11);
INSERT INTO `billitems` VALUES(2154, 5, 11);
INSERT INTO `billitems` VALUES(2155, 5, 11);
INSERT INTO `billitems` VALUES(2156, 5, 11);
INSERT INTO `billitems` VALUES(2157, 5, 11);
INSERT INTO `billitems` VALUES(2158, 5, 11);
INSERT INTO `billitems` VALUES(2159, 5, 11);
INSERT INTO `billitems` VALUES(2160, 5, 11);
INSERT INTO `billitems` VALUES(2161, 5, 11);
INSERT INTO `billitems` VALUES(2162, 18, 12);
INSERT INTO `billitems` VALUES(2163, 18, 12);
INSERT INTO `billitems` VALUES(2164, 18, 12);
INSERT INTO `billitems` VALUES(2165, 18, 12);
INSERT INTO `billitems` VALUES(2166, 18, 12);
INSERT INTO `billitems` VALUES(2167, 18, 12);
INSERT INTO `billitems` VALUES(2168, 18, 12);
INSERT INTO `billitems` VALUES(2169, 18, 12);
INSERT INTO `billitems` VALUES(2170, 18, 12);
INSERT INTO `billitems` VALUES(2171, 18, 12);
INSERT INTO `billitems` VALUES(2172, 18, 12);
INSERT INTO `billitems` VALUES(2173, 18, 12);
INSERT INTO `billitems` VALUES(2174, 19, 12);
INSERT INTO `billitems` VALUES(2175, 6, 13);
INSERT INTO `billitems` VALUES(2176, 6, 13);
INSERT INTO `billitems` VALUES(2177, 6, 13);
INSERT INTO `billitems` VALUES(2178, 6, 13);
INSERT INTO `billitems` VALUES(2179, 6, 13);
INSERT INTO `billitems` VALUES(2180, 6, 13);
INSERT INTO `billitems` VALUES(2181, 6, 13);
INSERT INTO `billitems` VALUES(2182, 6, 13);
INSERT INTO `billitems` VALUES(2183, 6, 13);
INSERT INTO `billitems` VALUES(2184, 6, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bills`
--

DROP TABLE IF EXISTS `bills`;
CREATE TABLE `bills` (
  `idBill` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idRestaurant` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `specialNote` text,
  `served` int(1) NOT NULL,
  PRIMARY KEY (`idBill`),
  KEY `idRestaurant` (`idRestaurant`),
  KEY `idClient` (`idClient`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Volcar la base de datos para la tabla `bills`
--

INSERT INTO `bills` VALUES(10, '2011-11-17 01:16:42', 4, 4, 'La carne bieeen blandita :P', 1);
INSERT INTO `bills` VALUES(11, '2011-11-17 01:43:34', 4, 4, 'Si, son muchas gelatinas. Es que tengo hambre :)', 0);
INSERT INTO `bills` VALUES(12, '2011-11-18 23:26:14', 12, 4, 'El super taco que estÃ© sabrosÃ³n :)', 0);
INSERT INTO `bills` VALUES(13, '2011-11-24 01:08:59', 4, 4, 'Si, saben a rata, pero igual la arman :P', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `idCategory` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL DEFAULT '',
  `idRestaurant` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCategory`),
  KEY `idRestaurant` (`idRestaurant`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Volcar la base de datos para la tabla `categories`
--

INSERT INTO `categories` VALUES(1, 'Otro', 4);
INSERT INTO `categories` VALUES(2, 'Entradas', 4);
INSERT INTO `categories` VALUES(3, 'Sin CategorÃ­a', 5);
INSERT INTO `categories` VALUES(4, 'Postres', 4);
INSERT INTO `categories` VALUES(5, 'Carnes', 4);
INSERT INTO `categories` VALUES(8, 'Sin CategorÃ­a', 8);
INSERT INTO `categories` VALUES(9, 'Sin CategorÃ­a', 9);
INSERT INTO `categories` VALUES(10, 'Sin CategorÃ­a', 10);
INSERT INTO `categories` VALUES(11, 'Sin CategorÃ­a', 11);
INSERT INTO `categories` VALUES(12, 'Sin CategorÃ­a', 12);
INSERT INTO `categories` VALUES(13, 'Entradas', 12);
INSERT INTO `categories` VALUES(14, 'Super Especiales', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`idClient`),
  KEY `idUser` (`idUser`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcar la base de datos para la tabla `clients`
--

INSERT INTO `clients` VALUES(0, 'Propio', 'Propio', 'Propio', 'Propio', 'Propio', 'Propi', 0);
INSERT INTO `clients` VALUES(4, 'Celso Ulises', 'Juarez Ramirez', '3124890', 'Armeria 577-A', 'Colima', '28046', 7);
INSERT INTO `clients` VALUES(5, '123', '123', '123', '123', '123', '123', 9);
INSERT INTO `clients` VALUES(6, '123', '123', '123', '123', '123', '123', 10);
INSERT INTO `clients` VALUES(7, 'Celso Ulises', 'Juarez Ramirez', '313131', 'Armeria', 'Colima', '28046', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dishcomments`
--

DROP TABLE IF EXISTS `dishcomments`;
CREATE TABLE `dishcomments` (
  `idDishComment` int(11) NOT NULL AUTO_INCREMENT,
  `idDish` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `comment` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idDishComment`),
  KEY `idDish` (`idDish`),
  KEY `idClient` (`idClient`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcar la base de datos para la tabla `dishcomments`
--

INSERT INTO `dishcomments` VALUES(1, 18, 5, 'asdasd', '2011-11-19 04:24:52');
INSERT INTO `dishcomments` VALUES(3, 17, 4, 'Sabe rico! :)', '2011-11-19 17:06:36');
INSERT INTO `dishcomments` VALUES(4, 18, 4, 'QUESO!! CHOCOLATÃ“N!', '2011-11-19 17:15:30');
INSERT INTO `dishcomments` VALUES(5, 18, 4, 'Probando :P', '2011-11-19 17:20:39');
INSERT INTO `dishcomments` VALUES(6, 5, 4, ':P', '2011-11-19 17:23:41');
INSERT INTO `dishcomments` VALUES(7, 5, 4, ':P', '2011-11-19 17:24:01');
INSERT INTO `dishcomments` VALUES(8, 1, 0, 'Hola soy el dueÃ±o de este platillo :D', '2011-11-24 01:04:19');
INSERT INTO `dishcomments` VALUES(9, 6, 0, 'Mmm!! Nuestras jericallas estÃ¡n de RE-chupete :D', '2011-11-24 01:07:12');
INSERT INTO `dishcomments` VALUES(10, 6, 4, 'Mentira! A pura rata saben! D:', '2011-11-24 01:08:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dishes`
--

DROP TABLE IF EXISTS `dishes`;
CREATE TABLE `dishes` (
  `idDish` int(11) NOT NULL AUTO_INCREMENT,
  `dish` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `idCategory` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`idDish`),
  KEY `idCategory` (`idCategory`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Volcar la base de datos para la tabla `dishes`
--

INSERT INTO `dishes` VALUES(1, 'Torta Ahogada', 25, 2, 'jpg', '');
INSERT INTO `dishes` VALUES(4, 'Pollo', 135, 1, '', '');
INSERT INTO `dishes` VALUES(5, 'Gelatina', 20, 4, 'gif', 'Rica gelatina con la receta secreta!');
INSERT INTO `dishes` VALUES(6, 'Jericalla', 12, 4, '', '');
INSERT INTO `dishes` VALUES(7, 'carne', 12, 5, '', '');
INSERT INTO `dishes` VALUES(17, '333', 333, 13, 'png', '');
INSERT INTO `dishes` VALUES(18, 'Super Salsita', 5, 13, 'png', 'Super salsita re-sabrosa :D');
INSERT INTO `dishes` VALUES(19, 'Super Taco', 123, 14, 'jpg', 'Un super taco de asada con mucha verdura, salsa y queso. Una delicia.');

--
-- (Evento) desencadenante `dishes`
--
DROP TRIGGER IF EXISTS `deleteDish`;
DELIMITER //
CREATE TRIGGER `deleteDish` BEFORE DELETE ON `dishes`
 FOR EACH ROW BEGIN
	DELETE FROM dishscores WHERE idDish = OLD.idDish;
	DELETE FROM dishcomments WHERE idDish = OLD.idDish;
	DELETE FROM billitems WHERE idDish = OLD.idDish;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dishscores`
--

DROP TABLE IF EXISTS `dishscores`;
CREATE TABLE `dishscores` (
  `idDishScore` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL,
  `idDish` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  PRIMARY KEY (`idDishScore`),
  KEY `idDish` (`idDish`),
  KEY `idClient` (`idClient`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcar la base de datos para la tabla `dishscores`
--

INSERT INTO `dishscores` VALUES(3, 4, 7, 4);
INSERT INTO `dishscores` VALUES(4, 5, 1, 4);
INSERT INTO `dishscores` VALUES(5, 3, 17, 4);
INSERT INTO `dishscores` VALUES(6, 5, 18, 4);
INSERT INTO `dishscores` VALUES(7, 2, 5, 4);
INSERT INTO `dishscores` VALUES(8, 1, 6, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurantcomments`
--

DROP TABLE IF EXISTS `restaurantcomments`;
CREATE TABLE `restaurantcomments` (
  `idRestaurantComment` int(11) NOT NULL AUTO_INCREMENT,
  `idRestaurant` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `comment` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idRestaurantComment`),
  KEY `idRestaurant` (`idRestaurant`),
  KEY `idClient` (`idClient`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcar la base de datos para la tabla `restaurantcomments`
--

INSERT INTO `restaurantcomments` VALUES(5, 12, 4, 'Hola2', '2011-11-19 04:22:30');
INSERT INTO `restaurantcomments` VALUES(6, 12, 4, 'Como estÃ¡n todos por aqui?', '2011-11-19 16:16:35');
INSERT INTO `restaurantcomments` VALUES(7, 12, 4, 'HOLAAAAA!!!', '2011-11-19 16:33:31');
INSERT INTO `restaurantcomments` VALUES(9, 12, 0, 'Hola, soy yo! El restaurante! :D', '2011-11-23 23:37:18');
INSERT INTO `restaurantcomments` VALUES(10, 12, 0, 'Hola! Soy Don Panchito!', '2011-11-23 23:47:45');
INSERT INTO `restaurantcomments` VALUES(11, 4, 0, 'Hola :D Soy Don Panchito', '2011-11-24 00:04:46');
INSERT INTO `restaurantcomments` VALUES(12, 4, 4, 'Mentira! A pura rata saben! D:', '2011-11-24 01:07:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE `restaurants` (
  `idRestaurant` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `idType` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idRestaurant`),
  KEY `idUser` (`idUser`),
  KEY `idType` (`idType`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcar la base de datos para la tabla `restaurants`
--

INSERT INTO `restaurants` VALUES(1, 'Loncheria CJuarez', 'Armeria 577A', 'Colima', '28046', '3124890', 4, 3, NULL);
INSERT INTO `restaurants` VALUES(2, 'Jashi', 'Av. Gonzalo de Sandoval #396', 'Colima', 'CP1', '3133131', 1, 3, 'jashi');
INSERT INTO `restaurants` VALUES(3, 'Restaurante 2', 'Calle 2', 'Ciudad 2', 'CP2', 'telefono2', 1, 10, 'logo2');
INSERT INTO `restaurants` VALUES(4, 'Tortas Don Panchito', 'Armeria 577', 'Colima', '28046', '3124980', 4, 11, 'jpg');
INSERT INTO `restaurants` VALUES(5, 'C', 'C', 'C', 'C', 'C', 2, 3, 'jashi');
INSERT INTO `restaurants` VALUES(8, '888', '888', '888', '888', '888', 1, 15, 'gif');
INSERT INTO `restaurants` VALUES(9, '888', '888', '888', '888', '888', 1, 17, 'gif');
INSERT INTO `restaurants` VALUES(10, '888', '888', '888', '888', '888', 1, 18, NULL);
INSERT INTO `restaurants` VALUES(11, '888', '888', '888', '888', '888', 1, 19, 'gif');
INSERT INTO `restaurants` VALUES(12, 'Fonda de Don Pepe', 'Armeria 5777', 'Colima', '28046', '31213131', 1, 20, 'png');

--
-- (Evento) desencadenante `restaurants`
--
DROP TRIGGER IF EXISTS `addCategory`;
DELIMITER //
CREATE TRIGGER `addCategory` AFTER INSERT ON `restaurants`
 FOR EACH ROW INSERT INTO categories(category,idRestaurant) VALUES('Sin CategorÃ­a',NEW.idRestaurant)
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurantscores`
--

DROP TABLE IF EXISTS `restaurantscores`;
CREATE TABLE `restaurantscores` (
  `idRestaurantScore` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL,
  `idRestaurant` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  PRIMARY KEY (`idRestaurantScore`),
  KEY `idRestaurant` (`idRestaurant`),
  KEY `idClient` (`idClient`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `restaurantscores`
--

INSERT INTO `restaurantscores` VALUES(1, 1, 4, 4);
INSERT INTO `restaurantscores` VALUES(2, 4, 2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `idType` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`idType`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcar la base de datos para la tabla `types`
--

INSERT INTO `types` VALUES(1, 'Comida Mexicana');
INSERT INTO `types` VALUES(2, 'Comida Japonesa');
INSERT INTO `types` VALUES(3, 'Comida China');
INSERT INTO `types` VALUES(4, 'LoncherÃ­a');
INSERT INTO `types` VALUES(5, 'TaquerÃ­a');
INSERT INTO `types` VALUES(6, 'CenadurÃ­a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Volcar la base de datos para la tabla `users`
--

INSERT INTO `users` VALUES(0, 'Propio', 'Propio');
INSERT INTO `users` VALUES(3, 'cjrestaurant', 'd7a1a57441231c54643567a8c2a6f29736016e76bf6579d4b');
INSERT INTO `users` VALUES(7, '123', 'c7d6220335bade9a8783431fb1e1bc9282e7b023ddb45fb80');
INSERT INTO `users` VALUES(9, '1234', '162c1c5c51d88b92666bb8f05452840ef8d23f03f91d23102');
INSERT INTO `users` VALUES(10, '12345', '88718cc506e0fe6fb4f74d5fdb460abaec664c30ac004a420');
INSERT INTO `users` VALUES(11, '333', 'c45986e1ac2a1a3d316fd6a6bdbf391505bbb16f9a2bf1814');
INSERT INTO `users` VALUES(15, '888', '40597d27fe1eb076dcabba9b0aa751c1677805c3ecec7fa63');
INSERT INTO `users` VALUES(17, '666', 'f3a610a902ed033ce2fed9100ec67892737fcdeb5ccde1eb8');
INSERT INTO `users` VALUES(18, '555', '37295b23dc37582f1ad539e5bdc6b95c0b5aaebbe3f904619');
INSERT INTO `users` VALUES(19, '444', '116b31df3879ba8a37600d1c9caba34cb8f51b731444f99a6');
INSERT INTO `users` VALUES(20, '777', '782d286361a88eb46e8a4ca6c6641d2b144f1bff063f33859');
INSERT INTO `users` VALUES(21, 'useriPhone', '905310be95b15b3e9acf7a6dd97b565e0fbc04eadfa20f5f8');

--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `billitems`
--
ALTER TABLE `billitems`
  ADD CONSTRAINT `billitems_ibfk_1` FOREIGN KEY (`idDish`) REFERENCES `dishes` (`idDish`),
  ADD CONSTRAINT `billitems_ibfk_2` FOREIGN KEY (`idBill`) REFERENCES `bills` (`idBill`);

--
-- Filtros para la tabla `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`idRestaurant`) REFERENCES `restaurants` (`idRestaurant`),
  ADD CONSTRAINT `bills_ibfk_2` FOREIGN KEY (`idClient`) REFERENCES `clients` (`idClient`);

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`idRestaurant`) REFERENCES `restaurants` (`idRestaurant`);

--
-- Filtros para la tabla `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`);

--
-- Filtros para la tabla `dishcomments`
--
ALTER TABLE `dishcomments`
  ADD CONSTRAINT `dishComments_ibfk_1` FOREIGN KEY (`idDish`) REFERENCES `dishes` (`idDish`),
  ADD CONSTRAINT `dishComments_ibfk_2` FOREIGN KEY (`idClient`) REFERENCES `clients` (`idClient`);

--
-- Filtros para la tabla `dishes`
--
ALTER TABLE `dishes`
  ADD CONSTRAINT `dishes_ibfk_2` FOREIGN KEY (`idCategory`) REFERENCES `categories` (`idCategory`);

--
-- Filtros para la tabla `dishscores`
--
ALTER TABLE `dishscores`
  ADD CONSTRAINT `dishScores_ibfk_1` FOREIGN KEY (`idDish`) REFERENCES `dishes` (`idDish`),
  ADD CONSTRAINT `dishScores_ibfk_2` FOREIGN KEY (`idClient`) REFERENCES `clients` (`idClient`);

--
-- Filtros para la tabla `restaurantcomments`
--
ALTER TABLE `restaurantcomments`
  ADD CONSTRAINT `restaurantComments_ibfk_1` FOREIGN KEY (`idRestaurant`) REFERENCES `restaurants` (`idRestaurant`),
  ADD CONSTRAINT `restaurantComments_ibfk_2` FOREIGN KEY (`idClient`) REFERENCES `clients` (`idClient`);

--
-- Filtros para la tabla `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`),
  ADD CONSTRAINT `restaurants_ibfk_2` FOREIGN KEY (`idType`) REFERENCES `types` (`idType`);

--
-- Filtros para la tabla `restaurantscores`
--
ALTER TABLE `restaurantscores`
  ADD CONSTRAINT `restaurantScores_ibfk_1` FOREIGN KEY (`idRestaurant`) REFERENCES `restaurants` (`idRestaurant`),
  ADD CONSTRAINT `restaurantScores_ibfk_2` FOREIGN KEY (`idClient`) REFERENCES `clients` (`idClient`);
