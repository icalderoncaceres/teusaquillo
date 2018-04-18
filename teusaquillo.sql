-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2018 a las 06:48:54
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `teusaquillo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `descripcion`) VALUES
(1, 'Montaje'),
(2, 'Decoración'),
(3, 'Licores y Bebidas'),
(4, 'Protocolo'),
(5, 'Cena Especial'),
(6, 'La Fiesta'),
(7, 'Producción Audiovisual'),
(8, 'Noche de Bodas'),
(9, 'Logistica y Staff'),
(10, 'Otros Elementos Para Adicionar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `identificacion` int(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(245) NOT NULL,
  `telefonos` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `observaciones` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `identificacion`, `nombre`, `direccion`, `telefonos`, `email`, `observaciones`) VALUES
(1, 1232396262, 'Ivan', 'Suba', '3117364378', 'ivan@mail.com', 'Ninguna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `more` decimal(12,0) NOT NULL,
  `less` decimal(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `description`, `more`, `less`) VALUES
(1001, 'Espectacular Foto Book Con Diseño Profesional y 100 Fotos Impresas', '250000', '250000'),
(1002, 'Fascinante Super Pista LED 50 Escenas Diferentes Computarizadas. 12 m2', '800000', '800000'),
(1003, 'SuperCombo 1: Efecto Sky Row mas Efecto Fog Ice Machine mas Efecto Lluvia de Confeti', '330000', '330000'),
(1004, 'SuperCombo 2:Efecto Skype Row mas Efecto Fog Ice Machine', '230000', '230000'),
(1005, 'SuperCombo Video: Producción Y Transmisión de PreGrabado', '250000', '250000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `id` int(11) NOT NULL,
  `clave` varchar(10) NOT NULL,
  `monto` decimal(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `planes`
--

INSERT INTO `planes` (`id`, `clave`, `monto`) VALUES
(1, '00000', '14201000'),
(2, '00001', '12212000'),
(3, '00002', '12212000'),
(4, '00003', '10886000'),
(5, '00010', '12079000'),
(6, '00011', '10091000'),
(7, '00012', '10091000'),
(8, '00013', '8765000'),
(9, '00020', '10820000'),
(10, '00021', '8831000'),
(11, '00022', '8831000'),
(12, '00023', '7505000'),
(13, '00100', '14837000'),
(14, '00101', '12848000'),
(15, '00102', '12848000'),
(16, '00103', '11522000'),
(17, '00110', '12715000'),
(18, '00111', '10119000'),
(19, '00112', '10119000'),
(20, '00113', '9401000'),
(21, '00120', '11456000'),
(22, '00121', '9467000'),
(23, '00122', '9467000'),
(24, '00123', '8141000'),
(25, '00200', '15474000'),
(26, '00201', '13485000'),
(27, '00202', '13485000'),
(28, '00203', '12226000'),
(29, '00210', '12716000'),
(30, '00211', '11363000'),
(31, '00212', '11363000'),
(32, '00213', '10038000'),
(33, '00220', '11455000'),
(34, '00221', '10104000'),
(35, '00222', '10104000'),
(36, '00223', '8778000'),
(37, '00300', '16110000'),
(38, '00301', '14121000'),
(39, '00302', '14121000'),
(40, '00303', '12795000'),
(41, '00310', '13989000'),
(42, '00311', '11999000'),
(43, '00312', '11999000'),
(44, '00313', '10674000'),
(45, '00320', '12728000'),
(46, '00321', '10740000'),
(47, '00322', '10740000'),
(48, '00323', '9414000'),
(49, '00400', '16747000'),
(50, '00401', '14758000'),
(51, '00402', '14758000'),
(52, '00403', '13432000'),
(53, '00410', '14626000'),
(54, '00411', '12636000'),
(55, '00412', '12636000'),
(56, '00413', '11311000'),
(57, '00420', '13366000'),
(58, '00421', '11377000'),
(59, '00422', '11377000'),
(60, '00423', '10051000'),
(61, '00500', '17383000'),
(62, '00501', '15394000'),
(63, '00502', '15394000'),
(64, '00503', '14068000'),
(65, '00510', '15211000'),
(66, '00511', '13272000'),
(67, '00512', '13272000'),
(68, '00513', '11946000'),
(69, '00520', '14002000'),
(70, '00521', '12013000'),
(71, '00522', '12013000'),
(72, '00523', '11450000'),
(73, '00600', '18019000'),
(74, '00601', '16030000'),
(75, '00602', '16030000'),
(76, '00603', '0'),
(77, '00610', '15897000'),
(78, '00611', '13908000'),
(79, '00612', '13908000'),
(80, '00613', '0'),
(81, '00620', '14638000'),
(82, '00621', '12649000'),
(83, '00622', '12649000'),
(84, '00623', '0'),
(85, '00700', '18656000'),
(86, '00701', '16667000'),
(87, '00702', '16667000'),
(88, '00703', '0'),
(89, '00710', '16534000'),
(90, '00711', '14545000'),
(91, '00712', '14545000'),
(92, '00713', '0'),
(93, '00720', '15275000'),
(94, '00721', '13286000'),
(95, '00722', '13286000'),
(96, '00723', '0'),
(97, '00800', '19292000'),
(98, '00801', '17303000'),
(99, '00802', '17303000'),
(100, '00803', '0'),
(101, '00810', '15911000'),
(102, '00811', '13922000'),
(103, '00812', '13922000'),
(104, '00813', '0'),
(105, '00820', '19929000'),
(106, '00821', '17941000'),
(107, '00822', '17941000'),
(108, '00823', '0'),
(109, '00900', '17807000'),
(110, '00901', '15818000'),
(111, '00902', '15818000'),
(112, '00903', '0'),
(113, '00910', '16548000'),
(114, '00911', '14559000'),
(115, '00912', '14559000'),
(116, '00913', '0'),
(117, '00920', '20565000'),
(118, '00921', '18575000'),
(119, '00922', '18575000'),
(120, '00923', '0'),
(121, '01000', '18443000'),
(122, '01001', '16454000'),
(123, '01002', '16454000'),
(124, '01003', '0'),
(125, '01010', '17892000'),
(126, '01011', '15195000'),
(127, '01012', '15195000'),
(128, '01013', '0'),
(129, '01020', '21201000'),
(130, '01021', '19211000'),
(131, '01022', '19211000'),
(132, '01023', '0'),
(133, '01100', '19079000'),
(134, '01101', '17090000'),
(135, '01102', '17090000'),
(136, '01103', '0'),
(137, '01110', '17820000'),
(138, '01111', '15831000'),
(139, '01112', '15831000'),
(140, '01113', '0'),
(141, '01120', '21838000'),
(142, '01121', '19849000'),
(143, '01122', '19849000'),
(144, '01123', '0'),
(145, '01200', '21838000'),
(146, '01201', '19849000'),
(147, '01202', '19849000'),
(148, '01203', '0'),
(149, '01210', '19716000'),
(150, '01211', '17090000'),
(151, '01212', '17090000'),
(152, '01213', '0'),
(153, '01220', '18457000'),
(154, '01221', '0'),
(155, '01222', '0'),
(156, '01223', '0'),
(157, '01300', '22747000'),
(158, '01301', '0'),
(159, '01302', '0'),
(160, '01303', '0'),
(161, '01310', '20352000'),
(162, '01311', '0'),
(163, '01312', '0'),
(164, '01313', '0'),
(165, '01320', '19093000'),
(166, '01321', '0'),
(167, '01322', '0'),
(168, '01323', '0'),
(169, '01400', '23111000'),
(170, '01401', '0'),
(171, '01402', '0'),
(172, '01403', '0'),
(173, '01410', '20989000'),
(174, '01411', '0'),
(175, '01412', '0'),
(176, '01413', '0'),
(177, '01420', '19730000'),
(178, '01421', '0'),
(179, '01422', '0'),
(180, '01423', '0'),
(181, '01500', '23747000'),
(182, '01501', '0'),
(183, '01502', '0'),
(184, '01503', '0'),
(185, '01510', '21625000'),
(186, '01511', '0'),
(187, '01512', '0'),
(188, '01513', '0'),
(189, '01520', '20366000'),
(190, '01521', '0'),
(191, '01522', '0'),
(192, '01523', '0'),
(193, '01600', '24383000'),
(194, '01601', '0'),
(195, '01602', '0'),
(196, '01603', '0'),
(197, '01610', '22261000'),
(198, '01611', '0'),
(199, '01612', '0'),
(200, '01613', '0'),
(201, '01620', '21002000'),
(202, '01621', '0'),
(203, '01622', '0'),
(204, '01623', '0'),
(205, '10000', '14641000'),
(206, '10001', '12765000'),
(207, '10002', '12765000'),
(208, '10003', '11514000'),
(209, '10010', '11764000'),
(210, '10011', '9888000'),
(211, '10012', '9888000'),
(212, '10013', '8637000'),
(213, '10020', '10389000'),
(214, '10021', '8512000'),
(215, '10022', '8512000'),
(216, '10023', '7262000'),
(217, '10100', '15241000'),
(218, '10101', '13365000'),
(219, '10102', '13365000'),
(220, '10103', '12114000'),
(221, '10110', '12364000'),
(222, '10111', '10488000'),
(223, '10112', '10488000'),
(224, '10113', '9237000'),
(225, '10120', '10989000'),
(226, '10121', '9112000'),
(227, '10122', '9112000'),
(228, '10123', '7862000'),
(229, '10200', '15843000'),
(230, '10201', '13967000'),
(231, '10202', '13967000'),
(232, '10203', '12716000'),
(233, '10210', '12966000'),
(234, '10211', '11090000'),
(235, '10212', '11090000'),
(236, '10213', '9839000'),
(237, '10220', '11590000'),
(238, '10221', '9713000'),
(239, '10222', '9713000'),
(240, '10223', '8463000'),
(241, '10300', '16443000'),
(242, '10301', '14567000'),
(243, '10302', '14567000'),
(244, '10303', '13316000'),
(245, '10310', '13566000'),
(246, '10311', '11690000'),
(247, '10312', '11690000'),
(248, '10313', '10439000'),
(249, '10320', '12190000'),
(250, '10321', '10314000'),
(251, '10322', '10314000'),
(252, '10323', '9063000'),
(253, '10400', '17044000'),
(254, '10401', '15168000'),
(255, '10402', '15168000'),
(256, '10403', '13917000'),
(257, '10410', '14167000'),
(258, '10411', '12291000'),
(259, '10412', '12291000'),
(260, '10413', '11040000'),
(261, '10420', '12791000'),
(262, '10421', '10915000'),
(263, '10422', '10915000'),
(264, '10423', '9664000'),
(265, '10500', '17644000'),
(266, '10501', '15768000'),
(267, '10502', '15768000'),
(268, '10503', '14517000'),
(269, '10510', '14767000'),
(270, '10511', '12891000'),
(271, '10512', '12891000'),
(272, '10513', '11640000'),
(273, '10520', '13391000'),
(274, '10521', '11515000'),
(275, '10522', '11515000'),
(276, '10523', '10264000'),
(277, '10600', '18244000'),
(278, '10601', '16367000'),
(279, '10602', '16367000'),
(280, '10603', '0'),
(281, '10610', '15367000'),
(282, '10611', '13491000'),
(283, '10612', '13491000'),
(284, '10613', '0'),
(285, '10620', '13991000'),
(286, '10621', '12115000'),
(287, '10622', '12115000'),
(288, '10623', '0'),
(289, '10700', '18845000'),
(290, '10701', '16968000'),
(291, '10702', '16968000'),
(292, '10703', '0'),
(293, '10710', '15968000'),
(294, '10711', '14092000'),
(295, '10712', '14092000'),
(296, '10713', '0'),
(297, '10720', '14592000'),
(298, '10721', '12716000'),
(299, '10722', '12716000'),
(300, '10723', '0'),
(301, '10800', '19445000'),
(302, '10801', '17568000'),
(303, '10802', '17568000'),
(304, '10803', '0'),
(305, '10810', '16568000'),
(306, '10811', '14692000'),
(307, '10812', '14692000'),
(308, '10813', '0'),
(309, '10820', '15192000'),
(310, '10821', '13316000'),
(311, '10822', '13316000'),
(312, '10823', '0'),
(313, '10900', '20046000'),
(314, '10901', '18169000'),
(315, '10902', '18169000'),
(316, '10903', '0'),
(317, '10910', '17169000'),
(318, '10911', '15293000'),
(319, '10912', '15293000'),
(320, '10913', '0'),
(321, '10920', '15793000'),
(322, '10921', '13917000'),
(323, '10922', '13917000'),
(324, '10923', '0'),
(325, '11000', '20646000'),
(326, '11001', '18769000'),
(327, '11002', '18769000'),
(328, '11003', '0'),
(329, '11010', '17769000'),
(330, '11011', '15893000'),
(331, '11012', '15893000'),
(332, '11013', '0'),
(333, '11020', '16393000'),
(334, '11021', '14517000'),
(335, '11022', '14517000'),
(336, '11023', '0'),
(337, '11100', '21245000'),
(338, '11101', '19369000'),
(339, '11102', '19369000'),
(340, '11103', '0'),
(341, '11110', '18368000'),
(342, '11111', '16492000'),
(343, '11112', '16492000'),
(344, '11113', '0'),
(345, '11120', '16992000'),
(346, '11121', '15116000'),
(347, '11122', '15116000'),
(348, '11123', '0'),
(349, '11200', '21846000'),
(350, '11201', '19970000'),
(351, '11202', '19970000'),
(352, '11203', '0'),
(353, '11210', '18969000'),
(354, '11211', '17093000'),
(355, '11212', '17093000'),
(356, '11213', '0'),
(357, '11220', '17593000'),
(358, '11221', '15717000'),
(359, '11222', '15717000'),
(360, '11223', '0'),
(361, '11300', '22446000'),
(362, '11301', '0'),
(363, '11302', '0'),
(364, '11303', '0'),
(365, '11310', '19569000'),
(366, '11311', '0'),
(367, '11312', '0'),
(368, '11313', '0'),
(369, '11320', '18193000'),
(370, '11321', '0'),
(371, '11322', '0'),
(372, '11323', '0'),
(373, '11400', '23047000'),
(374, '11401', '0'),
(375, '11402', '0'),
(376, '11403', '0'),
(377, '11410', '20170000'),
(378, '11411', '0'),
(379, '11412', '0'),
(380, '11413', '0'),
(381, '11420', '18794000'),
(382, '11421', '0'),
(383, '11422', '0'),
(384, '11423', '0'),
(385, '11500', '23647000'),
(386, '11501', '0'),
(387, '11502', '0'),
(388, '11503', '0'),
(389, '11510', '20770000'),
(390, '11511', '0'),
(391, '11512', '0'),
(392, '11513', '0'),
(393, '11520', '19394000'),
(394, '11521', '0'),
(395, '11522', '0'),
(396, '11523', '0'),
(397, '11600', '24247000'),
(398, '11601', '0'),
(399, '11602', '0'),
(400, '11603', '0'),
(401, '11610', '21370000'),
(402, '11611', '0'),
(403, '11612', '0'),
(404, '11613', '0'),
(405, '11620', '19994000'),
(406, '11621', '0'),
(407, '11622', '0'),
(408, '11623', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes_detalle_bodas`
--

CREATE TABLE `planes_detalle_bodas` (
  `id` int(11) NOT NULL,
  `categorias_id` int(11) NOT NULL,
  `valor_retirar` decimal(12,0) NOT NULL,
  `unidad` int(1) NOT NULL DEFAULT '0',
  `elemento` varchar(100) NOT NULL,
  `salones` varchar(10) NOT NULL,
  `platinium` int(11) NOT NULL,
  `gold` int(11) NOT NULL,
  `premium` int(11) NOT NULL,
  `valor_adicional` decimal(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `planes_detalle_bodas`
--

INSERT INTO `planes_detalle_bodas` (`id`, `categorias_id`, `valor_retirar`, `unidad`, `elemento`, `salones`, `platinium`, `gold`, `premium`, `valor_adicional`) VALUES
(1, 1, '0', 0, 'Iluminación Exterior al Estilo de los más hermosos Castillos de Europa', '0,1,2,3', 1, 1, 1, '0'),
(2, 1, '0', 0, 'Iluminación perimetal de los muros del salón con LED TECHNOLOGY', '0,1,2,3', 1, 1, 1, '0'),
(3, 1, '0', 0, 'Sillas Italianas Tiffany', '2', 1, 1, 1, '-1'),
(4, 1, '0', 0, 'Sillas Tipo Hotel', '1,2', 1, 1, 1, '-1'),
(5, 1, '0', 0, 'Colores Básicos de Lencería', '0,1,2,3', 1, 1, 1, '0'),
(6, 1, '10000', 1, 'Brocados, Jackards, Mouselinas y Tables Roads', '0,1,2,3', 1, 1, 1, '-1'),
(7, 1, '0', 1, 'Sedas y Velos', '0,1,2,3', 1, 1, 1, '-1'),
(8, 1, '0', 0, 'Cristaleria, Cubierteria, Servilletas y Vajillas', '0,1,2,3', 1, 1, 1, '-1'),
(9, 2, '15000', 1, 'Centros de Mesa', '0,1,2,3', 1, 1, 1, '-1'),
(10, 2, '15000', 0, 'Consola de Lobby', '0,2,3', 1, 0, 0, '30000'),
(11, 2, '15000', 0, 'Consola de recepción', '0,1,2,3', 1, 0, 0, '30000'),
(12, 2, '50000', 0, 'Guirnalda en Chimenea', '1,2', 1, 0, 0, '100000'),
(13, 2, '50000', 0, 'Jarrones sobre bases marmolizadas', '0,1,2,3', 1, 0, 0, '100000'),
(14, 2, '30000', 0, 'Pedestales en Forja Inglesa', '0', 1, 0, 0, '60000'),
(15, 2, '50000', 0, 'Guirnalda en Balcón', '1,3', 1, 1, 0, '100000'),
(16, 2, '130000', 0, 'Guirnalda en Escaleras', '0', 1, 1, 0, '250000'),
(17, 2, '80000', 0, 'Guirnalda en Escaleras-Imperial (Una baranda grande)', '2', 1, 1, 0, '150000'),
(18, 2, '50000', 0, 'Guirnalda en Escaleras - Imperial (Dos barandas pequeñas)', '2', 1, 1, 0, '100000'),
(19, 2, '50000', 0, 'Guirnalda en Escaleras-Britania (Dos barandas pequeñas)', '3', 1, 1, 0, '100000'),
(20, 2, '80000', 0, 'Paquete de Novia: 1 Bouquet, 1 Minibouquet, 5 Boutoniers y Arreglo de Vehiculo Nupcial', '0,1,2,3', 1, 1, 0, '150000'),
(21, 2, '5000', 0, 'Mesa de: Ponqué o Cup Cakes ó Sweet Table y Mesa de Urna -(Una)', '0,1,2,3', 1, 1, 1, '0'),
(22, 2, '5000', 0, 'Copas de Champagne para quienes ofrecen el Brindis', '0,1,2,3', 1, 1, 1, '0'),
(23, 2, '30000', 0, 'Pedestales en Forja Inglesa', '0,1,2,3', 0, 1, 0, '60000'),
(24, 3, '0', 0, 'Sin Limite - CON CONSUMO CONTROLADO Y BUEN SERVICIO', '0,1,2,3', 1, 1, 0, '0'),
(25, 3, '-1', 0, 'Whisky Something Special 10 años ó Sello Rojo 8 Años', '0,1,2,3', 1, 1, 0, '-1'),
(26, 3, '-1', 0, 'Cocktails Tipo Premium: Queen Elizabeth, Cuba Libre y Screw Drive', '0,1,2,3', 1, 1, 0, '-1'),
(27, 3, '-1', 0, 'Vinotinto ó Vino Blanco para acompañar la cena ó el almuerzo', '0,1,2,3', 1, 0, 0, '-1'),
(28, 3, '-1', 0, 'Whisky Something Special 10 Años ó Sello Rojo 8 Años (1,5 lts por cada 10 personas)', '0,1,2,3', 0, 0, 1, '-1'),
(29, 3, '-1', 0, 'Cocktails Screw Drive', '0,1,2,3', 0, 0, 1, '-1'),
(30, 3, '-1', 0, 'Champaña para el brindis', '0,1,2,3', 0, 0, 1, '-1'),
(31, 3, '0', 0, 'Gaseosa y Mezcladores', '0,1,2,3', 1, 1, 1, '0'),
(32, 4, '280000', 0, 'Dos Musicos Integrantes de la Orquesta Filarmónica - 1 hora en Protocolo ó Cena', '0,1,2,3', 1, 0, 0, '360000'),
(33, 4, '0', 0, 'Linea de Presentación y Descorche de Champaña-Sincronized Champagne Service', '0,1,2,3', 1, 1, 1, '0'),
(34, 4, '0', 0, 'Perseguidores "Back Projection System"', '0,1,2,3', 1, 1, 1, '0'),
(35, 4, '30000', 0, 'Efecto Sky Row: Columnas de CO2 comprimido, al salir Los Novios de la Suite', '0,1,2,3', 1, 0, 0, '150000'),
(36, 4, '45000', 0, 'Efecto de Neblina Fog Ice Machine: Formación de Nubes en el Piso', '0,1,2,3', 1, 0, 0, '150000'),
(37, 4, '0', 0, 'Iluminación computarizada "Roboscan System" y "Moving Head System"', '0,1,2,3', 1, 1, 1, '0'),
(38, 4, '0', 0, 'Espectacular Efecto de Lluvia de Burbujas', '0,1,2,3', 1, 1, 1, '0'),
(39, 4, '0', 0, 'Fascinante Efecto de Explosión de Lluvias de Pétalos', '0', 1, 1, 1, '0'),
(40, 4, '10000', 0, 'Efecto de Explosión de Lluvia de Serpentinas', '0,1,2,3', 1, 1, 1, '0'),
(41, 5, '0', 0, 'Syncronized English Service - S.E.S.', '0,1,2,3', 1, 1, 1, '0'),
(42, 5, '5800', 1, 'Entrada Especial', '0,1,2,3', 1, 0, 0, '7000'),
(43, 5, '600', 1, 'Sherbeth: Frosen especial servido entre Entrada y Plato Fuerte', '0,1,2,3', 1, 0, 0, '1500'),
(44, 5, '-1', 0, 'Plato Principal: 2 carnes y 2 Acompañamientos', '0,1,2,3', 1, 1, 1, '-1'),
(45, 5, '2700', 1, 'Ponqué tradicional ó Cup Cake ó Sweet Table - Elementos de decoración son opcionales', '0,1,2,3', 1, 1, 1, '-1'),
(46, 5, '600', 1, 'Food Service despues de media noche', '0,1,2,3', 1, 0, 0, '1500'),
(47, 6, '0', 0, 'Animación Especial Tipo Concierto', '0,1,2,3', 1, 1, 1, '0'),
(48, 6, '50000', 0, 'Sistema de Sonido RCF England', '0,1,2,3', 1, 1, 1, '0'),
(49, 6, '50000', 0, 'Iluminación Computarizada "Roboscan System" y "Moving Head System"', '0,1,2,3', 1, 1, 1, '0'),
(50, 6, '110000', 0, 'Disjockey: Programación musical Totalmente Variada', '0,1,2,3', 1, 1, 1, '0'),
(51, 6, '1000', 1, 'Accesorios para todos los invitados: CARNAVAL BARRANQUILLA', '0,1,2,3', 1, 0, 0, '1500'),
(52, 6, '0', 0, 'Vestuario a 10 personas con Trajes Tipicos de CARNAVAL DE BARRANQUILLA', '0,1,2,3', 1, 1, 1, '0'),
(53, 6, '35000', 0, 'Espectacular Efecto de Explosiones con Lluvia de Confeti Tipo Ventury', '0,1,2,3', 1, 0, 0, '150000'),
(54, 7, '650000', 0, 'Un Album Importado con Setenta Fotos 12,5 x 20 y Cuatro Ampliaciones 20 x 27,5', '0,1,2,3', 1, 0, 0, '650000'),
(55, 7, '510000', 0, 'Un Album Importado con Setenta Fotos', '0,1,2,3', 0, 1, 0, '550000'),
(56, 7, '250000', 0, 'Poster de los Novios: Foto en Gran Formato realizado en Estudio Profesional', '0,1,2,3', 1, 0, 0, '300000'),
(57, 7, '300000', 0, 'Un Video Editado en Formato DVD, con grabación en Ceremonia y Recepción', '0,1,2,3', 1, 1, 0, '350000'),
(58, 8, '295000', 0, 'Suite Nupcial en el mejor hotel de Bogota: NH Collection Royal World Trade Center', '0,1,2,3', 1, 0, 0, '380000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes_detalle_quinces`
--

CREATE TABLE `planes_detalle_quinces` (
  `id` int(11) NOT NULL,
  `categorias_id` int(11) NOT NULL,
  `valor_retirar` decimal(12,0) NOT NULL,
  `unidad` int(1) NOT NULL DEFAULT '0',
  `elemento` varchar(100) NOT NULL,
  `salones` varchar(10) NOT NULL,
  `platinium` int(11) NOT NULL,
  `gold` int(11) NOT NULL,
  `premium` int(11) NOT NULL,
  `valor_adicional` decimal(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `planes_detalle_quinces`
--

INSERT INTO `planes_detalle_quinces` (`id`, `categorias_id`, `valor_retirar`, `unidad`, `elemento`, `salones`, `platinium`, `gold`, `premium`, `valor_adicional`) VALUES
(1, 1, '0', 0, 'Iluminación Exterior al Estilo de los más hermosos Castillos de Europa', '0,1,2,3', 1, 1, 1, '0'),
(2, 1, '0', 0, 'Iluminación perimetal de los muros del salón con LED TECHNOLOGY', '0,1,2,3', 1, 1, 1, '0'),
(3, 1, '0', 0, 'Sillas Italianas Tiffany', '0,2', 1, 1, 1, '-1'),
(4, 1, '0', 0, 'Sillas Tipo Hotel', '1,2', 1, 1, 1, '-1'),
(5, 1, '0', 0, 'Colores Básicos de Lencería', '0,1,2,3', 1, 1, 1, '0'),
(6, 1, '10000', 1, 'Brocados, Jackards, Mouselinas y Tables Roads', '0,1,2,3', 1, 1, 1, '-1'),
(7, 1, '0', 1, 'Sedas y Velos', '0,1,2,3', 1, 1, 1, '-1'),
(8, 1, '0', 0, 'Cristaleria, Cubierteria, Servilletas y Vajillas', '0,1,2,3', 1, 1, 1, '-1'),
(9, 2, '15000', 1, 'Centros de Mesa', '0,1,2,3', 1, 1, 1, '-1'),
(10, 2, '15000', 0, 'Consola de Lobby', '0,2,3', 1, 0, 0, '30000'),
(11, 2, '15000', 0, 'Consola de recepción', '0,1,2,3', 1, 0, 0, '30000'),
(12, 2, '50000', 0, 'Guirnalda en Chimenea', '1,2', 1, 0, 0, '100000'),
(13, 2, '50000', 0, 'Jarrones sobre bases marmolizadas', '0,1,2,3', 1, 0, 0, '100000'),
(14, 2, '30000', 0, 'Pedestales en Forja Inglesa', '0', 1, 0, 0, '60000'),
(15, 2, '50000', 0, 'Guirnalda en Balcón', '1,3', 1, 1, 0, '100000'),
(16, 2, '130000', 0, 'Guirnalda en Escaleras', '0', 1, 1, 0, '250000'),
(17, 2, '80000', 0, 'Guirnalda en Escaleras-Imperial (Una baranda grande)', '2', 1, 1, 0, '150000'),
(18, 2, '50000', 0, 'Guirnalda en Escaleras - Imperial (Dos barandas pequeñas)', '2', 1, 1, 0, '100000'),
(19, 2, '50000', 0, 'Guirnalda en Escaleras-Britania (Dos barandas pequeñas)', '3', 1, 1, 0, '100000'),
(21, 2, '5000', 0, 'Mesa de: Ponqué o Cup Cakes ó Sweet Table y Mesa de Urna -(Una)', '0,1,2,3', 1, 1, 1, '0'),
(22, 2, '5000', 0, 'Copas de Champagne para quienes ofrecen el Brindis', '0,1,2,3', 1, 1, 1, '0'),
(23, 2, '30000', 0, 'Pedestales en Forja Inglesa', '0,1,2,3', 0, 1, 0, '60000'),
(24, 3, '0', 0, 'Sin Limite - CON CONSUMO CONTROLADO Y BUEN SERVICIO', '0,1,2,3', 1, 1, 0, '0'),
(25, 3, '-1', 0, 'Whisky Something Special 10 años ó Sello Rojo 8 Años', '0,1,2,3', 1, 1, 0, '-1'),
(26, 3, '-1', 0, 'Cocktails Tipo Premium: Queen Elizabeth, Cuba Libre y Screw Drive', '0,1,2,3', 1, 1, 0, '-1'),
(27, 3, '-1', 0, 'Vinotinto ó Vino Blanco para acompañar la cena ó el almuerzo', '0,1,2,3', 1, 0, 0, '-1'),
(28, 3, '-1', 0, 'Whisky Something Special 10 Años ó Sello Rojo 8 Años (1,5 lts por cada 10 personas)', '0,1,2,3', 0, 0, 1, '-1'),
(29, 3, '-1', 0, 'Cocktails Screw Drive', '0,1,2,3', 0, 0, 1, '-1'),
(30, 3, '-1', 0, 'Champaña para el brindis', '0,1,2,3', 0, 0, 1, '-1'),
(31, 3, '0', 0, 'Gaseosa y Mezcladores', '0,1,2,3', 1, 1, 1, '0'),
(32, 4, '280000', 0, 'Dos Musicos Integrantes de la Orquesta Filarmónica - 1 hora en Protocolo ó Cena', '0,1,2,3', 1, 0, 0, '360000'),
(33, 4, '0', 0, 'Linea de Presentación y Descorche de Champaña-Sincronized Champagne Service', '0,1,2,3', 1, 1, 1, '0'),
(34, 4, '0', 0, 'Perseguidores "Back Projection System" Para Perseguir a la Quinceañera', '0,1,2,3', 1, 1, 1, '0'),
(35, 4, '30000', 0, 'Efecto Sky Row: Columnas de CO2 comprimido, al salir Los Novios de la Suite', '0,1,2,3', 1, 0, 0, '150000'),
(36, 4, '45000', 0, 'Efecto de Neblina Fog Ice Machine: Formación de Nubes en el Piso', '0,1,2,3', 1, 0, 0, '150000'),
(37, 4, '0', 0, 'Iluminación computarizada "Roboscan System" y "Moving Head System"', '0,1,2,3', 1, 1, 1, '0'),
(38, 4, '0', 0, 'Espectacular Efecto de Lluvia de Burbujas', '0,1,2,3', 1, 1, 1, '0'),
(39, 4, '0', 0, 'Fascinante Efecto de Explosión de Lluvias de Pétalos', '0', 1, 1, 1, '0'),
(40, 4, '10000', 0, 'Efecto de Explosión de Lluvia de Serpentinas', '0,1,2,3', 1, 1, 1, '0'),
(41, 5, '0', 0, 'Syncronized English Service - S.E.S.', '0,1,2,3', 1, 1, 1, '0'),
(42, 5, '5800', 1, 'Entrada Especial Para Adultos', '0,1,2,3', 1, 0, 0, '7000'),
(43, 5, '600', 1, 'Sherbeth: Frosen especial servido entre Entrada y Plato Fuerte', '0,1,2,3', 1, 0, 0, '1500'),
(44, 5, '-1', 0, 'Plato Principal: 2 carnes y 2 Para los Adultos', '0,1,2,3', 1, 1, 1, '-1'),
(45, 5, '2700', 1, 'Ponqué tradicional ó Cup Cake ó Sweet Table - Elementos de decoración son opcionales', '0,1,2,3', 1, 1, 1, '-1'),
(46, 5, '600', 1, 'Food Service despues de media noche', '0,1,2,3', 1, 0, 0, '1500'),
(47, 6, '0', 0, 'Animación Especial Tipo Concierto', '0,1,2,3', 1, 1, 1, '0'),
(48, 6, '50000', 0, 'Sistema de Sonido RCF England', '0,1,2,3', 1, 1, 1, '0'),
(49, 6, '50000', 0, 'Iluminación Computarizada "Roboscan System" y "Moving Head System"', '0,1,2,3', 1, 1, 1, '0'),
(50, 6, '110000', 0, 'Disjockey: Programación musical Totalmente Variada', '0,1,2,3', 1, 1, 1, '0'),
(51, 6, '1000', 1, 'Accesorios para todos los invitados: CARNAVAL BARRANQUILLA ó FIESTA NEON', '0,1,2,3', 1, 0, 0, '1500'),
(52, 6, '0', 0, 'Vestuario a 10 personas con Trajes Tipicos de CARNAVAL DE BARRANQUILLA ó FIESTA NEON', '0,1,2,3', 1, 1, 1, '0'),
(53, 6, '35000', 0, 'Espectacular Efecto de Explosiones con Lluvia de Confeti Tipo Ventury', '0,1,2,3', 1, 0, 0, '150000'),
(54, 7, '650000', 0, 'Un Album Importado con Setenta Fotos 12,5 x 20 y Cuatro Ampliaciones 20 x 27,5', '0,1,2,3', 1, 0, 0, '650000'),
(55, 7, '510000', 0, 'Un Album Importado con Setenta Fotos', '0,1,2,3', 0, 1, 0, '550000'),
(57, 7, '300000', 0, 'Un Video Editado en Formato DVD, con grabación en Ceremonia y Recepción', '0,1,2,3', 1, 1, 0, '350000'),
(58, 8, '295000', 0, 'Suite Nupcial en el mejor hotel de Bogota: NH Collection Royal World Trade Center', '0,1,2,3', 1, 0, 0, '380000'),
(59, 1, '35000', 0, 'Recorrido interior del Salón con el nombre de la Quinceañera', '0,1,2,3', 1, 1, 1, '100000'),
(60, 1, '0', 1, 'Montaje de Salas tipo Lounge para jóvenes - máximo 30% de las personas', '0,1,2,3', 1, 1, 1, '120000'),
(61, 1, '35000', 0, 'Cotton Candy Machine ó Sno-Cons Machine ó Pop Corn Machine - Sujetas a disponibilidad', '0,1,2,3', 1, 0, 0, '150000'),
(62, 2, '35000', 0, 'Candelabro para cantar Happy Birthday a la Quinceañera- (Uno)', '0,1,2,3', 1, 1, 1, '70000'),
(63, 2, '5000', 0, 'Bandeja con 15 rosas -(Una)', '0,1,2,3', 1, 1, 1, '10000'),
(64, 6, '0', 0, 'Efecto Humo Artificial', '0,1,2,3', 1, 1, 1, '0'),
(65, 6, '0', 0, 'Efecto de:Show de Rayos Laser y Strobe Atomic System', '0,2', 1, 1, 1, '0'),
(66, 6, '0', 0, 'Dee Jay de Reina de Corazones en sala al estilo After Party', '0', 1, 1, 1, '0'),
(67, 6, '0', 0, 'Carnaval tipo FIESTA NEON con el mas espectacular show de NEON LED TECHNOLOGY', '0,1,2,3', 1, 1, 1, '0'),
(68, 7, '300000', 0, 'Guest Book de la Quinceañera: Libro con fotos impresas y espacio para firmas y mensajes', '0,1,2,3', 1, 0, 0, '350000'),
(69, 7, '100000', 0, 'Producción de Pregrabado realizado en Estudio Profesional', '0,1,2,3', 1, 0, 0, '150000'),
(70, 7, '30000', 0, 'Transmisión de Pregrabado  a Traves de Pantalla Gigante de Video', '0,1,2,3', 1, 0, 0, '150000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservaciones`
--

CREATE TABLE `reservaciones` (
  `id` int(11) NOT NULL,
  `fecha_reserv` datetime NOT NULL,
  `fecha_evento` date NOT NULL,
  `hora_evento` int(2) NOT NULL,
  `tipo_evento` int(1) NOT NULL,
  `invitados` int(2) NOT NULL,
  `salon` int(1) NOT NULL,
  `alternativa` int(1) NOT NULL,
  `monto` double NOT NULL,
  `adiciones` double NOT NULL,
  `sustracciones` double NOT NULL,
  `total` double NOT NULL,
  `identificacion` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `direccion` varchar(245) NOT NULL,
  `observaciones` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservaciones`
--

INSERT INTO `reservaciones` (`id`, `fecha_reserv`, `fecha_evento`, `hora_evento`, `tipo_evento`, `invitados`, `salon`, `alternativa`, `monto`, `adiciones`, `sustracciones`, `total`, `identificacion`, `nombre`, `email`, `telefono`, `direccion`, `observaciones`) VALUES
(6, '2018-04-18 06:44:02', '2018-04-11', 3, 0, 4, 1, 1, 12636000, 0, 0, 12636000, 1232396262, 'Ivan', 'ivan@mail.com', '6526525625', 'jksjsjsjksjk', 'jsjsjsjksjk');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservaciones_detalle`
--

CREATE TABLE `reservaciones_detalle` (
  `reservaciones_id` int(11) NOT NULL,
  `f1` varchar(100) NOT NULL,
  `f2` varchar(100) NOT NULL,
  `f3` varchar(100) NOT NULL,
  `f4` varchar(100) NOT NULL,
  `f5` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `planes_detalle_bodas`
--
ALTER TABLE `planes_detalle_bodas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `planes_detalle_quinces`
--
ALTER TABLE `planes_detalle_quinces`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `planes`
--
ALTER TABLE `planes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;
--
-- AUTO_INCREMENT de la tabla `planes_detalle_bodas`
--
ALTER TABLE `planes_detalle_bodas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT de la tabla `planes_detalle_quinces`
--
ALTER TABLE `planes_detalle_quinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT de la tabla `reservaciones`
--
ALTER TABLE `reservaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
