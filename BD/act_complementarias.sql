-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2017 a las 06:26:16
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `act_complementarias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `act_complementaria`
--

CREATE TABLE `act_complementaria` (
  `clave_act` int(11) NOT NULL,
  `nombre_complementarias` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `act_complementaria`
--

INSERT INTO `act_complementaria` (`clave_act`, `nombre_complementarias`) VALUES
(1, 'Futbol'),
(2, 'Voleibol'),
(3, 'Ajedrez'),
(4, 'Musica'),
(5, 'Dansa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `clave_carrera` varchar(45) NOT NULL,
  `nombre_carrera` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`clave_carrera`, `nombre_carrera`) VALUES
('COPU-2010-205', 'Contador Publico'),
('IAGR-2010-214', 'IngenierÃ­a en AgronomÃ­a'),
('IAMD-2010-213', 'IngenierÃ­a en AdministraciÃ³n'),
('IINF-2010-220', 'IngenierÃ­a en InformÃ¡tica'),
('LADM-2010-234', 'Licenciatura en AdministraciÃ³n'),
('LBIO-2010-233', 'Licenciatura en BiologÃ­a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `rfc_departamento` varchar(45) NOT NULL,
  `nombre_departamento` varchar(45) DEFAULT NULL,
  `trabajador_rfc` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`rfc_departamento`, `nombre_departamento`, `trabajador_rfc`) VALUES
('18589001DDEP', 'Division de Estudios Profesionales', 'RBH22GZT00'),
('18589BBB567A', 'Directivos', 'MTYU11TYU25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `No_control` int(11) NOT NULL,
  `nombre_estudiante` varchar(45) DEFAULT NULL,
  `apellido_p_estudiante` varchar(45) DEFAULT NULL,
  `apellido_m_estudiante` varchar(45) DEFAULT NULL,
  `semestre` varchar(45) DEFAULT NULL,
  `firma` varchar(45) DEFAULT NULL,
  `carrera_clave` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`No_control`, `nombre_estudiante`, `apellido_p_estudiante`, `apellido_m_estudiante`, `semestre`, `firma`, `carrera_clave`) VALUES
(15930129, 'Daniel', 'Macedonio', 'Bedolla', 'V', NULL, 'IINF-2010-220'),
(15930159, 'Citlali', 'Arroyo', 'Romero', 'V', NULL, 'IINF-2010-220'),
(15930163, 'Alan Henry', 'Alcantar', 'Medrano', 'V', NULL, 'IINF-2010-220'),
(15930164, 'Lucas Alberto', 'Alonso', 'Cruz', 'V', NULL, 'IINF-2010-220'),
(15930165, 'Domingo', 'Antunez', 'Salgado', 'V', NULL, 'IINF-2010-220'),
(15930167, 'Paola Rubi', 'Benitez', 'Bartolo', 'V', '', 'IINF-2010-220'),
(15930168, 'Neftali', 'Cabrera', 'Torres', 'V', '', 'IINF-2010-220'),
(15930170, 'Mario de Jesus', 'Carranza', 'Diaz', 'V', '', 'IINF-2010-220'),
(15930178, 'Ernesto Quintín', 'García', 'Pineda', 'V', '', 'IINF-2010-220'),
(15930185, 'Alondra', 'Jaimes', 'Gutierrez', 'V', '', 'IINF-2010-220'),
(15930187, 'Evelia', 'Maldonado', 'Miranda', 'V', '', 'IINF-2010-220'),
(15930194, 'Jorge Luis', 'Ocampo', 'Millan', 'V', '', 'IINF-2010-220'),
(15930200, 'Jose Ramon', 'Ortiz', 'Lopez', 'V', '', 'IINF-2010-220'),
(15930208, 'Jorge', 'Roque', 'Pineda', 'V', '', 'IINF-2010-220'),
(15930210, 'Carlos Alberto ', 'Ruiz', 'Gutierrez', 'V', '', 'IINF-2010-220'),
(15930216, 'Hernan', 'Santana', 'Benitez', 'V', '', 'IINF-2010-220'),
(15930217, 'Natolio', 'Tapia', 'Mondragon', 'V', NULL, 'IINF-2010-220'),
(15930218, 'Jonathan', 'Urieta', 'Albarran', 'V', '', 'IINF-2010-220'),
(15930219, 'Marco Antonio', 'Valle', 'Toledo', 'V', NULL, 'IINF-2010-220'),
(15930221, 'Agustin', 'Vivas', 'Pineda', 'V', NULL, 'IINF-2010-220'),
(15930227, 'Christian', 'Alonso', 'Ignacio', 'V', NULL, 'IINF-2010-220');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instituto`
--

CREATE TABLE `instituto` (
  `clave_instituto` varchar(45) NOT NULL,
  `nombre_instituto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `instituto`
--

INSERT INTO `instituto` (`clave_instituto`, `nombre_instituto`) VALUES
('01GRO123UT', 'Universidad de Tierra Caliente'),
('12DIT0005B', 'INSTITUTO TECNOLÓGICO DE CD ALTAMIRANO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructor`
--

CREATE TABLE `instructor` (
  `rfc_instructor` varchar(45) NOT NULL,
  `nombre_instructor` varchar(45) DEFAULT NULL,
  `apellido_p_instructor` varchar(45) DEFAULT NULL,
  `apellido_m_instructor` varchar(45) DEFAULT NULL,
  `act_complementaria_clave_act` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `instructor`
--

INSERT INTO `instructor` (`rfc_instructor`, `nombre_instructor`, `apellido_p_instructor`, `apellido_m_instructor`, `act_complementaria_clave_act`) VALUES
('01MITCA', 'Mario de Jesus', 'Carranza', 'Diaz', 4),
('02VITCA', 'Jose Ramon', 'Ortiz', 'Lopez', 2),
('03FITCA', 'Gerardo de Jesus', 'Moreno', 'Morales', 1),
('04AITCA', 'Adiel', 'Hernandez', 'Juarez', 3),
('05DITCA', 'Astrid', 'Perez', 'Montiel', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `folio` int(11) NOT NULL,
  `asunto` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `lugar` varchar(45) DEFAULT NULL,
  `instituto_clave` varchar(45) NOT NULL,
  `instructor_rfc` varchar(45) NOT NULL,
  `estudiante_No_contro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`folio`, `asunto`, `fecha`, `lugar`, `instituto_clave`, `instructor_rfc`, `estudiante_No_contro`) VALUES
(1, 'Inscripcion', '2017-10-30', 'Aula 701', '12DIT0005B', '01MITCA', 15930163),
(2, 'Inscripcion', '2017-10-30', 'Aula 701', '12DIT0005B', '01MITCA', 15930164),
(3, 'Inscripcion', '2017-10-30', 'Cancha de Futbol', '12DIT0005B', '03FITCA', 15930194),
(4, 'Inscripcion', '2017-10-30', 'Cancha de Futbol', '12DIT0005B', '03FITCA', 15930221),
(5, 'Inscripcion', '2017-10-30', 'Cancha de Futbol', '12DIT0005B', '03FITCA', 15930218);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `rfc_trabajador` varchar(45) NOT NULL,
  `nombre_trabajador` varchar(45) DEFAULT NULL,
  `apellido_p` varchar(45) DEFAULT NULL,
  `apellido_m` varchar(45) DEFAULT NULL,
  `clave_presupuestal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`rfc_trabajador`, `nombre_trabajador`, `apellido_p`, `apellido_m`, `clave_presupuestal`) VALUES
('MTYU11TYU25', 'Leonel', 'Gonzalez', 'Vidal', NULL),
('RBH22GZT00', 'Reyna', 'Bergara', 'Hernandez', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `act_complementaria`
--
ALTER TABLE `act_complementaria`
  ADD PRIMARY KEY (`clave_act`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`clave_carrera`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`rfc_departamento`),
  ADD KEY `fk_departamento_trabajador1_idx` (`trabajador_rfc`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`No_control`,`carrera_clave`),
  ADD KEY `fk_estudiante_carrera1_idx` (`carrera_clave`);

--
-- Indices de la tabla `instituto`
--
ALTER TABLE `instituto`
  ADD PRIMARY KEY (`clave_instituto`);

--
-- Indices de la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`rfc_instructor`),
  ADD KEY `fk_instructor_act_complementaria_idx` (`act_complementaria_clave_act`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`folio`),
  ADD KEY `fk_solicitud_instituto1_idx` (`instituto_clave`),
  ADD KEY `fk_solicitud_instructor1_idx` (`instructor_rfc`),
  ADD KEY `fk_solicitud_estudiante1_idx` (`estudiante_No_contro`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`rfc_trabajador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `folio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1258964760;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `fk_departamento_trabajador1` FOREIGN KEY (`trabajador_rfc`) REFERENCES `trabajador` (`rfc_trabajador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `fk_estudiante_carrera1` FOREIGN KEY (`carrera_clave`) REFERENCES `carrera` (`clave_carrera`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `fk_instructor_act_complementaria` FOREIGN KEY (`act_complementaria_clave_act`) REFERENCES `act_complementaria` (`clave_act`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `fk_solicitud_estudiante1` FOREIGN KEY (`estudiante_No_contro`) REFERENCES `estudiante` (`No_control`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_solicitud_instituto1` FOREIGN KEY (`instituto_clave`) REFERENCES `instituto` (`clave_instituto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_solicitud_instructor1` FOREIGN KEY (`instructor_rfc`) REFERENCES `instructor` (`rfc_instructor`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
