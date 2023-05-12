-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 12-05-2023 a las 00:32:37
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portfolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion`
--

DROP TABLE IF EXISTS `educacion`;
CREATE TABLE IF NOT EXISTS `educacion` (
  `ideducacion` int NOT NULL,
  `establecimiento` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `grado` varchar(45) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `tiempo` varchar(45) DEFAULT NULL,
  `usuario_id_usuario` int NOT NULL,
  PRIMARY KEY (`ideducacion`,`usuario_id_usuario`),
  KEY `fk_educacion_usuario1_idx` (`usuario_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `educacion`
--

INSERT INTO `educacion` (`ideducacion`, `establecimiento`, `grado`, `titulo`, `tiempo`, `usuario_id_usuario`) VALUES
(1, 'Universidad Tecnologica Nacional - Argentina', 'Certificación', 'Desarrollo Web Full Stack', 'Septiembre 2022', 1),
(2, 'University of Amsterdam', 'Certificación', 'Data Analytics For Lean Six Sigma', 'Junio 2022', 1),
(3, 'freeCodeCamp', 'Certificación', 'JavaScript Algorithms and Data Structures', 'Agosto 2022', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

DROP TABLE IF EXISTS `experiencia`;
CREATE TABLE IF NOT EXISTS `experiencia` (
  `id_experiencia` int NOT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `tareas` varchar(350) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `tiempo` varchar(45) DEFAULT NULL,
  `usuario_id_usuario1` int NOT NULL,
  PRIMARY KEY (`id_experiencia`,`usuario_id_usuario1`),
  KEY `fk_experiencia_usuario1_idx` (`usuario_id_usuario1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`id_experiencia`, `cargo`, `empresa`, `tareas`, `tiempo`, `usuario_id_usuario1`) VALUES
(1, 'Senior Web Developer', 'Intelitec Solutions', 'Bring to the table win-win survival strategies to ensure proactive domination. At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution. User generated content in real-time will have multiple touchpoints for offshoring.', 'March 2013 - Present', 1),
(2, 'Web Developer', 'Intelitec Solutions', 'Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.', 'December 2011 - March 2013', 1),
(3, 'Junior Web Designer', 'Shout! Media Productions', 'Podcasting operational change management inside of workflows to establish a framework. Taking seamless key performance indicators offline to maximise the long tail. Keeping your eye on the ball while performing a deep dive on the start-up mentality to derive convergence on cross-platform integration.', 'July 2010 - December 2011', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logros`
--

DROP TABLE IF EXISTS `logros`;
CREATE TABLE IF NOT EXISTS `logros` (
  `idlogros` int NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `usuario_id_usuario` int NOT NULL,
  PRIMARY KEY (`idlogros`,`usuario_id_usuario`),
  KEY `fk_logros_usuario1_idx` (`usuario_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `logros`
--

INSERT INTO `logros` (`idlogros`, `nombre`, `usuario_id_usuario`) VALUES
(1, 'Data Visualisation Python - JPMorgan Chase\'s Perspective', 1),
(2, 'Responsive Web Design - FreeCodeCamp', 1),
(3, 'Data Science - IBM', 1),
(4, '100 días de código - JavaScript', 1),
(5, 'Challenge Encriptación - Oracle + Alura', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
CREATE TABLE IF NOT EXISTS `proyectos` (
  `idproyectos` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `tecnologias` varchar(100) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `imagen_url` varchar(100) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `usuario_id_usuario` int NOT NULL,
  PRIMARY KEY (`idproyectos`,`usuario_id_usuario`),
  KEY `fk_proyectos_usuario1_idx` (`usuario_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `src_img` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  `sobremi` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `src_img`, `email`, `sobremi`) VALUES
(1, 'Pablo Andrés Amaya', '../assets/imagenes/baner1.jpg', 'pabloamaya87a@gmail.com', 'Soy una persona apasionada por la tecnología y la electrónica, con una gran curiosidad y capacidad para aprender. A lo largo de mi carrera de 23 años en una empresa del ámbito financiero con 1400 empleados, he tenido la oportunidad de trabajar con muchos equipos de trabajo y siempre he destacado por mi buen trato personal y mi capacidad para colaborar con los demás. Recientemente he decidido cambiar el rumbo de mi carrera para enfocarme en el desarrollo de aplicaciones web y móvil. Me encanta el desafío que supone aprender nuevas habilidades y estoy seguro de que mi curiosidad y buena comprensión serán una gran ventaja en este campo. Una de las cosas que más disfruto es trabajar en equipo y colaborar con otros profesionales para lograr objetivos comunes. Me considero una persona cordial, con un buen sentido del humor y siempre con una actitud positiva. Estoy convencido de que mi experiencia laboral, mi pasión por la tecnología y mi facilidad para trabajar en equipo serán una gran ventaja para cualquier proyecto en el que trabaje. Me encanta enfrentar nuevos desafíos y estoy seguro de que puedo aportar mucho valor a cualquier equipo que me dé la oportunidad de formar parte de él. Gracias por tomarte el tiempo para conocerme. Estoy emocionado por las oportunidades que puedan surgir y estoy seguro de que podemos hacer grandes cosas juntos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `workflow`
--

DROP TABLE IF EXISTS `workflow`;
CREATE TABLE IF NOT EXISTS `workflow` (
  `idworkflow` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `porcentaje` varchar(45) DEFAULT NULL,
  `usuario_id_usuario` int NOT NULL,
  PRIMARY KEY (`idworkflow`,`usuario_id_usuario`),
  KEY `fk_workflow_usuario1_idx` (`usuario_id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `workflow`
--

INSERT INTO `workflow` (`idworkflow`, `nombre`, `porcentaje`, `usuario_id_usuario`) VALUES
(1, 'Mobile-First, Responsive Design', '', 1),
(2, 'Cross Browser Testing & Debugging', '', 1),
(3, 'Cross Functional Teams', '', 1),
(4, 'Agile Development & Scrum', '', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD CONSTRAINT `fk_educacion_usuario1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD CONSTRAINT `fk_experiencia_usuario1` FOREIGN KEY (`usuario_id_usuario1`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `logros`
--
ALTER TABLE `logros`
  ADD CONSTRAINT `fk_logros_usuario1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `fk_proyectos_usuario1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `workflow`
--
ALTER TABLE `workflow`
  ADD CONSTRAINT `fk_workflow_usuario1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
