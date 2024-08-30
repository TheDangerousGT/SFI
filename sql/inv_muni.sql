-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2024 a las 17:03:54
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inv_muni`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrators`
--

CREATE TABLE `administrators` (
  `id` int(11) NOT NULL,
  `cui` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_mayores`
--

CREATE TABLE `cuentas_mayores` (
  `id` int(11) NOT NULL,
  `correlativo` varchar(50) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuentas_mayores`
--

INSERT INTO `cuentas_mayores` (`id`, `correlativo`, `nombre`) VALUES
(1, '1232', 'MAQUINARIA Y EQUIPO'),
(2, '1232.1', 'DE PRODUCCION'),
(3, '1232.2', 'MAQUINARIA Y EQUIPO DE CONSTRUCCION'),
(4, '1232.3', 'DE OFICINAS Y MUEBLES'),
(5, '1232.4', 'MEDICO SANITARIO Y DE LABORATORIO'),
(6, '1232.5', 'EDUCACION CULTURAL Y RECREATIVO'),
(7, '1232.6', 'DE TRANSPORTE'),
(8, '1232.7', 'DE COMUNICACIONES'),
(9, '1232.8', 'HERRAMIENTAS'),
(10, '1233', 'TIERRAS Y TERRENOS'),
(11, '1237', 'OTROS ACTIVOS'),
(12, '1235', 'EQUIPO MILITAR Y DE SEGURIDAD'),
(13, '1231.1', 'PROPIEDAD Y PLANTA EN OPERACION'),
(14, '1238', 'BIENES DE USO COMUN '),
(15, 'F', 'FUNGIBLES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencias`
--

CREATE TABLE `dependencias` (
  `id` int(11) NOT NULL,
  `correlativo` varchar(10) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dependencias`
--

INSERT INTO `dependencias` (`id`, `correlativo`, `nombre`) VALUES
(0, '00', 'CONCEJO MUNICIPAL'),
(1, '01', 'ALCALDIA MUNICIPAL'),
(2, '02', 'SECRETARIA MUNICIPAL'),
(3, '03', 'DIRECCION DE ADMINISTRACION FINANCIERA MUNICIPAL'),
(4, '04', 'DIRECCION MUNICIPAL DE PLANIFICACION'),
(5, '05', 'OFICINA SERVICIOS PUBLICOS'),
(6, '06', 'POLICIA MUNICIPAL'),
(7, '07', 'FONTANERIA MUNICIPAL'),
(8, '08', 'DEPARTAMENTO DE ELECTRICIDAD'),
(9, '09', 'PERSONAL DE CAMPO'),
(10, '10', 'BIBLIOTECA MUNICIPAL'),
(11, '11', 'BIENES INMUEBLES'),
(12, '12', 'BIENES DE USO PUBLICO'),
(13, '13', 'VEHICULOS'),
(14, '14', 'AMBULANCIA MUNICIPAL'),
(15, '15', 'ESTADIO MUNICIPAL'),
(16, '16', 'OFICINA MUNICIPAL DE LA MUJER'),
(17, '17', 'OFICINA MUNICIPAL DE DESARROLLO ECONOMICO LOCAL'),
(18, '18', 'CENTRO COMERCIAL MUNICIPAL'),
(19, '19', 'SOSEA'),
(20, '20', 'UGAM'),
(21, '21', 'RECURSOS HUMANOS'),
(22, '22', 'OMAS'),
(23, '23', 'OMGIRD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso_prod`
--

CREATE TABLE `ingreso_prod` (
  `id` int(255) NOT NULL,
  `dependencia` varchar(255) NOT NULL,
  `unidad_admin` varchar(255) NOT NULL,
  `cuenta_mayor` varchar(255) NOT NULL,
  `subcuenta` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descripcion` text NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `fecha` date NOT NULL,
  `nomenclatura` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ingreso_prod`
--

INSERT INTO `ingreso_prod` (`id`, `dependencia`, `unidad_admin`, `cuenta_mayor`, `subcuenta`, `precio`, `descripcion`, `foto`, `fecha`, `nomenclatura`) VALUES
(1, 'DIRECCION DE ADMINISTRACION FINANCIERA MUNICIPAL', 'DIRECTOR FINANCIERO', 'DE OFICINAS Y MUEBLES', 'Caja fuerte', 5000.00, 'Caja fuerte1', '../uploads/f5v5sqpuqftb1.webp', '2024-05-29', '03-01-1232.3-08-001'),
(2, 'SECRETARIA MUNICIPAL', 'SECRETARIO MUNICIPAL', 'DE OFICINAS Y MUEBLES', 'Caja fuerte', 5000.00, 'caja fuerte 2', '../uploads/goodingoodbye.jpg', '2024-06-07', '02-01-1232.3-08-002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcuentas`
--

CREATE TABLE `subcuentas` (
  `id` int(11) NOT NULL,
  `correlativo` varchar(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `cuenta_mayor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subcuentas`
--

INSERT INTO `subcuentas` (`id`, `correlativo`, `nombre`, `cuenta_mayor_id`) VALUES
(1, '01', 'MAQUINARIA Y EQUIPO', 1),
(2, '01', 'Sin cuenta', 2),
(3, '01', 'Retroexcavadora', 3),
(4, '02', 'Demoledor', 3),
(5, '01', 'Archivos de madera', 4),
(6, '02', 'Archivos de metal', 4),
(7, '03', 'Armario de madera', 4),
(8, '04', 'Armario de metal', 4),
(9, '05', 'bancas', 4),
(10, '06', 'Banco para mesa de dibujo', 4),
(11, '07', 'Equipo Aire Acondicionado', 4),
(12, '08', 'Caja fuerte', 4),
(13, '09', 'Cajas de metal', 4),
(14, '10', 'Camaras Fotograficas', 4),
(15, '11', 'Camaras Fotograficas Digitales', 4),
(16, '12', 'Equipo de computo', 4),
(17, '13', 'Escritorios de metal', 4),
(18, '14', 'Estantes de madera', 4),
(19, '15', 'Estantes de metal', 4),
(20, '16', 'Otros', 4),
(21, '17', 'Ficheros', 4),
(22, '18', 'Fotocopiadoras', 4),
(23, '19', 'Grabadoras', 4),
(24, '20', 'Impresoras', 4),
(25, '21', 'Lap-top', 4),
(26, '22', 'Libreras de madera', 4),
(27, '23', 'Libreras de Metal', 4),
(28, '24', 'Maquina de escribir Mecanica', 4),
(29, '25', 'Maquina de escribir Electrica', 4),
(30, '26', 'mesas', 4),
(31, '27', 'Mesas de dibujo/plegables', 4),
(32, '28', 'mesas de madera', 4),
(33, '29', 'Mesas de metal', 4),
(34, '30', 'Mostradores', 4),
(35, '31', 'Papeleras de Madera', 4),
(36, '32', 'Papeleras de Metal', 4),
(37, '33', 'Proyectores', 4),
(38, '34', 'Regularores de Voltaje', 4),
(39, '35', 'Disco Duro de computadora portable', 4),
(40, '36', 'Sillas de Espera', 4),
(41, '37', 'Sillas Ejecutivas', 4),
(42, '38', 'Sillas plasticas', 4),
(43, '39', 'Sillas Secretariales', 4),
(44, '40', 'Baterias para Computadora (UPS)', 4),
(45, '41', 'Ventiladores de piso', 4),
(46, '42', 'VideoGrabadoras', 4),
(47, '43', 'Ventiladores de Cielo', 4),
(48, '44', 'Mesa de Estacion', 4),
(49, '45', 'Escritorios de madera', 4),
(50, '46', 'Router Wi-Fi', 4),
(51, '47', 'Calculadora Electrica', 4),
(52, '48', 'Refrigeradoras', 4),
(53, '49', 'Amueblado de Sala, sofa', 4),
(54, '50', 'Ventiladores de pedestal', 4),
(55, '51', 'Camaras de Video', 4),
(56, '52', 'Escaneres', 4),
(57, '53', 'Monitores para pc', 4),
(58, '54', 'Teclados para pc', 4),
(59, '55', 'Mouse para pc', 4),
(60, '56', 'Switch', 4),
(61, '57', 'Ventilador de pared', 4),
(62, '58', 'Enfriador Evaporativo', 4),
(63, '59', 'Rotuladora de etiquetas', 4),
(64, '60', 'Tablet, IPAD ', 4),
(65, '61', 'Termometros', 4),
(66, '62', 'Separadores de filas', 4),
(67, '63', 'Lectores de huella', 4),
(68, '01', 'Sin Subcuenta', 5),
(69, '01', 'Camara fotografica', 6),
(70, '02', 'Caja de resonancia (instrumento musical)', 6),
(71, '03', 'Bombo de madera (instrumento musical)', 6),
(72, '04', 'Juego de Marimba', 6),
(73, '05', 'Televisores', 6),
(74, '06', 'Lira de 24 notas(instrumentos musical)', 6),
(75, '07', 'Redoblante Rayos 14(instrumentos musical)', 6),
(76, '08', 'Amplificador de Audio', 6),
(77, '01', 'Motocicletas', 7),
(78, '02', 'Ambulancia Municipal', 7),
(79, '01', 'Telefonos Fijos', 8),
(80, '02', 'Telefonos Moviles', 8),
(81, '03', 'Televisores', 8),
(82, '04', 'Radio Receptor', 8),
(83, '05', 'Amplificador de sonido de audio', 8),
(84, '06', 'Telefono Fax', 8),
(85, '07', 'Antena Satelital (internet)', 8),
(86, '01', 'Azadones', 9),
(87, '02', 'machetes', 9),
(88, '03', 'Palas', 9),
(89, '04', 'Piochas', 9),
(90, '05', 'Martillos', 9),
(91, '06', 'Roto Martillos', 9),
(92, '07', 'Barrenos', 9),
(93, '08', 'Pulidoras', 9),
(94, '09', 'Sierras Electricas', 9),
(95, '10', 'Sierras Manuales', 9),
(96, '11', 'Cinturon con Bandola', 9),
(97, '12', 'Cinta metrica', 9),
(98, '13', 'Llaves Stilson', 9),
(99, '01', 'Tierras y Terrenos', 10),
(100, '01', 'Cabezal (Audio)', 11),
(101, '02', 'Columnas (bocinas)', 11),
(102, '03', 'Microfonos', 11),
(103, '04', 'Microfonos Inhalambricos', 11),
(104, '05', 'Gabinetes para cocina', 11),
(105, '06', 'Camas (somier, etc.)', 11),
(106, '07', 'Modulos (esquineros, etc.)', 11),
(107, '08', 'Planta Electrica', 11),
(108, '09', 'Transformadores de energia electrica', 11),
(109, '10', 'Tractor C/Grama', 11),
(110, '11', 'Desbrozadoras (Chapeadoras)', 11),
(111, '12', 'Rotuladoras', 11),
(112, '13', 'Bombas Centrifugas', 11),
(113, '14', 'Dosificadores de clro', 11),
(114, '15', 'Adornos, dise?os y/o productos navide?os', 11),
(115, '16', 'Valvulas de compuertas', 11),
(116, '17', 'Motor Estacionario (P/Bomba de Agua)', 11),
(117, '18', 'Dispensador de Agua', 11),
(118, '19', 'Motosierra', 11),
(119, '20', 'Copiadoras', 11),
(120, '21', 'Control de Asistencia de Personal (CAP)', 11),
(121, '22', 'Otros activos', 11),
(122, '23', 'Rack para equipo de Audio', 11),
(123, '24', 'Bocinas Ambientales', 11),
(124, '25', 'Microfono de 2 pastillas condensadas', 11),
(125, '26', 'Monitor Activo de sonido plano', 11),
(126, '27', 'Amplificador de resonanze', 11),
(127, '28', 'Consola Digital', 11),
(128, '29', 'Bomba de Agua', 11),
(129, '30', 'Videocamaras', 11),
(130, '31', 'Equipo de Aire Acondicionado', 11),
(131, '32', 'Motor, Motor sumergible, Bomba de agua', 11),
(132, '33', 'Vibro Compactadora', 11),
(133, '34', 'Mezcladora de cemento', 11),
(134, '35', 'Bomba para Fumigar', 11),
(135, '36', 'Refrigeradora', 11),
(136, '01', 'Revolver', 12),
(137, '02', 'Escopetas', 12),
(138, '01', 'Edificios e Instalaciones', 13),
(139, '01', 'Bienes de uso Comun', 14),
(140, '01', 'Calculadoras', 15),
(141, '02', 'Credensas', 15),
(142, '03', 'Dispensadores', 15),
(143, '04', 'Engrapadoras', 15),
(144, '05', 'Escobas', 15),
(145, '06', 'Escudo', 15),
(146, '07', 'Estuches', 15),
(147, '08', 'Extensiones electricas', 15),
(148, '09', 'Generador de  Corriente', 15),
(149, '10', 'Lamparas', 15),
(150, '11', 'Linternas', 15),
(151, '12', 'Mapas', 15),
(152, '13', 'Oasis', 15),
(153, '14', 'Perforadores', 15),
(154, '15', 'Pinturas, Cuadros', 15),
(155, '16', 'Programa de reparacion', 15),
(156, '17', 'Recipientes para Basura', 15),
(157, '18', 'Regletas de conexion electrica', 15),
(158, '19', 'Sacagrapas', 15),
(159, '20', 'Sellos', 15),
(160, '21', 'Reloj de Pared', 15),
(161, '22', 'Tijera', 15),
(162, '23', 'Trapeadores', 15),
(163, '24', 'USB', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

CREATE TABLE `trabajadores` (
  `id` int(11) NOT NULL,
  `dpi` varchar(13) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dependencia_id` int(11) DEFAULT NULL,
  `unidad_administrativa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades_administrativas`
--

CREATE TABLE `unidades_administrativas` (
  `id` int(11) NOT NULL,
  `correlativo` varchar(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `dependencia_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `unidades_administrativas`
--

INSERT INTO `unidades_administrativas` (`id`, `correlativo`, `nombre`, `dependencia_id`) VALUES
(1, '00', 'CONCEJO MUNICIPAL', 0),
(2, '01', 'ALCALDE MUNICIPAL', 1),
(3, '01', 'SECRETARIO MUNICIPAL', 2),
(4, '02', 'OFICIAL I DE SECRETARIA MUNICIPAL', 2),
(5, '03', 'REGISTRADOR MUNICIPAL DE PERSONAS JURIDICAS', 2),
(6, '04', 'AUXILIAR  DE_SECRETARIA MUNICIPAL', 2),
(7, '05', 'AUXILIAR DE SECRETARIA_MUNICIPAL', 2),
(8, '06', 'AUXILIAR DE_SECRETARIA MUNICIPAL', 2),
(9, '07', 'INFORMACION PUBLICA', 2),
(10, '08', 'AUXILIAR DE SECRETARIA_.MUNICIPAL', 2),
(11, '01', 'DIRECTOR FINANCIERO', 3),
(12, '02', 'ENCARGADO DE CONTABILIDAD', 3),
(13, '03', 'ENCARGADO DE PRESUPUESTO', 3),
(14, '04', 'ENCARGADO DE PLANILLAS', 3),
(15, '05', 'CAJERA GENERAL/OFICIAL I DE TESORERIA', 3),
(16, '06', 'AUXILIAR I DE LA DAFIM', 3),
(17, '07', 'AUXILIAR II DE LA DAFIM', 3),
(18, '08', 'RECAUDADOR MUNICIPAL', 3),
(19, '09', 'ENCARGADO DE IUSI', 3),
(20, '10', 'ENCARGADA DE COMPRAS', 3),
(21, '11', 'ENCARGADO DE GUARDA ALMACEN', 3),
(22, '12', 'AUXILIAR DE GUARDA ALMACEN', 3),
(23, '13', 'INSPECTOR DE ARBITRIOS MUNICIPALES', 3),
(24, '14', 'AUXILIAR DE COMPRAS', 3),
(25, '01', 'DIRECCION_MUNICIPAL_DE_PLANIFICACION', 4),
(26, '02', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 4),
(27, '03', 'AUXILIAR DMP I', 4),
(28, '04', 'AUXILIAR DMP II', 4),
(29, '05', 'AUXILIAR DMP III', 4),
(30, '06', 'SECRETARIA DE DMP', 4),
(31, '01', 'JEFE DE AREA DE SERVICIOS PUBLICOS', 5),
(32, '02', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 5),
(33, '03', 'ENCARGADO DE BOMBAS DE AGUA MUNICIPAL', 5),
(34, '04', 'ENCARGADO DE BOMBA DE AGUA SANTA ELENA', 5),
(35, '05', 'ENCARGADO DE BOMBA DE AGUA GUATALON', 5),
(36, '06', 'ENCARGADO DE BOMBA DE AGUA SANTA ELENA II', 5),
(37, '07', 'ENCARGADO DE BOMBA DE AGUA EL SOCORRO', 5),
(38, '08', 'ENCARGADO DE BOMBA DE AGUA EL RETIRO', 5),
(39, '09', 'OPERADOR', 5),
(40, '01', 'COMISARIO MUNICIPAL', 6),
(41, '02', 'AUXILIAR DE COMISARIA MUNICIPAL', 6),
(42, '03', 'AUXILIAR II DE LA COMISARIA MUNICIPAL', 6),
(43, '04', 'AUXILIAR III DE COMISARIA MUNICIPAL', 6),
(44, '05', 'POLICIA MUNICIPAL', 6),
(45, '01', 'FONTANERO MUNICIPAL', 7),
(46, '01', 'ELECTRICISTA MUNICIPAL I', 8),
(47, '02', 'ELECTRICISTA MUNICIPAL II', 8),
(48, '03', 'ELECTRICISTA MUNICIPAL III', 8),
(49, '04', 'AUXILIAR DE ELECTRICISTA MUNICIPAL', 8),
(50, '01', 'ENCARGADO DE PERSONAL DE CAMPO', 9),
(51, '02', 'ENCARGADO DE LIMPIEZA', 9),
(52, '03', 'ENCARGADA DE LIMPIEZA 2', 9),
(53, '04', 'CONSERJE MUNICIPAL', 9),
(54, '05', 'ALBA?IL MUNICIPAL I', 9),
(55, '06', 'ALBA?IL MUNICIPAL II', 9),
(56, '07', 'ALBA?IL MUNICIPAL III', 9),
(57, '08', 'ALBA?IL MUNICIPAL IV', 9),
(58, '09', 'ALBA?IL MUNICIPAL V', 9),
(59, '01', 'BIBLIOTECARIA MUNICIPAL', 10),
(60, '02', 'AUXILIAR DE BIBLIOTECA', 10),
(61, '03', 'AUXILIAR DE LA BIBLIOTECA MUNICIPAL 1', 10),
(62, '04', 'AUXILIAR DE LA BIBLIOTECA MUNICIPAL 2', 10),
(63, '05', 'AUXILIAR DE LA BIBLIOTECA MUNICIPAL 3', 10),
(64, '01', 'BIENES INMUEBLES', 11),
(65, '01', 'BIENES DE USO PUBLICO', 12),
(66, '01', 'VEHICULOS MUNICIPALES', 13),
(67, '01', 'PILOTO AMBULANCIA MUNICIPAL I', 14),
(68, '02', 'PILOTO AMBULANCIA MUNICIPAL II', 14),
(69, '03', 'ENFERMERA MUNICIPAL', 14),
(70, '01', 'ENCARGADO DEL MANTENIMIENTO DEL ESTADIO', 15),
(71, '02', 'AUXILIAR DE MANTENIMIENTO DEL ESTADIO MUNICIPAL', 15),
(72, '01', 'DIRECTORA OMM', 16),
(73, '02', 'SECRETARIA DE LA DIRECCION MUNICIPAL DE LA MUJER', 16),
(74, '03', 'AUXILIAR DE LA DIRECCION MUNICIPAL DE LA MUJER', 16),
(75, '01', 'COORDINADOR DE LA OMDEL', 17),
(76, '01', 'ADMINISTRADOR DEL MERCADO MUNICIPAL', 18),
(77, '02', 'AUXILIAR DE LA ADMINISTRACION DEL MERCADO MUNICIPAL', 18),
(78, '03', 'CONSERJE DEL MERCADO MUNICIPAL 1', 18),
(79, '04', 'CONSERJE DEL MERCADO MUNICIPAL 2', 18),
(80, '05', 'CONSERJE DEL MERCADO MUNICIPAL 3', 18),
(81, '06', 'CONSERJE DEL MERCADO MUNICIPAL 4', 18),
(82, '07', 'CONSERJE DEL MERCADO MUNICIPAL 5', 18),
(83, '01', 'SECRETARIA DE LA SOSEA', 19),
(84, '02', 'AUXILIAR DE LA SOSEA', 19),
(85, '01', 'DIRECTOR UGAM', 20),
(86, '02', 'AUXILIAR DE LA UGAM', 20),
(87, '01', 'DIRECTOR DE RECURSOS HUMANOS', 21),
(88, '02', 'AUXILIAR DE LA DIRECCION DE RECURSOS HUMANOS', 21),
(89, '03', 'SECRETARIA DE RECURSOS HUMANOS', 21),
(90, '01', 'ENCARGADO DE OMAS', 22),
(91, '01', 'TECNICO DE OMGIRD', 23);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuentas_mayores`
--
ALTER TABLE `cuentas_mayores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dependencias`
--
ALTER TABLE `dependencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ingreso_prod`
--
ALTER TABLE `ingreso_prod`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcuentas`
--
ALTER TABLE `subcuentas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuenta_mayor_id` (`cuenta_mayor_id`);

--
-- Indices de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dependencia_id` (`dependencia_id`);

--
-- Indices de la tabla `unidades_administrativas`
--
ALTER TABLE `unidades_administrativas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dependencia_id` (`dependencia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingreso_prod`
--
ALTER TABLE `ingreso_prod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `subcuentas`
--
ALTER TABLE `subcuentas`
  ADD CONSTRAINT `subcuentas_ibfk_1` FOREIGN KEY (`cuenta_mayor_id`) REFERENCES `cuentas_mayores` (`id`);

--
-- Filtros para la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD CONSTRAINT `trabajadores_ibfk_1` FOREIGN KEY (`dependencia_id`) REFERENCES `dependencias` (`id`);

--
-- Filtros para la tabla `unidades_administrativas`
--
ALTER TABLE `unidades_administrativas`
  ADD CONSTRAINT `unidades_administrativas_ibfk_1` FOREIGN KEY (`dependencia_id`) REFERENCES `dependencias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
