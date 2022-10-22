-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2022 a las 21:17:46
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aflcinema`
--
CREATE DATABASE IF NOT EXISTS `aflcinema` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `aflcinema`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agrupamientos_permisos`
--

DROP TABLE IF EXISTS `agrupamientos_permisos`;
CREATE TABLE `agrupamientos_permisos` (
  `idpermiso` int(11) NOT NULL,
  `idagrupamiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `agrupamientos_permisos`
--

INSERT INTO `agrupamientos_permisos` (`idpermiso`, `idagrupamiento`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 1),
(5, 3),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 5),
(19, 5),
(20, 5),
(21, 6),
(22, 6),
(23, 7),
(24, 7),
(25, 7),
(27, 5),
(28, 8),
(29, 8),
(30, 9),
(31, 6),
(32, 10),
(33, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombrecategoria` varchar(255) NOT NULL,
  `imagen` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombrecategoria`, `imagen`) VALUES
(1, 'Fantasia', 'fantasia.jpg'),
(2, 'Terror', 'terror.jpg'),
(3, 'Accion', 'accion.jpg'),
(4, 'Aventura', 'aventura.jpg'),
(5, 'Crimen', 'crimen.jpg'),
(6, 'Ciencia ficcion', 'cienciaficcion.jpg'),
(7, 'Drama', 'drama.jpg'),
(8, 'Comedia', 'comedia.jpg'),
(9, 'Romance', 'romance.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_pelicula`
--

DROP TABLE IF EXISTS `categoria_pelicula`;
CREATE TABLE `categoria_pelicula` (
  `idcategoria` int(11) NOT NULL,
  `idpelicula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
CREATE TABLE `ciudades` (
  `idciudad` int(11) NOT NULL,
  `nombre_ciudad` varchar(99) NOT NULL,
  `idprovincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`idciudad`, `nombre_ciudad`, `idprovincia`) VALUES
(3, 'Ceres', 2),
(4, 'Esperanza', 2),
(7, 'Flamengo', 4),
(8, 'Urca', 4),
(9, 'Casabo', 5),
(10, 'Aguada', 5),
(11, 'La cruz', 6),
(12, 'Pintado', 6),
(13, 'Adolfo Alsina', 1),
(14, 'Adolfo González Chaves', 1),
(15, 'Alberti', 1),
(16, 'Almirante Brown', 1),
(17, 'Arrecifes', 1),
(18, 'Avellaneda', 1),
(19, 'Azul', 1),
(20, 'Bahía Blanca', 1),
(21, 'Balcarce', 1),
(22, 'Baradero', 1),
(23, 'Benito Juárez', 1),
(24, 'Berazategui', 1),
(25, 'Berisso', 1),
(26, 'Bolívar', 1),
(27, 'Bragado', 1),
(28, 'Brandsen', 1),
(29, 'Campana', 1),
(30, 'Cañuelas', 1),
(31, 'Capitán Sarmiento', 1),
(32, 'Carlos Casares', 1),
(33, 'Carlos Tejedor', 1),
(34, 'Carmen de Areco', 1),
(35, 'Carmen de Patagones', 1),
(36, 'Castelli', 1),
(37, 'Chacabuco', 1),
(38, 'Chascomús', 1),
(39, 'Chivilcoy', 1),
(40, 'Colón', 1),
(41, 'Coronel Dorrego', 1),
(42, 'Coronel Pringles', 1),
(43, 'Coronel Rosales', 1),
(44, 'Coronel Suárez', 1),
(45, 'Daireaux', 1),
(46, 'Ensenada', 1),
(47, 'Escobar', 1),
(48, 'Esteban Echeverría', 1),
(49, 'Ezeiza', 1),
(50, 'Florencio Varela', 1),
(51, 'Florentino Ameghino', 1),
(52, 'General Alvarado', 1),
(53, 'General Alvear', 1),
(54, 'General Arenales', 1),
(55, 'General Belgrano', 1),
(56, 'General Guido', 1),
(57, 'General La Madrid', 1),
(58, 'General Las Heras', 1),
(59, 'General Lavalle', 1),
(60, 'General Madariaga', 1),
(61, 'General Pinto', 1),
(62, 'General Paz', 1),
(63, 'General Pueyrredón', 1),
(64, 'General Rodríguez', 1),
(65, 'General Villegas', 1),
(66, 'Guaminí', 1),
(67, 'Hipólito Yrigoyen', 1),
(68, 'Hurlingham', 1),
(69, 'Ituzaingó', 1),
(70, 'José C. Paz', 1),
(71, 'Junín', 1),
(72, 'La Matanza', 1),
(73, 'La Plata', 1),
(74, 'Lanús', 1),
(75, 'Laprida', 1),
(76, 'Las Flores', 1),
(77, 'Leandro N. Alem', 1),
(78, 'Lezama', 1),
(79, 'Lincoln', 1),
(80, 'Lobería', 1),
(81, 'Lobos', 1),
(82, 'Lomas de Zamora', 1),
(83, 'Luján', 1),
(84, 'Magdalena', 1),
(85, 'Maipú', 1),
(86, 'Malvinas Argentinas', 1),
(87, 'Mar Chiquita', 1),
(88, 'Marcos Paz', 1),
(89, 'Mercedes', 1),
(90, 'Merlo', 1),
(91, 'Monte Hermoso', 1),
(92, 'Moreno', 1),
(93, 'Morón', 1),
(94, 'Navarro', 1),
(95, 'Necochea', 1),
(96, 'Nueve de Julio', 1),
(97, 'Olavarría', 1),
(98, 'Pehuajó', 1),
(99, 'Pellegrini', 1),
(100, 'Pergamino', 1),
(101, 'Pila', 1),
(102, 'Pilar', 1),
(103, 'Pinamar', 1),
(104, 'Presidente Perón', 1),
(105, 'Puan', 1),
(106, 'Punta Indio', 1),
(107, 'Quilmes', 1),
(108, 'Ramallo', 1),
(109, 'Rivadavia', 1),
(110, 'Roque Pérez', 1),
(111, 'Saavedra', 1),
(112, 'Saladillo', 1),
(113, 'Salto', 1),
(114, 'San Andrés de Giles', 1),
(115, 'San Antonio de Areco', 1),
(116, 'San Cayetano', 1),
(117, 'San Isidro', 1),
(118, 'San Miguel', 1),
(119, 'San Miguel del Monte', 1),
(120, 'San Nicolás', 1),
(121, 'San Pedro', 1),
(122, 'San Vicente', 1),
(123, 'Suipacha', 1),
(124, 'Tandil', 1),
(125, 'Tapalqué', 1),
(126, 'Tigre', 1),
(127, 'Tordillo', 1),
(128, 'Tornquist', 1),
(129, 'Trenque Lauquen', 1),
(130, 'Tres Arroyos', 1),
(131, 'Tres de Febrero', 1),
(132, 'Tres Lomas', 1),
(133, 'Veinticinco de Mayo', 1),
(134, 'Vicente López', 1),
(135, 'Villa Gesell', 1),
(136, 'Villarino', 1),
(137, 'Zárate', 1),
(138, 'Retiro', 8),
(139, 'San Nicolás', 8),
(140, 'Puerto Madero', 8),
(141, 'San Telmo', 8),
(142, 'Montserrat', 8),
(143, 'Constitución', 8),
(144, 'Recoleta', 8),
(145, 'Balvanera', 8),
(146, 'Barracas', 8),
(147, 'San Cristóbal', 8),
(148, 'La Boca', 8),
(149, 'Parque Patricios ', 8),
(150, 'Nueva Pompeya', 8),
(152, 'Almagro', 8),
(153, 'Boedo', 8),
(154, 'Caballito', 8),
(155, 'Flores', 8),
(156, 'Parque Chacabuco', 8),
(157, 'Villa Soldati', 8),
(158, 'Villa Riachuelo', 8),
(159, 'Villa Lugano', 8),
(160, 'Liniers', 8),
(161, 'Mataderos', 8),
(162, 'Parque Avellaneda', 8),
(163, 'Villa Real', 8),
(164, 'Monte Castro', 8),
(165, 'Versalles', 8),
(166, 'Floresta', 8),
(167, 'Vélez Sarsfield ', 8),
(168, 'Villa Luro', 8),
(169, 'Villa General Mitre', 8),
(170, 'Villa Devoto', 8),
(171, 'Villa del Parque', 8),
(172, 'Villa Santa Rita', 8),
(173, 'Coghlan', 8),
(174, 'Saavedra', 8),
(175, 'Villa Urquiza', 8),
(176, 'Villa Pueyrredón', 8),
(177, 'Núñez', 8),
(178, 'Belgrano', 8),
(179, 'Colegiales', 8),
(180, 'Palermo', 8),
(182, 'Chacarita', 8),
(183, 'Villa Crespo', 8),
(184, 'La Paternal', 8),
(185, 'Villa Ortúzar', 8),
(186, 'Agronomía ', 8),
(187, 'Parque Chas', 8),
(188, 'Aconquija', 7),
(189, 'Ancasti', 7),
(190, 'Andagalá', 7),
(191, 'Belén', 7),
(192, 'Capayán', 7),
(193, 'Corral Quemado', 7),
(194, 'El Alto', 7),
(195, 'El Rodeo', 7),
(196, 'Fiambalá', 7),
(197, 'Fray Mamerto Esquiú', 7),
(198, 'Hualfín', 7),
(199, 'Huillapima', 7),
(200, 'Icaño', 7),
(201, 'La Puerta', 7),
(202, 'Las Juntas', 7),
(203, 'Londres', 7),
(204, 'Los Altos', 7),
(205, 'Los Varela', 7),
(206, 'Mutquín', 7),
(207, 'Paclín', 7),
(208, 'Pomán', 7),
(209, 'Pozo de Piedra', 7),
(210, 'Puerta de Corral Quemado', 7),
(211, 'Puerta de San José', 7),
(212, 'Recreo', 7),
(213, 'San Fernando', 7),
(214, 'San Fernando del Valle de Catamarca', 7),
(215, 'San José', 7),
(216, 'Santa María', 7),
(217, 'Santa Rosa', 7),
(218, 'Saujil', 7),
(219, 'Pomán', 7),
(220, 'Tapso', 7),
(221, 'Tinogasta', 7),
(222, 'Valle Viejo', 7),
(223, 'Villa Vil', 7),
(224, 'Aviá Teraí', 9),
(225, 'Barranqueras', 9),
(226, 'Basail', 9),
(227, 'Campo Largo', 9),
(228, 'Capitán Solari', 9),
(229, 'Charadai', 9),
(230, 'Charata', 9),
(231, 'Chorotis', 9),
(232, 'Ciervo Petiso', 9),
(233, 'Colonia Aborigen', 9),
(234, 'Colonia Benítez', 9),
(235, 'Colonia Elisa', 9),
(236, 'Colonia Popular', 9),
(237, 'Colonias Unidas', 9),
(238, 'Concepción del Bermejo', 9),
(239, 'Coronel Du Graty', 9),
(240, 'Corzuela', 9),
(241, 'Cote Lai', 9),
(242, 'El Espinillo', 9),
(243, 'El Sauzalito', 9),
(244, 'Enrique Urién', 9),
(245, 'Fontana', 9),
(246, 'Fuerte Esperanza', 9),
(247, 'Gancedo', 9),
(248, 'General Capdevila', 9),
(249, 'General José de San Martín', 9),
(250, 'General Pinedo', 9),
(251, 'General Vedia', 9),
(252, 'Hermoso Campo', 9),
(253, 'Isla del Cerrito', 9),
(254, 'Juan José Castelli', 9),
(255, 'La Clotilde', 9),
(256, 'La Eduvigis', 9),
(257, 'La Escondida', 9),
(258, 'La Leonesa', 9),
(259, 'La Tigra', 9),
(260, 'La Verde', 9),
(261, 'Laguna Blanca', 9),
(262, 'Laguna Limpia', 9),
(263, 'Lapachito', 9),
(264, 'Las Breñas', 9),
(265, 'Las Garcitas', 9),
(266, 'Las Palmas', 9),
(267, 'Los Frentones', 9),
(268, 'Machagai', 9),
(269, 'Makallé', 9),
(270, 'Margarita Belén', 9),
(271, 'Miraflores', 9),
(272, 'Misión Nueva Pompeya', 9),
(273, 'Napenay', 9),
(274, 'Pampa Almirón', 9),
(275, 'Pampa del Indio', 9),
(276, 'Pampa del Infierno', 9),
(277, 'Presidencia de la Plaza', 9),
(278, 'Presidencia Roca', 9),
(279, 'Presidencia Roque Sáenz Peña', 9),
(280, 'Puerto Bermejo', 9),
(281, 'Puerto Tirol', 9),
(282, 'Puerto Vilelas', 9),
(283, 'Quitilipi', 9),
(284, 'Resistencia', 9),
(285, 'Samuhú', 9),
(286, 'San Bernardo', 9),
(287, 'Santa Sylvina', 9),
(288, 'Taco Pozo', 9),
(289, 'Tres Isletas', 9),
(290, 'Villa Ángela', 9),
(291, 'Villa Berthet', 9),
(292, 'Villa Río Bermejito', 9),
(293, 'Alto Río Senguer', 10),
(294, 'Camarones', 10),
(295, 'Cholila', 10),
(296, 'Comodoro Rivadavia', 10),
(297, 'Corcovado', 10),
(298, 'Dolavon', 10),
(299, 'El Hoyo', 10),
(300, 'El Maitén', 10),
(301, 'Epuyén', 10),
(302, 'Esquel', 10),
(303, 'Gaiman', 10),
(304, 'Gobernador Costa', 10),
(305, 'Gualjaina', 10),
(306, 'José de San Martín', 10),
(307, 'Lago Puelo', 10),
(308, 'Paso de Indios', 10),
(309, 'Puerto Madryn', 10),
(310, 'Puerto Pirámides', 10),
(311, 'Rada Tilly', 10),
(312, 'Rawson', 10),
(313, 'Río Mayo', 10),
(314, 'Río Pico', 10),
(315, 'Sarmiento', 10),
(316, 'Tecka', 10),
(317, 'Trelew', 10),
(318, 'Trevelin', 10),
(319, 'Veintiocho de Julio', 10),
(320, 'Adelia María', 11),
(321, 'Agua de Oro', 11),
(322, 'Alcira Gigena', 11),
(323, 'Alejandro Roca', 11),
(324, 'Alejo Ledesma', 11),
(325, 'Alicia', 11),
(326, 'Almafuerte', 11),
(327, 'Alpa Corral', 11),
(328, 'Alta Gracia', 11),
(329, 'Alto Alegre', 11),
(330, 'Altos de Chipión', 11),
(331, 'Anisacate', 11),
(332, 'Arias', 11),
(333, 'Arroyito', 11),
(334, 'Arroyo Algodón', 11),
(335, 'Arroyo Cabral', 11),
(336, 'Ausonia', 11),
(337, 'Ballesteros', 11),
(338, 'Ballesteros Sud', 11),
(339, 'Balnearia', 11),
(340, 'Bell Ville', 11),
(341, 'Bengolea', 11),
(342, 'Benjamín Gould', 11),
(343, 'Berrotarán', 11),
(344, 'Bialet Massé', 11),
(345, 'Bouwer', 11),
(346, 'Brinkmann', 11),
(347, 'Buchardo', 11),
(348, 'Bulnes', 11),
(349, 'Calchín', 11),
(350, 'Calchín Oeste', 11),
(351, 'Camilo Aldao', 11),
(352, 'Canals', 11),
(353, 'Cañada de Luque', 11),
(354, 'Capilla del Carmen', 11),
(355, 'Capilla del Monte', 11),
(356, 'Capitán General Bernardo O’Higgins', 11),
(357, 'Carnerillo', 11),
(358, 'Carrilobo', 11),
(359, 'Cavanagh', 11),
(360, 'Chaján', 11),
(361, 'Colonia Italiana', 11),
(362, 'Córdoba', 11),
(363, 'Cosquín', 11),
(364, 'Deán Funes', 11),
(365, 'Del Campillo', 11),
(366, 'Devoto', 11),
(367, 'El Brete', 11),
(368, 'El Fortín', 11),
(369, 'El Tío', 11),
(370, 'Elena', 11),
(371, 'Embalse', 11),
(372, 'Estación General Paz', 11),
(373, 'Freyre', 11),
(374, 'General Baldissera', 11),
(375, 'General Deheza', 11),
(376, 'General Levalle', 11),
(377, 'General Roca', 11),
(378, 'Huanchilla', 11),
(379, 'Huerta Grande', 11),
(380, 'Isla Verde', 11),
(381, 'Italó', 11),
(382, 'Jesús María', 11),
(383, 'Jovita', 11),
(384, 'La Calera', 11),
(385, 'La Carlota', 11),
(386, 'La Cesira', 11),
(387, 'La Cruz', 11),
(388, 'La Cumbre', 11),
(389, 'La Falda', 11),
(390, 'La Francia', 11),
(391, 'La Granja', 11),
(392, 'La Laguna', 11),
(393, 'La Palestina', 11),
(394, 'La Paquita', 11),
(395, 'La Paz', 11),
(396, 'La Playosa', 11),
(397, 'Laborde', 11),
(398, 'Laboulaye', 11),
(399, 'Laguna Larga', 11),
(400, 'Las Acequias', 11),
(401, 'Las Arrias', 11),
(402, 'Las Higueras', 11),
(403, 'Las Peñas', 11),
(404, 'Las Perdices', 11),
(405, 'Las Tapias', 11),
(406, 'Leones', 11),
(407, 'Los Cerrillos', 11),
(408, 'Los Cisnes', 11),
(409, 'Los Cocos', 11),
(410, 'Los Cóndores', 11),
(411, 'Los Zorros', 11),
(412, 'Lozada', 11),
(413, 'Malvinas Argentinas', 11),
(414, 'Marcos Juárez', 11),
(415, 'Matorrales', 11),
(416, 'Mattaldi', 11),
(417, 'Mendiolaza', 11),
(418, 'Mina Clavero', 11),
(419, 'Monte Buey', 11),
(420, 'Monte Cristo', 11),
(421, 'Obispo Trejo', 11),
(422, 'Oliva', 11),
(423, 'Ordóñez', 11),
(424, 'Pascanas', 11),
(425, 'Pasco', 11),
(426, 'Pilar', 11),
(427, 'Pueblo Italiano', 11),
(428, 'Quebracho Herrado', 11),
(429, 'Quilino', 11),
(430, 'Río Cuarto', 11),
(431, 'Río de los Sauces', 11),
(432, 'Río Primero', 11),
(433, 'Río Segundo', 11),
(434, 'Río Tercero', 11),
(435, 'Saldán', 11),
(436, 'San Antonio de Arredondo', 11),
(437, 'San José de la Dormida', 11),
(438, 'San Pedro', 11),
(439, 'Santa María de Punilla', 11),
(440, 'Santa Rosa de Calamuchita', 11),
(441, 'Sarmiento', 11),
(442, 'Serrano', 11),
(443, 'Silvio Pellico', 11),
(444, 'Tanti', 11),
(445, 'Tosquita', 11),
(446, 'Valle Hermoso', 11),
(447, 'Villa Carlos Paz', 11),
(448, 'Villa de las Rosas', 11),
(449, 'Villa Cura Brochero', 11),
(450, 'Villa del Dique', 11),
(451, 'Villa Dolores', 11),
(452, 'Villa General Belgrano', 11),
(453, 'Villa Giardino', 11),
(454, 'Villa Huidobro', 11),
(455, 'Villa Icho Cruz', 11),
(456, 'Villa María', 11),
(457, 'Villa Nueva', 11),
(458, 'Villa Parque Santa Ana', 11),
(459, 'Villa Rossi', 11),
(460, 'Villa Rumipal', 11),
(461, 'Villa Santa Cruz del Lago', 11),
(462, 'Villa Sarmiento', 11),
(463, 'Villa Tulumba', 11),
(464, 'Villa Valeria', 11),
(465, 'Villa Yacanto', 11),
(466, 'Wenceslao Escalante', 11),
(467, 'Bella Vista', 12),
(468, 'Bonpland', 12),
(469, 'Caá Catí', 12),
(470, 'Colonia Carlos Pellegrini', 12),
(471, 'Colonia Libertad', 12),
(472, 'Colonia Pando', 12),
(473, 'Concepción del Yaguareté Corá', 12),
(474, 'Corrientes', 12),
(475, 'Empedrado', 12),
(476, 'Esquina', 12),
(477, 'Estación Torrent', 12),
(480, 'General Alvear', 12),
(481, 'Itatí', 12),
(482, 'Ituzaingó', 12),
(483, 'La Cruz', 12),
(484, 'Lavalle', 12),
(485, 'Lomas de Vallejos', 12),
(486, 'Mburucuyá', 12),
(487, 'Mercedes', 12),
(488, 'Mocoretá', 12),
(489, 'Monte Caseros', 12),
(490, 'Palmar Grande', 12),
(491, 'Parada Pucheta', 12),
(492, 'Paso de la Patria', 12),
(493, 'Paso de los Libres', 12),
(494, 'Pueblo Libertador', 12),
(495, 'Riachuelo', 12),
(496, 'San Carlos', 12),
(497, 'San Lorenzo', 12),
(498, 'Santa Ana de los Guácaras', 12),
(499, 'Santa Rosa', 12),
(500, 'Santo Tomé', 12),
(501, 'Sauce', 12),
(502, 'Tabay', 12),
(503, 'Tapebicuá', 12),
(504, 'Tatacuá', 12),
(505, 'Tres de Abril', 12),
(506, 'Villa Olivari', 12),
(507, 'Yapeyú', 12),
(508, 'Yataytí Calle', 12),
(509, 'Aldea Brasilera', 13),
(510, 'Aldea San Antonio', 13),
(511, 'Aranguren', 13),
(512, 'Basavilbaso', 13),
(513, 'Caseros', 13),
(514, 'Cerrito', 13),
(515, 'Colonia Avellaneda', 13),
(516, 'Colonia Elía', 13),
(517, 'Colón', 13),
(518, 'Concepción del Uruguay', 13),
(519, 'Concordia', 13),
(520, 'Diamante', 13),
(521, 'El Pingo', 13),
(522, 'Estancia Grande', 13),
(523, 'Federación', 13),
(524, 'Federal', 13),
(525, 'General Ramírez', 13),
(526, 'Gilbert', 13),
(527, 'Gobernador Mansilla', 13),
(528, 'Gualeguay', 13),
(529, 'Gualeguaychú', 13),
(530, 'Hernández', 13),
(531, 'Herrera', 13),
(532, 'Ibicuy', 13),
(533, 'La Criolla', 13),
(534, 'La Paz', 13),
(535, 'Larroque', 13),
(536, 'Libertador San Martín', 13),
(537, 'Los Charrúas', 13),
(538, 'Los Conquistadores', 13),
(539, 'María Grande', 13),
(540, 'Nogoyá', 13),
(541, 'Paraná', 13),
(542, 'Piedras Blancas', 13),
(543, 'Primero de Mayo', 13),
(544, 'Pronunciamiento', 13),
(545, 'Pueblo General Belgrano', 13),
(546, 'San Benito', 13),
(547, 'Santa Ana', 13),
(548, 'Santa Elena', 13),
(549, 'Tabossi', 13),
(550, 'Valle María', 13),
(551, 'Victoria', 13),
(552, 'Villa del Rosario', 13),
(553, 'Villa Domínguez', 13),
(554, 'Villa Elisa', 13),
(555, 'Villa Hernandarias', 13),
(556, 'Villa Mantero', 13),
(557, 'Villa Paranacito', 13),
(558, 'Villa Urquiza', 13),
(559, 'Villaguay', 13),
(560, 'Clorinda', 14),
(561, 'Comandante Fontana', 14),
(562, 'El Colorado', 14),
(563, 'El Espinillo', 14),
(564, 'Estanislao del Campo', 14),
(565, 'Formosa', 14),
(566, 'General Enrique Mosconi', 14),
(567, 'General Lucio Victorio Mansilla', 14),
(568, 'General Manuel Belgrano', 14),
(569, 'Herradura', 14),
(570, 'Pirané', 14),
(571, 'Pozo del Tigre', 14),
(572, 'Riacho He-Hé', 14),
(573, 'San Martín Dos', 14),
(574, 'Villa Dos Trece', 14),
(575, 'Villa Escolar', 14),
(576, 'Villa General Güemes', 14),
(577, 'Abra Pampa', 15),
(578, 'Aguas Calientes', 15),
(579, 'Caimancito', 15),
(580, 'Calilegua', 15),
(581, 'San Antonio', 15),
(582, 'San Pedro de Jujuy', 15),
(583, 'San Salvador de Jujuy', 15),
(584, 'Santa Clara', 15),
(585, 'Tilcara', 15),
(586, 'Yala', 15),
(587, 'Yuto', 15),
(588, 'El Carmen', 15),
(589, 'El Talar', 15),
(590, 'Fraile Pintado', 15),
(591, 'Humahuaca', 15),
(592, 'La Esperanza', 15),
(593, 'La Mendieta', 15),
(594, 'La Quiaca', 15),
(595, 'Libertador General San Martín', 15),
(596, 'Maimará', 15),
(597, 'Monterrico', 15),
(598, 'Palma Sola', 15),
(599, 'Palpalá', 15),
(600, 'Pampa Blanca', 15),
(601, 'Perico', 15),
(602, 'Puesto Viejo', 15),
(603, 'San Antonio', 15),
(604, 'San Pedro de Jujuy', 15),
(605, 'San Salvador de Jujuy', 15),
(606, 'Santa Clara', 15),
(607, 'Tilcara', 15),
(608, 'Yala', 15),
(609, 'Yuto', 15),
(610, 'Abramo', 16),
(611, 'Algarrobo del Águila', 16),
(612, 'Alpachiri', 16),
(613, 'Alta Italia', 16),
(614, 'Arata', 16),
(615, 'Bernardo Larroudé', 16),
(616, 'Bernasconi', 16),
(617, 'Carro Quemado', 16),
(618, 'Catriló', 16),
(619, 'Ceballos', 16),
(620, 'Colonia 25 de Mayo', 16),
(621, 'Colonia Santa Teresa', 16),
(622, 'Doblas', 16),
(623, 'Dorila', 16),
(624, 'Embajador Martini', 16),
(625, 'General Acha', 16),
(626, 'General Manuel Campos', 16),
(627, 'General Pico', 16),
(628, 'General San Martín', 16),
(629, 'Ingeniero Luiggi', 16),
(630, 'La Humada', 16),
(631, 'Luan Toro', 16),
(632, 'Macachín', 16),
(633, 'Metileo', 16),
(634, 'Miguel Riglos', 16),
(635, 'Parera', 16),
(636, 'Puelches', 16),
(637, 'Puelén', 16),
(638, 'Quehué', 16),
(639, 'Quemú Quemú', 16),
(640, 'Rancul', 16),
(641, 'Realicó', 16),
(642, 'Rolón', 16),
(643, 'Santa Isabel', 16),
(644, 'Santa Rosa', 16),
(645, 'Telén', 16),
(646, 'Toay', 16),
(647, 'Tomás Manuel Anchorena', 16),
(648, 'Trenel', 16),
(649, 'Uriburu', 16),
(650, 'Victorica', 16),
(651, 'Villa Mirasol', 16),
(652, 'Vértiz', 16),
(653, 'Winifreda', 16),
(654, 'Aimogasta', 17),
(655, 'Aminga ', 17),
(656, 'Chamical', 17),
(657, 'R.Vera Peñaloza', 17),
(658, 'Chilecito', 17),
(659, 'Famatina', 17),
(660, 'La Rioja', 17),
(661, 'Los Sauces ', 17),
(662, 'San Blas', 17),
(663, 'Malanzán', 17),
(664, 'Gral. J.F.Quiroga', 17),
(665, 'Olta', 17),
(666, 'Gral. Belgrano', 17),
(667, 'Patquía', 17),
(668, 'Independencia', 17),
(669, 'Tama', 17),
(670, 'Gral. Peñaloza', 17),
(671, 'Ulapes', 17),
(672, 'San Martín', 17),
(673, 'Villa Castelli', 17),
(674, 'Villa San José de Vinchina', 17),
(675, 'Villa Sanagasta', 17),
(676, 'Villa Santa Rita de Catuna', 17),
(677, 'Gral Ocampo', 17),
(678, 'Villa Unión ', 17),
(679, 'Cnel. F. Varela', 17),
(680, 'General Alvear', 18),
(681, 'Godoy Cruz', 18),
(682, 'Junín', 18),
(683, 'La Paz', 18),
(684, 'Las Heras', 18),
(685, 'Luján de Cuyo', 18),
(686, 'Maipú', 18),
(687, 'Malargüe', 18),
(688, 'Mendoza', 18),
(689, 'Rivadavia', 18),
(690, 'San Martín', 18),
(691, 'San Rafael', 18),
(692, 'Santa Rosa', 18),
(693, 'Tunuyán', 18),
(694, 'Tupungato', 18),
(695, 'Villa Nueva', 18),
(696, 'Villa San Carlos', 18),
(697, 'Villa Tulumaya', 18),
(698, 'Guaymallén', 18),
(699, 'Alba Posse', 19),
(700, 'Almafuerte', 19),
(701, 'Apóstoles', 19),
(702, 'Aristóbulo del Valle', 19),
(703, 'Bernardo de Irigoyen', 19),
(704, 'Bonpland', 19),
(705, 'Campo Grande', 19),
(706, 'Campo Ramón', 19),
(707, 'Campo Viera', 19),
(708, 'Capioví', 19),
(709, 'Caraguatay', 19),
(710, 'Cerro Azul', 19),
(711, 'Colonia Alberdi', 19),
(712, 'Colonia Aurora', 19),
(713, 'Colonia Delicia', 19),
(714, 'Colonia Polana', 19),
(715, 'Colonia Victoria', 19),
(716, 'Comandante Andrés Guacurari', 19),
(717, 'Concepción de la Sierra', 19),
(718, 'Corpus', 19),
(719, 'Dos de Mayo', 19),
(720, 'El Alcázar', 19),
(721, 'El Soberbio', 19),
(722, 'El Dorado', 19),
(723, 'Florentino Ameghino', 19),
(724, 'Garuhapé', 19),
(725, 'General Alvear', 19),
(726, 'General Urquiza', 19),
(727, 'Gobernador López', 19),
(728, 'Guaraní', 19),
(729, 'Hipólito Yrigoyen', 19),
(730, 'Itacaruaré', 19),
(731, 'Leandro N. Alem', 19),
(732, 'Mojón Grande', 19),
(733, 'Oberá', 19),
(734, 'Panambí', 19),
(735, 'Posadas', 19),
(736, 'Puerto Esperanza', 19),
(737, 'Puerto Iguazú', 19),
(738, 'Puerto Libertad', 19),
(739, 'Puerto Rico', 19),
(740, 'San Antonio', 19),
(741, 'San Ignacio', 19),
(742, 'San Javier', 19),
(743, 'San José', 19),
(744, 'San Martín', 19),
(745, 'San Pedro', 19),
(746, 'Santa Ana', 19),
(747, 'Santa María', 19),
(748, 'Santiago de Liniers', 19),
(749, 'Santo Pipó', 19),
(750, 'Tres Capones', 19),
(751, 'Veinticinco de Mayo', 19),
(752, 'Aluminé', 28),
(753, 'Andacollo', 28),
(754, 'Añelo', 28),
(755, 'Bajada del Agrio', 28),
(756, 'Barrancas', 28),
(757, 'Buta Ranquil', 28),
(758, 'Caviahue-Copahue', 28),
(759, 'Centenario', 28),
(760, 'Chos Malal', 28),
(761, 'Cutral-Có', 28),
(762, 'El Cholar', 28),
(763, 'HuiganCó', 28),
(764, 'Junín de los Andes', 28),
(765, 'Las Coloradas', 28),
(766, 'Las Ovejas', 28),
(767, 'Loncopué', 28),
(768, 'Los Miches', 28),
(769, 'Mariano Moreno', 28),
(770, 'Neuquén', 28),
(771, 'Picún Leufú', 28),
(772, 'Piedra del Águila', 28),
(773, 'Plaza Huincul', 28),
(774, 'Rincón de los Sauces', 28),
(775, 'San Martín de los Andes', 28),
(776, 'San Patricio del Chañar', 28),
(777, 'Senillosa', 28),
(778, 'Tricao Malal', 28),
(779, 'Villa La Angostura', 28),
(780, 'Villa Pehuenia', 28),
(781, 'Zapala', 28),
(782, 'Allen', 20),
(783, 'Catriel', 20),
(784, 'Cervantes', 20),
(785, 'Chimpay', 20),
(786, 'Choele Choel', 20),
(787, 'Cipolletti', 20),
(788, 'Coronel Belisle', 20),
(789, 'Dina Huapi', 20),
(790, 'El Bolsón', 20),
(792, 'General Conesa', 20),
(793, 'General Enrique Godoy', 20),
(794, 'General Fernández Oro', 20),
(795, 'General Roca', 20),
(796, 'Guardia Mitre', 20),
(797, 'Ingeniero Luis A. Huergo', 20),
(798, 'Lamarque', 20),
(799, 'Los Menucos', 20),
(800, 'Luis Beltrán', 20),
(801, 'Mainqué', 20),
(802, 'Maquinchao', 20),
(803, 'Ministro Ramos Mexía', 20),
(804, 'Pilcaniyeu', 20),
(805, 'Pomona', 20),
(806, 'Río Colorado', 20),
(807, 'San Antonio Oeste', 20),
(808, 'San Carlos de Bariloche', 20),
(809, 'Sierra Colorada', 20),
(810, 'Sierra Grande', 20),
(811, 'Valcheta', 20),
(812, 'Viedma', 20),
(813, 'Villa Regina', 20),
(814, 'Ñorquincó', 20),
(815, 'Aguaray', 21),
(816, 'Aguas Blancas', 21),
(817, 'Apolinario Saravia', 21),
(818, 'Cachi', 21),
(819, 'Cafayate', 21),
(820, 'Campo Quijano', 21),
(821, 'Cerrillos', 21),
(822, 'Coronel Moldes', 21),
(823, 'El Bordo', 21),
(824, 'El Carril', 21),
(825, 'El Galpón', 21),
(826, 'El Potrero', 21),
(827, 'El Quebrachal', 21),
(828, 'El Tala', 21),
(829, 'Embarcación', 21),
(830, 'General Ballivián', 21),
(831, 'General Güemes', 21),
(832, 'General Mosconi', 21),
(833, 'General Pizarro', 21),
(834, 'Guachipas', 21),
(835, 'Hipólito Yrigoyen', 21),
(836, 'Iruya', 21),
(837, 'Isla de Cañas', 21),
(838, 'La Caldera', 21),
(839, 'La Merced', 21),
(840, 'La Viña', 21),
(841, 'Molinos', 21),
(842, 'Payogasta', 21),
(843, 'Rivadavia Banda Norte', 21),
(844, 'Rivadavia Banda Sur', 21),
(845, 'Río Piedras', 21),
(846, 'Salta', 21),
(847, 'San Antonio de Los Cobres', 21),
(848, 'San José de Metán', 21),
(849, 'Seclantás', 21),
(850, 'Tartagal', 21),
(851, 'Tolar Grande', 21),
(852, 'Urundel', 21),
(853, 'Vaqueros', 21),
(854, 'Villa San Lorenzo', 21),
(855, 'Albardón', 22),
(856, 'Angaco', 22),
(857, 'Calingasta', 22),
(858, 'Caucete', 22),
(859, 'San José de Jáchal', 22),
(860, 'Villa Krause', 22),
(862, 'Villa Barboza', 22),
(863, 'El Medanito', 22),
(864, 'Villa San Agustín', 22),
(865, 'Santa Rosa', 22),
(866, '9 de Julio', 22),
(867, 'Villa El Salvador', 22),
(868, 'Rodeo', 22),
(869, 'Villa Basilio Nievas', 22),
(870, 'San Juan', 22),
(871, 'Anchorena', 23),
(872, 'Arizona', 23),
(873, 'Buena Esperanza', 23),
(874, 'Candelaria', 23),
(875, 'Concarán', 23),
(876, 'El Volcán', 23),
(877, 'Juana Koslay', 23),
(878, 'Justo Daract', 23),
(879, 'La Punta', 23),
(880, 'La Toma', 23),
(881, 'Luján', 23),
(882, 'Naschel', 23),
(883, 'Nogolí', 23),
(884, 'Quines', 23),
(885, 'San Francisco del Monte de Oro', 23),
(886, 'San Luis', 23),
(887, 'Santa Rosa del Conlara', 23),
(888, 'Tilisarao', 23),
(889, 'Villa de Merlo', 23),
(890, 'Villa Mercedes', 23),
(891, 'Caleta Olivia', 24),
(892, 'Comandante Luis Piedrabuena', 24),
(893, 'El Calafate', 24),
(894, 'El Chaltén', 24),
(895, 'Gobernador Gregores', 24),
(896, 'Las Heras', 24),
(897, 'Los Antiguos', 24),
(898, 'Perito Moreno', 24),
(899, 'Pico Truncado', 24),
(900, 'Puerto Deseado', 24),
(901, 'Puerto San Julián', 24),
(902, 'Puerto Santa Cruz', 24),
(903, 'Río Gallegos', 24),
(904, 'Armstrong', 24),
(905, 'Arroyo Seco', 24),
(906, 'Avellaneda', 24),
(907, 'Calchaquí', 24),
(908, 'Carcarañá', 24),
(909, 'Casilda', 24),
(910, 'Cañada de Gómez', 24),
(911, 'Coronda', 24),
(912, 'El Trébol', 24),
(913, 'Esperanza', 24),
(914, 'Fray Luis Beltrán', 24),
(915, 'Funes', 24),
(916, 'Granadero Baigorria', 24),
(917, 'Las Parejas', 24),
(918, 'Las Rosas', 24),
(919, 'Malabrigo', 24),
(920, 'Pueblo Esther', 24),
(921, 'Puerto General San Martín', 24),
(922, 'Pérez', 24),
(923, 'Rafaela', 24),
(924, 'Reconquista', 24),
(925, 'Recreo', 24),
(926, 'Roldán', 24),
(927, 'Rosario', 24),
(928, 'San Cristóbal', 24),
(929, 'San Lorenzo', 24),
(930, 'Santa Fe', 24),
(931, 'Santo Tomé', 24),
(932, 'Sastre', 24),
(933, 'Suardi', 24),
(934, 'Sunchales', 24),
(935, 'Venado Tuerto', 24),
(936, 'Villa Constitución', 24),
(937, 'Añatuya', 25),
(938, 'Bandera', 25),
(939, 'Beltrán', 25),
(940, 'Campo Gallo', 25),
(941, 'Clodomira', 25),
(942, 'Fernández', 25),
(943, 'Frías', 25),
(944, 'Ingeniero Forres', 25),
(945, 'La Banda', 25),
(946, 'Loreto', 25),
(947, 'Los Juríes', 25),
(948, 'Los Telares', 25),
(949, 'Monte Quemado', 25),
(950, 'Nueva Esperanza', 25),
(951, 'Pampa de los Guanacos', 25),
(952, 'Quimilí', 25),
(953, 'Santiago del Estero', 25),
(954, 'Termas de Río Hondo', 25),
(955, 'Villa Ojo de Agua', 25),
(956, 'Tierra del fuego', 26),
(957, 'Aguilares', 27),
(958, 'Alderetes', 27),
(959, 'Banda del Río Salí', 27),
(960, 'Bella Vista', 27),
(961, 'Burruyacú', 27),
(962, 'Concepción', 27),
(963, 'Famaillá', 27),
(964, 'Graneros', 27),
(965, 'Juan Bautista Alberdi', 27),
(966, 'La Cocha', 27),
(967, 'Las Talitas', 27),
(968, 'Lules', 27),
(969, 'Monteros', 27),
(970, 'San Miguel de Tucumán', 27),
(971, 'Simoca', 27),
(972, 'Tafí del Valle', 27),
(973, 'Tafí Viejo', 27),
(974, 'Trancas', 27),
(975, 'Yerba Buena', 27),
(976, 'Cercado', 29),
(977, 'Iténez', 29),
(978, 'General José Ballivián', 29),
(979, 'Segurola', 29),
(980, 'Mamoré', 29),
(981, 'Marbán', 29),
(982, 'Moxos', 29),
(983, 'Trinidad', 29),
(984, 'Vaca Díez', 29),
(985, 'Yacuma', 29),
(986, 'Belisario Boeto', 30),
(987, 'Cochabamba', 30),
(988, 'Hernando Siles', 30),
(989, 'Jaime Zudáñez', 30),
(990, 'Juana Azurduy de Padilla', 30),
(991, 'Luis Calvo', 30),
(992, 'Nor Cinti', 30),
(993, 'Oropeza', 30),
(994, 'Sucre', 30),
(995, 'Sud Cinti', 30),
(996, 'Arani', 31),
(997, 'Arque', 31),
(998, 'Ayopaya', 31),
(999, 'Bolívar', 31),
(1001, 'Capinota', 31),
(1002, 'Cochabamba', 31),
(1003, 'José Carrasco', 31),
(1004, 'Cercado', 31),
(1005, 'Chapare', 31),
(1006, 'Esteban Arze', 31),
(1007, 'Germán Jordán', 31),
(1008, 'Mizque', 31),
(1009, 'Campero', 31),
(1010, 'Tiraque', 31),
(1011, 'Abel Iturralde', 32),
(1012, 'Aroma', 32),
(1013, 'Bautista Saavedra', 32),
(1014, 'Caranavi', 32),
(1015, 'Eliodoro Camacho', 32),
(1016, 'Franz Tamayo', 32),
(1017, 'Gualberto Villarroel', 32),
(1018, 'Ingaví', 32),
(1019, 'General José Manuel Pando', 32),
(1020, 'José Ramón Loayza', 32),
(1021, 'Larecaja', 32),
(1022, 'Los Andes', 32),
(1023, 'Manco Kapac', 32),
(1024, 'Muñecas', 32),
(1025, 'Nuestra señora de la paz', 32),
(1026, 'Nor Yungas', 32),
(1027, 'Omasuyos', 32),
(1028, 'Pacajes', 32),
(1029, 'Pedro Domingo Murillo', 32),
(1030, 'Sud Yungas', 32),
(1031, 'Sabaya', 33),
(1032, 'Carangas', 33),
(1033, 'Cercado', 33),
(1034, 'Eduardo Avaroa', 33),
(1035, 'Ladislao Cabrera', 33),
(1036, 'Litoral de Atacama', 33),
(1037, 'Nor Carangas', 33),
(1038, 'Oruro', 33),
(1039, 'Pantaleón Dalence', 33),
(1040, 'Poopó', 33),
(1041, 'Mejillones', 33),
(1042, 'Sajama', 33),
(1043, 'San Pedro de Totora', 33),
(1044, 'Saucarí', 33),
(1045, 'Tomás Barrón', 33),
(1046, 'Abuná', 34),
(1047, 'Cobija', 34),
(1048, 'General Federico Román', 34),
(1049, 'Madre de Dios', 34),
(1050, 'Manuripi', 34),
(1051, 'Nicolás Suárez', 34),
(1052, 'Alonso de Ibáñez', 35),
(1053, 'Antonio Quijarro', 35),
(1054, 'Bernardino Bilbao', 35),
(1055, 'Charcas', 35),
(1056, 'Chayanta', 35),
(1057, 'Cornelio Saavedra', 35),
(1058, 'Daniel Campos', 35),
(1059, 'Enrique Baldivieso', 35),
(1060, 'José María Linares', 35),
(1061, 'Modesto Omiste', 35),
(1062, 'Nor Chichas', 35),
(1063, 'Nor Lípez', 35),
(1064, 'Potosi', 35),
(1065, 'Rafael Bustillo', 35),
(1066, 'Sud Chichas', 35),
(1067, 'Sud Lípez ', 35),
(1068, 'Tomás Frías', 35),
(1069, 'Andrés Ibáñez', 36),
(1070, 'Ángel Sandóval', 36),
(1071, 'Chiquitos', 36),
(1072, 'Cordillera', 36),
(1073, 'Florida', 36),
(1074, 'Germán Busch', 36),
(1075, 'Guarayos', 36),
(1076, 'Ichilo', 36),
(1077, 'Warnes', 36),
(1078, 'Velasco', 36),
(1079, 'Ñuflo de Chaves', 36),
(1080, 'Santa Cruz de la Sierra', 36),
(1081, 'Aniceto Arce', 37),
(1082, 'Burdet O Connor', 37),
(1083, 'Cercado (Tarija)', 37),
(1084, 'Eustaquio Méndez', 37),
(1085, 'Gran Chaco', 37),
(1086, 'José María Avilés', 37),
(1087, 'Lago Titicaca', 37),
(1088, 'Antofagasta', 38),
(1089, 'Mejillones', 38),
(1090, 'Sierra Gorda', 38),
(1091, 'Taltal', 38),
(1092, 'Arauco', 39),
(1093, 'Cañete', 39),
(1094, 'Contulmo', 39),
(1095, 'Lebu', 39),
(1096, 'Los Álamos', 39),
(1097, 'Tirúa', 39),
(1098, 'Curanilahue', 39),
(1099, 'Arica', 40),
(1100, 'Camarones', 40),
(1101, 'Aysén', 41),
(1102, 'Cisnes', 41),
(1103, 'Guaitecas', 41),
(1104, 'Los Ángeles', 42),
(1105, 'Alto Bío Bío', 42),
(1106, 'Antuco', 42),
(1107, 'Cabrero', 42),
(1108, 'Laja', 42),
(1109, 'Mulchén', 42),
(1110, 'Nacimiento', 42),
(1111, 'Negrete', 42),
(1112, 'Quilaco', 42),
(1113, 'San Rosendo', 42),
(1114, 'Santa Bárbara', 42),
(1115, 'Tucapel', 42),
(1116, 'Yumbel', 42),
(1117, 'Codegua', 43),
(1118, 'Coinco', 43),
(1119, 'Coltauco', 43),
(1120, 'Doñihue', 43),
(1121, 'Graneros', 43),
(1122, 'Las Cabras', 43),
(1123, 'Machalí', 43),
(1124, 'Malloa', 43),
(1125, 'Mostazal', 43),
(1126, 'Olivar', 43),
(1127, 'Peumo', 43),
(1128, 'Pichidegua', 43),
(1129, 'Rancagua', 43),
(1130, 'Rengo', 43),
(1131, 'Cochrane', 44),
(1132, 'O’Higgins', 44),
(1133, 'Tortel', 44),
(1134, 'Paredones', 45),
(1135, 'Cauquenes', 46),
(1136, 'Chanco', 46),
(1137, 'Pelluhue', 46),
(1138, 'Carahue', 47),
(1139, 'Cholchol', 47),
(1140, 'Cunco', 47),
(1141, 'Curarrehue', 47),
(1142, 'Freire', 47),
(1143, 'Galvarino', 47),
(1144, 'Gorbea', 47),
(1145, 'Lautaro', 47),
(1146, 'Loncoche', 47),
(1147, 'Melipeuco', 47),
(1148, 'Nueva Imperial', 47),
(1149, 'Padre Las Casas', 47),
(1150, 'Perquenco', 47),
(1151, 'Pitrufquén', 47),
(1152, 'Pucón', 47),
(1153, 'Saavedra', 47),
(1154, 'Temuco', 47),
(1155, 'Teodoro Schmidt', 47),
(1156, 'Toltén', 47),
(1157, 'Vilcún', 47),
(1158, 'Villarrica', 47),
(1159, 'Colina', 48),
(1160, 'Lampa', 48),
(1161, 'Til Til', 48),
(1162, 'Chañaral', 49),
(1163, 'Diego de Almagro', 49),
(1164, 'Castro', 50),
(1165, 'Ancud', 50),
(1166, 'Quemchi', 50),
(1167, 'Dalcahue', 50),
(1168, 'Curaco de Vélez', 50),
(1169, 'Puqueldón', 50),
(1170, 'Quellón', 50),
(1171, 'Salamanca', 51),
(1172, 'Los Vilos', 51),
(1173, 'Canela', 51),
(1174, 'Illapel', 51),
(1175, 'Chépica', 52),
(1176, 'Chimbarongo', 52),
(1177, 'Lolol', 52),
(1178, 'Nancagua', 52),
(1179, 'Palmilla', 52),
(1180, 'Peralillo', 52),
(1181, 'Placilla', 52),
(1182, 'San Fernando', 52),
(1183, 'Concepción', 53),
(1184, 'Chiguayante', 53),
(1185, 'Coronel', 53),
(1186, 'Florida', 53),
(1187, 'Hualpén', 53),
(1188, 'Hualqui', 53),
(1189, 'Lota', 53),
(1190, 'Penco', 53),
(1191, 'San Pedro de la Paz', 53),
(1192, 'Talcahuano', 53),
(1193, 'Copiapó', 54),
(1194, 'Caldera', 54),
(1195, 'Tierra Amarilla', 54),
(1196, 'Altos', 55),
(1197, 'Arroyos y Esteros', 55),
(1198, 'Caacupé', 55),
(1199, 'Caraguatay', 55),
(1200, 'Emboscada', 55),
(1201, 'Eusebio Ayala', 55),
(1202, 'Isla Pucú', 55),
(1203, 'Itacurubí de la Cordillera', 55),
(1204, 'Juan de Mena', 55),
(1205, 'Mbocayaty del Yhaguy', 55),
(1206, 'Piribebuy', 55),
(1207, 'Primero de Marzo', 55),
(1208, 'San Bernardino', 55),
(1209, 'San José Obrero', 55),
(1210, 'Santa Elena', 55),
(1211, 'Valenzuela', 55),
(1212, 'Coyhaique', 56),
(1213, 'Lago Verde', 56),
(1214, 'Curicó', 57),
(1215, 'Rauco', 57),
(1216, 'Romeral', 57),
(1217, 'Teno', 57),
(1218, 'Vichuquén', 57),
(1219, 'Ticantén', 57),
(1220, 'Hualañé', 57),
(1221, 'Molina ', 57),
(1222, 'Sagrada Familia', 57),
(1223, 'Bulnes', 58),
(1224, 'Chillán', 58),
(1225, 'Chillán Viejo', 58),
(1226, 'El Carmen', 58),
(1227, 'Pemuco', 58),
(1228, 'Pinto', 58),
(1229, 'Quillón', 58),
(1230, 'San Ignacio', 58),
(1231, 'Calama', 59),
(1232, 'Ollagüe', 59),
(1233, 'San Pedro de Atacama', 59),
(1234, 'La Serena', 60),
(1235, 'Coquimbo', 60),
(1236, 'La Higuera', 60),
(1237, 'Vicuña', 60),
(1238, 'Paihuano', 60),
(1239, 'Andacollo', 60),
(1240, 'Chile Chico', 61),
(1241, 'Río Ibáñez', 61),
(1242, 'Alto del Carmen', 62),
(1243, 'Vallenar', 62),
(1244, 'Huasco', 62),
(1245, 'Freirina', 62),
(1246, 'Iquique', 63),
(1247, 'Alto Hospicio', 63),
(1248, 'Rapa Nui', 64),
(1249, 'Ovalle', 65),
(1250, 'Río Hurtado', 65),
(1251, 'Monte Patria', 65),
(1252, 'Combarbalá', 65),
(1253, 'Punitaqui', 65),
(1254, 'Linares', 66),
(1255, 'Colbún', 66),
(1256, 'Longaví', 66),
(1257, 'Parral', 66),
(1258, 'Retiro', 66),
(1259, 'San Javier de Loncomilla', 66),
(1260, 'Villa Alegre', 66),
(1262, 'Yerbas Buenas', 66),
(1263, 'Puerto Montt', 67),
(1264, 'Puerto Varas', 67),
(1265, 'Cochamó', 67),
(1266, 'Calbuco', 67),
(1267, 'Maullín', 67),
(1268, 'Los Muermos', 67),
(1269, 'Fresia', 67),
(1270, 'Llanquihue', 67),
(1271, 'Los Andes', 68),
(1272, 'San Esteban', 68),
(1273, 'Calle Larga', 68),
(1274, 'Rinconada', 68),
(1275, 'Natales', 69),
(1276, 'Torres del Paine', 69),
(1277, 'Laguna Blanca', 69),
(1278, 'San Gregorio', 69),
(1279, 'Río Verde', 69),
(1280, 'Punta Arenas', 69),
(1281, 'Primavera', 69),
(1282, 'Porvenir', 69),
(1283, 'San Bernardo', 70),
(1284, 'Calera de Tango', 70),
(1285, 'Buin', 70),
(1286, 'Paine', 70),
(1287, 'Angol', 70),
(1288, 'Victoria', 70),
(1289, 'Collipulli', 70),
(1290, 'Traiguén', 71),
(1291, 'Palena', 71),
(1292, 'Parinacota', 71),
(1293, 'Putre', 70),
(1295, 'San Carlos', 72),
(1296, 'Coihueco', 72),
(1297, 'Ñiquén', 72),
(1298, 'San Fabián ', 72),
(1299, 'San Nicolás', 72),
(1300, 'Quillota', 73),
(1301, 'La Cruz', 73),
(1302, 'La Calera', 73),
(1305, 'Nogales', 73),
(1306, 'Hijuelas', 73),
(1307, 'La Unión', 74),
(1308, 'Río Bueno', 74),
(1309, 'Futrono', 74),
(1310, 'Lago Ranco', 74),
(1311, 'San Felipe', 76),
(1312, 'Llay-Llay', 76),
(1313, 'Putaendo', 76),
(1314, 'Santa María', 76),
(1315, 'Panquehue', 76),
(1316, 'Cerrillos', 77),
(1317, 'Cerro Navia', 77),
(1318, 'Conchalí', 77),
(1319, 'El Bosque', 77),
(1320, 'Huechuraba', 77),
(1321, 'Independencia', 77),
(1322, 'La Cisterna', 77),
(1323, 'La Florida', 77),
(1324, 'La Granja', 77),
(1325, 'La Pintana', 77),
(1326, 'La Reina', 77),
(1327, 'Las Condes', 77),
(1328, 'Lo Barnechea', 77),
(1329, 'Lo Espejo', 77),
(1330, 'Macul', 77),
(1331, 'Maipú', 77),
(1332, 'Ñuñoa', 77),
(1333, 'Providencia', 77),
(1334, 'Quilicura', 77),
(1335, 'Recoleta', 77),
(1336, 'San Joaquín', 77),
(1337, 'San Miguel', 77),
(1338, 'San Ramón', 77),
(1339, 'Santiago ', 77),
(1340, 'Vitacura', 77),
(1341, 'El Monte', 78),
(1342, 'Isla de Maipo', 78),
(1343, 'Padre Hurtado', 78),
(1344, 'Peñaflor ', 78),
(1345, 'Talagante', 78),
(1346, 'Constitución', 79),
(1347, 'Curepto', 79),
(1348, 'Empedrado', 79),
(1349, 'Maule', 79),
(1350, 'Pelarco', 79),
(1351, 'Pencahue', 79),
(1352, 'Río Claro', 79),
(1353, 'San Clemente', 79),
(1354, 'San Rafael', 79),
(1355, 'Talca', 79),
(1356, 'Pozo Almonte', 80),
(1357, 'Huara', 80),
(1358, 'Pica', 80),
(1359, 'Camiña', 80),
(1360, 'Colchane', 80),
(1361, 'Porvenir', 81),
(1362, 'Primavera', 81),
(1363, 'Timaukel', 81),
(1364, 'Tocopilla', 82),
(1365, 'María Elena', 82),
(1366, 'Natales', 83),
(1367, 'Torres del Paine', 83),
(1368, 'Valdivia', 84),
(1369, 'San José de la Mariquina', 84),
(1370, 'Lanco', 84),
(1371, 'Máfil', 84),
(1372, 'Panguipulli', 84),
(1373, 'Los Lagos', 84),
(1374, 'Paillaco', 84),
(1375, 'Corral', 84),
(1376, 'Valparaíso', 85),
(1377, 'Casablanca', 85),
(1378, 'Concón', 85),
(1379, 'Juan Fernández', 85),
(1380, 'Puchuncaví', 85),
(1381, 'Quintero', 85),
(1382, 'Viña del Mar', 85),
(1384, 'Popular', 86),
(1385, 'Santa Cruz', 86),
(1386, 'Manrique', 86),
(1387, 'Aranjuez', 86),
(1388, 'Manrique', 86),
(1389, 'Castilla', 86),
(1390, 'Doce de Octubre', 86),
(1391, 'Robledo', 86),
(1392, 'Villa Hermosa', 86),
(1393, 'Buenos Aires', 86),
(1394, 'La Candelaria', 86),
(1395, 'Laureles- Estadio', 86),
(1396, 'La América', 86),
(1397, 'San Javier', 86),
(1398, 'El Poblado', 86),
(1399, 'Guayabal', 86),
(1400, 'Belén ', 86),
(1401, 'Palmitas', 86),
(1402, 'San Cristóbal', 86),
(1403, 'Altavista', 86),
(1404, 'San Antonio de Prado', 86),
(1405, 'Santa Elena', 86),
(1406, 'Baranoa', 87),
(1407, 'Palmar de Varela', 87),
(1408, 'Polonuevo', 87),
(1409, 'Ponedera', 87),
(1410, 'Sabanagrande', 87),
(1411, 'Sabanalarga', 87),
(1412, 'Santo Tomás', 87),
(1413, 'Barranquilla', 87),
(1414, 'Galapa', 87),
(1415, 'Malambo', 87),
(1416, 'Soledad', 87),
(1417, 'Puerto Colombia', 87),
(1418, 'Campo de la Cruz', 87),
(1419, 'Candelaria ', 87),
(1420, 'Luruaco', 87),
(1421, 'Manatí', 87),
(1422, 'Repelón', 87),
(1423, 'Repelón', 87),
(1424, 'Santa Lucía', 87),
(1425, 'Suán', 87),
(1426, 'Juan de Acosta', 87),
(1427, 'Piojó', 87),
(1428, 'Tubará', 87),
(1429, 'Usiacurí', 87),
(1430, 'Cartagena de Indias', 88),
(1431, 'Achí', 88),
(1432, 'Altos del Rosario', 88),
(1433, 'Arenal', 88),
(1434, 'Arjona', 88),
(1435, 'Arroyohondo', 88),
(1436, 'Barranco de Loba', 88),
(1437, 'Calamar', 88),
(1438, 'Cantagallo', 88),
(1439, 'Cicuco', 88),
(1440, 'Clemencia', 88),
(1441, 'Córdoba', 88),
(1442, 'El Carmen de Bolívar', 88),
(1443, 'El Guamo', 88),
(1444, 'El Peñón', 88),
(1445, 'Hatillo de Loba', 88),
(1446, 'Magangué', 88),
(1447, 'Margarita', 88),
(1448, 'María La Baja', 88),
(1449, 'Montecristo', 88),
(1450, 'Morales', 88),
(1451, 'Norosí', 88),
(1452, 'Pinillos', 88),
(1453, 'Regidor', 88),
(1454, 'Rioviejo', 88),
(1455, 'San Cristóbal', 88),
(1456, 'San Estanislao', 88),
(1457, 'San Jacinto', 88),
(1458, 'San Jacinto del Cauca', 88),
(1459, 'San Martín de Loba', 88),
(1460, 'Santa Rosa', 88),
(1461, 'Simití', 88),
(1462, 'Talaigua Nuevo', 88),
(1463, 'Turbaco', 88),
(1464, 'Zambrano', 88),
(1465, 'Tunja', 89),
(1466, 'Cómbita ', 89),
(1467, 'Cucaita', 89),
(1468, 'Chiquiza', 89),
(1469, 'Motavita', 89),
(1470, 'Oicatá', 89),
(1471, 'Samacá', 89),
(1472, 'Sora', 89),
(1473, 'Soracá', 89),
(1474, 'Sotaquira', 89),
(1475, 'Toca', 89),
(1476, 'Ventaquemada', 89),
(1477, 'Chiscas', 89),
(1478, 'Panqueba', 89),
(1479, 'Labranzagrande', 89),
(1480, 'Pajarito', 89),
(1481, 'Paya', 89),
(1482, 'Miraflores', 89),
(1483, 'Campohermoso', 89),
(1484, 'Páez', 89),
(1485, 'San Eduardo', 89),
(1486, 'Zetaquira', 89),
(1487, 'Ramiriquí', 89),
(1488, 'Boyacá', 89),
(1489, 'Ciénega', 89),
(1490, 'Puerto Boyacá', 89),
(1491, 'Cubará', 89),
(1492, 'Corrales', 89),
(1493, 'Iza', 89),
(1494, 'San José de Pare', 89),
(1495, 'Santa Sofía', 89),
(1496, 'Almeida', 89),
(1497, 'Saboyá', 89),
(1498, 'Chitaraque', 89),
(1499, 'La Victoria', 89),
(1500, 'Briceño', 89),
(1501, 'La Uvita', 89),
(1502, 'Rondón', 89),
(1503, 'Aguadas', 90),
(1504, 'Anserma', 90),
(1505, 'Aranzazu', 90),
(1506, 'Chinchiná', 90),
(1507, 'Filadelfia', 90),
(1508, 'La Dorada', 90),
(1509, 'La Merced', 90),
(1510, 'Manizales', 90),
(1511, 'Manzanares', 90),
(1512, 'Marmato', 90),
(1513, 'Marquetalia', 90),
(1514, 'Marulanda', 90),
(1515, 'Neira', 90),
(1516, 'Norcasia', 90),
(1517, 'Pácora', 90),
(1518, 'Palestina', 90),
(1519, 'Riosucio', 90),
(1520, 'Risaralda', 90),
(1521, 'Salamina', 90),
(1522, 'Samana', 90),
(1523, 'Supía', 90),
(1524, 'Victoria', 90),
(1525, 'Villamaría', 90),
(1526, 'Pensilvania', 90),
(1527, 'Popayán', 91),
(1528, 'Almaguer', 91),
(1529, 'Argelia', 91),
(1530, 'Balboa', 91),
(1531, 'Bolívar', 91),
(1532, 'Buenos Aires', 91),
(1533, 'Cajibío', 91),
(1534, 'Caldono', 91),
(1535, 'Caloto', 91),
(1536, 'Corinto', 91),
(1537, 'El Tambo', 91),
(1538, 'Florencia', 91),
(1539, 'Guachené', 91),
(1540, 'Guapi', 91),
(1541, 'Inzá', 91),
(1542, 'Jambaló', 91),
(1543, 'La Sierra', 91),
(1544, 'La Vega', 91),
(1545, 'López de Micay', 91),
(1546, 'Mercaderes', 91),
(1547, 'Miranda', 91),
(1548, 'Morales', 91),
(1549, 'Padilla', 91),
(1550, 'Páez', 91),
(1551, 'Patía', 91),
(1552, 'Piamonte', 91),
(1553, 'Piendamó', 91),
(1554, 'Puerto Tejada', 91),
(1555, 'Puracé', 91),
(1556, 'Rosas', 91),
(1557, 'San Sebastián', 91),
(1558, 'Santa Rosa', 91),
(1559, 'Santander de Quilichao', 91),
(1560, 'Silvia', 91),
(1561, 'Sucre', 91),
(1562, 'Valledupar', 92),
(1563, 'Aguachica', 92),
(1564, 'Agustín Codazzi', 92),
(1565, 'Becerril', 92),
(1566, 'Bosconia', 92),
(1567, 'Chimichagua', 92),
(1568, 'Chiriguaná', 92),
(1569, 'El Copey', 92),
(1570, 'El Paso', 92),
(1571, 'Gamarra', 92),
(1572, 'González', 92),
(1573, 'La Gloria', 92),
(1574, 'La Jagua de Ibirico', 92),
(1575, 'La Paz Robles', 92),
(1576, 'Manaure Balcón del Cesar', 92),
(1577, 'Pailitas', 92),
(1578, 'Pelaya', 92),
(1579, 'Pueblo Bello', 92),
(1580, 'Río de Oro', 92),
(1581, 'San Alberto', 92),
(1582, 'San Diego', 92),
(1583, 'San Alberto', 92),
(1584, 'San Martín', 92),
(1585, 'Tamalameque', 92),
(1586, 'Quibdó', 93),
(1587, 'Acandí', 93),
(1588, 'Alto Baudó', 93),
(1589, 'Atrato', 93),
(1590, 'Bagadó', 93),
(1591, 'Bahía Solano', 93),
(1592, 'Bajo Baudó', 93),
(1593, 'Bojayá', 93),
(1594, 'Cantón de San Pablo', 93),
(1595, 'Carmen del Darién', 93),
(1596, 'Cértegui', 93),
(1597, 'El Carmen de Atrato', 93),
(1598, 'Istmina', 93),
(1599, 'Juradó', 93),
(1600, 'Litoral del San Juan', 93),
(1601, 'Lloró', 93),
(1602, 'Medio Atrato', 93),
(1603, 'Medio Baudó', 93),
(1604, 'San Juan', 93),
(1605, 'Nóvita', 93),
(1606, 'Río Iró', 93),
(1607, 'Río Quito', 93),
(1608, 'Riosucio', 93),
(1609, 'San José del Palmar', 93),
(1610, 'Sipí', 93),
(1611, 'Tadó', 93),
(1612, 'Unguía', 93),
(1613, 'Unión Panamericana', 93),
(1614, 'Montería', 94),
(1615, 'Ayapel', 94),
(1616, 'Buenavista', 94),
(1617, 'Canalete', 94),
(1618, 'Cereté', 94),
(1619, 'Chimá', 94),
(1620, 'Chinú', 94),
(1621, 'Ciénaga de Oro', 94),
(1622, 'Cotorra', 94),
(1623, 'La Apartada', 94),
(1624, 'Los Córdobas', 94),
(1625, 'Momil', 94),
(1626, 'Montelíbano', 94),
(1627, 'Moñitos', 94),
(1628, 'Planeta Rica', 94),
(1629, 'Pueblo Nuevo', 94),
(1630, 'Puerto Escondido', 94),
(1631, 'Purísima de la Concepción', 94),
(1632, 'Sahagún', 94),
(1633, 'San Bernardo del Viento', 94),
(1634, 'San Carlos', 94),
(1635, 'San José de Uré', 94),
(1636, 'San Pelayo', 94),
(1637, 'Santa Cruz de Lorica', 94),
(1638, 'Tierralta', 94),
(1639, 'Valencia', 94),
(1640, 'Tuchín', 94),
(1641, 'Bogotá', 95),
(1642, 'Agua de Dios', 95),
(1643, 'Albán', 95),
(1644, 'Anapoima', 95),
(1645, 'Arbeláez', 95),
(1646, 'Beltrán', 95),
(1647, 'Bituima', 95),
(1648, 'Bojacá', 95),
(1649, 'Cabrera', 95),
(1650, 'Cachipay', 95),
(1651, 'Cajicá', 95),
(1652, 'Caparrapí', 95),
(1653, 'Cáqueza', 95),
(1654, 'Carmen de Carupa', 95),
(1655, 'Chaguaní', 95),
(1656, 'Chía', 95),
(1657, 'Chipaque', 95),
(1658, 'Chocontá', 95),
(1659, 'Cogua', 95),
(1660, 'Cota', 95),
(1661, 'Cucunubá', 95),
(1662, 'El Colegio', 95),
(1663, 'El Peñón', 95),
(1664, 'El Rosal', 95),
(1665, 'Facatativá', 95),
(1666, 'Fómeque', 95),
(1667, 'Funza', 95),
(1668, 'Gachalá', 95),
(1669, 'Gama', 95),
(1670, 'Granada', 95),
(1671, 'Guachetá', 95),
(1672, 'Guataquí', 95),
(1673, 'Guayabetal', 95),
(1674, 'Junín', 95),
(1675, 'La Palma', 95),
(1676, 'Lenguazaque', 95),
(1677, 'Manta', 95),
(1678, 'Mosquera', 95),
(1679, 'Nariño', 95),
(1680, 'Nemocón', 95),
(1681, 'Nimaima', 95),
(1682, 'Paime', 95),
(1683, 'Pasca', 95),
(1684, 'Pulí', 95),
(1685, 'Quipile', 95),
(1686, 'San Bernardo', 95),
(1687, 'Sasaima', 95),
(1688, 'Simijaca', 95),
(1689, 'Sopó', 95),
(1690, 'Supatá', 95),
(1691, 'Tabio', 95),
(1692, 'Tausa', 95),
(1693, 'Topaipí', 95),
(1694, 'Ubalá', 95),
(1695, 'Une', 95),
(1696, 'Venecia', 95),
(1697, 'Vianí', 95),
(1698, 'Villapinzón', 95),
(1699, 'Viotá', 95),
(1700, 'Zipaquirá', 95),
(1701, 'Zipacón', 95),
(1702, 'Neiva', 96),
(1703, 'Acevedo', 96),
(1704, 'Aipe', 96),
(1705, 'Algeciras', 96),
(1706, 'Altamira', 96),
(1707, 'Baraya', 96),
(1708, 'Campoalegre', 96),
(1709, 'Colombia', 96),
(1710, 'El Agrado', 96),
(1711, 'El Pital', 96),
(1712, 'Elías', 96),
(1713, 'Garzón', 96),
(1714, 'Gigante', 96),
(1715, 'Guadalupe', 96),
(1716, 'Hobo', 96),
(1717, 'Iquira', 96),
(1718, 'La Argentina', 96),
(1719, 'La Plata', 96),
(1720, 'Nátaga', 96),
(1721, 'Oporapa', 96),
(1722, 'Paicol', 96),
(1723, 'Palermo', 96),
(1724, 'Palestina', 96),
(1725, 'Pitalito', 96),
(1726, 'Rivera', 96),
(1727, 'Saladoblanco', 96),
(1728, 'San Agustín', 96),
(1729, 'Santa María', 96),
(1730, 'Suaza', 96),
(1731, 'Tarqui', 96),
(1732, 'Tello', 96),
(1733, 'Teruel', 96),
(1734, 'Tesalia', 96),
(1735, 'Timaná', 96),
(1736, 'Villavieja', 96),
(1737, 'Yaguará', 96),
(1738, 'Riohacha', 97),
(1739, 'Albania', 97),
(1740, 'Barrancas', 97),
(1741, 'Dibulla', 97),
(1742, 'Distracción', 97),
(1743, 'El Molino', 97),
(1744, 'Fonseca', 97),
(1745, 'Hatonuevo', 97),
(1746, 'La Jagua del Pilar', 97),
(1747, 'Maicao', 97),
(1748, 'Manaure', 97),
(1749, 'San Juan del Cesar', 97),
(1750, 'Uribia', 97),
(1751, 'Urumita', 97),
(1752, 'Villanueva', 97),
(1753, 'Santa Marta', 98),
(1754, 'Algarrobo', 98),
(1755, 'Aracataca', 98),
(1756, 'Ariguaní', 98),
(1757, 'Cerro de San Antonio', 98),
(1758, 'Chibolo', 98),
(1759, 'Ciénaga', 98),
(1760, 'Concordia', 98),
(1761, 'El Piñón', 98),
(1762, 'El Retén', 98),
(1763, 'Fundación', 98),
(1764, 'Guamal', 98),
(1765, 'Nueva Granada', 98),
(1766, 'Pedraza', 98),
(1767, 'Pijiño del Carmen', 98),
(1768, 'Pivijay', 98),
(1769, 'Plato', 98),
(1770, 'Puebloviejo', 98),
(1771, 'Remolino', 98),
(1772, 'Sabanas de San Ángel', 98),
(1773, 'Salamina', 98),
(1774, 'San Sebastián de Buenavista', 98),
(1775, 'San Zenón', 98),
(1776, 'Santa Ana', 98),
(1777, 'Santa Bárbara de Pinto', 98),
(1778, 'Sitionuevo', 98),
(1779, 'Tenerife', 98),
(1780, 'Zapayán', 98),
(1781, 'Zona Bananera', 98),
(1782, 'Villavicencio', 99),
(1783, 'Acacías', 99),
(1784, 'Barranca de Upía', 99),
(1785, 'Cabuyaro', 99),
(1786, 'Castilla La Nueva', 99),
(1787, 'Cubarral', 99),
(1788, 'Cumaral', 99),
(1789, 'El Calvario', 99),
(1790, 'El Castillo', 99),
(1791, 'El Dorado', 99),
(1792, 'Fuentedeoro', 99),
(1793, 'Granada', 99),
(1794, 'La Macarena', 99),
(1795, 'Guamal', 99),
(1796, 'La Uribe', 99),
(1797, 'Lejanías', 99),
(1798, 'Mapiripán', 99),
(1799, 'Mesetas', 99),
(1800, 'Puerto Concordia', 99),
(1801, 'Puerto', 99),
(1802, 'Puerto Rico', 99),
(1803, 'Restrepo', 99),
(1804, 'San Carlos de Guaroa', 99),
(1805, 'San Juan de Arama', 99),
(1806, 'San Juanito', 99),
(1807, 'San Martín', 99),
(1808, 'Vista Hermosa', 99),
(1809, 'Pasto', 100),
(1810, 'Albán', 100),
(1811, 'Aldana', 100),
(1812, 'Ancuyá', 100),
(1813, 'Arboleda', 100),
(1814, 'Barbacoas', 100),
(1815, 'Belén', 100),
(1816, 'Buesaco', 100),
(1817, 'Chachagüí', 100),
(1818, 'Colón Génova', 100),
(1819, 'Consacá', 100),
(1820, 'Córdoba', 100),
(1821, 'Cuaspud Carlosama', 100),
(1822, 'Cumbal', 100),
(1823, 'Cumbitara', 100),
(1824, 'El Charco', 100),
(1825, 'El Contadero', 100),
(1826, 'El Peñol', 100),
(1827, 'El Rosario', 100),
(1828, 'El Tablón de Gómez', 100),
(1829, 'El Tambo', 100),
(1830, 'Francisco Pizarro', 100),
(1831, 'Funes', 100),
(1832, 'Guachucal', 100),
(1833, 'Guaitarilla', 100),
(1834, 'Gualmatán', 100),
(1835, 'Iles', 100),
(1836, 'Imués', 100),
(1837, 'Ipiales', 100),
(1838, 'La Cruz', 100),
(1839, 'La Florida', 100),
(1840, 'La Llanada', 100),
(1841, 'Mallama', 100),
(1842, 'Mosquera', 100),
(1843, 'Ospina', 100),
(1844, 'Policarpa', 100),
(1845, 'Ricaurte', 100),
(1846, 'Samaniego', 100),
(1847, 'San Pablo', 100),
(1848, 'San Pedro de Cartago', 100),
(1849, 'Santacruz', 100),
(1850, 'Sapuyes', 100),
(1851, 'Taminango', 100),
(1852, 'Tangua', 100),
(1853, 'Tumaco', 100),
(1854, 'Túquerres', 100),
(1855, 'Yacuanquer', 100),
(1856, 'San José de Cúcuta', 101),
(1857, 'Abrego', 101),
(1858, 'Arboledas', 101),
(1859, 'Bochalema', 101),
(1860, 'Cáchira', 101),
(1861, 'Cácota', 101),
(1862, 'Chinácota', 101),
(1863, 'Chitagá', 101),
(1864, 'Convención', 101),
(1865, 'Cucutilla', 101),
(1866, 'Durania', 101),
(1867, 'El Carmen', 101),
(1868, 'El Tarra', 101),
(1869, 'El Zulia', 101),
(1870, 'Hacarí', 101),
(1871, 'Herrán', 101),
(1872, 'La Esperanza', 101),
(1873, 'La Playa de Belén', 101),
(1874, 'Labateca', 101),
(1875, 'Los Patios', 101),
(1876, 'Lourdes', 101),
(1877, 'Mutiscua', 101),
(1878, 'Ocaña', 101),
(1879, 'Pamplona', 101),
(1880, 'Pamplonita', 101),
(1881, 'Puerto Santander', 101),
(1882, 'Ragonvalia', 101),
(1883, 'Salazar de las Palmas', 101),
(1884, 'San Calixto', 101),
(1885, 'San Cayetano', 101),
(1886, 'Santiago', 101),
(1887, 'Sardinata', 101),
(1888, 'Silos', 101),
(1889, 'Teorama', 101),
(1890, 'Tibú', 101),
(1891, 'Toledo', 101),
(1892, 'Villa Caro', 101),
(1893, 'Villa del Rosario', 101),
(1894, 'Armenia', 102),
(1895, 'Buenavista', 102),
(1896, 'Calarcá', 102),
(1897, 'Circasia', 102),
(1898, 'Córdoba', 102),
(1899, 'Filandia', 102),
(1900, 'Génova', 102),
(1901, 'La Tebaida', 102),
(1902, 'Montenegro', 102),
(1903, 'Pijao', 102),
(1904, 'Quimbaya', 102),
(1905, 'Salento', 102),
(1906, 'Pereira', 103),
(1907, 'Apía', 103),
(1908, 'Balboa', 103),
(1909, 'Belén de Umbría', 103),
(1910, 'Dosquebradas', 103),
(1911, 'Guática', 103),
(1912, 'La Celia', 103),
(1913, 'La Virginia', 103),
(1914, 'Marsella', 103),
(1915, 'Mistrató', 103),
(1916, 'Pueblo Rico', 103),
(1917, 'Quinchía', 103),
(1918, 'Santa Rosa de Cabal', 103),
(1919, 'Santuario', 103),
(1920, 'Bucaramanga', 104),
(1921, 'Aguada', 104),
(1922, 'Albania', 104),
(1923, 'Aratoca', 104),
(1924, 'Barbosa', 104),
(1925, 'Barichara', 104),
(1926, 'Barrancabermeja', 104),
(1927, 'Bolívar', 104),
(1928, 'Cabrera', 104),
(1929, 'California', 104),
(1930, 'Capitanejo', 104),
(1931, 'Carcasí', 104),
(1932, 'Cepitá', 104),
(1933, 'Cerrito', 104),
(1934, 'Charalá', 104),
(1935, 'Charta', 104),
(1936, 'Chima', 104),
(1937, 'Chipatá', 104),
(1938, 'Cimitarra', 104),
(1939, 'Concepción', 104),
(1940, 'Confines', 104),
(1941, 'Contratación', 104),
(1942, 'Confines', 104),
(1943, 'Contratación', 104),
(1944, 'Coromoro', 104),
(1945, 'Curití', 104),
(1946, 'El Carmen de Chucurí', 104),
(1947, 'El Guacamayo', 104),
(1948, 'El Peñón', 104),
(1949, 'El Playón', 104),
(1950, 'Encino', 104),
(1951, 'Florián', 104),
(1952, 'Floridablanca', 104),
(1953, 'Gámbita', 104),
(1954, 'Guavatá', 104),
(1955, 'Jesús María', 104),
(1956, 'Lebrija', 104),
(1957, 'Málaga', 104),
(1958, 'Mogotes', 104),
(1959, 'Molagavita', 104),
(1960, 'Ocamonte', 104),
(1961, 'Onzaga', 104),
(1962, 'Palmar', 104),
(1963, 'Palmas del Socorro', 104),
(1964, 'Piedecuesta', 104),
(1965, 'Pinchote', 104),
(1966, 'Puente Nacional', 104),
(1967, 'Puerto Parra', 104),
(1968, 'Puerto Wilches', 104),
(1969, 'Rionegro', 104),
(1970, 'San Andrés', 104),
(1971, 'San Benito', 104),
(1972, 'San Gil', 104),
(1973, 'San Joaquín', 104),
(1974, 'San José de Miranda', 104),
(1975, 'Simacota', 104),
(1976, 'Socorro', 104),
(1977, 'Suaita', 104),
(1978, 'Sucre', 104),
(1979, 'Suratá', 104),
(1980, 'Zapatoca', 104),
(1981, 'Sincelejo', 105),
(1982, 'Buenavista', 105),
(1983, 'Caimito', 105),
(1984, 'Chalán', 105),
(1985, 'Colosó', 105),
(1986, 'Corozal', 105),
(1987, 'Coveñas', 105),
(1988, 'El Roble', 105),
(1989, 'Galeras', 105),
(1990, 'Guaranda', 105),
(1991, 'La Unión', 105),
(1992, 'Los Palmitos', 105),
(1993, 'Majagual', 105),
(1994, 'Morroa', 105),
(1995, 'Ovejas', 105),
(1996, 'San Antonio de Palmito', 105),
(1997, 'San Benito Abad', 105),
(1998, 'San Marcos', 105),
(1999, 'San Onofre', 105),
(2000, 'Sucre', 105),
(2001, 'Toluviejo', 105),
(2002, 'Ibagué', 106),
(2003, 'Alpujarra', 106),
(2004, 'Alvarado', 106),
(2005, 'Ambalema', 106),
(2006, 'Anzoátegui', 106),
(2007, 'Armero Guayabal', 106),
(2008, 'Ataco', 106),
(2009, 'Cajamarca', 106),
(2010, 'Carmen de Apicalá', 106),
(2011, 'Casabianca', 106),
(2012, 'Chaparral', 106),
(2013, 'Coello', 106),
(2014, 'Coyaima', 106),
(2015, 'Cunday', 106),
(2016, 'Dolores', 106),
(2017, 'El Espinal', 106),
(2018, 'El Guamo', 106),
(2019, 'Falan', 106),
(2020, 'Flandes', 106),
(2021, 'Fresno', 106),
(2022, 'Herveo', 106),
(2023, 'Honda', 106),
(2024, 'Icononzo', 106),
(2025, 'Lérida', 106),
(2026, 'Líbano', 106),
(2027, 'Melgar', 106),
(2028, 'Murillo', 106),
(2029, 'Natagaima', 106),
(2030, 'Palocabildo', 106),
(2031, 'Piedras', 106),
(2032, 'Planadas', 106),
(2033, 'Prado', 106),
(2034, 'Purificación', 106),
(2035, 'Rioblanco', 106),
(2036, 'San Antonio', 106),
(2037, 'San Luis', 106),
(2038, 'Suárez', 106),
(2039, 'Venadillo', 106),
(2040, 'Villahermosa', 106),
(2041, 'Cali', 107),
(2042, 'Alcalá', 107),
(2043, 'Andalucía', 107),
(2044, 'Ansermanuevo', 107),
(2045, 'Argelia', 107),
(2046, 'Bolívar', 107),
(2047, 'Buenaventura', 107),
(2048, 'Bugalagrande', 107),
(2049, 'Caicedonia', 107),
(2050, 'Calima El Darién', 107),
(2051, 'Candelaria', 107),
(2052, 'Cartago', 107),
(2053, 'Dagua', 107),
(2054, 'El Águila', 107),
(2055, 'El Cairo', 107),
(2056, 'El Cerrito', 107),
(2057, 'El Dovio', 107),
(2058, 'Florida', 107),
(2059, 'Ginebra', 107),
(2060, 'Guadalajara de Buga', 107),
(2061, 'Jamundí', 107),
(2062, 'La Cumbre', 107),
(2063, 'La Unión', 107),
(2064, 'Obando', 107),
(2065, 'Palmira', 107),
(2066, 'Pradera', 107),
(2067, 'Sevilla', 107),
(2068, 'Trujillo', 107),
(2069, 'Versalles', 107),
(2070, 'Yotoco', 107),
(2071, 'Zarzal', 107),
(2072, 'Montevideo', 5),
(2073, 'Casupá', 6),
(2074, 'Fray Marcos', 6),
(2075, 'Sarandí Grande', 6),
(2076, 'Baltasar Brum', 109),
(2077, 'Bella Unión', 109),
(2078, 'Tomás Gomensoro', 109),
(2079, '18 de Mayo', 110),
(2080, 'Aguas Corrientes', 110),
(2081, 'Atlántida', 110),
(2082, 'Barros Blancos', 110),
(2083, 'Canelones', 110),
(2084, 'Ciudad de la Costa', 110),
(2085, 'Empalme Olmos', 110),
(2086, 'La Floresta', 110),
(2087, 'La Paz', 110),
(2088, 'Las Piedras', 110),
(2089, 'Los Cerrillos', 110),
(2090, 'Migues', 110),
(2091, 'Montes', 110),
(2092, 'Nicolich', 110),
(2093, 'Pando', 110),
(2094, 'Parque del Plata', 110),
(2095, 'Paso Carrasco', 110),
(2096, 'Progreso', 110),
(2097, 'Salinas', 110),
(2098, 'San Antonio', 110),
(2099, 'San Bautista', 110),
(2100, 'San Jacinto', 110),
(2101, 'San Ramón', 110),
(2102, 'Santa Lucía', 110),
(2103, 'Santa Rosa', 110),
(2104, 'Sauce', 110),
(2105, 'Soca', 110),
(2106, 'Suárez', 110),
(2107, 'Tala', 110),
(2108, 'Toledo', 110),
(2109, 'Aceguá', 111),
(2110, 'Arbolito', 111),
(2111, 'Arévalo', 111),
(2112, 'Bañado de Medina', 111),
(2113, 'Centurión', 111),
(2114, 'Cerro de las Cuentas', 111),
(2115, 'Fraile Muerto', 111),
(2116, 'Isidoro Noblía', 111),
(2117, 'Las Cañas', 111),
(2118, 'Plácido Rosas', 111),
(2119, 'Quebracho', 111),
(2120, 'Ramón Trigo', 111),
(2121, 'Río Branco', 111),
(2122, 'Tres Islas', 111);
INSERT INTO `ciudades` (`idciudad`, `nombre_ciudad`, `idprovincia`) VALUES
(2123, 'Tupambaé', 111),
(2124, 'Carmelo', 112),
(2125, 'Colonia Miguelete', 112),
(2126, 'Colonia Valdense', 112),
(2127, 'Florencio Sánchez', 112),
(2128, 'Juan L. Lacaze', 112),
(2129, 'La Paz', 112),
(2130, 'Nueva Helvecia', 112),
(2131, 'Nueva Palmira', 112),
(2132, 'Nueva Palmira', 112),
(2133, 'Ombúes de Lavalle', 112),
(2134, 'Rosario', 112),
(2135, 'Tarariras', 112),
(2136, 'Sarandí del Yí', 113),
(2137, 'Villa del Carmen', 113),
(2138, 'Ismael Cortinas', 114),
(2139, 'José Batlle y Ordóñez', 116),
(2140, 'José Pedro Varela', 116),
(2141, 'Mariscala', 116),
(2142, 'Solís de Mataojo', 116),
(2143, 'Aiguá', 117),
(2144, 'Garzón', 117),
(2145, 'Maldonado', 117),
(2146, 'Pan de Azúcar', 117),
(2147, 'Piriápolis', 117),
(2148, 'Punta del Este', 117),
(2149, 'San Carlos', 117),
(2150, 'Solís Grande', 117),
(2151, 'Chapicuy', 118),
(2152, 'Guichón', 118),
(2153, 'Lorenzo Geyres', 118),
(2154, 'Piedras Coloradas', 118),
(2155, 'Porvenir', 118),
(2156, 'Quebracho', 118),
(2157, 'Tambores', 118),
(2158, 'Nuevo Berlín', 119),
(2159, 'San Javier', 119),
(2160, 'Young', 119),
(2161, 'Castillos', 120),
(2162, 'Chuy', 120),
(2163, 'La Paloma', 120),
(2164, 'Lascano', 120),
(2165, 'Belén', 121),
(2166, 'Colonia Lavalleja', 121),
(2167, 'Mataojo', 121),
(2168, 'Rincón de Valentín', 121),
(2169, 'San Antonio', 121),
(2170, 'Villa Constitución', 121),
(2171, 'Ciudad del Plata', 122),
(2172, 'Ecilda Paullier', 122),
(2173, 'Libertad', 122),
(2174, 'Rodríguez', 122),
(2175, 'Cardona', 123),
(2176, 'Dolores', 123),
(2177, 'José Enrique Rodó', 123),
(2178, 'Palmitas', 123),
(2179, 'Ansina', 124),
(2180, 'Paso de los Toros', 124),
(2181, 'San Gregorio de Polanco', 124),
(2182, 'Cerro Chato', 125),
(2183, 'General Enrique Martínez', 125),
(2184, 'Rincón', 125),
(2185, 'Santa Clara de Olimar', 125),
(2186, 'Rincón', 125),
(2187, 'Santa Clara de Olimar', 125),
(2188, 'Vergara', 125),
(2189, 'Villa Sara', 125),
(2190, 'Atures', 126),
(2191, 'Alto Orinoco', 126),
(2192, 'Atabapo', 126),
(2193, 'Autana', 126),
(2194, 'Manapiare', 126),
(2195, 'Río Negro', 126),
(2196, 'Simón Bolívar', 127),
(2197, 'Anaco', 127),
(2198, 'Aragua', 127),
(2199, 'Diego Bautista Urbaneja', 127),
(2200, 'Fernando de Peñalver', 127),
(2201, 'Francisco del Carmen Carvajal', 127),
(2202, 'Francisco de Miranda', 127),
(2203, 'Guanta', 127),
(2204, 'José Gregorio Monagas', 127),
(2205, 'Juan Antonio Sotillo', 127),
(2206, 'Juan Manuel Cajigal', 127),
(2207, 'Libertad', 127),
(2208, 'Manuel Ezequiel Bruzual', 127),
(2209, 'Pedro María Freites', 127),
(2210, 'Píritu', 127),
(2211, 'San José de Guanipa', 127),
(2212, 'San Juan de Capistrano', 127),
(2213, 'Santa Ana', 127),
(2214, 'Simón Rodríguez', 127),
(2215, 'Sir Arthur Mc Gregor', 127),
(2216, 'San Fernando', 128),
(2217, 'Achaguas', 128),
(2218, 'Biruaca', 128),
(2219, 'Muñoz', 128),
(2220, 'Páez', 128),
(2221, 'Pedro Camejo', 128),
(2222, 'Rómulo Gallegos', 128),
(2223, 'Girardot', 129),
(2224, 'Bolívar', 129),
(2225, 'Camatagua', 129),
(2226, 'Francisco Linares Alcántara', 129),
(2227, 'José Ángel Lamas', 129),
(2228, 'José Félix Ribas', 129),
(2229, 'José Rafael Revenga', 129),
(2230, 'Libertador', 129),
(2231, 'Mario Briceño Iragorry', 129),
(2232, 'Ocumare', 129),
(2233, 'San Casimiro', 129),
(2234, 'San Sebastián', 129),
(2235, 'Santiago Mariño', 129),
(2236, 'Santos Michelena', 129),
(2237, 'Sucre', 129),
(2238, 'Tovar', 129),
(2239, 'Urdaneta', 129),
(2240, 'Zamora', 129),
(2241, 'Barinas', 130),
(2242, 'Alberto Arvelo Torrealba', 130),
(2243, 'Andrés Eloy Blanco', 130),
(2244, 'Antonio José de Sucre', 130),
(2245, 'Arismendi', 130),
(2246, 'Bolívar', 130),
(2247, 'Cruz Paredes', 130),
(2248, 'Ezequiel Zamora', 130),
(2249, 'Obispos', 130),
(2250, 'Pedraza', 130),
(2251, 'Rojas', 130),
(2252, 'Sosa', 130),
(2253, 'Heres', 131),
(2254, 'Angostura', 131),
(2255, 'Caroní', 131),
(2256, 'Cedeño', 131),
(2257, 'El Callao', 131),
(2258, 'Gran Sabana', 131),
(2259, 'Padre Pedro Chien', 131),
(2260, 'Piar', 131),
(2261, 'Roscio', 131),
(2262, 'Sifontes', 131),
(2263, 'Sucre', 131),
(2264, 'Valencia', 132),
(2265, 'Bejuma', 132),
(2266, 'Carlos Arvelo', 132),
(2267, 'Diego Ibarra', 132),
(2268, 'Guacara', 132),
(2269, 'Juan José Mora', 132),
(2270, 'Libertador', 132),
(2271, 'Los Guayos', 132),
(2272, 'Miranda', 132),
(2273, 'Montalbán', 132),
(2274, 'Naguanagua', 132),
(2275, 'Puerto Cabello', 132),
(2276, 'San Diego', 132),
(2277, 'San Joaquín', 132),
(2278, 'Ezequiel Zamora', 133),
(2279, 'Anzoátegui', 133),
(2280, 'Girardot', 133),
(2281, 'Lima Blanco', 133),
(2282, 'Pao de San Juan Bautista', 133),
(2283, 'Ricaurte', 133),
(2284, 'Rómulo Gallegos', 133),
(2285, 'Tinaco', 133),
(2286, 'Tinaquillo', 133),
(2287, 'Tucupita', 134),
(2288, 'Antonio Díaz', 134),
(2289, 'Casacoima', 134),
(2290, 'Pedernales', 134),
(2291, 'Miranda', 135),
(2292, 'Acosta', 135),
(2293, 'Bolívar', 135),
(2294, 'Buchivacoa', 135),
(2295, 'Cacique Manaure', 135),
(2296, 'Carirubana', 135),
(2297, 'Colina', 135),
(2298, 'Dabajuro', 135),
(2299, 'Democracia', 135),
(2300, 'Falcón', 135),
(2301, 'Federación', 135),
(2302, 'Jacura', 135),
(2303, 'Los Taques', 135),
(2304, 'Mauroa', 135),
(2305, 'Monseñor Iturriza', 135),
(2306, 'Palma Sola', 135),
(2307, 'Petit', 135),
(2308, 'Píritu', 135),
(2309, 'San Francisco', 135),
(2310, 'Silva', 135),
(2311, 'Sucre', 135),
(2312, 'Tocópero', 135),
(2313, 'Unión', 135),
(2315, 'Urumaco', 135),
(2316, 'Zamora', 135),
(2317, 'Juan Germán Roscio', 136),
(2318, 'Camaguán', 136),
(2319, 'Chaguaramas', 136),
(2320, 'El Socorro', 136),
(2321, 'Francisco de Miranda', 136),
(2322, 'José Félix Ribas', 136),
(2323, 'José Tadeo Monagas', 136),
(2324, 'Julián Mellado', 136),
(2325, 'Las Mercedes', 136),
(2326, 'Leonardo Infante', 136),
(2327, 'Ortiz', 136),
(2328, 'Pedro Zaraza', 136),
(2329, 'San Gerónimo de Guayabal', 136),
(2330, 'San José de Guaribe', 136),
(2331, 'Santa María de Ipire', 136),
(2332, 'Vargas', 137),
(2333, 'Iribarren', 138),
(2334, 'Andrés Eloy Blanco', 138),
(2335, 'Crespo', 138),
(2336, 'Jiménez', 138),
(2337, 'Morán', 138),
(2338, 'Palavecino', 138),
(2339, 'Simón Planas', 138),
(2340, 'Torres', 138),
(2341, 'Urdaneta', 138),
(2342, 'Libertador', 139),
(2343, 'Alberto Adriani', 139),
(2344, 'Andrés Bello', 139),
(2345, 'Antonio Pinto Salinas', 139),
(2346, 'Aricagua', 139),
(2347, 'Arzobispo Chacón', 139),
(2348, 'Campo Elías', 139),
(2349, 'Caracciolo Parra Olmedo', 139),
(2350, 'Cardenal Quintero', 139),
(2351, 'Guaraque', 139),
(2352, 'Julio César Salas', 139),
(2353, 'Justo Briceño', 139),
(2354, 'Miranda', 139),
(2355, 'Obispo Ramos de Lora', 139),
(2356, 'Padre Noguera', 139),
(2357, 'Pueblo Llano', 139),
(2358, 'Padre Noguera', 139),
(2359, 'Pueblo Llano', 139),
(2360, 'Rangel', 139),
(2361, 'Rivas Dávila', 139),
(2362, 'Santos Marquina', 139),
(2363, 'Sucre', 139),
(2364, 'Tovar', 139),
(2365, 'Tulio Febres Cordero', 139),
(2366, 'Zea', 139),
(2367, 'Guaicaipuro', 140),
(2368, 'Acevedo', 140),
(2369, 'Andrés Bello', 140),
(2370, 'Baruta', 140),
(2371, 'Brión', 140),
(2372, 'Buroz', 140),
(2373, 'Carrizal', 140),
(2374, 'Chacao', 140),
(2375, 'Cristóbal Rojas', 140),
(2376, 'El Hatillo', 140),
(2377, 'Independencia', 140),
(2378, 'Los Salias', 140),
(2379, 'Páez', 140),
(2380, 'Paz Castillo', 140),
(2381, 'Pedro Gual', 140),
(2382, 'Plaza', 140),
(2383, 'Simón Bolívar', 140),
(2384, 'Sucre', 140),
(2385, 'Tomás Lander', 140),
(2386, 'Urdaneta', 140),
(2387, 'Zamora', 140),
(2388, 'Maturín', 141),
(2389, 'Acosta', 141),
(2390, 'Aguasay', 141),
(2391, 'Bolívar', 141),
(2392, 'Caripe', 141),
(2393, 'Cedeño', 141),
(2394, 'Ezequiel Zamora', 141),
(2395, 'Libertador', 141),
(2396, 'Piar', 141),
(2397, 'Punceres', 141),
(2398, 'Santa Bárbara', 141),
(2399, 'Sotillo', 141),
(2400, 'Uracoa', 141),
(2401, 'Arismendi', 142),
(2402, 'Antolín del Campo', 142),
(2403, 'Díaz', 142),
(2404, 'García', 142),
(2405, 'Gómez', 142),
(2406, 'Maneiro', 142),
(2407, 'Marcano', 142),
(2408, 'Mariño', 142),
(2409, 'Península de Macanao', 142),
(2410, 'Tubores', 142),
(2411, 'Villalba', 142),
(2412, 'Guanare', 143),
(2413, 'Agua Blanca', 143),
(2414, 'Esteller', 143),
(2415, 'Araure', 143),
(2416, 'Guanarito', 143),
(2417, 'Monseñor José Vicente de Unda', 143),
(2418, 'Ospino', 143),
(2419, 'Páez', 143),
(2420, 'Papelón', 143),
(2421, 'San Genaro de Boconoíto', 143),
(2422, 'San Rafael de Onoto', 143),
(2423, 'Santa Rosalía', 143),
(2424, 'Sucre', 143),
(2425, 'Turén', 143),
(2426, 'Sucre', 144),
(2427, 'Andrés Eloy Blanco', 144),
(2428, 'Andrés Mata', 144),
(2429, 'Arismendi', 144),
(2430, 'Benítez', 144),
(2431, 'Bermúdez', 144),
(2432, 'Bolívar', 144),
(2433, 'Cajigal', 144),
(2434, 'Cruz Salmerón Acosta', 144),
(2435, 'Libertador', 144),
(2436, 'Mariño', 144),
(2437, 'Mejía', 144),
(2438, 'Ribero', 144),
(2439, 'Valdez', 144),
(2440, 'San Cristóbal', 145),
(2441, 'Andrés Bello', 145),
(2442, 'Antonio Rómulo Costa', 145),
(2443, 'Ayacucho', 145),
(2444, 'Bolívar', 145),
(2445, 'Cárdenas', 145),
(2446, 'Córdoba', 145),
(2447, 'Fernández Feo', 145),
(2448, 'Francisco de Miranda', 145),
(2449, 'García de Hevia', 145),
(2450, 'Guásimos', 145),
(2451, 'Independencia', 145),
(2452, 'Jáuregui', 145),
(2453, 'José María Vargas', 145),
(2454, 'Junín', 145),
(2455, 'Libertad', 145),
(2456, 'Libertador', 145),
(2457, 'Lobatera', 145),
(2458, 'Michelena', 145),
(2459, 'Panamericano', 145),
(2460, 'Pedro María Ureña', 145),
(2461, 'Rafael Urdaneta', 145),
(2462, 'Samuel Darío Maldonado', 145),
(2463, 'San Judas Tadeo', 145),
(2464, 'Seboruco', 145),
(2465, 'Simón Rodríguez', 145),
(2466, 'Sucre', 145),
(2467, 'Torbes', 145),
(2468, 'Uribante', 145),
(2469, 'Trujillo', 146),
(2470, 'Andrés Bello', 146),
(2471, 'Boconó', 146),
(2472, 'Bolívar', 146),
(2473, 'Candelaria', 146),
(2474, 'Carache', 146),
(2475, 'Escuque', 146),
(2476, 'José Felipe Márquez Cañizales', 146),
(2477, 'Juan Vicente Campo Elías', 146),
(2478, 'La Ceiba', 146),
(2479, 'Miranda', 146),
(2480, 'Monte Carmelo', 146),
(2481, 'Motatán', 146),
(2482, 'Pampán', 146),
(2483, 'Pampanito', 146),
(2484, 'Rafael Rangel', 146),
(2485, 'San Rafael de Carvajal', 146),
(2486, 'Sucre', 146),
(2487, 'Urdaneta', 146),
(2488, 'Valera', 147),
(2489, 'San Felipe', 147),
(2490, 'Arístides Bastidas', 147),
(2491, 'Bolívar', 147),
(2492, 'Bruzual', 147),
(2493, 'Cocorote', 147),
(2494, 'Independencia', 147),
(2495, 'José Antonio Páez', 147),
(2496, 'La Trinidad', 147),
(2497, 'Manuel Monge', 147),
(2498, 'Nirgua', 147),
(2499, 'Peña', 147),
(2500, 'Sucre', 147),
(2501, 'Urachiche', 147),
(2502, 'Veroes', 147),
(2503, 'Maracaibo', 148),
(2504, 'Almirante Padilla', 148),
(2505, 'Baralt', 148),
(2506, 'Cabimas', 148),
(2507, 'Catatumbo', 148),
(2508, 'Colón', 148),
(2509, 'Francisco Javier Pulgar', 148),
(2510, 'Guajira', 148),
(2511, 'Jesús Enrique Lossada', 148),
(2512, 'Jesús María Semprún', 148),
(2513, 'La Cañada de Urdaneta', 148),
(2514, 'Lagunillas', 148),
(2515, 'Machiques de Perijá', 148),
(2516, 'Mara', 148),
(2517, 'Miranda', 148),
(2518, 'Rosario de Perijá', 148),
(2519, 'San Francisco', 148),
(2520, 'Santa Rita', 148),
(2521, 'Simón Bolívar', 148),
(2522, 'Sucre', 148),
(2523, 'Valmore Rodríguez', 148),
(2524, 'Obregón', 149),
(2525, 'Azcapotzalco', 149),
(2526, 'Benito Juárez', 149),
(2527, 'Coyoacán', 149),
(2528, 'Cuajimalpa de Morelos', 149),
(2529, 'Gustavo A. Madero', 149),
(2530, 'Iztapalapa', 149),
(2531, 'La Magdalena Contreras', 149),
(2532, 'Miguel Hidalgo', 149),
(2533, 'Milpa Alta', 149),
(2534, 'Tláhuac', 149),
(2535, 'Tlalpan', 149),
(2536, 'Venustiano Carranza', 149),
(2537, 'Xochimilco', 149),
(2538, 'Aguascalientes', 150),
(2539, 'Asientos', 150),
(2540, 'Calvillo', 150),
(2541, 'El Llano', 150),
(2542, 'Jesús María', 150),
(2543, 'Rincón de Romos', 150),
(2544, 'San Francisco de los Romo', 150),
(2545, 'San José de Gracia', 150),
(2546, 'Tepezalá', 150),
(2547, 'Mexicali', 151),
(2548, 'Ensenada', 151),
(2549, 'Playas de Rosarito', 151),
(2550, 'San Quintín', 151),
(2551, 'Tecate', 151),
(2552, 'Tijuana', 151),
(2553, 'La Paz', 152),
(2554, 'Comondú', 152),
(2555, 'Loreto', 152),
(2556, 'Los Cabos', 152),
(2557, 'Mulegé', 152),
(2558, 'Campeche', 153),
(2559, 'Calakmul', 153),
(2560, 'Calkiní', 153),
(2561, 'Candelaria', 153),
(2562, 'Carmen', 153),
(2563, 'Champotón', 153),
(2564, 'Dzitbalché', 153),
(2565, 'Escárcega', 153),
(2566, 'Hecelchakán', 153),
(2567, 'Hopelchén', 153),
(2568, 'Palizada', 153),
(2569, 'Seybaplaya', 153),
(2570, 'Tenabo', 153),
(2571, 'Tuxtla Gutiérrez', 154),
(2572, 'Acacoyagua', 154),
(2573, 'Acala', 154),
(2574, 'Acapetahua', 154),
(2575, 'Amatenango de la Frontera', 154),
(2576, 'Ángel Albino Corzo', 154),
(2577, 'Benemérito de las Américas', 154),
(2578, 'Bochil', 154),
(2579, 'Cacahoatán', 154),
(2580, 'Catazajá', 154),
(2581, 'Chamula', 154),
(2582, 'Chanal', 154),
(2583, 'Chenalhó', 154),
(2584, 'Copainalá', 154),
(2585, 'El Bosque', 154),
(2586, 'El Porvenir', 154),
(2587, 'Emiliano Zapata', 154),
(2588, 'Francisco León', 154),
(2589, 'Honduras de la Sierra', 154),
(2590, 'Huehuetán', 154),
(2591, 'Huixtán', 154),
(2592, 'Ixhuatán', 154),
(2593, 'Ixtapa', 154),
(2594, 'Juárez', 154),
(2595, 'La Trinitaria', 154),
(2596, 'Las Rosas', 154),
(2597, 'Mapastepec', 154),
(2598, 'Metapa', 154),
(2599, 'Montecristo de Guerrero', 154),
(2600, 'Motozintla', 154),
(2601, 'Ocosingo', 154),
(2602, 'Ostuacán', 154),
(2603, 'Pantelhó', 154),
(2604, 'Pueblo Nuevo Solistahuacán', 154),
(2605, 'Reforma', 154),
(2606, 'San Andrés Duraznal', 154),
(2607, 'Simojovel', 154),
(2608, 'Suchiapa', 154),
(2609, 'Teopisca', 154),
(2610, 'Tonalá', 154),
(2611, 'Tumbalá', 154),
(2612, 'Tuxtla Chico', 154),
(2613, 'Tzimol', 154),
(2614, 'Villa Corzo', 154),
(2615, 'Zinacantán', 154),
(2616, 'Chihuahua', 155),
(2617, 'Ahumada', 155),
(2618, 'Ascensión', 155),
(2619, 'Balleza', 155),
(2620, 'Bocoyna', 155),
(2621, 'Buenaventura', 155),
(2622, 'Carichí', 155),
(2623, 'Coronado', 155),
(2624, 'Doctor Belisario Domínguez', 155),
(2625, 'El Tule', 155),
(2626, 'Galeana', 155),
(2627, 'Guachochi', 155),
(2628, 'Guerrero', 155),
(2629, 'Huejotitán', 155),
(2630, 'Ignacio Zaragoza', 155),
(2631, 'Janos', 155),
(2632, 'Julimes', 155),
(2633, 'López', 155),
(2634, 'Madera', 155),
(2635, 'Maguarichi', 155),
(2636, 'Moris', 155),
(2637, 'Ocampo', 155),
(2638, 'Riva Palacio', 155),
(2639, 'Rosales', 155),
(2640, 'San Francisco de Borja', 155),
(2641, 'San Francisco de Conchos', 155),
(2642, 'San Francisco del Oro', 155),
(2643, 'Santa Bárbara', 155),
(2644, 'Santa Isabel', 155),
(2645, 'Satevó', 155),
(2646, 'Temósachi', 155),
(2647, 'Urique', 155),
(2648, 'Uruachi', 155),
(2649, 'Valle de Zaragoza', 155),
(2650, 'Saltillo', 156),
(2651, 'Acuña', 156),
(2652, 'Candela', 156),
(2653, 'Cuatro Ciénegas', 156),
(2654, 'Escobedo', 156),
(2655, 'Francisco I. Madero', 156),
(2656, 'Frontera', 156),
(2657, 'Guerrero', 156),
(2658, 'Jiménez', 156),
(2659, 'Lamadrid', 156),
(2660, 'Múzquiz', 156),
(2661, 'Nava', 156),
(2662, 'Ocampo', 156),
(2663, 'Parras', 156),
(2664, 'Piedras Negras', 156),
(2665, 'Progreso', 156),
(2666, 'Ramos Arizpe', 156),
(2667, 'Sabinas', 156),
(2668, 'Sacramento', 156),
(2669, 'San Juan de Sabinas', 156),
(2670, 'San Pedro', 156),
(2671, 'Sierra Mojada', 156),
(2672, 'Viesca', 156),
(2673, 'Colima', 157),
(2674, 'Armería', 157),
(2675, 'Comala', 157),
(2676, 'Coquimatlán', 157),
(2677, 'Cuauhtémoc', 157),
(2678, 'Ixtlahuacán', 157),
(2679, 'Manzanillo', 157),
(2680, 'Minatitlán', 157),
(2681, 'Tecomán', 157),
(2682, 'Villa de Álvarez', 157),
(2683, 'Durango', 158),
(2684, 'Canatlán', 158),
(2685, 'Canelas', 158),
(2686, 'Cuencamé', 158),
(2687, 'El Oro', 158),
(2688, 'General Simón Bolívar', 158),
(2689, 'Guanaceví', 158),
(2690, 'Hidalgo', 158),
(2691, 'Lerdo', 158),
(2692, 'Nazas', 158),
(2693, 'Nuevo Ideal', 158),
(2694, 'Ocampo', 158),
(2695, 'Otáez', 158),
(2696, 'Pánuco de Coronado', 158),
(2697, 'Pueblo Nuevo', 158),
(2698, 'Rodeo', 158),
(2699, 'San Bernardo', 158),
(2700, 'San Dimas', 158),
(2701, 'San Juan de Guadalupe', 158),
(2702, 'San Luis del Cordero', 158),
(2703, 'Santiago Papasquiaro', 158),
(2704, 'Súchil', 158),
(2705, 'Tamazula', 158),
(2706, 'Tlahualilo', 158),
(2707, 'Topia', 158),
(2708, 'Vicente Guerrero', 158),
(2709, 'Toluca', 159),
(2710, 'Acambay', 159),
(2711, 'Acolman', 159),
(2712, 'Almoloya de Alquisiras', 159),
(2713, 'Almoloya de Juárez', 159),
(2714, 'Amanalco', 159),
(2715, 'Amecameca', 159),
(2716, 'Apaxco', 159),
(2717, 'Atizapán', 159),
(2718, 'Axapusco', 159),
(2719, 'Capulhuac', 159),
(2720, 'Chalco', 159),
(2721, 'Coacalco de Berriozábal', 159),
(2722, 'Cocotitlán', 159),
(2723, 'Cuautitlán Izcalli', 159),
(2724, 'El Oro', 159),
(2725, 'Hueypoxtla', 159),
(2726, 'Huixquilucan', 159),
(2727, 'Ixtapaluca', 159),
(2728, 'Ixtapan del Oro', 159),
(2729, 'Jaltenco', 159),
(2730, 'Jiquipilco', 159),
(2731, 'La Paz', 159),
(2732, 'Mexicaltzingo', 159),
(2733, 'Ocoyoacac', 159),
(2734, 'Otzoloapan', 159),
(2735, 'Papalotla', 159),
(2736, 'Rayón', 159),
(2737, 'San Antonio la Isla', 159),
(2738, 'Santo Tomás', 159),
(2739, 'Sultepec', 159),
(2740, 'Temamatla', 159),
(2741, 'Temoaya', 159),
(2742, 'Teotihuacán', 159),
(2743, 'Tequixquiac', 159),
(2744, 'Tlalnepantla de Baz', 159),
(2745, 'Tultitlán', 159),
(2746, 'Valle de Bravo', 159),
(2747, 'Villa de Allende', 159),
(2748, 'Villa Guerrero', 159),
(2749, 'Xalatlaco', 159),
(2750, 'Zacazonapan', 159),
(2751, 'Zinacantepec', 159),
(2752, 'Zumpahuacán', 159),
(2753, 'Zumpango', 159),
(2754, 'Guanajuato', 160),
(2755, 'Abasolo', 160),
(2756, 'Apaseo El Alto', 160),
(2757, 'Atarjea', 160),
(2758, 'Comonfort', 160),
(2759, 'Cortazar', 160),
(2760, 'Cuerámaro', 160),
(2761, 'Dolores Hidalgo', 160),
(2762, 'Huanímaro', 160),
(2763, 'Jerécuaro', 160),
(2764, 'León', 160),
(2765, 'Moroleón', 160),
(2766, 'Pénjamo', 160),
(2767, 'Purísima del Rincón', 160),
(2768, 'Romita', 160),
(2769, 'Salamanca', 160),
(2770, 'Salvatierra', 160),
(2771, 'San Felipe', 160),
(2772, 'San José Iturbide', 160),
(2773, 'Tarimoro', 160),
(2774, 'Uriangato', 160),
(2775, 'Valle de Santiago', 160),
(2776, 'Villa Doctor Mora', 160),
(2777, 'Villagrán', 160),
(2778, 'Xichú', 160),
(2779, 'Yuriria', 160),
(2780, 'Chilpancingo de los Bravo', 161),
(2781, 'Acapulco de Juárez', 161),
(2782, 'Acatepec', 161),
(2783, 'Alpoyeca', 161),
(2784, 'Arcelia', 161),
(2785, 'Atlamajalcingo del Monte', 161),
(2786, 'Atlixtac', 161),
(2787, 'Benito Juárez', 161),
(2788, 'Chilapa de Álvarez', 161),
(2789, 'Copala', 161),
(2790, 'Coyuca de Benítez', 161),
(2791, 'Cuautepec', 161),
(2792, 'Cuetzala del Progreso', 161),
(2793, 'Eduardo Neri', 161),
(2794, 'Florencio Villarreal', 161),
(2795, 'Igualapa', 161),
(2796, 'Malinaltepec', 161),
(2797, 'Mochitlán', 161),
(2798, 'Olinalá', 161),
(2799, 'Pilcaya', 161),
(2800, 'Quechultenango', 161),
(2801, 'San Marcos', 161),
(2802, 'Tecoanapa', 161),
(2803, 'Tetipac', 161),
(2804, 'Tlacoapa', 161),
(2805, 'Tlalixtaquilla de Maldonado', 161),
(2806, 'Tlapa de Comonfort', 161),
(2807, 'Tlapehuala', 161),
(2808, 'Xalpatláhuac', 161),
(2809, 'Xochihuehuetlán', 161),
(2810, 'Zapotitlán Tablas', 161),
(2811, 'Zirándaro', 161),
(2812, 'Zitlala', 161),
(2813, 'Soto', 162),
(2814, 'Acatlán', 162),
(2815, 'Actopan', 162),
(2816, 'Ajacuba', 162),
(2817, 'Almoloya', 162),
(2818, 'Apan', 162),
(2819, 'Calnali', 162),
(2820, 'Cardonal', 162),
(2821, 'El Arenal', 162),
(2822, 'Epazoyucan', 162),
(2823, 'Huasca de Ocampo', 162),
(2824, 'Huazalingo', 162),
(2825, 'Juárez Hidalgo', 162),
(2826, 'Lolotla', 162),
(2827, 'Pacula', 162),
(2828, 'Pisaflores', 162),
(2829, 'Progreso de Obregón', 162),
(2830, 'San Agustín Tlaxiaca', 162),
(2831, 'San Felipe Orizatlán', 162),
(2832, 'Tasquillo', 162),
(2833, 'Tecozautla', 162),
(2834, 'Tizayuca', 162),
(2835, 'Xochiatipan', 162),
(2836, 'Yahualica', 162),
(2837, 'Zacualtipán de Ángeles', 162),
(2838, 'Zapotlán de Juárez', 162),
(2839, 'Zempoala', 162),
(2840, 'Zimapán', 162),
(2841, 'Guadalajara', 163),
(2842, 'Acatlán de Juárez', 163),
(2843, 'Amatitán', 163),
(2844, 'Ameca', 163),
(2845, 'Bolaños', 163),
(2846, 'Cihuatlán', 163),
(2847, 'Concepción de Buenos Aires', 163),
(2848, 'Ejutla', 163),
(2849, 'Etzatlán', 163),
(2850, 'Huejúcar', 163),
(2851, 'Ixtlahuacán del Río', 163),
(2852, 'Jamay', 163),
(2853, 'Jesús María', 163),
(2854, 'Juanacatlán', 163),
(2855, 'Mazamitla', 163),
(2856, 'Quitupan', 163),
(2857, 'San Marcos', 163),
(2858, 'Sayula', 163),
(2859, 'Tala', 163),
(2860, 'Tapalpa', 163),
(2861, 'Tecalitlán', 163),
(2862, 'Tequila', 163),
(2863, 'Tomatlán', 163),
(2864, 'Unión de San Antonio', 163),
(2865, 'Valle de Guadalupe', 163),
(2866, 'Valle de Juárez', 163),
(2867, 'Zacoalco de Torres', 163),
(2868, 'Zapopan', 163),
(2869, 'Zapotiltic', 163),
(2870, 'Zapotitlán de Vadillo', 163),
(2871, 'Zapotitlán de Vadillo', 163),
(2872, 'Zapotlán del Rey', 163),
(2873, 'Zapotlán El Grande', 163),
(2874, 'Zapotlanejo', 163),
(2875, 'Morelia', 164),
(2876, 'Aguililla', 164),
(2877, 'Aporo', 164),
(2878, 'Ario', 164),
(2879, 'Buenavista', 164),
(2880, 'Chinicuila', 164),
(2881, 'Cotija', 164),
(2882, 'Huaniqueo', 164),
(2883, 'Irimbo', 164),
(2884, 'Jacona', 164),
(2885, 'Jiménez', 164),
(2886, 'La Piedad', 164),
(2887, 'Madero', 164),
(2888, 'Morelos', 164),
(2889, 'Nocupétaro', 164),
(2890, 'Nuevo Urecho', 164),
(2891, 'Numarán', 164),
(2892, 'Pajacuarán', 164),
(2893, 'Ocampo', 164),
(2894, 'Penjamillo', 164),
(2895, 'Purépero', 164),
(2896, 'Queréndaro', 164),
(2897, 'Sahuayo', 164),
(2898, 'Senguio', 164),
(2899, 'Tarímbaro', 164),
(2900, 'Taretan', 164),
(2901, 'Tepalcatepec', 164),
(2902, 'Tocumbo', 164),
(2903, 'Vista Hermosa', 164),
(2904, 'Zamora', 164),
(2905, 'Zináparo', 164),
(2906, 'Zitácuaro', 164),
(2907, 'Amacuzac', 165),
(2908, 'Axochiapan', 165),
(2909, 'Coatetelco', 165),
(2910, 'Cuautla', 165),
(2911, 'Emiliano Zapata', 165),
(2912, 'Huitzilac', 165),
(2913, 'Jantetelco', 165),
(2914, 'Jonacatepec', 165),
(2915, 'Mazatepec', 165),
(2916, 'Ocuituco', 165),
(2917, 'Puente de Ixtla', 165),
(2918, 'Tlaltizapán de Zapata', 165),
(2919, 'Xochitepec', 165),
(2920, 'Yecapixtla', 165),
(2921, 'Zacualpan de Amilpas', 165),
(2922, 'Tepic', 166),
(2923, 'Amatlán de Cañas', 166),
(2924, 'Jala', 166),
(2925, 'Rosamorada', 166),
(2926, 'Ruiz', 166),
(2927, 'San Pedro Lagunillas', 166),
(2928, 'Santa María del Oro', 166),
(2929, 'Santiago Ixcuintla', 166),
(2930, 'Tecuala', 166),
(2931, 'Tuxpan', 166),
(2932, 'Xalisco', 166),
(2933, 'Monterrey', 167),
(2934, 'Agualeguas', 167),
(2935, 'Aramberri', 167),
(2936, 'Cerralvo', 167),
(2937, 'China', 167),
(2938, 'Doctor Arroyo', 167),
(2939, 'Doctor Coss', 167),
(2940, 'El Carmen', 167),
(2941, 'General Bravo', 167),
(2942, 'General Treviño', 167),
(2943, 'Guadalupe', 167),
(2944, 'Hualahuises', 167),
(2945, 'Juárez', 167),
(2946, 'Linares', 167),
(2947, 'Los Aldamas', 167),
(2948, 'Marín', 167),
(2949, 'Mier y Noriega', 167),
(2950, 'Mina', 167),
(2951, 'Montemorelos', 167),
(2952, 'Pesquería', 167),
(2953, 'Rayones', 167),
(2954, 'San Nicolás de los Garza', 167),
(2955, 'San Pedro Garza García', 167),
(2956, 'Vallecillo', 167),
(2957, 'Villaldama', 167),
(2958, 'Oaxaca de Juárez', 168),
(2959, 'Abejones', 168),
(2960, 'Magdalena Apasco ', 168),
(2961, 'San Francisco Sola', 168),
(2962, 'San Juan Guelavía', 168),
(2963, 'San Mateo Etlatongo ', 168),
(2964, 'San Simón Zahuatlán ', 168),
(2965, 'Santa María Apazco', 168),
(2966, 'Santa María Zaniza', 168),
(2967, 'Santiago Yaveo', 168),
(2968, 'Tlalixtac de Cabrera', 168),
(2969, 'Acajete', 169),
(2970, 'Acteopan', 169),
(2971, 'Calpan', 169),
(2972, 'Chapulco', 169),
(2973, 'Caltepec', 169),
(2974, 'Domingo Arenas', 169),
(2975, 'Epatlán', 169),
(2976, 'Esperanza', 169),
(2977, 'Guadalupe', 169),
(2978, 'Guadalupe Victoria', 169),
(2979, 'Honey', 169),
(2980, 'Huehuetlán el Chico', 169),
(2981, 'Huehuetlán el Grande', 169),
(2982, 'Ixcamilpa de Guerrero', 169),
(2983, 'Ixtepec', 169),
(2984, 'Jalpan', 169),
(2985, 'Jolalpan', 169),
(2986, 'Juan C. Bonilla', 169),
(2987, 'Juan N. Méndez', 169),
(2988, 'La Magdalena Tlatlauquitepec', 169),
(2989, 'Nealtican', 169),
(2990, 'Ocoyucan', 169),
(2991, 'Oriental', 169),
(2992, 'Pahuatlán', 169),
(2993, 'Quecholac', 169),
(2994, 'San Felipe Tepatlán', 169),
(2995, 'San Jerónimo Tecuanipan', 169),
(2996, 'San Nicolás Buenos Aires', 169),
(2997, 'Tecomatlán', 169),
(2998, 'Xicotlán', 169),
(2999, 'Zacapala', 169),
(3000, 'Zoquitlán', 169),
(3001, 'Querétaro', 170),
(3002, 'Arroyo Seco', 170),
(3003, 'Colón', 170),
(3004, 'Huimilpan', 170),
(3005, 'Jalpan de Serra', 170),
(3006, 'Pedro Escobedo', 170),
(3007, 'San Joaquín', 170),
(3008, 'Tequisquiapan', 170),
(3009, 'Tolimán', 170),
(3010, 'Othón P. Blanco', 171),
(3011, 'Bacalar', 171),
(3012, 'Cozumel', 171),
(3013, 'Isla Mujeres', 171),
(3014, 'José María Morelos', 171),
(3015, 'Lázaro Cárdenas', 171),
(3016, 'Puerto Morelos', 171),
(3017, 'Solidaridad', 171),
(3018, 'Tulum171', 171),
(3019, 'San Luis Potosí', 172),
(3020, 'Ahualulco', 172),
(3021, 'Alaquines', 172),
(3022, 'Cárdenas', 172),
(3023, 'Cedral', 172),
(3024, 'Cerritos', 172),
(3025, 'Ciudad Fernández', 172),
(3026, 'El Naranjo', 172),
(3027, 'Lagunillas', 172),
(3028, 'Moctezuma', 172),
(3029, 'Rayón', 172),
(3030, 'Salinas', 172),
(3031, 'Santa Catarina', 172),
(3032, 'Santo Domingo', 172),
(3033, 'Tamasopo', 172),
(3034, 'Tamazunchale', 172),
(3035, 'Tampacán', 172),
(3036, 'Tamuín', 172),
(3037, 'Venado', 172),
(3038, 'Villa de Arista', 172),
(3039, 'Villa de la Paz', 172),
(3040, 'Xilitla', 172),
(3041, 'Culiacán', 173),
(3042, 'Angostura', 173),
(3043, 'Cosalá', 173),
(3044, 'El Rosario', 173),
(3045, 'Elota', 173),
(3046, 'Guasave', 173),
(3047, 'Salvador Alvarado', 173),
(3048, 'San Ignacio', 173),
(3049, 'Sinaloa', 173),
(3050, 'Hermosillo', 174),
(3051, 'Agua Prieta', 174),
(3052, 'Álamos', 174),
(3053, 'Bacadéhuachi', 174),
(3054, 'Bacanora', 174),
(3055, 'Caborca', 174),
(3056, 'Cumpas', 174),
(3057, 'Etchojoa', 174),
(3058, 'Granados', 174),
(3059, 'Huatabampo', 174),
(3060, 'Huépac', 174),
(3061, 'La Colorada', 174),
(3062, 'Mazatán', 174),
(3063, 'Naco', 174),
(3064, 'Navojoa', 174),
(3065, 'Nogales', 174),
(3066, 'Puerto Peñasco', 174),
(3067, 'Quiriego', 174),
(3068, 'Rayón', 174),
(3069, 'San Felipe de Jesús', 174),
(3070, 'Santa Cruz', 174),
(3071, 'Trincheras', 174),
(3072, 'Ures', 174),
(3073, 'Villa Pesqueira', 174),
(3074, 'Yécora', 174),
(3075, 'Centro', 175),
(3076, 'Cárdenas', 175),
(3077, 'Cunduacán', 175),
(3078, 'Jalapa', 175),
(3079, 'Jalpa de Méndez', 175),
(3080, 'Jonuta', 175),
(3081, 'Macuspana', 175),
(3082, 'Nacajuca', 175),
(3083, 'Paraíso', 175),
(3084, 'Tacotalpa', 175),
(3085, 'Teapa', 175),
(3086, 'Tenosique', 175),
(3087, 'Victoria', 176),
(3088, 'Abasolo', 176),
(3089, 'Burgos', 176),
(3090, 'Casasa', 176),
(3091, 'El Mante', 176),
(3092, 'Güémez', 176),
(3093, 'Jaumave', 176),
(3094, 'Mainero', 176),
(3095, 'Méndez', 176),
(3096, 'Miquihuana', 176),
(3097, 'Palmillas', 176),
(3098, 'Reynosa', 176),
(3099, 'Xicoténcatl', 176),
(3100, 'Tlaxcala', 177),
(3101, 'Miguel Hidalgo', 177),
(3102, 'Apetatitlán de Antonio Carvajal', 177),
(3103, 'Benito Juárez', 177),
(3104, 'Cuapiaxtla', 177),
(3105, 'Españita', 177),
(3106, 'Ixtacuixtla de Mariano Matamoros', 177),
(3107, 'Lázaro Cárdenas', 177),
(3108, 'Panotla', 177),
(3109, 'Santa Ana Nopalucan', 177),
(3110, 'Terrenate', 177),
(3111, 'Zacatelco', 177),
(3112, 'Xalapa', 178),
(3113, 'Acayucan', 178),
(3114, 'Alvarado', 178),
(3115, 'Benito Juárez', 178),
(3116, 'Carrillo Puerto', 178),
(3117, 'Chontla', 178),
(3118, 'Espinal', 178),
(3119, 'Ilamatlán', 178),
(3120, 'José Azueta', 178),
(3121, 'Los Reyes', 178),
(3122, 'Pajapan', 178),
(3123, 'Tequila', 178),
(3124, 'Xico', 178),
(3125, 'Zozocolco de Hidalgo', 178),
(3126, 'Mérida', 179),
(3127, 'Bokobá', 179),
(3128, 'Dzemul', 179),
(3129, 'Homún', 179),
(3130, 'Izamal', 179),
(3131, 'Kaua', 179),
(3132, 'Mayapán', 179),
(3133, 'Opichén', 179),
(3134, 'Sacalum', 179),
(3135, 'Sucilá', 179),
(3136, 'Tekantó', 179),
(3137, 'Uayma', 179),
(3138, 'Valladolid', 179),
(3139, 'Yaxkukul', 179),
(3140, 'Yobaín', 179),
(3141, 'Zacatecas', 180),
(3142, 'Benito Juárez', 180),
(3143, 'Concepción del Oro', 180),
(3144, 'El Salvador', 180),
(3145, 'General Pánfilo Natera', 180),
(3146, 'Jiménez del Teul', 180),
(3147, 'Mazapil', 180),
(3148, 'Pánuco', 180),
(3149, 'Tepechitlán', 180),
(3150, 'Valparaíso', 180),
(3151, 'Villa de Cos', 180),
(3152, 'Villa García', 180),
(3153, 'Villa González Ortega', 180),
(3154, 'Villa Hidalgo', 180);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE `comentarios` (
  `idcomentario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(99) NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobantes`
--

DROP TABLE IF EXISTS `comprobantes`;
CREATE TABLE `comprobantes` (
  `idcomprobante` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `fechapago` date NOT NULL,
  `tipopago` int(11) NOT NULL,
  `totalpagar` int(11) NOT NULL,
  `idestado` int(11) NOT NULL,
  `idventa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comprobantes`
--

INSERT INTO `comprobantes` (`idcomprobante`, `idusuario`, `imagen`, `fechapago`, `tipopago`, `totalpagar`, `idestado`, `idventa`) VALUES
(23, 23, '$400.png', '2022-09-02', 2, 400, 1, 73),
(24, 1, '$200.png', '2022-09-08', 2, 200, 1, 74),
(25, 3, '$200.png', '2022-10-18', 2, 200, 1, 75),
(26, 1, '$150.png', '2022-10-19', 2, 150, 1, 76),
(27, 1, '$500.png', '2022-10-19', 2, 450, 1, 77),
(28, 3, '$700.png', '2022-10-19', 2, 650, 1, 80),
(29, 3, '$700.png', '2022-10-19', 2, 650, 1, 81),
(30, 1, '$150.png', '2022-10-19', 2, 150, 1, 82),
(31, 1, '$200.png', '2022-10-20', 2, 200, 1, 83);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pago`
--

DROP TABLE IF EXISTS `detalle_pago`;
CREATE TABLE `detalle_pago` (
  `iddetalle_pago` int(11) NOT NULL,
  `fechapago` date NOT NULL,
  `nombredueño` varchar(99) DEFAULT NULL,
  `fechavencimiento` date DEFAULT NULL,
  `numerotarjeta` int(11) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `idmetodo_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_pago`
--

INSERT INTO `detalle_pago` (`iddetalle_pago`, `fechapago`, `nombredueño`, `fechavencimiento`, `numerotarjeta`, `codigo`, `idmetodo_pago`) VALUES
(77, '2022-09-02', NULL, NULL, NULL, NULL, 2),
(78, '2022-09-02', 'Franco Colavella', '2022-09-23', 2147483647, 232, 1),
(79, '2022-09-02', NULL, NULL, NULL, NULL, 2),
(80, '2022-09-08', NULL, NULL, NULL, NULL, 2),
(81, '2022-10-18', NULL, NULL, NULL, NULL, 2),
(82, '2022-10-19', NULL, NULL, NULL, NULL, 2),
(83, '2022-10-19', NULL, NULL, NULL, NULL, 2),
(84, '2022-10-19', 'Franco Colavella', '2022-10-27', 2147483647, 232, 1),
(85, '2022-10-19', 'Franco Colavella', '2022-10-27', 2147483647, 232, 1),
(86, '2022-10-19', NULL, NULL, NULL, NULL, 2),
(87, '2022-10-19', NULL, NULL, NULL, NULL, 2),
(88, '2022-10-19', NULL, NULL, NULL, NULL, 2),
(89, '2022-10-20', NULL, NULL, NULL, NULL, 2),
(90, '2022-10-20', 'Franco Colavella', '2022-10-21', 123, 123, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento_tipos`
--

DROP TABLE IF EXISTS `documento_tipos`;
CREATE TABLE `documento_tipos` (
  `idtipodocumento` int(11) NOT NULL,
  `nombre_documento` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `documento_tipos`
--

INSERT INTO `documento_tipos` (`idtipodocumento`, `nombre_documento`) VALUES
(1, 'DNI'),
(2, 'CARNET EXT'),
(3, 'PASAPORTE'),
(4, 'OTROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_comprobante`
--

DROP TABLE IF EXISTS `estados_comprobante`;
CREATE TABLE `estados_comprobante` (
  `idestado` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estados_comprobante`
--

INSERT INTO `estados_comprobante` (`idestado`, `descripcion`) VALUES
(1, 'Aceptado'),
(2, 'Rechazado'),
(3, 'No leido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_noticias`
--

DROP TABLE IF EXISTS `estados_noticias`;
CREATE TABLE `estados_noticias` (
  `idestado` int(11) NOT NULL,
  `descripcion` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estados_noticias`
--

INSERT INTO `estados_noticias` (`idestado`, `descripcion`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_provedores`
--

DROP TABLE IF EXISTS `estados_provedores`;
CREATE TABLE `estados_provedores` (
  `idestado` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estados_provedores`
--

INSERT INTO `estados_provedores` (`idestado`, `descripcion`) VALUES
(1, 'Habilitado'),
(2, 'Deshabilitado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

DROP TABLE IF EXISTS `favoritos`;
CREATE TABLE `favoritos` (
  `idusuario` int(11) NOT NULL,
  `idpelicula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`idusuario`, `idpelicula`) VALUES
(1, 1),
(1, 19),
(1, 34),
(1, 62),
(1, 73),
(3, 17),
(3, 34),
(3, 62),
(5, 14),
(5, 17),
(10, 13),
(10, 14),
(13, 1),
(13, 14),
(13, 62),
(16, 17),
(17, 62),
(18, 62),
(18, 63),
(19, 62),
(19, 63),
(20, 14),
(20, 62),
(21, 17),
(23, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

DROP TABLE IF EXISTS `generos`;
CREATE TABLE `generos` (
  `idgenero` int(11) NOT NULL,
  `nombre` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`idgenero`, `nombre`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Transgenero'),
(4, 'No binario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

DROP TABLE IF EXISTS `grupo`;
CREATE TABLE `grupo` (
  `idgrupo` int(11) NOT NULL,
  `nombre_grupo` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`idgrupo`, `nombre_grupo`) VALUES
(1, 'administrador'),
(2, 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos_permisos`
--

DROP TABLE IF EXISTS `grupos_permisos`;
CREATE TABLE `grupos_permisos` (
  `idpermiso` int(11) NOT NULL,
  `idgrupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupos_permisos`
--

INSERT INTO `grupos_permisos` (`idpermiso`, `idgrupo`) VALUES
(28, 2),
(29, 2),
(30, 2),
(33, 2),
(23, 2),
(28, 1),
(29, 1),
(30, 1),
(33, 1),
(32, 1),
(18, 1),
(19, 1),
(20, 1),
(27, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(1, 1),
(2, 1),
(3, 1),
(5, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(21, 1),
(22, 1),
(31, 1),
(23, 1),
(24, 1),
(25, 1),
(4, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_usuarios`
--

DROP TABLE IF EXISTS `grupo_usuarios`;
CREATE TABLE `grupo_usuarios` (
  `idgrupo` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupo_usuarios`
--

INSERT INTO `grupo_usuarios` (`idgrupo`, `idusuario`) VALUES
(1, 1),
(1, 22),
(2, 3),
(2, 5),
(2, 8),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 23),
(2, 24),
(2, 25),
(2, 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodopago`
--

DROP TABLE IF EXISTS `metodopago`;
CREATE TABLE `metodopago` (
  `idmetodopago` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `metodopago`
--

INSERT INTO `metodopago` (`idmetodopago`, `descripcion`) VALUES
(1, 'tarjeta credito'),
(2, 'transferencia bancaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

DROP TABLE IF EXISTS `noticias`;
CREATE TABLE `noticias` (
  `idnoticia` int(11) NOT NULL,
  `nombre_noticia` varchar(99) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `idestado` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`idnoticia`, `nombre_noticia`, `descripcion`, `fecha`, `imagen`, `idestado`, `idproveedor`) VALUES
(17, 'The Crown', 'Netflix ha desvelado las primeras imágenes de la temporada 5 de The Crown y ya sabemos qué aspecto tendrá Elizabeth Debicki como Diana de Gales y Dominic West como el príncipe Carlos', '2021-08-19', 'The Crown .jpg', 1, 12),
(18, 'Colin Jost confirma que Scarlett Johansson está embarazada', 'Vamos a tener un bebé. Es emocionante, ha dicho el actor de Saturday Night Live y marido de la actriz', '2021-08-18', 'embarazo.png', 1, 14),
(26, 'Este mes la historia de uno de los mitos de Hollywood', 'Con la llegada de septiembre, el verano empieza a difuminarse y la rutina vuelve a ser la protagonista de nuestros días. Para hacer más llevadera la vuelta, Netflix te ha preparado una interesante selección de películas perfectas para ver al llegar', '2022-09-01', 'losmitosdehollywood.jpg', 1, 1),
(27, 'la transformación Radcliffe para su película Weird', 'El músico Al Weird Yankovic era una figura peculiar. Se hizo famoso a mediados de los años 80 parodiando el famoso tema de Michael Jackson Beat It con una nueva letra, Eat It, pero la siguieron muchas más. ', '2022-09-01', 'harry.jpeg', 1, 14),
(28, 'Fuera de After: La comedia y el drama romántico', 'After. Amor infinito, la cuarta película de la franquicia, ha llegado recientemente a las salas de cine. Si tras disfrutarla te has quedado con ganas de más hasta que se estrene After 5, puedes ver desde la comodidad de tu casa otras películas de Langford', '2022-09-01', 'fueradeafter.jpg', 1, 8),
(29, 'La inquietante película de terror de Netflix', 'Una cinta de metraje encontrado que se ha descrito como la película más aterradora jamás realizada en Taiwán, es la película más taquillera de 2022 en su país y está inspirada en una escalofriante historia real.', '2022-09-01', 'maleficio.jpg', 1, 14),
(30, 'Están convencidos de la posible vuelta de Henry Cavill', 'Aumentan los rumores sobre la vuelta de Cavill como el Hombre de Acero en el universo de DC.', '2022-09-01', 'henrycavill.jpg', 1, 8),
(31, 'Top Gun: ¿Maverick muere al comienzo de la película?', 'Cada vez más fans teorizan sobre el destino de Maverick al comienzo de la película, y Joseph Kosinski ha ofrecido su respuesta sobre el tema.', '2022-09-01', 'topgun.png', 1, 1),
(32, 'After 4: ¿Cuándo puedes ver Amor infinito?', 'La cuarta entrega de la saga ha llegado a los cines y ya han confirmado After 5, que llevará por título After Everything.', '2022-09-01', 'after4.jpg', 1, 9),
(33, 'El reparto de El test ', 'La nueva comedia de Dani de la Orden, protagonizada por Blanca Suárez, Miren Ibarguren, Carlos Santos y Alberto San Juan, se estrena en cines el 2 de septiembre.', '2022-09-01', 'reparto.jpg', 1, 9),
(35, '¿El odio a Batman v uperman es justificado?', 'Se estrenó a comienzos de 2016 con un palo enorme por parte de la prensa especializada, pero a los espectadores les gustó. Esta noche puedes decidir de qué lado estás con su emisión en La Sextas', '2022-10-20', 'Batmanvssuperman2.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

DROP TABLE IF EXISTS `paises`;
CREATE TABLE `paises` (
  `idpais` int(11) NOT NULL,
  `nombre` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`idpais`, `nombre`) VALUES
(1, 'Argentina'),
(2, 'Brasil'),
(3, 'Uruguay'),
(4, 'Bolivia'),
(5, 'Chile'),
(6, 'Colombia'),
(7, 'Venezuela'),
(8, 'Mexico'),
(9, 'Canada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_cabecera_peli`
--

DROP TABLE IF EXISTS `pedido_cabecera_peli`;
CREATE TABLE `pedido_cabecera_peli` (
  `idpedido` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `idestado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_estados`
--

DROP TABLE IF EXISTS `pedido_estados`;
CREATE TABLE `pedido_estados` (
  `idestado` int(11) NOT NULL,
  `descripcion` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
CREATE TABLE `peliculas` (
  `idpelicula` int(11) NOT NULL,
  `titulo` varchar(99) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `anio` int(11) NOT NULL,
  `puntaje` float DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `duracion` varchar(100) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `idestado` int(11) NOT NULL,
  `categorias` varchar(255) NOT NULL,
  `cantidad_visto` int(11) DEFAULT NULL,
  `cantidad_vendida` int(11) DEFAULT NULL,
  `fecha_publicacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`idpelicula`, `titulo`, `descripcion`, `anio`, `puntaje`, `precio`, `duracion`, `imagen`, `idestado`, `categorias`, `cantidad_visto`, `cantidad_vendida`, `fecha_publicacion`) VALUES
(14, 'Loki', 'El voluble villano Loki retoma su papel de Dios de las travesuras en una nueva serie que tiene lugar después de los eventos de \"Avengers: Endgame\".', 2021, 7, 200, '132', 'Loki-2.jpg', 1, ' Fantasia accion Aventura', 45, 21, '2021-08-14'),
(16, 'Un lugar en silencio: Parte II', 'Después de los eventos en casa, la familia Abbott ahora se enfrenta a los terrores del mundo exterior. Obligados a aventurarse en lo desconocido, se dan cuenta de que las criaturas que cazan por el sonido no son las únicas amenazas que acechan más allá de', 2021, 7, 200, '132', 'Un_lugar_en_Silencio_2.jpg', 1, ' Terror Drama SCI-FI', 20, 13, '2021-08-13'),
(17, 'Luca', 'En la Riviera italiana, surge una amistad poco probable pero fuerte entre un ser humano y un monstruo marino disfrazado de humano.', 2021, 8, 150, '132', 'luca.jpg', 1, ' Fantasia Comedia Aventura', 36, 28, '2021-08-13'),
(18, 'What If...?', 'Explorando momentos cruciales del Universo Cinematográfico de Marvel y volviéndolos de cabeza, llevando a la audiencia a un territorio inexplorado.', 2021, 7.5, 150, '132', 'What-If.jpg', 1, ' accion Aventura', 33, 15, '2021-08-13'),
(19, 'Cruella', 'A live-action prequel feature film following a young Cruella de Vil.', 2021, 8, 200, '132', 'Cruella2.jpg', 1, ' Comedia Crimen', 67, 23, '2021-08-13'),
(20, 'Mimi', 'Mimi es presentada por Bhanu a una pareja estadounidense como sustituta a cambio de 2 millones de rupias. Ella decide tener el bebé incluso cuando cambian de opinión y le dice a su padre que Bhanu es el padre.', 2021, 7.5, 100, '132', 'Mimi.jpg', 1, ' Drama Comedia', 30, 13, '2021-08-13'),
(21, 'Justicia implacable', 'La trama sigue a H, un personaje frío y misterioso que trabaja en una empresa de camiones de efectivo responsable de mover cientos de millones de dólares por Los Ángeles cada semana.', 2021, 10, 300, '122', 'justicia-implacable.png', 1, ' accion Crimen', 43, 15, '2021-08-13'),
(22, 'Tenet', 'Armado con una sola palabra, Tenet, y luchando por la supervivencia del mundo entero, un Protagonista viaja a través de un mundo crepuscular de espionaje internacional en una misión que se desarrollará en algo más allá del tiempo real.', 2020, 7.5, 150, '132', 'Tenet.jpg', 1, ' accion SCI-FI', 23, 20, '2020-08-04'),
(23, 'Nadie', 'Un transeúnte que interviene para ayudar a una mujer acosada por un grupo de hombres se convierte en el objetivo de un narcotraficante vengativo.', 2021, 8, 200, '132', 'Nadie.jpg', 1, ' accion Drama Crimen', 70, 24, '2021-08-13'),
(24, 'Había una vez en Hollywood', 'Un actor de televisión descolorido y su doble de acrobacias se esfuerzan por alcanzar la fama y el éxito en los últimos años de la Edad de Oro de Hollywood en 1969 en Los Ángeles.', 2019, 10, 300, '120', 'Había-una-vez-en-Hollywood.jpg', 1, ' Drama Comedia', 15, 10, '2019-08-13'),
(25, 'Guasón', 'En Gotham City, la sociedad ignora y maltrata al comediante con problemas mentales Arthur Fleck. Luego se embarca en una espiral descendente de revolución y crímenes sangrientos. Este camino lo pone cara a cara con su alter ego: el Joker.', 2019, 9, 200, '120', 'Guasón.jpg', 1, ' Drama Crimen', 20, 12, '2019-08-13'),
(26, 'Breaking Bad', 'Un profesor de química de la escuela secundaria diagnosticado con cáncer de pulmón inoperable se dedica a fabricar y vender metanfetamina para asegurar el futuro de su familia.', 2013, 7.5, 150, '132', 'Breaking-Bad.jpg', 1, ' Drama Crimen', 40, 27, '2013-08-18'),
(28, 'Game of Thrones', 'Nueve familias nobles luchan por el control de las tierras de Poniente, mientras que un antiguo enemigo regresa después de estar inactivo durante milenios.', 2019, 10, 500, '132', 'Game-Of-Thrones.jpg', 1, ' Fantasia accion Aventura', 30, 25, '2019-08-14'),
(29, 'Sueño de Libertad', 'Dos hombres encarcelados se unen durante varios años, encontrando consuelo y eventual redención a través de actos de decencia común.', 1994, 7, 200, '120', 'Sueño-de-Libertad.jpg', 1, ' Drama', 29, 17, '1994-08-09'),
(30, 'Avengers: Endgame', 'Después de los devastadores eventos de Avengers: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restablecer el equilibrio en el universo.', 2019, 10, 200, '132', 'Avengers-Endgame.jpg', 1, ' accion Drama Aventura', 54, 28, '2019-08-06'),
(34, 'WandaVision', 'WandaVision (conocida como Bruja Escarlata y Visión en España)1​ es una miniserie de televisión estadounidense creada por Jac Schaeffer para el servicio de streaming Disney+. Está basada en los personajes Wanda Maximoff/Bruja Escarlata y Visión, propiedad', 2021, 8, 300, '132', 'wandavision.jpg', 1, ' Fantasia accion Comedia', 74, 68, '2021-08-13'),
(35, 'Batman - El caballero de la noche', 'Cuando la amenaza conocida como el Joker causa estragos y caos en la gente de Gotham, Batman debe aceptar una de las mayores pruebas psicológicas y físicas de su capacidad para luchar contra la injusticia.', 2012, 10, 300, '132', 'Batman.jpeg', 1, ' Fantasia accion Aventura', 59, 25, '2012-08-01'),
(62, 'Capitan america', 'Capitan america', 2021, 10, 200, '132', 'Capitanamerica.jpg', 1, ' Fantasia accion', 19, 13, '2021-09-03'),
(63, 'Señor de los anillos', 'Una historia de anillos', 2021, 11, 200, '132', 'Señoranillos.jpg', 1, ' Fantasia accion', 43, 17, '2021-09-03'),
(65, 'jurassic park', 'Mundo de dinosaurios', 2012, 2, 200, '132', 'OWQ4RZPS7ZA4XNHPZD3QNBVNIA.jpg', 1, ' Fantasia accion', 41, 33, '2021-09-08'),
(76, 'Elemental', 'En una ciudad en la que conviven el fuego, el agua, la tierra y el aire, una joven llena de fuego y un tipo que fluye descubrirán lo mucho que tienen en común.', 2023, 8, 300, '132', 'Elemental.png', 3, ' Fantasia', NULL, NULL, '2023-07-14'),
(77, 'Decision to Leave', 'La película sigue a Hae-Joon, un veterano detective que investiga la sospechosa muerte de un hombre en la cima de una montaña. En el centro del conflicto estará su relación con la mujer del difunto, que hará tambalearse la investigación.', 2023, 7.5, 300, '132', 'decisiontoleave.jpeg', 3, ' Terror Drama', NULL, NULL, '2023-01-20'),
(78, 'La niña de la comunión', 'La niña de la comunión se ambienta en un pueblo en los años 80, donde una joven recién llegada vivirá una pesadilla real protagonizada por la figura fantasmal de una niña vestida de comunión.', 2023, 7.5, 300, '132', 'women-talking.jpg', 3, ' Terror Drama', NULL, NULL, '2023-02-10'),
(79, 'Women Talking', 'Con un elenco fabuloso formado por Frances McDormand, Rooney Mara, Claire Foy, Ben Whishaw, Jessie Buckley y más, esta película sigue a un grupo de mujeres sometidas a todo tipo de abusos en una colonia religiosa aislada del mundo.', 2023, 10, 300, '132', 'la-nina-de-la-comunion.jpg', 3, ' accion SCI-FI Romance', NULL, NULL, '2023-01-06'),
(80, 'Babylon', 'La ciudad de las estrellas, con un viaje al pasado: la película se ambienta en los orígenes de Hollywood para contar cómo la industria hizo la transición del cine mudo al sonoro, siguiendo la historia de una estrella que es incapaz de adaptarse a los nuev', 2023, 10, 300, '132', 'babylon.jpg', 3, ' Terror SCI-FI Crimen Romance', NULL, NULL, '2022-01-27'),
(81, 'Wonka', 'Tras la macabra película de 1971 con Gene Wilder, y Charlie y la fábrica de chocolate de Tim Burton en 2005 con Johhny Depp, esta película nos propondrá una versión musical y más fantasiosa que nunca.', 2023, 10, 300, '132', 'wonka.jpg', 3, ' Fantasia Aventura', NULL, NULL, '2023-12-15'),
(82, 'Oppenheimer', 'The Triumph and Tragedy of J. Robert Oppenheimer de Kai Bird y Martin J. Sherwin) para contar la historia del físico estadounidense J. Robert Oppenheimer, al frente del Laboratorio de Los Alamos y del proyecto Manhattan.', 2023, 10, 300, '132', 'oppenheimer.png', 3, ' SCI-FI Crimen Romance', NULL, NULL, '2023-07-21'),
(83, 'Balada de pájaros cantores y serpientes', 'La historia se ambienta décadas antes de la llegada de Katniss Everdeen y se centrará en Coriolanus Snow, un ambicioso joven que terminará convirtiéndose en el tirano líder de Panem. En la décima edición de los Juegos.', 2023, 10, 300, '132', 'baladadepajaros.jpg', 3, ' Fantasia accion Aventura', NULL, NULL, '2023-06-13'),
(86, 'Liga de la justicias', 'Gracias a su renovada fe en la humanidad e inspirado por el acto de altruísmo de Superman, Bruce Wayne pide ayuda a su nueva aliada, Diana Prince, para enfrentar a un enemigo aún más peligrosos.', 2022, 78, 350, '133', 'Laligadelajusticia2.jpg', 1, ' accion Aventura', 0, 0, '2022-10-19'),
(87, 'Escape Room 2: Reto Mortal 2', 'Seis personas se encuentran casualmente encerradas en otra serie de salas de escape y descubrirán poco a poco lo que tienen en común para sobrevivir... y se darán cuenta que todos han jugado antes a este juegos.', 2024, 9, 300, '124', 'Escaperoom2.jpg', 3, ' Crimen', NULL, NULL, '2022-10-28'),
(89, 'the 100', 'hg', 2021, 12, 300, '132', '$200.png', 1, ' accion SCI-FI Aventura', 0, 0, '2022-10-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula_estados`
--

DROP TABLE IF EXISTS `pelicula_estados`;
CREATE TABLE `pelicula_estados` (
  `idestado` int(11) NOT NULL,
  `descripcion` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pelicula_estados`
--

INSERT INTO `pelicula_estados` (`idestado`, `descripcion`) VALUES
(1, 'activo'),
(2, 'inactivo'),
(3, 'estreno'),
(4, 'estreno inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula_pedidos`
--

DROP TABLE IF EXISTS `pelicula_pedidos`;
CREATE TABLE `pelicula_pedidos` (
  `idpedido` int(11) NOT NULL,
  `precio` float NOT NULL,
  `idpelicula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos_gestiones`
--

DROP TABLE IF EXISTS `permisos_gestiones`;
CREATE TABLE `permisos_gestiones` (
  `idagrupamiento` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permisos_gestiones`
--

INSERT INTO `permisos_gestiones` (`idagrupamiento`, `nombre`) VALUES
(1, 'gestion usuarios'),
(2, 'gestion proveedores'),
(3, 'gestion peliculas'),
(4, 'gestion noticias'),
(5, 'gestion estrenos'),
(6, 'gestion reportes'),
(7, 'gestion sugerencias'),
(8, 'gestion clientes'),
(9, 'Gestion compra'),
(10, 'Gestion comprobantes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos_usuarios`
--

DROP TABLE IF EXISTS `permisos_usuarios`;
CREATE TABLE `permisos_usuarios` (
  `idpermiso` int(11) NOT NULL,
  `nombre_permiso` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permisos_usuarios`
--

INSERT INTO `permisos_usuarios` (`idpermiso`, `nombre_permiso`) VALUES
(1, 'alta pelicula'),
(2, 'baja pelicula'),
(3, 'modificar pelicula'),
(4, 'asignar permisos'),
(5, 'buscar pelicula'),
(6, 'alta noticias'),
(7, 'baja noticias'),
(8, 'modificar noticias'),
(9, 'buscar noticias'),
(10, 'alta usuario'),
(11, 'baja usuario'),
(12, 'modificar usuario'),
(13, 'buscar usuarios'),
(14, 'alta proveedores'),
(15, 'baja proveedores'),
(16, 'modificar proveedores'),
(17, 'buscar proveedores'),
(18, 'alta estrenos'),
(19, 'baja estrenos'),
(20, 'modificar estrenos'),
(21, 'reporte ventas'),
(22, 'reporte estadisticas'),
(23, 'alta sugerencias'),
(24, 'baja sugerencias'),
(25, 'modificar sugerencias'),
(27, 'buscar estrenos'),
(28, 'favoritos'),
(29, 'gestion perfil'),
(30, 'comprar pelicula'),
(31, 'ver estadisticas'),
(32, 'listado comprobantes'),
(33, 'Mis compras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
CREATE TABLE `proveedores` (
  `idproveedor` int(11) NOT NULL,
  `razon_social` varchar(99) NOT NULL,
  `cuit` varchar(99) NOT NULL,
  `mail` varchar(99) NOT NULL,
  `idestado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idproveedor`, `razon_social`, `cuit`, `mail`, `idestado`) VALUES
(1, 'Peliculitas S', '30415766713', 'peliculitas@gmail.com', 1),
(2, 'THE WALT DISNEY COMPANY ARGENTINA S A', '30639844591', 'contact@disney.com', 1),
(3, 'INSTITUTO NACIONAL DE CINE Y ARTES AUDIOVISUALES', '30546666324', 'contacto@incaproduccion.com', 1),
(4, 'SONY PICTURES RELEASING ARGENTINA S.R.L.', '30710672403', 'sony@pictures.com', 1),
(5, 'Paramount Latin America S.rl.', '30709881597', 'alisonneal@bigpond.com', 1),
(6, 'DIGITAL SOLUTION S.A', '30711316562', 'nuthapong@dscth.com', 1),
(7, 'SMART MEDICAL IMAGE S.R.L.', '30715862189', 'david@thisisone.tv', 1),
(8, 'TV RESISTENCIA S.A.', '30541273537', ' noellie.lebosse@dazzl.tv', 1),
(9, 'CMV TV S.A.', '33708624549', 'cmvpictures@tv.com', 1),
(10, 'RWS S.A', '30712099824', 'rwssrl@pictures.com', 1),
(11, 'CVS SRL', '30709636436', 'cvs.srl@tv.com', 1),
(12, 'BEELINE PICTURES SRL', '30245645567', 'issa@beeline.com', 1),
(13, 'AMAZON WEB SERVICES ARGENTINA S.R.L.', '30715816837', 'amazon@pictures.tv.com', 1),
(14, 'NOVEL S.R.L.', '30708466561', 'olga.spimpolo@noovle.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

DROP TABLE IF EXISTS `provincias`;
CREATE TABLE `provincias` (
  `idprovincia` int(11) NOT NULL,
  `nombre_provincia` varchar(99) NOT NULL,
  `idpais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`idprovincia`, `nombre_provincia`, `idpais`) VALUES
(1, 'Buenos Aires', 1),
(2, 'Santa fe', 1),
(3, 'San paolo', 2),
(4, 'Rio de janeiro', 2),
(5, 'Montevideo', 3),
(6, 'Florida', 3),
(7, 'Catamarca', 1),
(8, 'Ciudad Autónoma de Buenos Aires', 1),
(9, 'Chaco', 1),
(10, 'Chubut', 1),
(11, 'Córdoba', 1),
(12, 'Corrientes', 1),
(13, 'Entre Ríos', 1),
(14, 'Formosa', 1),
(15, 'Jujuy', 1),
(16, 'La Pampa', 1),
(17, 'La Rioja', 1),
(18, 'Mendoza', 1),
(19, 'Misiones', 1),
(20, 'Río Negro', 1),
(21, 'Salta', 1),
(22, 'San Juan', 1),
(23, 'San Luis', 1),
(24, 'Santa Cruz', 1),
(25, 'Santiago del Estero', 1),
(26, 'Tierra del Fuego', 1),
(27, 'Tucumán', 1),
(28, 'Neuquén', 1),
(29, 'Beni', 4),
(30, 'Chuquisaca', 4),
(31, 'Cochabamba', 4),
(32, 'La Paz', 4),
(33, 'Oruro', 4),
(34, 'Pando', 4),
(35, 'Potosí', 4),
(36, 'Santa Cruz', 4),
(37, 'Tarija', 4),
(38, 'Antofagasta', 5),
(39, 'Arauco', 5),
(40, 'Arica', 5),
(41, 'Aysén', 5),
(42, 'Biobío', 5),
(43, 'Cachapoal', 5),
(44, 'Capitán Prat', 5),
(45, 'Cardenal Caro', 5),
(46, 'Cauquenes', 5),
(47, 'Cautín', 5),
(48, 'Chacabuco', 5),
(49, 'Chañaral', 5),
(50, 'Chiloé', 5),
(51, 'Choapa', 5),
(52, 'Colchagua', 5),
(53, 'Concepción', 5),
(54, 'Copiapó', 5),
(55, 'Cordillera', 5),
(56, 'Coyhaique', 5),
(57, 'Curicó', 5),
(58, 'Diguillín', 5),
(59, 'El Loa', 5),
(60, 'Elqui', 5),
(61, 'General Carrera', 5),
(62, 'Huasco', 5),
(63, 'Iquique', 5),
(64, 'Itata', 5),
(65, 'Limarí', 5),
(66, 'Linares', 5),
(67, 'Llanquihue', 5),
(68, 'Los Andes', 5),
(69, 'Magallanes', 5),
(70, 'Maipo', 5),
(71, 'Malleco', 5),
(72, 'Punilla', 5),
(73, 'Quillota', 5),
(74, 'Ranco', 5),
(75, 'San Antonio', 5),
(76, 'San Felipe de Aconcagua', 5),
(77, 'Santiago', 5),
(78, 'Talagante', 5),
(79, 'Talca', 5),
(80, 'Tamarugal', 5),
(81, 'Tierra del Fuego', 5),
(82, 'Tocopilla', 5),
(83, 'Última Esperanza', 5),
(84, 'Valdivia', 5),
(85, 'Valparaíso', 5),
(86, 'Antioquia', 6),
(87, 'Atlántico', 6),
(88, 'Bolívar', 6),
(89, 'Boyacá', 6),
(90, 'Caldas', 6),
(91, 'Cauca', 6),
(92, 'Cesar', 6),
(93, 'Chocó', 6),
(94, 'Córdoba', 6),
(95, 'Cundinamarca', 6),
(96, 'Huila', 6),
(97, 'La Guajira', 6),
(98, 'Magdalena', 6),
(99, 'Meta', 6),
(100, 'Nariño', 6),
(101, 'Norte de Santander', 6),
(102, 'Quindío', 6),
(103, 'Risaralda', 6),
(104, 'Santander', 6),
(105, 'Sucre', 6),
(106, 'Tolima', 6),
(107, 'Valle del Cauca', 6),
(109, 'Artigas', 3),
(110, 'Canelones', 3),
(111, 'Cerro Largo', 3),
(112, 'Colonia', 3),
(113, 'Durazno', 3),
(114, 'Flores', 3),
(116, 'Lavalleja', 3),
(117, 'Maldonado', 3),
(118, 'Paysandú', 3),
(119, 'Río Negro', 3),
(120, 'Rocha', 3),
(121, 'Salto', 3),
(122, 'San José', 3),
(123, 'Soriano', 3),
(124, 'Tacuarembó', 3),
(125, 'Treinta y Tres', 3),
(126, 'Amazonas', 7),
(127, 'Anzoátegui', 7),
(128, 'Apure', 7),
(129, 'Aragua', 7),
(130, 'Barinas', 7),
(131, 'Bolívar', 7),
(132, 'Carabobo', 7),
(133, 'Cojedes', 7),
(134, 'Delta Amacuro', 7),
(135, 'Falcón', 7),
(136, 'Guárico', 7),
(137, 'La Guaira', 7),
(138, 'Lara', 7),
(139, 'Mérida', 7),
(140, 'Miranda', 7),
(141, 'Monagas', 7),
(142, 'Nueva Esparta', 7),
(143, 'Portuguesa', 7),
(144, 'Sucre', 7),
(145, 'Táchira', 7),
(146, 'Trujillo', 7),
(147, 'Yaracuy', 7),
(148, 'Zulia', 7),
(149, 'Ciudad de México', 8),
(150, 'Aguascalientes', 8),
(151, 'Baja California', 8),
(152, 'Baja California Sur', 8),
(153, 'Campeche', 8),
(154, 'Chiapas', 8),
(155, 'Chihuahua', 8),
(156, 'Coahuila', 8),
(157, 'Colima', 8),
(158, 'Durango', 8),
(159, 'Estado de México', 8),
(160, 'Guanajuato', 8),
(161, 'Guerrero', 8),
(162, 'Hidalgo', 8),
(163, 'Jalisco]', 8),
(164, 'Michoacán', 8),
(165, 'Morelos', 8),
(166, 'Nayarit', 8),
(167, 'Nuevo León', 8),
(168, 'Oaxaca', 8),
(169, 'Puebla', 8),
(170, 'Querétaro', 8),
(171, 'Quintana Roo', 8),
(172, 'San Luis Potosí', 8),
(173, 'Sinaloa', 8),
(174, 'Sonora', 8),
(175, 'Tabasco', 8),
(176, 'Tamaulipas', 8),
(177, 'Tlaxcala', 8),
(178, 'Veracruz', 8),
(179, 'Yucatán', 8),
(180, 'Zacatecas', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencias`
--

DROP TABLE IF EXISTS `sugerencias`;
CREATE TABLE `sugerencias` (
  `idsugerencia` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(99) NOT NULL,
  `idestado` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sugerencias`
--

INSERT INTO `sugerencias` (`idsugerencia`, `fecha`, `descripcion`, `idestado`, `idusuario`) VALUES
(15, '2022-09-02', 'Quiero Batman inicia', 1, 1),
(16, '2022-10-19', 'Yo quiero ver Batman inicia', 1, 3),
(17, '2022-10-20', 'Quiero que este la pelicula de el señor de los anillos', 1, 1),
(23, '2022-10-20', 'a', 1, 1),
(24, '2022-10-20', 'a', 1, 1),
(25, '2022-10-20', 'a', 1, 1),
(26, '2022-10-20', 'a', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugerencia_estados`
--

DROP TABLE IF EXISTS `sugerencia_estados`;
CREATE TABLE `sugerencia_estados` (
  `idestado` int(11) NOT NULL,
  `descripcion` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sugerencia_estados`
--

INSERT INTO `sugerencia_estados` (`idestado`, `descripcion`) VALUES
(1, 'leido'),
(2, 'no leido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nombre_usuario` varchar(99) NOT NULL,
  `apellido` varchar(99) DEFAULT NULL,
  `telefono` varchar(99) DEFAULT NULL,
  `mail` varchar(99) NOT NULL,
  `contrasenia` varchar(255) NOT NULL,
  `numero_documento` int(11) DEFAULT NULL,
  `nombre` varchar(99) DEFAULT NULL,
  `idciudad` int(11) DEFAULT NULL,
  `idgenero` int(11) DEFAULT NULL,
  `idestado` int(11) NOT NULL,
  `idtipodocumento` int(11) DEFAULT NULL,
  `token` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nombre_usuario`, `apellido`, `telefono`, `mail`, `contrasenia`, `numero_documento`, `nombre`, `idciudad`, `idgenero`, `idestado`, `idtipodocumento`, `token`) VALUES
(1, 'francocolavella1', 'Colavella', '1157534151', 'francocolavella1@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 39920142, 'Franco', 18, 1, 1, 1, ''),
(3, 'franco2021', 'Bodier', '1157534152', 'francocolavella112@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 21222322, 'Franco', 18, 1, 1, 1, ''),
(23, 'Yaps', NULL, NULL, 'Yaps@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, NULL, 1, NULL, ''),
(26, 'Leo12', NULL, NULL, 'leoo9211@hotmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, NULL, 1, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_estados`
--

DROP TABLE IF EXISTS `usuario_estados`;
CREATE TABLE `usuario_estados` (
  `idestado` int(11) NOT NULL,
  `descripcion` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_estados`
--

INSERT INTO `usuario_estados` (`idestado`, `descripcion`) VALUES
(1, 'activo'),
(2, 'inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas` (
  `idventa` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `precio_total` int(11) NOT NULL,
  `fecha_venta` date NOT NULL,
  `idestados` int(11) NOT NULL,
  `iddetalle_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idventa`, `idusuario`, `precio_total`, `fecha_venta`, `idestados`, `iddetalle_pago`) VALUES
(72, 23, 450, '2022-09-02', 1, 78),
(73, 23, 400, '2022-09-02', 1, 79),
(74, 1, 200, '2022-09-08', 1, 80),
(75, 3, 200, '2022-10-18', 1, 81),
(76, 1, 150, '2022-10-19', 1, 82),
(77, 1, 450, '2022-10-19', 1, 83),
(78, 1, 150, '2022-10-19', 1, 84),
(79, 3, 650, '2022-10-19', 1, 85),
(80, 3, 650, '2022-10-19', 1, 86),
(81, 3, 650, '2022-10-19', 1, 87),
(82, 1, 150, '2022-10-19', 1, 88),
(83, 1, 200, '2022-10-20', 1, 89),
(84, 1, 200, '2022-10-20', 1, 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_detalles`
--

DROP TABLE IF EXISTS `venta_detalles`;
CREATE TABLE `venta_detalles` (
  `idpelicula` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `precio` float NOT NULL,
  `idestado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta_detalles`
--

INSERT INTO `venta_detalles` (`idpelicula`, `idventa`, `precio`, `idestado`) VALUES
(17, 72, 150, 1),
(34, 72, 300, 1),
(14, 73, 200, 1),
(16, 73, 200, 1),
(16, 74, 200, 1),
(62, 75, 200, 1),
(17, 76, 150, 1),
(17, 77, 150, 1),
(20, 77, 100, 1),
(23, 77, 200, 1),
(17, 78, 150, 1),
(17, 79, 150, 1),
(34, 79, 300, 1),
(62, 79, 200, 1),
(17, 80, 150, 1),
(34, 80, 300, 1),
(62, 80, 200, 1),
(14, 81, 200, 1),
(17, 81, 150, 1),
(34, 81, 300, 1),
(17, 82, 150, 1),
(16, 83, 200, 1),
(65, 84, 200, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_detalles_estados`
--

DROP TABLE IF EXISTS `venta_detalles_estados`;
CREATE TABLE `venta_detalles_estados` (
  `idestado` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta_detalles_estados`
--

INSERT INTO `venta_detalles_estados` (`idestado`, `descripcion`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_estados`
--

DROP TABLE IF EXISTS `venta_estados`;
CREATE TABLE `venta_estados` (
  `idestados` int(11) NOT NULL,
  `descripcion` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta_estados`
--

INSERT INTO `venta_estados` (`idestados`, `descripcion`) VALUES
(1, 'activo'),
(2, 'inactivo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agrupamientos_permisos`
--
ALTER TABLE `agrupamientos_permisos`
  ADD PRIMARY KEY (`idpermiso`,`idagrupamiento`),
  ADD KEY `idagrupamiento` (`idagrupamiento`),
  ADD KEY `idpermiso` (`idpermiso`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `categoria_pelicula`
--
ALTER TABLE `categoria_pelicula`
  ADD PRIMARY KEY (`idcategoria`,`idpelicula`),
  ADD KEY `idpelicula` (`idpelicula`) USING BTREE,
  ADD KEY `idcategoria` (`idcategoria`);

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`idciudad`),
  ADD KEY `idprovincia` (`idprovincia`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idcomentario`);

--
-- Indices de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD PRIMARY KEY (`idcomprobante`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idventa` (`idventa`);

--
-- Indices de la tabla `detalle_pago`
--
ALTER TABLE `detalle_pago`
  ADD PRIMARY KEY (`iddetalle_pago`);

--
-- Indices de la tabla `documento_tipos`
--
ALTER TABLE `documento_tipos`
  ADD PRIMARY KEY (`idtipodocumento`);

--
-- Indices de la tabla `estados_comprobante`
--
ALTER TABLE `estados_comprobante`
  ADD PRIMARY KEY (`idestado`);

--
-- Indices de la tabla `estados_noticias`
--
ALTER TABLE `estados_noticias`
  ADD PRIMARY KEY (`idestado`);

--
-- Indices de la tabla `estados_provedores`
--
ALTER TABLE `estados_provedores`
  ADD PRIMARY KEY (`idestado`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`idusuario`,`idpelicula`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`idgenero`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`idgrupo`);

--
-- Indices de la tabla `grupos_permisos`
--
ALTER TABLE `grupos_permisos`
  ADD KEY `idpermiso` (`idpermiso`),
  ADD KEY `idgrupo` (`idgrupo`);

--
-- Indices de la tabla `grupo_usuarios`
--
ALTER TABLE `grupo_usuarios`
  ADD PRIMARY KEY (`idgrupo`,`idusuario`);

--
-- Indices de la tabla `metodopago`
--
ALTER TABLE `metodopago`
  ADD PRIMARY KEY (`idmetodopago`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`idnoticia`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`idpais`);

--
-- Indices de la tabla `pedido_cabecera_peli`
--
ALTER TABLE `pedido_cabecera_peli`
  ADD PRIMARY KEY (`idpedido`);

--
-- Indices de la tabla `pedido_estados`
--
ALTER TABLE `pedido_estados`
  ADD PRIMARY KEY (`idestado`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`idpelicula`);

--
-- Indices de la tabla `pelicula_estados`
--
ALTER TABLE `pelicula_estados`
  ADD PRIMARY KEY (`idestado`);

--
-- Indices de la tabla `pelicula_pedidos`
--
ALTER TABLE `pelicula_pedidos`
  ADD PRIMARY KEY (`idpedido`,`idpelicula`);

--
-- Indices de la tabla `permisos_gestiones`
--
ALTER TABLE `permisos_gestiones`
  ADD PRIMARY KEY (`idagrupamiento`);

--
-- Indices de la tabla `permisos_usuarios`
--
ALTER TABLE `permisos_usuarios`
  ADD PRIMARY KEY (`idpermiso`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idproveedor`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`idprovincia`),
  ADD KEY `idpais` (`idpais`);

--
-- Indices de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  ADD PRIMARY KEY (`idsugerencia`);

--
-- Indices de la tabla `sugerencia_estados`
--
ALTER TABLE `sugerencia_estados`
  ADD PRIMARY KEY (`idestado`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `idtipodocuemento` (`idtipodocumento`);

--
-- Indices de la tabla `usuario_estados`
--
ALTER TABLE `usuario_estados`
  ADD PRIMARY KEY (`idestado`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idventa`);

--
-- Indices de la tabla `venta_detalles`
--
ALTER TABLE `venta_detalles`
  ADD PRIMARY KEY (`idventa`,`idpelicula`),
  ADD KEY `idestado` (`idestado`);

--
-- Indices de la tabla `venta_detalles_estados`
--
ALTER TABLE `venta_detalles_estados`
  ADD PRIMARY KEY (`idestado`);

--
-- Indices de la tabla `venta_estados`
--
ALTER TABLE `venta_estados`
  ADD PRIMARY KEY (`idestados`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  MODIFY `idcomprobante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `detalle_pago`
--
ALTER TABLE `detalle_pago`
  MODIFY `iddetalle_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `documento_tipos`
--
ALTER TABLE `documento_tipos`
  MODIFY `idtipodocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estados_noticias`
--
ALTER TABLE `estados_noticias`
  MODIFY `idestado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estados_provedores`
--
ALTER TABLE `estados_provedores`
  MODIFY `idestado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `idgrupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `idnoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `idpais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `idpelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `pelicula_pedidos`
--
ALTER TABLE `pelicula_pedidos`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permisos_gestiones`
--
ALTER TABLE `permisos_gestiones`
  MODIFY `idagrupamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `permisos_usuarios`
--
ALTER TABLE `permisos_usuarios`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `idprovincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=611;

--
-- AUTO_INCREMENT de la tabla `sugerencias`
--
ALTER TABLE `sugerencias`
  MODIFY `idsugerencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `usuario_estados`
--
ALTER TABLE `usuario_estados`
  MODIFY `idestado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `venta_detalles_estados`
--
ALTER TABLE `venta_detalles_estados`
  MODIFY `idestado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agrupamientos_permisos`
--
ALTER TABLE `agrupamientos_permisos`
  ADD CONSTRAINT `agrupamientos_permisos_ibfk_1` FOREIGN KEY (`idpermiso`) REFERENCES `permisos_usuarios` (`idpermiso`),
  ADD CONSTRAINT `agrupamientos_permisos_ibfk_2` FOREIGN KEY (`idagrupamiento`) REFERENCES `permisos_gestiones` (`idagrupamiento`);

--
-- Filtros para la tabla `categoria_pelicula`
--
ALTER TABLE `categoria_pelicula`
  ADD CONSTRAINT `categoria_pelicula_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`),
  ADD CONSTRAINT `categoria_pelicula_ibfk_2` FOREIGN KEY (`idpelicula`) REFERENCES `peliculas` (`idpelicula`);

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `ciudades_ibfk_1` FOREIGN KEY (`idprovincia`) REFERENCES `provincias` (`idprovincia`);

--
-- Filtros para la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD CONSTRAINT `comprobantes_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`),
  ADD CONSTRAINT `comprobantes_ibfk_2` FOREIGN KEY (`idventa`) REFERENCES `ventas` (`idventa`);

--
-- Filtros para la tabla `grupos_permisos`
--
ALTER TABLE `grupos_permisos`
  ADD CONSTRAINT `grupos_permisos_ibfk_1` FOREIGN KEY (`idpermiso`) REFERENCES `permisos_usuarios` (`idpermiso`),
  ADD CONSTRAINT `grupos_permisos_ibfk_2` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`);

--
-- Filtros para la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD CONSTRAINT `provincias_ibfk_1` FOREIGN KEY (`idpais`) REFERENCES `paises` (`idpais`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idtipodocumento`) REFERENCES `documento_tipos` (`idtipodocumento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
