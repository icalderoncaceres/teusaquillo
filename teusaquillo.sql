-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2018 a las 05:20:55
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
(1, 'Espectacular Foto Book Con Diseño Profesional y 100 Fotos Impresas', '250000', '250000'),
(2, 'Fascinante Super Pista LED 50 Escenas Diferentes Computarizadas. 12 m2', '800000', '800000'),
(3, 'SuperCombo 1: Efecto Sky Row mas Efecto Fog Ice Machine mas Efecto Lluvia de Confeti', '330000', '330000'),
(4, 'SuperCombo 2:Efecto Skype Row mas Efecto Fog Ice Machine', '230000', '230000'),
(5, 'SuperCombo Video: Producción Y Transmisión de PreGrabado', '250000', '250000');

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
(1, '00000', '14201'),
(2, '00001', '12212'),
(3, '00002', '12212'),
(4, '00003', '10886'),
(5, '00010', '12079'),
(6, '00011', '10091'),
(7, '00012', '10091'),
(8, '00013', '8765'),
(9, '00020', '10820'),
(10, '00021', '8831'),
(11, '00022', '8831'),
(12, '00023', '7505'),
(13, '00100', '14837'),
(14, '00101', '12848'),
(15, '00102', '12848'),
(16, '00103', '11522'),
(17, '00110', '12715'),
(18, '00111', '10119'),
(19, '00112', '10119'),
(20, '00113', '9401'),
(21, '00120', '11456'),
(22, '00121', '9467'),
(23, '00122', '9467'),
(24, '00123', '8141'),
(25, '00200', '15474'),
(26, '00201', '13485'),
(27, '00202', '13485'),
(28, '00203', '12226'),
(29, '00210', '12716'),
(30, '00211', '11363'),
(31, '00212', '11363'),
(32, '00213', '10038'),
(33, '00220', '11455'),
(34, '00221', '10104'),
(35, '00222', '10104'),
(36, '00223', '8778'),
(37, '00300', '16110'),
(38, '00301', '14121'),
(39, '00302', '14121'),
(40, '00303', '12795'),
(41, '00310', '13989'),
(42, '00311', '11999'),
(43, '00312', '11999'),
(44, '00313', '10674'),
(45, '00320', '12728'),
(46, '00321', '10740'),
(47, '00322', '10740'),
(48, '00323', '9414'),
(49, '00400', '16747'),
(50, '00401', '14758'),
(51, '00402', '14758'),
(52, '00403', '13432'),
(53, '00410', '14626'),
(54, '00411', '12636'),
(55, '00412', '12636'),
(56, '00413', '11311'),
(57, '00420', '13366'),
(58, '00421', '11377'),
(59, '00422', '11377'),
(60, '00423', '10051'),
(61, '00500', '17383'),
(62, '00501', '15394'),
(63, '00502', '15394'),
(64, '00503', '14068'),
(65, '00510', '15211'),
(66, '00511', '13272'),
(67, '00512', '13272'),
(68, '00513', '11946'),
(69, '00520', '14002'),
(70, '00521', '12013'),
(71, '00522', '12013'),
(72, '00523', '11450'),
(73, '00600', '18019'),
(74, '00601', '16030'),
(75, '00602', '16030'),
(76, '00603', '0'),
(77, '00610', '15897'),
(78, '00611', '13908'),
(79, '00612', '13908'),
(80, '00613', '0'),
(81, '00620', '14638'),
(82, '00621', '12649'),
(83, '00622', '12649'),
(84, '00623', '0'),
(85, '00700', '18656'),
(86, '00701', '16667'),
(87, '00702', '16667'),
(88, '00703', '0'),
(89, '00710', '16534'),
(90, '00711', '14545'),
(91, '00712', '14545'),
(92, '00713', '0'),
(93, '00720', '15275'),
(94, '00721', '13286'),
(95, '00722', '13286'),
(96, '00723', '0'),
(97, '00800', '19292'),
(98, '00801', '17303'),
(99, '00802', '17303'),
(100, '00803', '0'),
(101, '00810', '15911'),
(102, '00811', '13922'),
(103, '00812', '13922'),
(104, '00813', '0'),
(105, '00820', '19929'),
(106, '00821', '17941'),
(107, '00822', '17941'),
(108, '00823', '0'),
(109, '00900', '17807'),
(110, '00901', '15818'),
(111, '00902', '15818'),
(112, '00903', '0'),
(113, '00910', '16548'),
(114, '00911', '14559'),
(115, '00912', '14559'),
(116, '00913', '0'),
(117, '00920', '20565'),
(118, '00921', '18575'),
(119, '00922', '18575'),
(120, '00923', '0'),
(121, '01000', '18443'),
(122, '01001', '16454'),
(123, '01002', '16454'),
(124, '01003', '0'),
(125, '01010', '17892'),
(126, '01011', '15195'),
(127, '01012', '15195'),
(128, '01013', '0'),
(129, '01020', '21201'),
(130, '01021', '19211'),
(131, '01022', '19211'),
(132, '01023', '0'),
(133, '01100', '19079'),
(134, '01101', '17090'),
(135, '01102', '17090'),
(136, '01103', '0'),
(137, '01110', '17820'),
(138, '01111', '15831'),
(139, '01112', '15831'),
(140, '01113', '0'),
(141, '01120', '21838'),
(142, '01121', '19849'),
(143, '01122', '19849'),
(144, '01123', '0'),
(145, '01200', '21838'),
(146, '01201', '19849'),
(147, '01202', '19849'),
(148, '01203', '0'),
(149, '01210', '19716'),
(150, '01211', '17090'),
(151, '01212', '17090'),
(152, '01213', '0'),
(153, '01220', '18457'),
(154, '01221', '0'),
(155, '01222', '0'),
(156, '01223', '0'),
(157, '01300', '22747'),
(158, '01301', '0'),
(159, '01302', '0'),
(160, '01303', '0'),
(161, '01310', '20352'),
(162, '01311', '0'),
(163, '01312', '0'),
(164, '01313', '0'),
(165, '01320', '19093'),
(166, '01321', '0'),
(167, '01322', '0'),
(168, '01323', '0'),
(169, '01400', '23111'),
(170, '01401', '0'),
(171, '01402', '0'),
(172, '01403', '0'),
(173, '01410', '20989'),
(174, '01411', '0'),
(175, '01412', '0'),
(176, '01413', '0'),
(177, '01420', '19730'),
(178, '01421', '0'),
(179, '01422', '0'),
(180, '01423', '0'),
(181, '01500', '23747'),
(182, '01501', '0'),
(183, '01502', '0'),
(184, '01503', '0'),
(185, '01510', '21625'),
(186, '01511', '0'),
(187, '01512', '0'),
(188, '01513', '0'),
(189, '01520', '20366'),
(190, '01521', '0'),
(191, '01522', '0'),
(192, '01523', '0'),
(193, '01600', '24383'),
(194, '01601', '0'),
(195, '01602', '0'),
(196, '01603', '0'),
(197, '01610', '22261'),
(198, '01611', '0'),
(199, '01612', '0'),
(200, '01613', '0'),
(201, '01620', '21002'),
(202, '01621', '0'),
(203, '01622', '0'),
(204, '01623', '0'),
(205, '10000', '14641'),
(206, '10001', '12765'),
(207, '10002', '12765'),
(208, '10003', '11514'),
(209, '10010', '11764'),
(210, '10011', '9888'),
(211, '10012', '9888'),
(212, '10013', '8637'),
(213, '10020', '10389'),
(214, '10021', '8512'),
(215, '10022', '8512'),
(216, '10023', '7262'),
(217, '10100', '15241'),
(218, '10101', '13365'),
(219, '10102', '13365'),
(220, '10103', '12114'),
(221, '10110', '12364'),
(222, '10111', '10488'),
(223, '10112', '10488'),
(224, '10113', '9237'),
(225, '10120', '10989'),
(226, '10121', '9112'),
(227, '10122', '9112'),
(228, '10123', '7862'),
(229, '10200', '15843'),
(230, '10201', '13967'),
(231, '10202', '13967'),
(232, '10203', '12716'),
(233, '10210', '12966'),
(234, '10211', '11090'),
(235, '10212', '11090'),
(236, '10213', '9839'),
(237, '10220', '11590'),
(238, '10221', '9713'),
(239, '10222', '9713'),
(240, '10223', '8463'),
(241, '10300', '16443'),
(242, '10301', '14567'),
(243, '10302', '14567'),
(244, '10303', '13316'),
(245, '10310', '13566'),
(246, '10311', '11690'),
(247, '10312', '11690'),
(248, '10313', '10439'),
(249, '10320', '12190'),
(250, '10321', '10314'),
(251, '10322', '10314'),
(252, '10323', '9063'),
(253, '10400', '17044'),
(254, '10401', '15168'),
(255, '10402', '15168'),
(256, '10403', '13917'),
(257, '10410', '14167'),
(258, '10411', '12291'),
(259, '10412', '12291'),
(260, '10413', '11040'),
(261, '10420', '12791'),
(262, '10421', '10915'),
(263, '10422', '10915'),
(264, '10423', '9664'),
(265, '10500', '17644'),
(266, '10501', '15768'),
(267, '10502', '15768'),
(268, '10503', '14517'),
(269, '10510', '14767'),
(270, '10511', '12891'),
(271, '10512', '12891'),
(272, '10513', '11640'),
(273, '10520', '13391'),
(274, '10521', '11515'),
(275, '10522', '11515'),
(276, '10523', '10264'),
(277, '10600', '18244'),
(278, '10601', '16367'),
(279, '10602', '16367'),
(280, '10603', '0'),
(281, '10610', '15367'),
(282, '10611', '13491'),
(283, '10612', '13491'),
(284, '10613', '0'),
(285, '10620', '13991'),
(286, '10621', '12115'),
(287, '10622', '12115'),
(288, '10623', '0'),
(289, '10700', '18845'),
(290, '10701', '16968'),
(291, '10702', '16968'),
(292, '10703', '0'),
(293, '10710', '15968'),
(294, '10711', '14092'),
(295, '10712', '14092'),
(296, '10713', '0'),
(297, '10720', '14592'),
(298, '10721', '12716'),
(299, '10722', '12716'),
(300, '10723', '0'),
(301, '10800', '19445'),
(302, '10801', '17568'),
(303, '10802', '17568'),
(304, '10803', '0'),
(305, '10810', '16568'),
(306, '10811', '14692'),
(307, '10812', '14692'),
(308, '10813', '0'),
(309, '10820', '15192'),
(310, '10821', '13316'),
(311, '10822', '13316'),
(312, '10823', '0'),
(313, '10900', '20046'),
(314, '10901', '18169'),
(315, '10902', '18169'),
(316, '10903', '0'),
(317, '10910', '17169'),
(318, '10911', '15293'),
(319, '10912', '15293'),
(320, '10913', '0'),
(321, '10920', '15793'),
(322, '10921', '13917'),
(323, '10922', '13917'),
(324, '10923', '0'),
(325, '11000', '20646'),
(326, '11001', '18769'),
(327, '11002', '18769'),
(328, '11003', '0'),
(329, '11010', '17769'),
(330, '11011', '15893'),
(331, '11012', '15893'),
(332, '11013', '0'),
(333, '11020', '16393'),
(334, '11021', '14517'),
(335, '11022', '14517'),
(336, '11023', '0'),
(337, '11100', '21245'),
(338, '11101', '19369'),
(339, '11102', '19369'),
(340, '11103', '0'),
(341, '11110', '18368'),
(342, '11111', '16492'),
(343, '11112', '16492'),
(344, '11113', '0'),
(345, '11120', '16992'),
(346, '11121', '15116'),
(347, '11122', '15116'),
(348, '11123', '0'),
(349, '11200', '21846'),
(350, '11201', '19970'),
(351, '11202', '19970'),
(352, '11203', '0'),
(353, '11210', '18969'),
(354, '11211', '17093'),
(355, '11212', '17093'),
(356, '11213', '0'),
(357, '11220', '17593'),
(358, '11221', '15717'),
(359, '11222', '15717'),
(360, '11223', '0'),
(361, '11300', '22446'),
(362, '11301', '0'),
(363, '11302', '0'),
(364, '11303', '0'),
(365, '11310', '19569'),
(366, '11311', '0'),
(367, '11312', '0'),
(368, '11313', '0'),
(369, '11320', '18193'),
(370, '11321', '0'),
(371, '11322', '0'),
(372, '11323', '0'),
(373, '11400', '23047'),
(374, '11401', '0'),
(375, '11402', '0'),
(376, '11403', '0'),
(377, '11410', '20170'),
(378, '11411', '0'),
(379, '11412', '0'),
(380, '11413', '0'),
(381, '11420', '18794'),
(382, '11421', '0'),
(383, '11422', '0'),
(384, '11423', '0'),
(385, '11500', '23647'),
(386, '11501', '0'),
(387, '11502', '0'),
(388, '11503', '0'),
(389, '11510', '20770'),
(390, '11511', '0'),
(391, '11512', '0'),
(392, '11513', '0'),
(393, '11520', '19394'),
(394, '11521', '0'),
(395, '11522', '0'),
(396, '11523', '0'),
(397, '11600', '24247'),
(398, '11601', '0'),
(399, '11602', '0'),
(400, '11603', '0'),
(401, '11610', '21370'),
(402, '11611', '0'),
(403, '11612', '0'),
(404, '11613', '0'),
(405, '11620', '19994'),
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
  `fecha_event` datetime NOT NULL,
  `salon` varchar(45) NOT NULL,
  `plan` varchar(45) NOT NULL,
  `monto` double NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `observaciones` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservaciones`
--

INSERT INTO `reservaciones` (`id`, `fecha_reserv`, `fecha_event`, `salon`, `plan`, `monto`, `cliente_id`, `observaciones`) VALUES
(1, '2018-04-04 00:00:00', '2018-04-13 00:00:00', 'Principal', 'Golden', 123088, 1, 'Ninguna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservaciones_detalle`
--

CREATE TABLE `reservaciones_detalle` (
  `reservaciones_id` int(11) NOT NULL,
  `items_id` int(11) NOT NULL
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
