-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2024 a las 18:12:00
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
-- Estructura de tabla para la tabla `casas`
--

CREATE TABLE `casas` (
  `id` int(11) NOT NULL,
  `evento_id` int(11) NOT NULL,
  `numero_casa` int(11) NOT NULL,
  `no_integrante` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `edad` int(11) NOT NULL,
  `discapacidad` varchar(10) NOT NULL,
  `que_discapacidad` varchar(255) DEFAULT NULL,
  `damnificado` varchar(10) NOT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `cui` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `casas`
--

INSERT INTO `casas` (`id`, `evento_id`, `numero_casa`, `no_integrante`, `nombre`, `edad`, `discapacidad`, `que_discapacidad`, `damnificado`, `observaciones`, `image`, `cui`) VALUES
(1, 66, 1, 2, 'María Piedrasanta', 40, 'No', '', 'No', 'N/A', 'a:3:{i:0;s:68:\"../uploads/Imagen de WhatsApp 2024-05-08 a las 20.12.06_2f5c3361.jpg\";i:1;s:68:\"../uploads/Imagen de WhatsApp 2024-05-08 a las 20.12.06_42ef9a7f.jpg\";i:2;s:68:\"../uploads/Imagen de WhatsApp 2024-05-08 a las 20.15.13_479bd1ca.jpg\";}', 2147483647),
(2, 66, 1, 1, 'Pedro Pascal', 45, 'Sí', 'No Camina', 'Sí', 'N/A', '', 0),
(3, 67, 1, 2, 'Julián Álvarez', 60, 'No', '', 'No', 'N/A', '', 0),
(4, 67, 1, 1, 'Karen Torres', 54, 'Sí', 'Diabetes', 'Sí', 'N/A', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunidades`
--

CREATE TABLE `comunidades` (
  `id` int(11) NOT NULL,
  `comunidad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comunidades`
--

INSERT INTO `comunidades` (`id`, `comunidad`) VALUES
(1, 'CABECERA MUNICIPAL'),
(2, 'ALDEA LA CAMPESINA'),
(3, 'ALDEA SAN ANTONIO LAS FLORES'),
(4, 'PARCELAMIENTO SANTA ELENA II'),
(5, 'CASERIO SANTA ELENA III'),
(6, 'COMUNIDAD EL RECUERDO'),
(7, 'ALDEA SANTA ELENA'),
(8, 'LOTIFICACION LAS VICTORIAS'),
(9, 'LABOR LA CUCHILLA'),
(10, 'COMUNIDAD SAN BASILIO'),
(11, 'COLONIA CANDELARIA'),
(12, 'COMUNIDAD EL SOCORRO'),
(13, 'ALDEA LA SOLOLATECA'),
(14, 'LINEA FERREA'),
(15, 'ALDEA LA FORTUNA '),
(16, 'ALDEA MORAZAN'),
(17, 'LOTIFICACION RIO SECO'),
(18, 'COLONIA EL RETIRO'),
(19, 'LOTIFICACION SANTO TOMAS II'),
(20, 'ALDEA LA ESPERANZA'),
(21, 'CASERIO LAS FLORES'),
(22, 'LOTIFICACION LOS NARANJALES'),
(23, 'COMUNIDAD OCHO GUATALON'),
(24, 'LABOR SAN JOSE'),
(25, 'LOTIFICACION SANTO TOMAS I'),
(26, 'ALDEA GUATALON'),
(27, 'LA CEIBITA GUATALON'),
(28, 'AREA LOS PALMARES'),
(29, 'LOTIFICACION MARGARITAS I'),
(30, 'LOTIFICACION MARGARITAS II'),
(31, 'CASERIO GUATALONCITO'),
(32, 'COLONIA SAN JOSE'),
(33, 'PARCELAMIENTO LA CEIBITA');

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
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `comunidad` varchar(255) NOT NULL,
  `coordenadas` varchar(255) NOT NULL,
  `fecha_evento` date NOT NULL,
  `hora_evento` time NOT NULL,
  `tipo_evento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `comunidad`, `coordenadas`, `fecha_evento`, `hora_evento`, `tipo_evento`) VALUES
(66, 'LABOR LA CUCHILLA', '14°23\'46\"N 91°19\'46\"W', '2024-07-24', '15:29:00', 'Inundación Súbita'),
(67, 'LOTIFICACION LAS VICTORIAS', '14°23\'46\"N 91°19\'46\"W', '2024-07-24', '15:33:00', 'Terremoto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso_prod`
--

CREATE TABLE `ingreso_prod` (
  `id` int(11) NOT NULL,
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
(1, '3', 'ENCARGADO DE CONTABILIDAD', 'De Oficina y Muebles', 'Lap-top', 8299.00, 'Computadora portatil marca HP Pavilion  14 Notebook PC. Serie 5CD42700N3, pocesador Intel Core i7 4510U CPU 2.00GHz, Disco duro de 700Gb , memoria Ram 8GB Color gris con negro de 14\", conta, Exp. 4731', '../uploads/noimage.jpg', '2015-06-16', '03-02-1232.3-21-009'),
(2, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 20000.00, 'Compra de un lote ubicado en1ra calle 076 zona 1 del municipio de Rio Bravo suchitepequez, finca No. 45788 folio No. 186 y libro 181 escritura No. 4 cheque No. 7188  ', '../uploads/noimage.jpg', '1900-01-01', '11-00-1233.0-01-016'),
(3, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 18500.00, 'Compra de un terreno escritura numero doce en aldea san antonio  las flores  para perforacion de pozo mecanico con tanque elevado finca 8086 folio 86 libro 177E de Suchitepequez, fica rustica consistente en Inmueble localizado en lote 30, ubicado en el Municipio de Rio Bravo.', '../uploads/noimage.jpg', '1900-01-01', '11-00-1233.0-01-017'),
(4, '6', 'COMISARIO MUNICIPAL', 'Otros Activos', 'Bomba de Agua', 2700.00, 'Compra de motor de agua marca TRUPER color anaranjado con gris expediente 5031', '../uploads/noimage.jpg', '1900-01-01', '06-01-1237.0-29-000'),
(5, '10', 'BIBLIOTECARIA MUNICIPAL', 'Otros Activos', 'Equipo de Aire Acondicionado', 4800.00, 'Compra de aire acondicionado marca ecox, de 18BTU boltaje 220', '../uploads/noimage.jpg', '1900-01-01', '10-01-1237.0-31-006'),
(6, '11', 'Bienes Inmuebles', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 61500.00, 'Edificio que ocupa las oficinas con el Palacio Municipal, con cernidos y repellos, estructuras de madera, cubierto de l?mina de zinc, colinda al Norte, con Raymundo Reyes y Mercado Municipal con calle de por medio, al Sur; con la iglesia cat?lica, al Oriente; anti guas c?rceles p?blicas, al Poniente; con el parque Municipal y su respectivo terreno', '../uploads/noimage.jpg', '2009-12-10', '11-00-1231.1-01-001'),
(7, '11', 'Bienes Inmuebles', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 190230.00, 'Introduccion energia electrica fase I colonia Santo Tomas II cabecera Munipal Rio Bravo Such.', '../uploads/noimage.jpg', '2009-12-10', '11-00-1231.1-01-011'),
(8, '11', 'Bienes Inmuebles', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 6000.00, 'Edificio que ocupa el puesto de salud aldea Moraza Rio Bravo Such.', '../uploads/noimage.jpg', '2009-12-10', '11-00-1231.1-01-006'),
(9, '11', 'Bienes Inmuebles', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 455315.00, 'Ampliacion Istituto Basico por cooperativa Cabecera Municipal', '../uploads/noimage.jpg', '2009-12-10', '11-00-1231.1-01-012'),
(10, '11', 'Bienes Inmuebles', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 2800.00, 'Escuela de parvulos que dirigio la EIM que la municipalidad aporto en material y mano de obra', '../uploads/noimage.jpg', '2009-12-10', '11-00-1231.1-01-004'),
(11, '12', 'Bienes de Uso P?blico', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 15687.65, 'Materiales varios para la rehabilitacion sistema de agua potable Aldea Guatalon', '../uploads/noimage.jpg', '2009-12-10', '12-00-1231.1-01-010'),
(12, '12', 'Bienes de Uso P?blico', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 10098.00, 'Torre de metal de 6 mts. De alto con tubo de 3\" con escalera, incluye deposito de Rotoplast ubicado atr?s del edificio municipal', '../uploads/noimage.jpg', '2009-12-10', '12-00-1231.1-01-009'),
(13, '11', 'Bienes Inmuebles', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 1900.00, 'Ratro Ganado mayor que mide 20x7 mts cuadrados con pared de block y cemento con techo de lamina duralita, colinda al norte con Rio Bravo San Francisco, al oriente, con Natalia Urizar, al Sur con Narciso gonzales, y al poniente con Euliala vda de campos', '../uploads/noimage.jpg', '2009-12-10', '11-00-1231.1-01-008'),
(14, '11', 'Bienes Inmuebles', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 1100.00, 'Cocina construida en la Escuela Santa Elena Rio Bravo Such', '../uploads/noimage.jpg', '2009-12-10', '11-00-1231.1-01-007'),
(15, '11', 'Bienes Inmuebles', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 1800.00, 'Edificio que ocupa el salon municipal con dos sanitarios que mide 15x25 mts. Con techo de lamina de zinc con laterales de block y cemento forrado con maya metalica, costruido en el campo de la feria', '../uploads/noimage.jpg', '2009-12-10', '11-00-1231.1-01-003'),
(16, '11', 'Bienes Inmuebles', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 449900.00, 'Ampliacion Biblioteca Mpal. ', '../uploads/noimage.jpg', '2009-12-10', '11-00-1231.1-01-013'),
(17, '11', 'Bienes Inmuebles', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 177763.40, 'Ampliacion escuela parcelamiento el Socorro', '../uploads/noimage.jpg', '2009-12-10', '11-00-1231.1-01-014'),
(18, '3', 'DIRECTOR FINANCIERO', 'De Oficina y Muebles', 'Libreras de madera', 325.00, 'Mueble de madera, con 4 puertas con vidrio de 5 entrepa?os corridos director AFIM', '../uploads/noimage.jpg', '2009-12-10', '03-01-1232.3-22-001'),
(19, '3', 'DIRECTOR FINANCIERO', 'De Oficina y Muebles', 'Impresoras', 4674.00, 'Impresora matricial marca Epson fx2190 modelo p362u serie FCX010010 color gris director afim', '../uploads/noimage.jpg', '2009-12-10', '03-01-1232.3-20-007'),
(20, '3', 'ENCARGADO DE CONTABILIDAD', 'De Oficina y Muebles', 'Escritorios de metal', 976.50, 'Escritorio secretarial de metal color beige con formica imitaci?n madera de 3 gavetas, enc. Contabilidad', '../uploads/noimage.jpg', '2009-12-10', '03-02-1232.3-13-001'),
(21, '3', 'ENCARGADO DE PLANILLAS', 'De Oficina y Muebles', 'Impresoras', 3275.00, 'Impresora Matricial marca Epson, mod. FX890 serie IM8Y000 Encargado de Banco', '../uploads/noimage.jpg', '2009-12-10', '03-04-1232.3-20-003'),
(22, '3', 'DIRECTOR FINANCIERO', 'De Oficina y Muebles', 'Libreras de Metal', 1560.00, 'Librera de metal con vidrio de 3 entrepa?os marca TAS director Afim', '../uploads/noimage.jpg', '2009-12-10', '03-01-1232.3-23-001'),
(23, '3', 'CAJERA GENERAL/OFICIAL I DE TESORERIA', 'De Oficina y Muebles', 'Libreras de Metal', 1560.00, 'Librera de metal con vidrio de 3 entrepa?os marca TAS caja general', '../uploads/noimage.jpg', '2009-12-10', '03-05-1232.3-23-002'),
(24, '3', 'CAJERA GENERAL/OFICIAL I DE TESORERIA', 'De Oficina y Muebles', 'Escritorios de metal', 975.00, 'Escritorio de metal color Beige con formica, imitaci?n madera con dos gavetas cajera general', '../uploads/noimage.jpg', '2009-12-10', '03-05-1232.3-13-003'),
(25, '3', 'DIRECTOR FINANCIERO', 'De Oficina y Muebles', 'Escritorios de madera', 2700.00, 'Escritorio de madera de matilisguate con seis gavetas (una oculta para computadora) Director AFIM', '../uploads/noimage.jpg', '2009-12-10', '03-01-1232.3-45-001'),
(26, '3', 'ENCARGADO DE IUSI', 'De Oficina y Muebles', 'Archivos de metal', 1190.00, 'Archivo de metal color beige con cuatro gavetas, cajera general', '../uploads/noimage.jpg', '2009-12-10', '03-09-1232.3-02-001'),
(27, '3', 'AUXILIAR I DE LA DAFIM', 'De Oficina y Muebles', 'Archivos de metal', 1190.00, 'Archivo de metal, color beige con cuatro gavetas para receptor pagador', '../uploads/noimage.jpg', '2009-12-10', '03-06-1232.3-02-002'),
(28, '3', 'ENCARGADO DE GUARDA ALMACEN', 'De Oficina y Muebles', 'Equipo de c?mputo', 0.00, 'CPU Marca DELL modelo optiplex Gx 520, serie DX8THB1 disco 80 G memoria Ram 2GB, procesador Pention 4, 3.00 GHZ, monitor LCD marca Samsung color negro modelo 1723N732N plusw, serie PE17HUVZP42422692, teclado DELL, Mouse LOGITECH, caja receptora', '../uploads/noimage.jpg', '2009-12-10', '03-11-1232.3-12-006'),
(29, '3', 'ENCARGADO DE GUARDA ALMACEN', 'De Oficina y Muebles', 'Impresoras', 330.00, 'Impresora marca HP modelo D1560 serie BN8BJ423YZ, ENC. Almac?n', '../uploads/noimage.jpg', '2009-12-10', '03-11-1232.3-20-013'),
(30, '3', 'CAJERA GENERAL/OFICIAL I DE TESORERIA', 'De Oficina y Muebles', 'Equipo de c?mputo', 5699.00, 'CPU marca Compaq color negro serie MXXB836NB Mod. PC5 G3515 La monitor LCD marca Compaq color gris con negro Serie CNC836NWP6MOD. W17Q teclado color negro, mause color negro marca compaq serie FF083 30000NI Mod. 5188820, bocinas incorporadas, dos bocinas caja general', '../uploads/noimage.jpg', '2009-12-10', '03-05-1232.3-12-003'),
(31, '4', 'SECRETARIA DE DMP', 'De Oficina y Muebles', 'Sillas Secretariales', 870.00, 'Silla secretarial color negro con rodos y apoyabrazos, registrado mpal de personas jur?dicas', '../uploads/noimage.jpg', '2009-12-10', '04-05-1232.3-39-005'),
(32, '2', 'SECRETARIO MUNICIPAL', 'De Oficina y Muebles', 'Ventiladores de piso', 300.00, 'Ventilador de piso marca Kool operator de 20? fac. serie u011620, comercial Claudia oficial 1 de secretaria', '../uploads/noimage.jpg', '2009-12-10', '02-01-1232.3-41-002'),
(33, '2', 'SECRETARIO MUNICIPAL', 'De Oficina y Muebles', 'Libreras de Metal', 1560.00, 'Librer?a de metal econ?mica marca TAS color negro con vidrios corredisos y tres entre pa?os Secretaria Mpal.', '../uploads/noimage.jpg', '2009-12-10', '02-01-1232.3-23-003'),
(34, '2', 'SECRETARIO MUNICIPAL', 'De Oficina y Muebles', 'Mesa de Estaci?n', 450.00, 'Mesa de estaci?n para computadora color negro con gris secretario municipal', '../uploads/noimage.jpg', '2009-12-10', '02-01-1232.3-44-003'),
(35, '2', 'REGISTRADOR MUNICIPAL DE PERSONAS JURIDICAS', 'De Oficina y Muebles', 'Escritorios de metal', 200.00, 'Escritorio de metal color beige con formica imitaci?n madera de tres gavetas Registro Mpal. De personas jur?dicas', '../uploads/noimage.jpg', '2009-12-10', '02-03-1232.3-13-007'),
(36, '3', 'CAJERA GENERAL/OFICIAL I DE TESORERIA', 'De Oficina y Muebles', 'M?quina de escribir Mec?nica', 3024.00, 'M?quina de escribir mec?nica marca Olimpia color blanco con gris serie 7590595 Caja general', '../uploads/noimage.jpg', '2009-12-10', '03-05-1232.3-24-001'),
(37, '2', 'SECRETARIO MUNICIPAL', 'De Oficina y Muebles', 'Archivos de metal', 1190.00, 'Archivo de metal color beige de cuatro gavetas secretario municipal', '../uploads/noimage.jpg', '2009-12-10', '02-01-1232.3-02-007'),
(38, '3', 'ENCARGADO DE PLANILLAS', 'De Oficina y Muebles', 'Escritorios de metal', 1085.00, 'Escritorio color negro, con imitaci?n de madera de tres gavetas bancos', '../uploads/noimage.jpg', '2009-12-10', '03-04-1232.3-13-005'),
(39, '2', 'REGISTRADOR MUNICIPAL DE PERSONAS JURIDICAS', 'De Oficina y Muebles', 'Archivos de metal', 1198.50, 'Archivo de metal con cuatro gavetas registro Mpal de personas jur?dicas', '../uploads/noimage.jpg', '2009-12-10', '02-03-1232.3-02-008'),
(40, '2', 'OFICIAL I DE SECRETARIA MUNICIPAL', 'De Oficina y Muebles', 'Escritorios de metal', 1750.00, 'Escritorio de metal secretarial est?ndar color negro con tres gavetas oficial uno secretaria', '../uploads/noimage.jpg', '2009-12-10', '02-02-1232.3-13-008'),
(41, '2', 'SECRETARIO MUNICIPAL', 'De Oficina y Muebles', 'Escritorios de metal', 1100.00, 'Escritorio de metal color negro con tres gavetas, secretario Mpal.', '../uploads/noimage.jpg', '2009-12-10', '02-01-1232.3-13-009'),
(42, '3', 'DIRECTOR FINANCIERO', 'De Oficina y Muebles', 'Archivos de metal', 960.00, 'Archivo de metal color negro de cuatro gavetas, director AFIM', '../uploads/noimage.jpg', '2009-12-10', '03-01-1232.3-02-003'),
(43, '3', 'DIRECTOR FINANCIERO', 'De Oficina y Muebles', 'Archivos de metal', 1332.00, 'Archivo de metal color beige de 4 gavetas director Dafim', '../uploads/noimage.jpg', '2009-12-10', '03-01-1232.3-02-004'),
(44, '3', 'CAJERA GENERAL/OFICIAL I DE TESORERIA', 'De Oficina y Muebles', 'Sillas de Espera', 125.00, 'Silla de madera de palo blanco caja general', '../uploads/noimage.jpg', '2009-12-10', '03-05-1232.3-36-007'),
(45, '2', 'SECRETARIO MUNICIPAL', 'De Oficina y Muebles', 'Archivos de metal', 1190.00, 'Archivo de metal color beige de 4 gavetas secretario municipal', '../uploads/noimage.jpg', '2009-12-10', '02-01-1232.3-02-006'),
(46, '3', 'ENCARGADO DE IUSI', 'De Oficina y Muebles', 'Escritorios de madera', 528.00, 'Escritorio de madera con rodos de 2 gavetas y para teclado, caja general', '../uploads/noimage.jpg', '2009-12-10', '03-09-1232.3-45-005'),
(47, '6', 'COMISARIO MUNICIPAL', 'De Oficina y Muebles', 'Escritorios de madera', 80.00, 'Escritorio de madera con 7 gavetas color caf?, comisaria municipal', '../uploads/noimage.jpg', '2009-12-10', '06-01-1232.3-45-004'),
(48, '6', 'COMISARIO MUNICIPAL', 'De Oficina y Muebles', 'Sillas de Espera', 25.00, 'Silla de metal con madera comisaria municipal', '../uploads/noimage.jpg', '2009-12-10', '06-01-1232.3-36-005'),
(49, '10', 'BIBLIOTECARIA MUNICIPAL', 'De Oficina y Muebles', 'mesas de madera', 155.00, 'Mesa de cedro de 3x7, coordinador DMP', '../uploads/noimage.jpg', '2009-12-10', '10-01-1232.3-28-002'),
(50, '2', 'REGISTRADOR MUNICIPAL DE PERSONAS JURIDICAS', 'De Oficina y Muebles', 'M?quina de escribir Mec?nica', 3024.00, 'M?quina de escribir mec?nica color gris color beige serie 7602232, secretaria municipal', '../uploads/noimage.jpg', '2009-12-10', '02-03-1232.3-24-002'),
(51, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Armario de metal', 1860.00, 'Armario de metal color negro  continental de 2 puertas  y 5 compartimientos  coordinador  DMP', '../uploads/noimage.jpg', '2009-12-10', '04-01-1232.3-04-002'),
(52, '3', 'ENCARGADO DE PRESUPUESTO', 'De Oficina y Muebles', 'Escritorios de metal', 975.00, 'Escritorio de metal  color beige con formica imitaci?n de madera  con tres gavetas  enc.  Pres.', '../uploads/noimage.jpg', '2009-12-10', '03-03-1232.3-13-002'),
(53, '3', 'CAJERA GENERAL/OFICIAL I DE TESORERIA', 'De Oficina y Muebles', 'Ventiladores de piso', 350.00, 'Ventilador de 7 aspas  color beige marca  LAKEWOOD  modelo  DES10080 Caja general', '../uploads/noimage.jpg', '2009-12-10', '03-05-1232.3-41-010'),
(54, '3', 'ENCARGADO DE IUSI', 'De Oficina y Muebles', 'Archivos de metal', 1332.00, 'Archivo de metal color beige  de cuatro gavetas  IUSI', '../uploads/noimage.jpg', '2009-12-10', '03-09-1232.3-02-009'),
(55, '3', 'AUXILIAR II DE LA DAFIM', 'De Oficina y Muebles', 'Escritorios de madera', 1848.00, 'Escritorio de madera de 2 gaveta', '../uploads/noimage.jpg', '2009-12-10', '03-07-1232.3-45-003'),
(56, '6', 'COMISARIO MUNICIPAL', 'De Oficina y Muebles', 'Ventiladores de piso', 350.00, 'Ventilador marca LAKEWOOD de 5 aspas, modelo 007G D120V 0.68 AMP, color gris NC. Compras', '../uploads/noimage.jpg', '2009-12-10', '06-01-1232.3-41-004'),
(57, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Armario de metal', 1860.00, 'Armario de metal, color negro marca continental de dos puertas de 5 compartimientos, coordinador DMP', '../uploads/noimage.jpg', '2009-12-10', '04-01-1232.3-04-001'),
(58, '3', 'CAJERA GENERAL/OFICIAL I DE TESORERIA', 'De Oficina y Muebles', 'Sillas de Espera', 105.00, 'Silla de madera de palo blanco caja general', '../uploads/noimage.jpg', '2009-12-10', '03-05-1232.3-36-006'),
(59, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Archivos de metal', 1190.00, 'Archivo de metal color beige de 4 gavetas coordinador DMP', '../uploads/noimage.jpg', '2009-12-10', '04-01-1232.3-02-011'),
(60, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Archivos de metal', 1198.50, 'Archivo de metal color beige con 4 gavetas coordinador DMP', '../uploads/noimage.jpg', '2009-12-10', '04-01-1232.3-02-012'),
(61, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Equipo de c?mputo', 5699.00, 'CPU marca COMPAQ negro serie mxx8420hw8 modelo sg3515 la, monitor LCD Marca COMPAQ  color gris con negro MOD W17Q  teclado color negro marca COMPAQ mouse color negro marca COMPAQ bocinas incorporadas en el monitor t?cnico 1 DMP', '../uploads/noimage.jpg', '2009-12-10', '04-01-1232.3-12-008'),
(62, '4', 'AUXILIAR DMP I', 'De Oficina y Muebles', 'Equipo de c?mputo', 0.00, 'CPU  marca DELL modelo DCSM OPTIPLEX GX520 serie GX8THB1 disco duro de 80GB monitor marca DELL modelo e7735 teclado marca DELL mouse marca DELL bocinas marca DELL t?cnico II DMP ', '../uploads/noimage.jpg', '2009-12-10', '04-02-1232.3-12-009'),
(63, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Disco Duro de computadora portable', 1175.00, 'Disco duro portable marca SEAGAT, serie 5 MACJN8J capacidad de 160GB de almacenamiento USB externo t?cnico I DMP', '../uploads/noimage.jpg', '2009-12-10', '04-01-1232.3-35-001'),
(64, '3', 'AUXILIAR DE GUARDA ALMACEN', 'De Oficina y Muebles', 'Escritorios de metal', 1085.00, 'Escritorio de metal color beige con formica de imitaci?n madera de 3 gavetas enc. Compra', '../uploads/noimage.jpg', '2009-12-10', '03-12-1232.3-13-004'),
(65, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Equipo Aire Acondicionado', 5500.00, 'Equipo de aire acondicionado tipo mini split marca lenox 18000BTV220V con control remoto color blanco alcaldia Mpal.', '../uploads/noimage.jpg', '2009-12-10', '01-01-1232.3-07-002'),
(66, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Amueblado de Sala, sof?', 6849.00, 'Amueblado de sala  color azul con franjas grises de 4 piezas, 8 cojines grandes  y 2 peque?os. Alcald?a MPAL ', '../uploads/noimage.jpg', '2009-12-10', '01-01-1232.3-49-001'),
(67, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Refrigeradoras', 3200.00, 'Regrigerador marca atlas, modelo 02CL05, serie 253301k96, Freezelvol. 26.40 L. refrigerador vol 231.20 L.  refrigerant R12 de 6 pies color beige alcald?a Mpal ', '../uploads/noimage.jpg', '2009-12-10', '01-01-1232.3-48-001'),
(68, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Archivos de metal', 1100.00, 'Archivo de metal de 4 gavetas alcald?a Mpal ', '../uploads/noimage.jpg', '2009-12-10', '01-01-1232.3-02-005'),
(69, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Escritorios de metal', 1300.00, 'Escritorio de metal en L color negro de 3 gavetas  con formica imitaci?n madera, alcalde Mpal ', '../uploads/noimage.jpg', '2009-12-10', '01-01-1232.3-13-006'),
(70, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Escritorios de metal', 1100.00, 'Escritorio de metal  color negro de 3 gavetas, coordinador DMP', '../uploads/noimage.jpg', '2009-12-10', '04-01-1232.3-13-011'),
(71, '21', 'AUXILIAR DE LA DIRECCION DE RECURSOS HUMANOS', 'De Oficina y Muebles', 'Escritorios de madera', 1050.00, 'Escritorio de madera de 3 gavetas con silla de madera enc. Almacen', '../uploads/noimage.jpg', '2009-12-10', '21-02-1232.3-45-002'),
(72, '3', 'ENCARGADO DE IUSI', 'De Oficina y Muebles', 'Archivos de metal', 1100.00, 'Archivo de metal color negro de 4 gavetas almacen', '../uploads/noimage.jpg', '2009-12-10', '03-09-1232.3-02-010'),
(73, '13', 'Veh?culos Municipales', 'De Transporte', 'Motocicletas', 9872.00, '  Una motocicleta marca Suzuki l?nea GN125H modelo 2016 color negrocromo motor 157fmi3do76004 chasis ic6pcjg9960806012, con casco white & red ', '../uploads/noimage.jpg', '2009-12-10', '13-01-1232.6-01-001'),
(74, '13', 'Veh?culos Municipales', 'De Transporte', 'Ambulancia Municipal', 145515.16, '  Una camioneta tipo panel color blanco, chasis No. LH1726120955 motor sl5482987 marca Toyota modelo 2005 HIACE serie LH172 LRBMRS, con equipo para ambulancia y rotulada ', '../uploads/noimage.jpg', '2009-12-10', '13-01-1232.6-02-001'),
(75, '3', 'DIRECTOR FINANCIERO', 'De Comunicaciones', 'Antena Satelital (internet)', 12141.87, ' Antena satelital para internet factura 674 comnet S.A opcion a compra QW2510017941 Director financiero', '../uploads/noimage.jpg', '2009-12-10', '03-01-1232.7-07-001'),
(76, '7', 'FONTANERO MUNICIPAL', 'Herramientas', 'Llaves Stilson', 550.00, ' Llave Stilson No. 36 fontanero municipal ', '../uploads/noimage.jpg', '2009-12-10', '07-01-1232.8-13-001'),
(77, '7', 'FONTANERO MUNICIPAL', 'Herramientas', 'Llaves Stilson', 550.00, ' Llave Stilson No. 36 fontanero municipal ', '../uploads/noimage.jpg', '2009-12-10', '07-01-1232.8-13-002'),
(78, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 35000.00, '  Terreno con una extensi?n de 2,421.04 Mts. Cuadrados lugar denominado la pastor?a, inscrita como finca r?stica bajo el #24, 106 folio #53 libro 110 de Suchitep?quez, colinda al norte con l?nea f?rrea y al poniente, con Karen Beatriz Mena de la Cruz para la construcci?n rastro municipal', '../uploads/noimage.jpg', '2009-12-10', '11-00-1233.0-01-003'),
(79, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 40000.00, '  Terreno con las siguientes medidas, primera fracci?n 1.632 Mts. Cuadrados colinda al norte con predio municipal, 48 Mts. Al sur por su forma irregular no tiene medida lineal colinda con finca matriz al oriente 69 Mts. Cuadrados colinda con finca matriz al poniente 67 Mts. Colinda con finca matriz segunda fracci?n 1,089 Mts. Cuadrados, colinda al Norte 33 Mts. Con finca matriz, al sur 33 Mts. Con finca matriz al Oriente 33 Mts. Con finca matriz, al poniente 33 Mts. Colinda con finca matriz 45788, folio n?mero 186, libro n?mero 181 para tanque de captaci?n \"Agua Potable Fase II Cabecera Municipal', '../uploads/noimage.jpg', '2009-12-10', '11-00-1233.0-01-004'),
(80, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 21000.00, '  Terreno de 300 metros cuadrados colinda al norte 10 Mts. Con finca matriz y camino peatonal de acceso el cual t?rmina en la calle principal sur, 10 Mts. Con finca matriz, al oriente 30 Mts. Con finca matriz, al poniente 30 Mts. Con finca matriz con Felipe Pos Pablo, suscrito en escritura p?blica No. 13 de fecha 07/04/08 adquirido para la fosa s?ptica de aldea Guatal?n', '../uploads/noimage.jpg', '2009-12-10', '11-00-1233.0-01-006'),
(81, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 10000.00, '  Fracci?n de terreno de 10 Mts. Por 10 Mts. Cuadrados seg?n compraventaj de bien inmueble No. 64 extendida por el Abogado y Notario Jaime Leonel Rodr?guez Perell? de fecha 14 de diciembre del 2009 inscrito en el segundo registro de la propiedad bajo el N?mero 42561 Folio 151 ', '../uploads/noimage.jpg', '2009-12-10', '11-00-1233.0-01-007'),
(82, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 40000.00, '  Terreno con las siguientes medidas, ?rea 1,128.96 Mts. Cuadrados con 96 Cms. Colinda al norte 16.80 Mts. Con finca matriz, al sur 16.80 Mts. Con finca matriz al oriente 67.20 Mts. Colinda con R?o San Francisco jurisdicci?n de R?o Bravo, Such. Adquirido para la construcci?n Planta de Tratamiento sistema Drenaje sanitario Santo Tom?s II ', '../uploads/noimage.jpg', '2009-12-10', '11-00-1233.0-01-005'),
(83, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 1000.00, '  Predio que ocupa el Parque local, con una extensi?n de 7,776 metros cuadrados, Inscrito en la Propiedad de Inmuebles bajo el n?mero 6,889 folio 15 y tomo 35 de Solol? ', '../uploads/noimage.jpg', '2009-12-10', '11-00-1233.0-01-009'),
(84, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 200.00, '  Predio donde se encuentra ubicado el Cementerio #02, colinda al sur con el parcelamiento Guatal?n y Santa Elena con 190 Mts. Cuadrados y con una finca matriz, al oriente ', '../uploads/noimage.jpg', '2009-12-10', '11-00-1233.0-01-002'),
(85, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 200.00, '  Predio que ocupa el Cementerio local #01 que colinda al norte; con l?nea ferrea, al sur; con parcelamiento Guatal?n y Santa Elena con una extensi?n de 127 metros cuadrados y con una finca matriz al oriente una extensi?n de 127 metros cuadrados y con una finca matriz al oriente ', '../uploads/noimage.jpg', '2009-12-10', '11-00-1233.0-01-001'),
(86, '6', 'COMISARIO MUNICIPAL', 'Otros Activos', 'M?dulos (esquineros, etc.)', 700.00, ' Modulo Esquinero de madera, Comisaria Municipal ', '../uploads/noimage.jpg', '2009-12-10', '06-01-1237.0-07-001'),
(87, '8', 'ELECTRICISTA MUNICIPAL I', 'Otros Activos', 'Planta El?ctrica', 6720.00, ' Planta Electrica color rojo con negro marca Craftman serie 1008059864, No. 580325600, la cual se encuentra en mal estado. Electricista Mpal', '../uploads/noimage.jpg', '2009-12-10', '08-01-1237.0-08-001'),
(88, '6', 'COMISARIO MUNICIPAL', 'Otros Activos', 'Gabinetes para cocina', 2500.00, ' Gabinete para cocina dos partes comisaria Mpal. ', '../uploads/noimage.jpg', '2009-12-10', '06-01-1237.0-05-001'),
(89, '15', 'ENCARGADO DEL MANTENIMIENTO DEL ESTADIO', 'Otros Activos', 'Tractor C/Grama', 10999.99, ' Tractor marca Poulan color negro con franjas verdes florecente laterales cuatro ruedas serie 041008C004S02 modelo P175421t15hp mantenimiento estadio municipal ', '../uploads/noimage.jpg', '2009-12-10', '15-01-1237.0-10-001'),
(90, '8', 'ELECTRICISTA MUNICIPAL I', 'Otros Activos', 'Transformadores de energ?a el?ctrica', 6800.00, '  Transformador de 25KVA para linea de 13.5 20240, el cual esta instalado en el campo de la feria de este municipio mpal. ', '../uploads/noimage.jpg', '2009-12-10', '08-01-1237.0-09-001'),
(91, '14', 'PILOTO AMBULANCIA MUNICIPAL I', 'Otros Activos', 'Camas (somier, etc.)', 1500.00, ' Cama imperial uso pilotos de ambulancia ', '../uploads/noimage.jpg', '2009-12-10', '14-01-1237.0-06-001'),
(92, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 3123.06, ' bonba centrifugada  de 1HP marca starite modelo modelo hnelI, motor C4812EL15C3 color azul  registro 11BC02CM ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1237.0-13-006'),
(93, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'V?lvulas de compuertas', 682.00, ' Valvula de compuerta de 2 2/2 para bomba ojo de agua aldea santa elena Rio Bravo such ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1237.0-16-001'),
(94, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 9056.00, ' Bomba Centrifuga electrica marca STARIT BALDOR modelo IG062 serie CCHJ138 sistema agua potable ojo de agua Aldea Santa Elena ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1237.0-13-008'),
(95, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Cabezal (Audio)', 29075.03, ' Bomba centrifuga marca CAPRARI modelo MEC (A2,400) motor KILOSKAR de un cilindro de 9.6 HP con accesorios completos para sistema de agua potable aldea Guatalon ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1237.0-01-007'),
(96, '1', 'ALCALDE MUNICIPAL', 'Otros Activos', '#N/D', 5998.00, ' Camara de video marca Sony color negro serie 50120704131 mod. CDR DVD 108, Alcalde Mpal.', '../uploads/noimage.jpg', '2009-12-10', '01-01-1237.0-51-001'),
(97, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 1150.00, ' Bomba de agua marca Riete Clean water pum 1hp modelo dep3559 (donado para escuela San Antonio las flores ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1237.0-13-010'),
(98, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 1500.00, 'Bomba de agua sumergible marca Ensouger para Escuela San Jose Joaquin Palma de la colonia las Flores compra en Ferreteria El ahorro fact. Serie A No. 06246 exp. 520 ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1237.0-13-012'),
(99, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Cabezal (Audio)', 6000.00, 'Bomba Sumergible L20p4h marca starite 3HP 17ET motor sumergible 3HP 23 OV 1F H02 (donado para parcelamiento el socorro agua potable) ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1237.0-01-011'),
(100, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 890680.75, 'Construccion sistema de drenaje fase II Colonia Santo Tomas Cabecera Municipal Rio Bravo, Such. ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-004'),
(101, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 225333.00, ' Construcci?n drenaje sanitario 2? calle entre 3ra y 6ta Ave. Zona 3 cabecera municipal. ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-013'),
(102, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 444436.50, ' Construcci?n del sistema de drenaje del estadio ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-012'),
(103, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1150000.00, ' Mejoramiento 2? calle entre la 1?. Ave. Zona 2 y 6ta ave. De la zona 3 fase I cabecera Municipal. ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-011'),
(104, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1934582.50, ' Construcci?n sistema drenaje sanitario colonia Santo Tomas II ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-010'),
(105, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 268142.00, ' Mejoramiento Sistema Agua Potable Fase III Cabecera Municipal Rio Bravo Such ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-009'),
(106, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 354242.00, ' Mejoramiento calle principal entre 4?. Y 5?. Ave. Comunidad Agraria la Campesina Rio Bravo, Such.', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-008'),
(107, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1646400.00, ' Rehabilitaci?n y mejoramiento camino aldea Guatalon Rio Bravo, Such. ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-007'),
(108, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 602643.00, ' Mejoramiento Ave. Central, comunidad Agraria la Campesina Rio Bravo,', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-006'),
(109, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 845000.00, ' Construccion sistema de Drenaje fase I aldea Santa Elena Rio Bravo Such.', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-003'),
(110, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 28120.00, ' Intalacion y ampliacion de sistema  agua potable  con tuberia de cemento y galbanizada red de distribucion hasta la Finaca Sto Tomas ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-002'),
(111, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1663804.50, ' Proyecto: construccion sistema Alcantarillado sanitario Aldea Guatalon Rio Bravo Such. SMIP 71 ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-021'),
(112, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 304500.00, ' Mejoramiento de 6a. Ave. De la 1a y 4ta. Zona 1 cabecera municipal ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-014'),
(113, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 621311.53, ' Proyecto: construccion sistema de agua Reciduales, drenaje sanitario fase II Aldea Santa Elena Rio Bravo Such.  SMIP 12', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-017'),
(114, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 884087.02, ' Mejoramiento sistema de agua potable fase II Cabecera Municipal Rio Bravo Such ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-005'),
(115, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 696630.00, ' Mejoramiento 2a calle entre 2da y 6ta ave. Zona 3 Cabecera Mpal', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-016'),
(116, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 392663.00, ' Proyecto: Mejoramiento de 7a ave. Entre 1ra y 4ta calle zona 1 cabecera Mpal Rio Bravo Such SMIP 74 ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-023'),
(117, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 382268.72, ' Proyecto: Mejoramiento de 3ra. Av. Entre 1ra y 4ta calle zona 1 Cabeceta Mpal Rio Bravo Such SMIP 73 ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-022'),
(118, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 389509.00, ' Proyecto: mejoramiento calle principal  aldea Santa Elena SMIP 67', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-018'),
(119, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1049000.00, ' Proyecto mejoramiento calles 4ta calle entre 1ra y 6ta ave. Zona 1 SMIP 70 ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-019'),
(120, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1077444.46, ' Proyecto construccion sistema agua potable fase I colonia Santo Tomas I y II Cabecera Municipal Rio Bravo Such ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-020'),
(121, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 299600.00, ' Mejoramiento 4a ave. De la 1ra a la 4ta calle zona 3 mpal ', '../uploads/noimage.jpg', '2009-12-10', '12-00-1238.0-01-015'),
(122, '3', 'ENCARGADO DE CONTABILIDAD', 'Otros Activos', 'Rotuladoras', 1199.00, ' Rotulador marca Brother modelo PT2100 serie U61826GTG591189, color gris con negro con pantalla y teclado para creacion de nomenclaturas de bienes municipales para el area de Contabilidad fact. No. 31647OD Guatemala y Compaϭa Ltda. Office Depot ', '../uploads/noimage.jpg', '2010-01-13', '03-02-1237.0-12-001'),
(123, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 20000.00, 'Suministro e instalacion de bomba centrifuga en ojo de agua, Santa Elena', '../uploads/noimage.jpg', '2010-01-28', '12-00-1237.0-13-001'),
(124, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Dosificadores de clro', 7987.73, 'Dosificador de cloro 30GPD incluye deposito de cloro eHipoclorito de cloro 20lbs', '../uploads/noimage.jpg', '2010-01-28', '12-00-1237.0-14-001'),
(125, '2', 'REGISTRADOR MUNICIPAL DE PERSONAS JURIDICAS', 'De Oficina y Muebles', 'Impresoras', 775.00, 'Impresora marca SAMSUNG mono laser printer modelo ML1640 Serie 144MBKASC151J, color negro exp. 1105 secretario municpal', '../uploads/noimage.jpg', '2010-04-22', '02-03-1232.3-20-015'),
(126, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 5000.00, '  Compra de una fracci?n de terreno ubicado en comunidad El Esfuerzo de 225 metros. Colindando al norte 15 metros con Mar?a Hern?ndez, sur 15 metros con finca matriz oriente 15 metros con finca matriz, poniente 15 metros con resto de finca matriz, terreno para la construcci?n de 1 pozo mec?nico. ', '../uploads/noimage.jpg', '2010-05-28', '11-00-1233.0-01-008'),
(127, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 10614.07, 'Instalacion de bomba agua col. Candelaria', '../uploads/noimage.jpg', '2010-06-28', '12-00-1237.0-13-002'),
(128, '21', 'DIRECTOR DE RECURSOS HUMANOS', 'De Oficina y Muebles', 'Escritorios de metal', 1550.00, 'Escritorio de metal color negro con dos gavetas y para teclado, almacen exp.1602', '../uploads/noimage.jpg', '2010-11-23', '21-01-1232.3-13-012'),
(129, '3', 'ENCARGADO DE IUSI', 'De Oficina y Muebles', 'Sillas Secretariales', 1375.00, 'Silla secretarial color negro con apoyabrazos, para auxiliar de receptor?a exp. 1602', '../uploads/noimage.jpg', '2010-11-23', '03-09-1232.3-39-009'),
(130, '3', 'CAJERA GENERAL/OFICIAL I DE TESORERIA', 'De Oficina y Muebles', 'Sillas Secretariales', 1375.00, '. Silla secretarial, color negro con apoyabrazos para cajera general exp. 1602.', '../uploads/noimage.jpg', '2010-11-23', '03-05-1232.3-39-008'),
(131, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 10500.00, 'Motor pitter Kirloskar 10HP indu modelo TAF1 serie D31009020900011 para bomba de gua abastecimiento del casco urbano.', '../uploads/noimage.jpg', '2010-12-09', '12-00-1237.0-13-003'),
(132, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 192320.00, ' Mejoramiento 2da calle del Inicio a la 1ra ave. Zona 1 cabecera municipal SMIP 134, seg?n acta No. 022010 de fecha 30/07/2010', '../uploads/noimage.jpg', '2010-12-28', '12-00-1238.0-01-001'),
(133, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Bombas Centr?fugas', 5300.00, 'Bomba de agua de alta presion Centrifuga de eje libre marca Barnes, con estruccion de 3 y descarga de 3\" modelo 2020HCU con impulsor de 8.2\" Agua potable Guatalon, factura 7 Taller Najarro, Exp. 1784 ', '../uploads/noimage.jpg', '2011-01-24', '05-02-1237.0-13-004'),
(134, '3', 'RECAUDADOR MUNICIPAL', 'De Oficina y Muebles', 'Mesa de Estaci?n', 275.00, ' Mesa de estaci?n para computadora, color caf? exp. 1911, caja general', '../uploads/noimage.jpg', '2011-03-17', '03-08-1232.3-44-005'),
(135, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 156229.54, ' Mejoramiento calle acceso juzagado de paz cabecera mpal SMIP 135 Acta 012010 de fecha 30/07/2010 ', '../uploads/noimage.jpg', '2011-03-22', '12-00-1238.0-01-024'),
(136, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 742036.00, 'Construccion puente vehicular entre sector 1 y 2 comunidad San Basilio SMIP 108 Acta 012011 de fecha 26/01/2011 ', '../uploads/noimage.jpg', '2011-03-22', '12-00-1238.0-01-025'),
(137, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 670465.00, ' Reconstruccion puente Rio Seco alde santa Elena contrato No. 2a2009', '../uploads/noimage.jpg', '2011-03-22', '12-00-1238.0-01-026'),
(138, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 20500.00, ' Fracci?n de terreno ?rea de 1,089 metros colinda norte 33 metros Juan Levon Ch?vez callej?n 2 metros x 33 metros de por medio sur 33 metros con resto Finca medio oriente 33 metros con resto Finca medio poniente 33 metros con Basilio Garc?a callej?n de 2 metros x 33 metros inscrito en 2o. Registro Propiedad bajo No. 1204 F108 L9 de Solol?. Para construcci?n de Pozo Mec?nico Moraz?n, Cheque 4679 Exp563GRV ', '../uploads/noimage.jpg', '2011-03-30', '11-00-1233.0-01-010'),
(139, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 13000.00, ' Fracci?n terreno 144 metros2 colinda norte 12 metros Benjam?n L?pez, camino aldea El Socorro por medio, sur 12 metros finca matriz, Oriente 12 metros finca matriz, Poniente, 12 metros Gustavo Morales Insc. 2o. Reg. De Propiedad bajo n?mero 9656 F156 L60E de Suchi. Ubicada en parcelamiento Guatal?n parcela No. 17 para proyecto de agua potable comunidad ocho. ', '../uploads/noimage.jpg', '2011-04-15', '11-00-1233.0-01-011'),
(140, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 12000.00, 'Compra venta de fracci?n de bien inmueble seg?n escritura p?blica 07 de fecha 20/04/2012, autorizada en la ciudad de San Antonio, por el notario Jaime Leonel Rodr?guez Perell? ', '../uploads/noimage.jpg', '2011-04-27', '11-00-1233.0-01-012'),
(141, '4', 'AUXILIAR DMP I', 'De Oficina y Muebles', 'Escritorios de metal', 975.00, ' Escritorio de metal, color negro, 2 gavetas y una para teclado, exp. 2166, t?cnico DMP', '../uploads/noimage.jpg', '2011-06-14', '04-02-1232.3-13-010'),
(142, '4', 'AUXILIAR DMP I', 'De Oficina y Muebles', 'Sillas Secretariales', 595.00, ' Silla secretarial giratoria color negro, con apoyabrazos exp. 2166, Tecnico II DMP', '../uploads/noimage.jpg', '2011-06-14', '04-02-1232.3-39-011'),
(143, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Escritorios de metal', 975.00, ' Escritorio de metal color negro con dos gavetas y una para teclado, exp. 2166 auxiliar DMP', '../uploads/noimage.jpg', '2011-06-14', '04-01-1232.3-13-013'),
(144, '7', 'FONTANERO MUNICIPAL', 'Otros Activos', 'Bombas Centr?fugas', 475.00, 'Bomba de agua 3/4 HP TOOLCRAF y accesorios para su funcionarmiento para fontanero municipal exp. 2231 ', '../uploads/noimage.jpg', '2011-07-04', '07-01-1237.0-13-013'),
(145, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 847670.00, 'Construccion puente vehicular sobre Rio Seco caserillo las Flores SMIP 75 contrato 032009 de fecha 01/07/2009', '../uploads/noimage.jpg', '2011-10-07', '12-00-1238.0-01-028'),
(146, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1963248.36, 'Construccion sistema alcantarillado sanitario, parcelamiento el socorro SMIP: 72 seg?n acta 032010 de fecha 14/10/2010 ', '../uploads/noimage.jpg', '2011-10-10', '12-00-1238.0-01-027'),
(147, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 230816.00, 'Mejoramiento calle principal tramo templo antioquia calle de los chorros aldea Santa Elena, SMIP 76 seg?n acta No. 012010 de fecha 29/03/2010 ', '../uploads/noimage.jpg', '2011-10-11', '12-00-1238.0-01-029'),
(148, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 11533.60, 'Construccion de cunetas y regillas en aproches del puente del cacerio las flores, SMIP 138 ', '../uploads/noimage.jpg', '2011-10-11', '12-00-1238.0-01-030'),
(149, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 36000.00, ' Instalacion de energia Electrica para Bomba de colonia el Retiro SMIP 146 ', '../uploads/noimage.jpg', '2011-10-11', '12-00-1238.0-01-031'),
(150, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 39000.00, 'Instalacion de energia Electrica para Bomba de Comunidad Esfuerzo  SMIP 147  ', '../uploads/noimage.jpg', '2011-10-11', '12-00-1238.0-01-032'),
(151, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 89471.34, ' Electrificacion colonia Santo Tomas II Rio Bravo Suchitepequez SMIP 69 ', '../uploads/noimage.jpg', '2011-10-11', '12-00-1238.0-01-033'),
(152, '16', 'SECRETARIA DE LA DIRECCION MUNICIPAL DE LA MUJER', 'De Oficina y Muebles', 'Sillas Ejecutivas', 1000.00, 'Silla ejecutiva presidente, color negro con apoyabrazos y rodos. AOMM, Exp. 2705', '../uploads/noimage.jpg', '2012-02-21', '16-02-1232.3-37-003'),
(153, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Escritorios de metal', 1150.00, ' Escritorio tipo europeo, color negro de 3 gavetas, DMP Exp. 2705', '../uploads/noimage.jpg', '2012-02-21', '04-01-1232.3-13-014'),
(154, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Sillas Ejecutivas', 1000.00, 'Silla ejecutiva presidente, color negro con apoyabrazos, DMP, Exp. 2705', '../uploads/noimage.jpg', '2012-02-21', '04-01-1232.3-37-002'),
(155, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Fotocopiadoras', 4100.00, ' Fotocopiadora Marca BROTHER Modelo FC8890DW, Serie JOJ515202, color gris, Exp. 2779', '../uploads/noimage.jpg', '2012-03-20', '04-01-1232.3-18-002'),
(156, '16', 'SECRETARIA DE LA DIRECCION MUNICIPAL DE LA MUJER', 'De Oficina y Muebles', 'Escritorios de metal', 875.00, 'Escritorio Secretarial de 3 gavetas, color negro. AOMM, exp. 2807 ', '../uploads/noimage.jpg', '2012-03-26', '16-02-1232.3-13-015'),
(157, '9', 'ENCARGADO DE PERSONAL DE CAMPO', 'Otros Activos', 'Motosierra', 5200.00, ' Morosierra marca HUSQVARNA serie RIX, codigo No. 967062400, factura 18730, exp. 2771 ', '../uploads/noimage.jpg', '2012-03-26', '09-01-1237.0-19-001'),
(158, '2', 'SECRETARIO MUNICIPAL', 'De Oficina y Muebles', 'Impresoras', 795.00, 'Impresora marca SAMSUNG, modelo ML 2165 Sr 27BPBKAC101175Yblanco', '../uploads/noimage.jpg', '2012-05-10', '02-01-1232.3-20-020'),
(159, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Lap-top', 5480.00, 'Notebook Pro marca Dell, modelo Ispiron N4050 No. 33574297429, color negro, pantalla 14?, procesador Intel Core 13.2 10ghz, bluetooth, disco duro 500gb, webcam, SO W7HOME basic. DMP exp. 2999', '../uploads/noimage.jpg', '2012-05-29', '04-01-1232.3-21-005'),
(160, '21', 'AUXILIAR DE LA DIRECCION DE RECURSOS HUMANOS', 'De Oficina y Muebles', 'Lap-top', 5480.00, 'Notebook Pro Marca DELL, modelo INSPIRON N4050 No. 25591082581, color negro, pantalla 14? procesador Intel Core 13.2 10Ghz, bluetooth, disco duro 500GB, webcam, SO W7ultimate. Presupuesto Exp. 2999', '../uploads/noimage.jpg', '2012-05-29', '21-02-1232.3-21-004'),
(161, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1571425.25, 'construccion de agua potable comunidad ocho rio bravo suchitepequez SMIP 143 Seg?n acta de liquidacion No. 022012 de fecha 29/05/2012', '../uploads/noimage.jpg', '2012-05-31', '12-00-1238.0-01-034'),
(162, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 395414.00, 'ampliacion sistema de agua potable,captacion cabecera municipal, SMIP 144 Seg?n acta No. 012012 de fecha 23/04/2012 ', '../uploads/noimage.jpg', '2012-06-11', '12-00-1238.0-01-035'),
(163, '3', 'DIRECTOR FINANCIERO', 'Otros Activos', 'Control de Asistencia de Personal (CAP)', 3791.00, 'Control de asistencia de personal marca 2K TECHNOLOGY, modelo INO1A serie 9229761270025, color negro, digital con software lector huella,lector de tarjeta y numerico exp. 3053 ', '../uploads/noimage.jpg', '2012-06-26', '03-01-1237.0-21-001'),
(164, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Proyectores', 6795.00, 'Proyector de 3200 lumenes marca BENQ MX660, Serie PDW2C01023000, color blanco con negro, exp. 3082', '../uploads/noimage.jpg', '2012-07-20', '04-01-1232.3-33-001'),
(165, '3', 'ENCARGADA DE COMPRAS', 'Otros Activos', 'Copiadoras', 24000.00, ' Fotocopiadora marca TOSHIBA ESTUDIO352, modelo DP3540 serie CGD617328, color blanco con gris de dos bandejas, scarner y conexi?n LAN, exp. 3067, 3098 ', '../uploads/noimage.jpg', '2012-08-10', '03-10-1237.0-20-001'),
(166, '2', 'AUXILIAR  DE SECRETARIA MUNICIPAL', 'De Oficina y Muebles', 'Escritorios de metal', 1295.00, 'Escritorio de metal de tres gavetas, color negro, exp. 3128, auxiliar de secretaria ', '../uploads/noimage.jpg', '2012-08-31', '02-04-1232.3-13-017'),
(167, '2', 'OFICIAL I DE SECRETARIA MUNICIPAL', 'De Oficina y Muebles', 'Lap-top', 5250.00, 'NOTEBOOK  marca HP modelo 420 serie 660b1211501, color gris con negro pantalla de 14? bluetooth de 320GB disco 2GB RAM procesador Pentium R Dualcore 2.3 GHZ, DVDRW, dimensiones 3x34x23 cms, exp. 3324, of. I secretaria ', '../uploads/noimage.jpg', '2012-11-22', '02-02-1232.3-21-006'),
(168, '3', 'ENCARGADO DE CONTABILIDAD', 'De Oficina y Muebles', 'Impresoras', 450.00, ' Impresora multifuncional marca CANON PIXMAR IP2700 , color negro Contabilidad exp. 3358 ', '../uploads/noimage.jpg', '2012-12-19', '03-02-1232.3-20-025'),
(169, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1044999.93, 'Construcion de agua potable, colonia el retiro SMIP121 ', '../uploads/noimage.jpg', '2012-12-29', '12-00-1238.0-01-036'),
(170, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 869566.00, 'construccion sistema de agua potable, comunidad el esfuerzo, SMIP 120', '../uploads/noimage.jpg', '2012-12-29', '12-00-1238.0-01-037'),
(171, '4', 'AUXILIAR DMP I', 'De Oficina y Muebles', 'Lap-top', 5250.00, 'Notebook marca HP 420 serie 00194907251287 procesador Dual Core 2.3HGZ disco duro de 320GB DVD R14 pulgadas enc. Presupuesto ', '../uploads/noimage.jpg', '2013-01-17', '04-02-1232.3-21-007'),
(172, '3', 'ENCARGADA DE COMPRAS', 'De Oficina y Muebles', 'Equipo de c?mputo', 5375.00, 'Equipo de computo todo en uno, marca COMPAQ modelo CQ1407 LA, Serie 13R1421SXL, color negra. Compras', '../uploads/noimage.jpg', '2013-01-17', '03-10-1232.3-12-015'),
(173, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 60000.00, ' Bomba de agua centrifugas serie 150 panel de control marca FRANKIN de 10HP, el Retiro ', '../uploads/noimage.jpg', '2013-01-18', '12-00-1237.0-13-009'),
(174, '18', 'ADMINISTRADOR DEL MERCADO MUNICIPAL', 'De Oficina y Muebles', 'Equipo de c?mputo', 5375.00, 'Computadora todo en uno marca COMPAQ modelo CQ11407LA, serie 3CR1421T1D color negro', '../uploads/noimage.jpg', '2013-02-15', '18-01-1232.3-12-018'),
(175, '3', 'AUXILIAR DE GUARDA ALMACEN', 'De Oficina y Muebles', 'Sillas Secretariales', 765.00, 'Silla secretarial con apoyabrazos color negro A003. ', '../uploads/noimage.jpg', '2013-02-15', '03-12-1232.3-39-020'),
(176, '21', 'SECRETARIA DE RECURSOS HUMANOS', 'De Oficina y Muebles', 'Escritorios de metal', 1375.00, 'Escritorio secretarial de 3 gavetas color negro ', '../uploads/noimage.jpg', '2013-02-15', '21-03-1232.3-13-018'),
(177, '3', 'AUXILIAR I DE LA DAFIM', 'De Oficina y Muebles', 'Ventiladores de piso', 285.00, 'Ventilador de piso marca kool operator director DAFIM', '../uploads/noimage.jpg', '2013-03-18', '03-06-1232.3-41-015'),
(178, '10', 'BIBLIOTECARIA MUNICIPAL', 'De Oficina y Muebles', 'Ventilador de pared', 240.00, 'Ventilador de pared marca Premium biblioteca', '../uploads/noimage.jpg', '2013-03-18', '10-01-1232.3-57-003'),
(179, '3', 'ENCARGADO DE GUARDA ALMACEN', 'De Oficina y Muebles', 'Archivos de metal', 1900.00, 'Archivo de metal color negro de 4 gavetas 69. ', '../uploads/noimage.jpg', '2013-03-18', '03-11-1232.3-02-014'),
(180, '3', 'CAJERA GENERAL/OFICIAL I DE TESORERIA', 'De Oficina y Muebles', 'Ventiladores de piso', 285.00, ' Ventilador de piso marca Kool operator, Caja general ', '../uploads/noimage.jpg', '2013-03-18', '03-05-1232.3-41-017'),
(181, '4', 'AUXILIAR DMP I', 'De Oficina y Muebles', 'Ventiladores de piso', 285.00, 'Ventilador de piso marca Kool Operator, DMP', '../uploads/noimage.jpg', '2013-03-18', '04-02-1232.3-41-019'),
(182, '3', 'ENCARGADO DE PRESUPUESTO', 'De Oficina y Muebles', 'Lap-top', 6799.00, 'Portatil marca Sony VAIO, modelo SVE14125CLB Serie 275457353015403, S.0.W8, Procesador I5 ', '../uploads/noimage.jpg', '2013-05-23', '03-03-1232.3-21-008'),
(183, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 51903.90, ' construccion  sistema de agua potable,comunidad el esfuerzo SMIP 154 ', '../uploads/noimage.jpg', '2013-05-29', '12-00-1238.0-01-040'),
(184, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1511000.00, ' construccion  sistema de agua potable, finalizacion aldea la campesina SMIP 127, SEG?N ACTA  012013 de fecha 09042013 ', '../uploads/noimage.jpg', '2013-05-29', '12-00-1238.0-01-039');
INSERT INTO `ingreso_prod` (`id`, `dependencia`, `unidad_admin`, `cuenta_mayor`, `subcuenta`, `precio`, `descripcion`, `foto`, `fecha`, `nomenclatura`) VALUES
(185, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1672818.00, ' construccion de agua potable parcelamiento santa elena,SMIP 156 Seg?n acta No. 022013 de fecha 6052013 ', '../uploads/noimage.jpg', '2013-05-29', '12-00-1238.0-01-038'),
(186, '1', 'ALCALDE MUNICIPAL', 'Otros Activos', 'Otros activos', 7995.00, 'kit de CCTV que incluye grabador DVR 08CH mas ocho camaras a colo lente de 1/3 420TVL  resolucion, disco duro de 1 Tera  ', '../uploads/noimage.jpg', '2013-06-18', '01-01-1237.0-22-005'),
(187, '3', 'ENCARGADO DE IUSI', 'De Oficina y Muebles', 'Equipo de c?mputo', 6100.00, ' Equipo de computo todo en uno marca COMPAQ modelo 182004LA serie 5CM30505V7 color negro. IUSI ', '../uploads/noimage.jpg', '2013-08-22', '03-09-1232.3-12-016'),
(188, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1320279.85, 'Sistema de agua potable de aldea morazan SMIP 149 Seg?n acta No. 032013 de fecha 2062013 ', '../uploads/noimage.jpg', '2013-09-23', '12-00-1238.0-01-041'),
(189, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 2178514.60, 'Construccion sistema de agua potable santa elena, SMIP 148 Seg?n acta No. 42013 de fecha 30072013 ', '../uploads/noimage.jpg', '2013-09-23', '12-00-1238.0-01-042'),
(190, '12', 'Bienes de Uso P?blico', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 47188.20, 'Construccion de capilla del cementerio municipal, SMIP 163', '../uploads/noimage.jpg', '2013-10-02', '12-00-1231.1-01-015'),
(191, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 78390.37, 'construccion de sistema de agua potable finalizacion el retiro, SMIP 155 ', '../uploads/noimage.jpg', '2013-10-02', '12-00-1238.0-01-043'),
(192, '3', 'ENCARGADO DE PLANILLAS', 'De Oficina y Muebles', 'Equipo de c?mputo', 6775.00, ' Computadora todo en uno marca COMPAQ modelo 183204LA, serie 5CM31905F2, color negro con blanco, Banco ', '../uploads/noimage.jpg', '2013-11-05', '03-04-1232.3-12-019'),
(193, '1', 'ALCALDE MUNICIPAL', 'Educacional Cultural y Recreativo', 'Juego de Marimba', 37000.00, 'Adquisici?n de juego de marimbas 01 grande y 01 peque?a doble teclado de la Municipalidad de R?o Bravo', '../uploads/noimage.jpg', '2013-11-29', '01-01-1232.5-04-001'),
(194, '7', 'FONTANERO MUNICIPAL', 'Otros Activos', 'Bomba de Agua', 3500.00, 'bomba de agua marca petter type DAF10 engine No. D3.1009.02/0900074 RPM. 1500. BHP10. EXP 4005 ', '../uploads/noimage.jpg', '2014-01-10', '07-01-1237.0-29-001'),
(195, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Consola Digital', 15500.00, 'consola presonus digital 16 canales studio live 16:9.2AI. EXP. 4214 ', '../uploads/noimage.jpg', '2014-01-10', '05-02-1237.0-28-001'),
(196, '7', 'FONTANERO MUNICIPAL', 'Otros Activos', 'Bomba de Agua', 365.00, 'Bomba de agua pura para uso en el tanque de agua potable.', '../uploads/noimage.jpg', '2014-01-13', '07-01-1237.0-29-004'),
(197, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Disco Duro de computadora portable', 1200.00, 'Disco duro USB ITB Marca SEAGATE Modelo SRD Of. I Serie NA438PVW color negro exp. 4045 ', '../uploads/noimage.jpg', '2014-01-24', '04-01-1232.3-35-003'),
(198, '7', 'FONTANERO MUNICIPAL', 'Otros Activos', 'Bomba de Agua', 12000.00, 'bomba de agua MOTOR KAMA, Diesel D500HP12. EXP. 4039 ', '../uploads/noimage.jpg', '2014-01-24', '07-01-1237.0-29-002'),
(199, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Sillas de Espera', 320.00, ' Silla de espera con asiento con respaldo de plastico color negro exp. 4130 ', '../uploads/noimage.jpg', '2014-04-15', '01-01-1232.3-36-014'),
(200, '21', 'DIRECTOR DE RECURSOS HUMANOS', 'De Oficina y Muebles', 'Libreras de Metal', 1875.00, ' Librera de metal con puerta de vidrio de 4 compartimientos de color negro exp. 4129 ', '../uploads/noimage.jpg', '2014-04-15', '21-01-1232.3-23-004'),
(201, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Sillas de Espera', 320.00, ' Silla de espera con asiento con respaldo de plastico color negro exp. 4130', '../uploads/noimage.jpg', '2014-04-15', '01-01-1232.3-36-023'),
(202, '21', 'DIRECTOR DE RECURSOS HUMANOS', 'De Oficina y Muebles', 'Archivos de metal', 1475.00, ' Archivo de metal de 4 gavetas color negro exp. 4129 ', '../uploads/noimage.jpg', '2014-04-15', '21-01-1232.3-02-015'),
(203, '2', 'OFICIAL I DE SECRETARIA MUNICIPAL', 'De Oficina y Muebles', 'Sillas Secretariales', 550.00, 'Silla secretarial con apoyabrazos de color negro con respaldo de malla exp. 4130', '../uploads/noimage.jpg', '2014-04-15', '02-02-1232.3-39-021'),
(204, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Sillas de Espera', 320.00, 'Silla de espera con asiento y respaldo de plastico color negro exp. 4130 ', '../uploads/noimage.jpg', '2014-04-15', '01-01-1232.3-36-025'),
(205, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Sillas de Espera', 320.00, 'Silla de espera con asisento y respaldo de plastico color negro exp. 4130 ', '../uploads/noimage.jpg', '2014-04-15', '01-01-1232.3-36-024'),
(206, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Sillas de Espera', 320.00, 'Silla de espera con asisento y respaldo de plastico color negro exp. 4130 ', '../uploads/noimage.jpg', '2014-04-15', '01-01-1232.3-36-016'),
(207, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Sillas de Espera', 320.00, 'Silla de espera con asisento y respaldo de plastico color negro exp. 4130 ', '../uploads/noimage.jpg', '2014-04-15', '01-01-1232.3-36-022'),
(208, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Sillas de Espera', 320.00, 'Silla de espera con asisento y respaldo de plastico color negro exp. 4130 ', '../uploads/noimage.jpg', '2014-04-15', '01-01-1232.3-36-013'),
(209, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Sillas de Espera', 320.00, 'Silla de espera con asisento y respaldo de plastico color negro exp. 4130', '../uploads/noimage.jpg', '2014-04-15', '01-01-1232.3-36-015'),
(210, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Sillas de Espera', 320.00, 'Silla de espera con asisento y respaldo de plastico color negro exp. 4130', '../uploads/noimage.jpg', '2014-04-15', '01-01-1232.3-36-017'),
(211, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Sillas de Espera', 320.00, 'Silla de espera con asisento y respaldo de plastico color negro exp. 4130', '../uploads/noimage.jpg', '2014-04-15', '01-01-1232.3-36-018'),
(212, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Sillas de Espera', 320.00, 'Silla de espera con asisento y respaldo de plastico color negro exp. 4130 ', '../uploads/noimage.jpg', '2014-04-15', '01-01-1232.3-36-019'),
(213, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Sillas de Espera', 320.00, 'Silla de espera con asisento y respaldo de plastico color negro exp. 4130 ', '../uploads/noimage.jpg', '2014-04-15', '01-01-1232.3-36-021'),
(214, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Sillas de Espera', 320.00, 'Silla de espera con asisento y respaldo de plastico color negro exp. 4130 ', '../uploads/noimage.jpg', '2014-04-15', '01-01-1232.3-36-020'),
(215, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Monitor Activo de sonido plano', 3821.00, 'Monitor activo marca KRK RP 862, modelo ROKIT RP862, serie HAFD 064030, color negro con amarillo de 200 WATTS RMS. Exp. 4405', '../uploads/noimage.jpg', '2014-04-26', '05-02-1237.0-26-001'),
(216, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Bocinas Ambientales', 1050.00, 'bocina ambiental, marca LS Sistems, color blanco. Exp. 4166 ', '../uploads/noimage.jpg', '2014-05-20', '05-02-1237.0-24-018'),
(217, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Bocinas Ambientales', 1050.00, 'bocina ambiental, marca LS Sistems, color negro. Exp. 4166', '../uploads/noimage.jpg', '2014-05-20', '05-02-1237.0-24-024'),
(218, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Bocinas Ambientales', 1050.00, 'bocina ambiental, marca LS Sistems, color negro. Exp. 4166', '../uploads/noimage.jpg', '2014-05-20', '05-02-1237.0-24-026'),
(219, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Bocinas Ambientales', 1050.00, 'bocina ambiental, marca LS Sistems, color negro. Exp. 4166 ', '../uploads/noimage.jpg', '2014-05-20', '05-02-1237.0-24-030'),
(220, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Bocinas Ambientales', 1050.00, 'bocina ambiental, marca LS Sistems, color negro. Exp. 4166', '../uploads/noimage.jpg', '2014-05-20', '05-02-1237.0-24-023'),
(221, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Rack para equipo de Audio', 1816.00, 'RACK para equipo de audio SMC 18 AWG metro color negro con gris. Exp. 4214', '../uploads/noimage.jpg', '2014-05-20', '05-02-1237.0-23-001'),
(222, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Bocinas Ambientales', 1050.00, 'bocina ambiental, marca LS Sistems, color blanco. Exp. 4166 ', '../uploads/noimage.jpg', '2014-05-20', '05-02-1237.0-24-001'),
(223, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Bocinas Ambientales', 1050.00, 'bocina ambiental, marca LS Sistems, color blanco. Exp. 4166', '../uploads/noimage.jpg', '2014-05-20', '05-02-1237.0-24-002'),
(224, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Bocinas Ambientales', 1050.00, 'bocina ambiental, marca LS Sistems, color blanco. Exp. 4166 ', '../uploads/noimage.jpg', '2014-05-20', '05-02-1237.0-24-004'),
(225, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Bocinas Ambientales', 1050.00, 'bocina ambiental, marca LS Sistems, color negro Exp. 4166', '../uploads/noimage.jpg', '2014-05-20', '05-02-1237.0-24-003'),
(226, '15', 'ENCARGADO DEL MANTENIMIENTO DEL ESTADIO', 'Otros Activos', 'Bomba de Agua', 695.00, ' bomba de agua para abastecimieto del tanque del estadio municipal Exp. 5185 ', '../uploads/noimage.jpg', '2014-06-09', '15-01-1237.0-29-003'),
(227, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Amplificador de resonanze', 4900.00, 'Amplificador de Istalacion Resonaze RIA 8500 USB marca PRESONUS color multicolor enlace de red puerto de enlace de USB de 8 salidas de un PLU de 1/4 energia 48 voltios 8 canales exp. 4214', '../uploads/noimage.jpg', '2014-06-24', '05-02-1237.0-27-002'),
(228, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Amplificador de resonanze', 4900.00, 'Amplificador de Istalacion Resonaze RIA 8500 USB marca PRESONUS color multicolor enlace de red puerto de enlace de USB de 8 salidas de un PLU de 1/4 energia 48 voltios 8 canales exp. 4214 ', '../uploads/noimage.jpg', '2014-06-24', '05-02-1237.0-27-003'),
(229, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Micr?fono de 2 pastillas condensadas', 2690.00, 'Microfono Condesado de dos pastillas con carga de tuvo serie 121810018NO10455 color gris exp. 4214', '../uploads/noimage.jpg', '2014-06-24', '05-02-1237.0-25-001'),
(230, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Amplificador de resonanze', 4900.00, 'Amplificador de istalacion Resonaze RIA 8500 USB marca PRESONUS color multicolor enlace de red puerto de enlace de USB DE 8 salidas de un PLU de 1/4 energia 48 voltios 8 canales exp. 4214', '../uploads/noimage.jpg', '2014-06-24', '05-02-1237.0-27-001'),
(231, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 2330660.00, 'Construccion de sistema de agua potable finalizacion  colonia sto. Tomas I Y II cabecera mpal. Rio bravo suchitepequez. SMIP 161 Seg?n acta No. 022014 de fecha 04032014 ', '../uploads/noimage.jpg', '2014-07-07', '12-00-1238.0-01-044'),
(232, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 533533.90, 'mejoramiento de calle 1a. Avenida entre 1a y 4ta calle zona 2 cabecera municipal, rio bravo suchitepequez SMIP  170 Seg?n acta No. 012014 de fecha 03032014 ', '../uploads/noimage.jpg', '2014-07-07', '12-00-1238.0-01-045'),
(233, '4', 'AUXILIAR DMP III', 'De Oficina y Muebles', 'Equipo de c?mputo', 5850.00, 'Computadora todo en uno marca COMPAQ modelo 183304LA serie 55M3410227 color blanco con negro sistema operativo window 8 D64 BITS procesador  AMD E1 1500 APU witch radeon HD Grapies 1.48 GHZ  memoria RAM de 8GB  con camara y microfono instalado. EXP. 4315', '../uploads/noimage.jpg', '2014-08-22', '04-04-1232.3-12-020'),
(234, '4', 'AUXILIAR DMP I', 'De Oficina y Muebles', 'Monitores para pc', 1200.00, 'Monitor para PC Marca BENQ modelo GL951A, serie ETV9009235019, color negro. Exp. 4316', '../uploads/noimage.jpg', '2014-08-22', '04-02-1232.3-53-001'),
(235, '3', 'ENCARGADO DE CONTABILIDAD', 'De Oficina y Muebles', 'Rotuladora de etiquetas', 899.00, 'Rotuladora de etiquetas marca Dymo modelo 1750110 serie 1344021750110 color gris con negro ', '../uploads/noimage.jpg', '2014-08-22', '03-02-1232.3-59-001'),
(236, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'De Oficina y Muebles', 'Mesa de Estaci?n', 3104.00, 'estacion de trabajo TMP  WS8700 marca onds stage standes color caf? con negro y gris exp. 4405 ', '../uploads/noimage.jpg', '2014-10-21', '05-02-1232.3-44-006'),
(237, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Otros Activos', 'Monitor Activo de sonido plano', 3821.00, 'Monitor activo marca KRK RP 862 Modelo ROKIT RP862 serie Pendiente, color negro con amarillo de 200 watts RMS Exp. 4405 ', '../uploads/noimage.jpg', '2014-10-21', '05-02-1237.0-26-002'),
(238, '18', 'ADMINISTRADOR DEL MERCADO MUNICIPAL', 'Otros Activos', 'Bomba de Agua', 8725.00, 'Pago de Bomba de 3HP marca MEYERS modelo QP30 115230 voltios codigo 001N13UHP3.0 color verde exp. 4434 ', '../uploads/noimage.jpg', '2014-10-31', '18-01-1237.0-29-005'),
(239, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'Otros Activos', 'Videoc?maras', 3149.00, 'Video camara marca SONY HADYCAM, modelo HDRCX240 serie 3433303, de 9.2 mega pixeles full HD exp. 5FRE ', '../uploads/noimage.jpg', '2014-12-03', '04-01-1237.0-30-001'),
(240, '3', 'AUXILIAR I DE LA DAFIM', 'De Oficina y Muebles', 'Impresoras', 2200.00, 'Impresora termica de recibos star micronics tsp100 eco (USB) Serie 2400114010601077 con cortador automatico interfas USB color negra receptoria cchica 12015 ', '../uploads/noimage.jpg', '2015-01-08', '03-06-1232.3-20-030'),
(241, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', '#N/D', 'Impresoras', 1695.00, ' Impresora marca Epson L120 serie TNUK024554 color negro exp. 49950c ', '../uploads/noimage.jpg', '2015-01-28', '04-01-1232.3-20-033'),
(242, '15', 'ENCARGADO DEL MANTENIMIENTO DEL ESTADIO', 'Otros Activos', 'Bomba de Agua', 2700.00, ' Bomba de agua marca Corona de 2HP de 2x2 tipo 1RF3 2582YC44 exp. 4526', '../uploads/noimage.jpg', '2015-02-11', '15-01-1237.0-29-006'),
(243, '7', 'FONTANERO MUNICIPAL', 'Otros Activos', 'Bomba de Agua', 16030.37, 'Bomba de agua marca BERKELEY de 7.5 HP 3600 RPM modelo B2TPM abastecimiento de agua potable del casco urbano exp. 4550 ', '../uploads/noimage.jpg', '2015-02-27', '07-01-1237.0-29-007'),
(244, '11', 'Bienes Inmuebles', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 6794951.70, 'Construccion mercado mpal SMIP153 Acta 122015 de fecha 26/05/201', '../uploads/noimage.jpg', '2015-05-28', '11-00-1231.1-01-016'),
(245, '1', 'ALCALDE MUNICIPAL', 'Otros Activos', 'Equipo de Aire Acondicionado', 4500.00, 'Aire acondicionado tipo mini esplit 220V modelo NBCM012C10B serie D202240620314705120007, capacidad 2200 BRU/H exp. 4728OC ', '../uploads/noimage.jpg', '2015-06-17', '01-01-1237.0-31-001'),
(246, '1', 'ALCALDE MUNICIPAL', 'Otros Activos', 'Equipo de Aire Acondicionado', 1500.00, 'Cortina de aire marca ECOX, FM1209N24, exp. 4780 ', '../uploads/noimage.jpg', '2015-08-18', '01-01-1237.0-31-002'),
(247, '1', 'ALCALDE MUNICIPAL', 'Otros Activos', 'Equipo de Aire Acondicionado', 7500.00, 'Aire Acondicionado marca CONFORTSTAR Modelo ERE24, serie D202070590213518160013 capacidad 24000 BTU/U, epx. 4780 ', '../uploads/noimage.jpg', '2015-08-18', '01-01-1237.0-31-003'),
(248, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1008000.00, ' construccion sistema de agua potable finalizacion comunidad la fortuna rio bravo suchiepequez SMIP 171 Acta 22015', '../uploads/noimage.jpg', '2015-12-14', '12-00-1238.0-01-046'),
(249, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 899521.75, 'Mejoramiento calle 5ta avenida entre 1a y 5ta calle final zona 2 cabecera municipal riobravo suchitepequez  SMIP 184 seg?n acta no. 52015 de fecha  06/11/2015', '../uploads/noimage.jpg', '2015-12-14', '12-00-1238.0-01-047'),
(250, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 668500.00, 'mejoramieto  calle 7a. Avenida  entre 1ra. Y 4a calle zona 2 cabecera municipal Riobravo  suchitepequez  SMIP: 185 seg?n acta No 3 2015 de fecha 05/11/2015', '../uploads/noimage.jpg', '2015-12-14', '12-00-1238.0-01-048'),
(251, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 690427.00, 'mejoramieto  calle 3a. Avenida  entre 1ra. Y 4a calle zona 2 cabecera municipal Riobravo  suchitepequez  SMIP: 183 seg?n acta No 4 2015 de fecha 06/11/2015 ', '../uploads/noimage.jpg', '2015-12-14', '12-00-1238.0-01-049'),
(252, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1774100.00, 'Construccion sistema agua potable finalizacion aldea Morazan Rio bravo suchitepequez, SMIP 182 Seg?n acta No.  62015 de fecha 16/12/2015', '../uploads/noimage.jpg', '2015-12-30', '12-00-1238.0-01-050'),
(253, '3', 'DIRECTOR FINANCIERO', 'De Oficina y Muebles', 'Impresoras', 1895.00, 'Impresora marca Epson L11O con sistema continuo serie 53PK001792 para uso en DAFIM Factura No.36579 ', '../uploads/noimage.jpg', '2016-01-14', '03-01-1232.3-20-034'),
(254, '2', 'OFICIAL I DE SECRETARIA MUNICIPAL', 'De Oficina y Muebles', 'Impresoras', 1890.00, ' Impresora marca Epson  L220 C/scaner + sistema continuo de fabrica ', '../uploads/noimage.jpg', '2016-03-15', '02-02-1232.3-20-035'),
(255, '21', 'SECRETARIA DE RECURSOS HUMANOS', 'De Oficina y Muebles', 'Equipo de c?mputo', 7225.00, 'Computadora Core I5 WIFI 3.20 GHZ 8 GB RAM HPP 500 GB Monitor, mouse y teclado, quemador DVD RW Factura No. 240 ', '../uploads/noimage.jpg', '2016-03-15', '21-03-1232.3-12-021'),
(256, '2', 'SECRETARIO MUNICIPAL', 'Otros Activos', 'Equipo de Aire Acondicionado', 4900.00, 'Aire acondicionado de 18 ML BTU marca INNOAIRE con voltaje 220 con gas ecologico R410 No de expediente 4976 para uso en secretaria municipal ', '../uploads/noimage.jpg', '2016-03-17', '02-01-1237.0-31-004'),
(257, '4', 'SECRETARIA DE DMP', 'De Oficina y Muebles', 'Impresoras', 2890.00, 'Impresora Marca Epson L365 con sistema continuo con scaner serie VH3K106080 para uso en auxiliar  DMP Factura No. 248 ', '../uploads/noimage.jpg', '2016-04-08', '04-05-1232.3-20-037'),
(258, '4', 'AUXILIAR DMP I', 'De Oficina y Muebles', 'Impresoras', 2890.00, 'Impresora Marca Epson L365 con sistema continuo con scaner serie VH3K127088 para uso en IUSI Factura No. 248 ', '../uploads/noimage.jpg', '2016-04-08', '04-02-1232.3-20-036'),
(259, '3', 'CAJERA GENERAL/OFICIAL I DE TESORERIA', 'De Oficina y Muebles', 'Equipo de c?mputo', 3395.00, 'Computadora con procesador CELERON de 2.70 GHZ  de doble nucleo 2 GB de RAM 500 GB HDD monitor 19\" LED serie 14556591000172169M225M00801 para uso en Receptoria Expediente 5048', '../uploads/noimage.jpg', '2016-05-12', '03-05-1232.3-12-022'),
(260, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'De Oficina y Muebles', 'Equipo de c?mputo', 4250.00, 'Computadora de escritorio Marca PENTIUM DUALCORE 3.20 GHZ 500 GB Ram 4 GB monitor de 19\" AOC DVD RW. Serie 14556591000175469m225m00B01  Para uso musica en mercado Municipal Expediente No. 5092', '../uploads/noimage.jpg', '2016-06-13', '05-02-1232.3-12-023'),
(261, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 35000.00, ' Compra de un terreno de 406.07 metros cuadrados para captacion de agua potable para abastecimiento de comunidad San Basililo Escritura Publica No. 17 Cheque No. 6455  ', '../uploads/noimage.jpg', '2016-08-25', '11-00-1233.0-01-013'),
(262, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Lap-top', 4695.00, ' Computadora marca DELL LUSPIRON 14 color Rojo Core I3 500 GB HDD 4 GB RAM Serie 411715DPPI2015 Para uso auxiliar DMP', '../uploads/noimage.jpg', '2016-09-12', '04-01-1232.3-21-010'),
(263, '2', 'REGISTRADOR MUNICIPAL DE PERSONAS JURIDICAS', 'De Oficina y Muebles', 'Impresoras', 2545.00, 'Impresora Epson L220 con sistema continuo Serie VGNK237586 para uso auxiliar DMP', '../uploads/noimage.jpg', '2016-09-12', '02-03-1232.3-20-038'),
(264, '2', 'OFICIAL I DE SECRETARIA MUNICIPAL', 'De Oficina y Muebles', 'Impresoras', 2545.00, ' Impresora Epson L220 con sistema continuo Serie VGNK148174 para uso Coordinador  DMP ', '../uploads/noimage.jpg', '2016-09-12', '02-02-1232.3-20-039'),
(265, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 25000.00, ' Primer pago de Compra de Terreno  situado en la parcela 29 parcelamiento Guatalon Rio Bravo Suchiteequez Escritura No. 29 Cheque 6826 ', '../uploads/noimage.jpg', '2016-11-16', '11-00-1233.0-01-014'),
(266, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 24500.00, ' Compra de terreno ubicado en aldea la esperanza, finca 29, 147, folio 127 libro 127 de suchitepequez de 200 metros cuadrados, escritura No. 5 cheque No. 7140 ', '../uploads/noimage.jpg', '2017-03-17', '11-00-1233.0-01-015'),
(267, '4', 'AUXILIAR DMP I', 'De Oficina y Muebles', 'Ventiladores de piso', 285.00, 'Ventilador de piso marca kool operator DMP ', '../uploads/noimage.jpg', '2017-03-18', '04-02-1232.3-41-018'),
(268, '3', 'DIRECTOR FINANCIERO', 'Otros Activos', 'Equipo de Aire Acondicionado', 6750.00, 'Compra de aire acondicionado de 24000BTY 220V refrigerante control remoto marca innovar cincluy instalacion cheque No. 7210', '../uploads/noimage.jpg', '2017-04-18', '03-01-1237.0-31-007'),
(269, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 22000.00, 'Compra de bomba sumergible de 7.5p marca franklin de acero inoxidable paren de control motor y cableo cheque No. 7392 ', '../uploads/noimage.jpg', '2017-05-17', '12-00-1237.0-13-014'),
(270, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 15500.00, 'Compra de un motor de bomba de succion de 6.5  HP', '../uploads/noimage.jpg', '2017-06-19', '12-00-1237.0-13-015'),
(271, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 20000.00, 'Compra kit completo bomba, motor  sumergible marca apec modelo sp176(M6) y marcar ranklin 7.5 hp ', '../uploads/noimage.jpg', '2017-11-16', '12-00-1237.0-13-016'),
(272, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 13000.00, 'Compra de una bomba de agua para comunidad el esfuerzo  cheque No. 8189', '../uploads/noimage.jpg', '2017-12-21', '12-00-1237.0-13-017'),
(273, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 10000.00, 'Compra de un motor de 7.5 HP para bomba sumergible marca flanklin electric para comunidad las margaritas 1 cheque No. 8190', '../uploads/noimage.jpg', '2017-12-21', '12-00-1237.0-13-018'),
(274, '3', 'ENCARGADA DE COMPRAS', 'De Oficina y Muebles', 'Sillas Secretariales', 325.00, ' Silla secretarial giratoria con respaldo color negra con apoyabrazos, cheque No. 8368 para encargado de compras', '../uploads/noimage.jpg', '2018-02-28', '03-10-1232.3-39-022'),
(275, '3', 'ENCARGADO DE PLANILLAS', 'De Oficina y Muebles', 'Sillas Secretariales', 325.00, 'Silla secretarial giratoria con respaldo color corinta con apoyabrazos cheque No. 8368 para encargado de planillas', '../uploads/noimage.jpg', '2018-02-28', '03-04-1232.3-39-023'),
(276, '3', 'ENCARGADO DE PRESUPUESTO', 'De Oficina y Muebles', 'Sillas Secretariales', 325.00, ' Silla secretarial giratoria con respaldo  color corinta con apoyabrazos cheque No. 8368 para encargada de presupuesto', '../uploads/noimage.jpg', '2018-02-28', '03-03-1232.3-39-024'),
(277, '3', 'ENCARGADO DE CONTABILIDAD', 'De Oficina y Muebles', 'Sillas Secretariales', 325.00, 'Silla secretarial  giratoria con respaldo  color azul con apoyabrazos cheque No. 8368 para encargada de contabilidad', '../uploads/noimage.jpg', '2018-02-28', '03-02-1232.3-39-025'),
(278, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 24500.00, 'Compra de un terreno ubicado en lotificaci?n naranjales Rio Bravo Such, finca No.  8542  folio No. 42 libro 58E de Suchitepequez escritura  No. 125 pagado con cheque No. 8833 ', '../uploads/noimage.jpg', '2018-06-19', '11-00-1233.0-01-016'),
(279, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 13500.00, 'Motor sumergible  acero inoxidable  Marca APEC SP17 10 HP', '../uploads/noimage.jpg', '2019-02-15', '12-00-1237.0-13-019'),
(280, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 5650.00, 'Bomba de agua sumergible marca Franklin Electric acero inoxidable  10HP ', '../uploads/noimage.jpg', '2019-02-15', '12-00-1237.0-13-019'),
(281, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 23500.00, 'Bomba de agua sumergible y panel de control marca Franklin Electric 7.5 HP ', '../uploads/noimage.jpg', '2019-02-18', '12-00-1237.0-13-021'),
(282, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 506107.00, 'Mejoramiento calle 8VA. Avenida entre 1A y 4A calle final zona 1 cabecera municipal Rio Bravo suchitepequez. SMIP 190 seg?n acta No. 2216 fecha 20/10/16', '../uploads/noimage.jpg', '2019-05-17', '12-00-1238.0-01-051'),
(283, '12', 'Bienes de Uso P?blico', 'Otros Activos', 'Bombas Centr?fugas', 23500.00, 'Bomba de agua sumergible marca Franklin Electric acero inoxidable  10HP y motor 10HP marca APEC ', '../uploads/noimage.jpg', '2019-06-18', '12-00-1237.0-13-020'),
(284, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 671248.00, 'Mejoramiento calle 1a. Avenida entre 1a. Y 4a.Calle zona 3, Rio Bravo, Suchitepequez SMIP 192 seg?n acta No. 12016 de fecha 16/08/16', '../uploads/noimage.jpg', '2019-12-27', '12-00-1238.0-01-052'),
(285, '2', 'AUXILIAR  DE SECRETARIA MUNICIPAL', 'De Oficina y Muebles', 'Equipo de c?mputo', 5375.00, 'Equipo de computo todo en uno marca HP modelo TPCQ003 serie 4CS126059M color negra aux. secretaria', '../uploads/noimage.jpg', '2013-02-15', '02-04-1232.3-12-017'),
(286, '3', 'ENCARGADO DE CONTABILIDAD', 'De Oficina y Muebles', 'Lap-top', 7675.00, 'Computadora Portatil Marca DELL, Modelo Inspiron 3493, 14\", Core I5, Memoria RAM 8Gb, Disco duro 256Gb, Windows 10 Home, contabilidad Exp. 6385', '../uploads/noimage.jpg', '2020-05-06', '03-02-1232.3-21-011'),
(287, '3', 'ENCARGADO DE PRESUPUESTO', 'De Oficina y Muebles', 'Archivos de metal', 1295.00, 'Archivo de metal color negro de 4 gavetas, Marca Continental para presupuesto Exp 6639', '../uploads/noimage.jpg', '2020-09-29', '03-03-1232.3-02-016'),
(288, '3', 'ENCARGADA DE COMPRAS', 'De Oficina y Muebles', 'Archivos de metal', 1295.00, 'Archivo de metal Marca CONTINENTAL, color negro de 4 gavetas para compras, Exp. 6639', '../uploads/noimage.jpg', '2020-09-29', '03-10-1232.3-02-017'),
(289, '3', 'DIRECTOR FINANCIERO', 'De Oficina y Muebles', 'Archivos de metal', 1295.00, 'Archivo de metal Marca CONTINENTAL, color negro de 4 gavetas, financiero Exp. 6639', '../uploads/noimage.jpg', '2020-09-29', '03-01-1232.3-02-018'),
(290, '3', 'ENCARGADO DE CONTABILIDAD', 'De Oficina y Muebles', 'Impresoras', 1375.00, 'Impresora Multifuncional de sistema cont?nuo, Marca CANON, Modelo G2110, Serie KLMT77050, Color negro, contabilidad Exp. 6291', '../uploads/noimage.jpg', '2020-02-27', '03-02-1232.3-20-040'),
(291, '3', 'ENCARGADO DE PRESUPUESTO', 'De Oficina y Muebles', 'Lap-top', 7200.00, 'Computadora Port?til Marca HP, Core I5, Memoria RAM 8Gb, Disco duro 256Gb, teclado num?rico, color gris con negro, Presupuesto Exp. 6611', '../uploads/noimage.jpg', '2020-09-16', '03-03-1232.3-21-012'),
(292, '3', 'ENCARGADO DE PRESUPUESTO', 'De Oficina y Muebles', 'Impresoras', 2895.00, 'Impresora Marca EPSON L5190, Serie NX5NQ103045, Escanner oficio, color negra, Presupuesto Exp. 6357', '../uploads/noimage.jpg', '2020-04-20', '03-03-1232.3-20-041'),
(293, '3', 'ENCARGADO DE PLANILLAS', 'De Oficina y Muebles', 'Impresoras', 1375.00, 'Impresora Sistema cont?nuo Multifuncional Marca EPSON L3110, color negra, Serie X644230504, planillas Exp. 6291', '../uploads/noimage.jpg', '2020-02-27', '03-04-1232.3-20-042'),
(294, '3', 'ENCARGADO DE PLANILLAS', 'De Oficina y Muebles', 'Lap-top', 6050.00, 'Computadora Port?til Marca HP, Modelo 14-DQ1043CL, Serie 5CD0234QQD, color gris, Core I3, Memoria RAM 8Gb, Disco Duro SSD 256Gb, planillas Exp. 6602', '../uploads/noimage.jpg', '2020-08-26', '03-04-1232.3-21-013'),
(295, '3', 'DIRECTOR FINANCIERO', 'De Oficina y Muebles', 'Equipo de c?mputo', 5450.00, 'Computadora de escritorio, Marca BROCS.us procesador Pentium GOLD, Memoria RAM 8Gb, Monitor de 22 pulgadas, Disco duro de 1000Gb, mouse y teclado, director financiero Exp. 6475', '../uploads/noimage.jpg', '2020-06-23', '03-01-1232.3-12-024'),
(296, '3', 'DIRECTOR FINANCIERO', 'De Oficina y Muebles', 'Sillas Secretariales', 975.00, 'Silla ejecutiva Marca XTECH QZY-2501, color negra, con apoyabrazos, respaldo de maya, giratoria, Director Financiero, Exp. 6291', '../uploads/noimage.jpg', '2020-02-27', '03-01-1232.3-39-026'),
(297, '3', 'DIRECTOR FINANCIERO', 'De Oficina y Muebles', 'Impresoras', 1715.00, 'Impresora Matricial Marca EPSON Modelo LX-350, Serie Q75Y226042, color gris, carro angosto para impresi?n de cheques, Director Financiero Exp. 15 Caja Chica 01-2020', '../uploads/noimage.jpg', '2020-03-02', '03-01-1232.3-20-043'),
(298, '3', 'DIRECTOR FINANCIERO', 'De Oficina y Muebles', 'Impresoras', 1825.00, 'Impresora sistema cont?nuo Marca EPSON L3110, Serie X644287137, Color negra, Director Financiero Exp. 6506.', '../uploads/noimage.jpg', '2020-07-08', '03-01-1232.3-20-044'),
(299, '20', 'DIRECTOR UGAM', 'De Oficina y Muebles', 'Lap-top', 7850.00, 'Computadora Port?til Marca DELL Inspiron 3593, Core I5, Memoria Ram 8Gb, Disco duro 256Gb, 14 pulgadas, Color gris, Windows 10 Home, UGAM director Exp. 6469', '../uploads/noimage.jpg', '2020-06-19', '20-01-1232.3-21-016'),
(300, '3', 'DIRECTOR FINANCIERO', 'De Oficina y Muebles', 'Router Wi-Fi', 1225.00, 'Router WIFI Marca Ubiquti nono station, color blanco, exp. 6357', '../uploads/noimage.jpg', '2020-04-20', '03-01-1232.3-46-001'),
(301, '2', 'SECRETARIO MUNICIPAL', 'De Oficina y Muebles', 'Impresoras', 1150.00, 'Impresora Multifuncional de sistema cont?nuo Marca CANON G1110, color negro, Serie KLMW17152, Secretario Exp. 6291', '../uploads/noimage.jpg', '2020-02-27', '02-01-1232.3-20-045'),
(302, '3', 'RECAUDADOR MUNICIPAL', 'De Oficina y Muebles', 'Impresoras', 3160.00, 'Impresora T?rmica Port?til Marca TSC Alpha, sistema bluetooth, Serie D4818470167, Color gris, Receptor?a Exp. 6310', '../uploads/noimage.jpg', '2020-03-05', '03-08-1232.3-20-046'),
(303, '3', 'AUXILIAR II DE LA DAFIM', 'De Oficina y Muebles', 'Impresoras', 1695.00, 'Impresora T?rmica para impresi?n de recibos en Receptor?a Municipal, Marca STAR-MICRONICS, Serie 2430118090600141, Exp. 6310', '../uploads/noimage.jpg', '2020-03-05', '03-07-1232.3-20-047'),
(304, '20', 'DIRECTOR UGAM', 'De Oficina y Muebles', 'Sillas Secretariales', 585.00, 'Silla Secretarial giratoria Marca ENDOS, Modelo M001, color negra, con respaldo de malla, apoyabrazos, UGAM Exp. 6340', '../uploads/noimage.jpg', '2020-04-03', '20-01-1232.3-39-027'),
(305, '16', 'SECRETARIA DE LA DIRECCION MUNICIPAL DE LA MUJER', 'De Oficina y Muebles', 'Sillas Secretariales', 585.00, 'Silla Secretarial giratoria Marca ENDOS, Modelo M001, color negra, con respaldo de malla, apoyabrazos, Secretaria DMM Exp. 6340', '../uploads/noimage.jpg', '2020-04-03', '16-02-1232.3-39-028'),
(306, '16', 'DIRECTORA OMM', 'De Oficina y Muebles', 'Sillas Secretariales', 585.00, 'Silla Secretarial giratoria Marca ENDOS, Modelo M001, color negra, con respaldo de malla, apoyabrazos, Auxiliar DMM Exp. 6340', '../uploads/noimage.jpg', '2020-04-03', '16-01-1232.3-39-029'),
(307, '16', 'DIRECTORA OMM', 'De Oficina y Muebles', 'Sillas Secretariales', 585.00, 'Silla Secretarial giratoria Marca ENDOS, Modelo M001, color negra, con respaldo de malla, apoyabrazos, Auxiliar DMM-sosea Exp. 6340', '../uploads/noimage.jpg', '2020-04-03', '16-01-1232.3-39-030'),
(308, '6', 'COMISARIO MUNICIPAL', 'De Oficina y Muebles', 'Sillas Secretariales', 585.00, 'Silla Secretarial giratoria Marca ENDOS, Modelo M001, color negra, con respaldo de malla, apoyabrazos, Comisario Municipal Exp. 6340', '../uploads/noimage.jpg', '2020-04-03', '06-01-1232.3-39-031'),
(309, '3', 'ENCARGADA DE COMPRAS', 'De Oficina y Muebles', 'Impresoras', 1900.00, 'Impresora Multifuncional con sistema de cont?nua Marca CANON, Serie G3100, color negra, Serie KLWY85695, Compras Exp. 6340', '../uploads/noimage.jpg', '2020-04-03', '03-10-1232.3-20-048'),
(310, '4', 'AUXILIAR DMP II', 'De Oficina y Muebles', 'Lap-top', 9220.00, 'Computadora Port?til Marca HP, Modelo 15-da2003LA, Procesador CoreI7 10Generaci?n, Tarjeta gr?fica NVIDIA, Disco Duro de 1Tb, Memoria RAM 8Gb, Color gris, Serie CND0033N16, Director DMP Exp. 6352', '../uploads/noimage.jpg', '2020-04-17', '04-03-1232.3-21-014'),
(311, '20', 'DIRECTOR UGAM', 'De Oficina y Muebles', 'Impresoras', 1375.00, 'Impresora Multifuncional sistema cont?nuo, Marca EPSON Modelo L3110, Color negra, Serie XNX644342897, Director UGAM, Exp. 6357', '../uploads/noimage.jpg', '2020-04-20', '20-01-1232.3-20-049'),
(312, '3', 'ENCARGADA DE COMPRAS', 'De Oficina y Muebles', 'Lap-top', 5000.00, 'Computadora Port?til Marca DELL Modelo INSPIRON 3493, color negra, Procesador Core I5, Memoria Ram de 4Gb, Disco S?lido de 128Gb, 14 pulgadas, 259881715 Compras Exp. 6397', '../uploads/noimage.jpg', '2020-05-08', '03-10-1232.3-21-015'),
(313, '20', 'DIRECTOR UGAM', 'De Oficina y Muebles', 'Archivos de metal', 2475.00, 'Archivo de metal color negro, Marca Continental, con Caja Fuerte y 3 gavetas, Director UGAM, Exp. 6459', '../uploads/noimage.jpg', '2020-06-09', '20-01-1232.3-02-019'),
(314, '2', 'SECRETARIO MUNICIPAL', 'De Oficina y Muebles', 'Archivos de metal', 2475.00, 'Archivo de metal color negro, Marca Continental, con Caja Fuerte y 3 gavetas, Oficial I Secretar?a, Exp. 6459', '../uploads/noimage.jpg', '2020-06-09', '02-01-1232.3-02-020'),
(315, '2', 'REGISTRADOR MUNICIPAL DE PERSONAS JURIDICAS', 'De Oficina y Muebles', 'Sillas Secretariales', 570.00, 'Silla Ejecutiva color negra, con tela y apoyabrazos, Reg personas jur?dicas Exp. 6449', '../uploads/noimage.jpg', '2020-06-12', '02-03-1232.3-39-032'),
(316, '2', 'OFICIAL I DE SECRETARIA MUNICIPAL', 'De Oficina y Muebles', 'Sillas Secretariales', 570.00, 'Silla Ejecutiva color negra, con apoyabrazos, Of I Secretar?a Exp. 6449', '../uploads/noimage.jpg', '2020-06-12', '02-02-1232.3-39-033'),
(317, '20', 'DIRECTOR UGAM', 'De Oficina y Muebles', 'Sillas Secretariales', 570.00, 'Silla Ejecutiva color negra, con tela y apoyabrazos, Director UGAM Exp. 6449', '../uploads/noimage.jpg', '2020-06-12', '20-01-1232.3-39-034'),
(318, '4', 'AUXILIAR DMP II', 'De Oficina y Muebles', 'Sillas Secretariales', 670.00, 'Silla Ejecutiva color negra, con tela y respaldo tipo malla y apoyabrazos, Director DMP Exp. 6449', '../uploads/noimage.jpg', '2020-06-12', '04-03-1232.3-39-035'),
(319, '4', 'AUXILIAR DMP I', 'De Oficina y Muebles', 'Sillas Secretariales', 670.00, 'Silla Ejecutiva color negra, con tela y respaldo tipo malla y apoyabrazos, Director DMP Exp. 6449', '../uploads/noimage.jpg', '2020-06-12', '04-02-1232.3-39-036'),
(320, '21', 'AUXILIAR DE LA DIRECCION DE RECURSOS HUMANOS', 'De Oficina y Muebles', 'Sillas Secretariales', 670.00, 'Silla Ejecutiva color negra, con tela y respaldo tipo malla y apoyabrazos, Exp. 6449', '../uploads/noimage.jpg', '2020-06-12', '21-02-1232.3-39-037'),
(321, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Fotocopiadoras', 7500.00, 'Fotocopiadora, Impresora Marca KYOCERA, Modelo ECOSYS M2040dn/L, Color Blanco y Negro, Serie VR99762428, DMP Exp 6448', '../uploads/noimage.jpg', '2020-06-12', '04-01-1232.3-18-003'),
(322, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Esc?neres', 4900.00, 'Esc?ner Marca EPSON Modelo DS-530, color blanco, Serie X2HJ28989, Duplex, DMP, Exp. 6466', '../uploads/noimage.jpg', '2020-06-16', '04-01-1232.3-52-001'),
(323, '16', 'SECRETARIA DE LA DIRECCION MUNICIPAL DE LA MUJER', 'De Oficina y Muebles', 'Lap-top', 5000.00, 'Computadora Port?til Marca DELL Modelo INSPIRON 3493, color negra, Procesador Core I5, Memoria Ram de 4Gb, Disco S?lido de 128Gb, 14 pulgadas, DMM Exp. 6398', '../uploads/noimage.jpg', '2020-05-08', '16-02-1232.3-21-017'),
(324, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Equipo de c?mputo', 6975.00, 'Computadora de Escritorio, procesador Intel Core I5, Memoria Ram 8Gb, Disco estado s?lido 240Gb, teclado, mouse, quemador de discos y bocinas, DMP Exp. 6532', '../uploads/noimage.jpg', '2020-07-20', '04-01-1232.3-12-025'),
(325, '3', 'ENCARGADA DE COMPRAS', 'De Oficina y Muebles', 'Sillas Secretariales', 900.00, 'Silla ejecutiva con respaldo alto, color negra, y apoyabrazos, compras Exp. 6583', '../uploads/noimage.jpg', '2020-08-18', '03-10-1232.3-39-038'),
(326, '3', 'ENCARGADO DE CONTABILIDAD', 'De Oficina y Muebles', 'Sillas Secretariales', 2300.00, 'Silla para oficina de cuero sint?tico, apoyabrazos cromados color negro, conta Exp. 6583', '../uploads/noimage.jpg', '2020-08-18', '03-02-1232.3-39-039'),
(327, '2', 'SECRETARIO MUNICIPAL', 'De Oficina y Muebles', 'Sillas Secretariales', 2500.00, 'Silla para oficina tipo Presidencial color negro con apoyabrazos, Secretario Municipal Exp. 6583', '../uploads/noimage.jpg', '2020-08-18', '02-01-1232.3-39-040'),
(328, '2', 'REGISTRADOR MUNICIPAL DE PERSONAS JURIDICAS', 'De Oficina y Muebles', 'Equipo de c?mputo', 5450.00, 'Computadora de escritorio BROCS.us, procesador Pentium Gold, Memoria Ram 8Gb, Disco duro 100Gb, Windows 10, quemador de disco, mouse y teclado, Sin SerieRegistrador de personas jur?dicas, Exp. 6687', '../uploads/noimage.jpg', '2020-11-05', '02-03-1232.3-12-026'),
(329, '3', 'AUXILIAR I DE LA DAFIM', 'De Oficina y Muebles', 'Equipo de c?mputo', 5450.00, 'Computadora de escritorio BROCS.us, procesador Pentium Gold, Memoria Ram 8Gb, Disco duro 100Gb, Windows 10, quemador de disco, mouse y teclado, Sin serie Receptor, Exp. 6476', '../uploads/noimage.jpg', '2020-06-23', '03-06-1232.3-12-027'),
(330, '3', 'ENCARGADO DE IUSI', 'De Oficina y Muebles', 'Impresoras', 1825.00, 'Impresora Multifuncional con sistema cont?nuo, Marca EPSON, Modelo L3110, Color negra, Serie X644419512, IUSI, Exp. 6645', '../uploads/noimage.jpg', '2020-10-02', '03-09-1232.3-20-050'),
(331, '3', 'ENCARGADO DE IUSI', 'De Oficina y Muebles', 'Equipo de c?mputo', 5450.00, 'Computadora de escritorio BROCS.us, procesador Pentium Gold, Memoria Ram 8Gb, Disco duro 100Gb, Windows 10, quemador de disco, mouse y teclado, IUSI, Exp. 6685', '../uploads/noimage.jpg', '2020-11-05', '03-09-1232.3-12-028'),
(332, '16', 'SECRETARIA DE LA DIRECCION MUNICIPAL DE LA MUJER', 'De Oficina y Muebles', 'Impresoras', 1825.00, 'Impresora Multifuncional con sistema cont?nuo, Marca EPSON, Modelo L3110, Color negra, DMM, Exp. 6479', '../uploads/noimage.jpg', '2020-06-25', '16-02-1232.3-20-051'),
(333, '2', 'SECRETARIO MUNICIPAL', 'De Oficina y Muebles', 'Escritorios de metal', 1953.00, 'Escritorio ejecutivo de metal y f?rmica, Marca Continental, color negro de 5 gavetas, Secretario Municipal, Exp. 6639', '../uploads/noimage.jpg', '2020-09-29', '02-01-1232.3-13-019'),
(334, '20', 'DIRECTOR UGAM', 'De Oficina y Muebles', 'Escritorios de metal', 1150.00, 'Escritorio Secretarial 1 gaveta y 1 tipo archivo, color negro, Marca Continental, Director UGAM, Exp. 15 Caja Chica 06-2020', '../uploads/noimage.jpg', '2020-06-08', '20-01-1232.3-13-020'),
(335, '21', 'DIRECTOR DE RECURSOS HUMANOS', 'De Oficina y Muebles', 'Sillas Secretariales', 900.00, 'Silla ejecutiva con respaldo alto, color negra, y apoyabrazos, Director RRHH Exp. 6583', '../uploads/noimage.jpg', '2020-08-18', '21-01-1232.3-39-041'),
(336, '21', 'DIRECTOR DE RECURSOS HUMANOS', 'De Oficina y Muebles', 'Equipo de c?mputo', 5450.00, 'Computadora de escritorio BROCS.us, procesador Pentium Gold, Memoria Ram 8Gb, Disco duro 100Gb, Windows 10, quemador de disco, mouse y teclado, Director RRHH, Exp. 6507', '../uploads/noimage.jpg', '2020-07-08', '21-01-1232.3-12-029'),
(337, '2', 'OFICIAL I DE SECRETARIA MUNICIPAL', 'De Oficina y Muebles', 'Equipo de c?mputo', 5450.00, 'Computadora de Escritorio Marca BROCS.us, teclado, mouse, quemador de discos, Memoria Ram 8Gb, 1000Gb Disco duro, Monitor de 22\", serie 601-7C09-070B2004029759, Of I Secretar?a, Exp. 6725', '../uploads/noimage.jpg', '2020-12-07', '02-02-1232.3-12-030'),
(338, '5', 'ENCARGADO DE BOMBA DE AGUA SANTA ELENA', 'Otros Activos', 'Motor, Motor sumergible, Bomba de agua', 14800.00, 'Motor 10.0 HP Franklin monof?sico para bomba de agua de pozo mec?nico ubicado en Aldea Santa Elena, Exp. 6283', '../uploads/noimage.jpg', '2020-02-21', '05-04-1237.0-32-001'),
(339, '5', 'ENCARGADO DE BOMBA DE AGUA SANTA ELENA II', 'Otros Activos', 'Motor, Motor sumergible, Bomba de agua', 18000.00, 'Motor sumergible 10HP Franklin, Bomba sumergible APEC SP-10HP, agua potable en Aldea Santa Elena II, Exp. 6371', '../uploads/noimage.jpg', '2020-04-21', '05-06-1237.0-32-002'),
(340, '5', 'ENCARGADO DE BOMBA DE AGUA SANTA ELENA', 'Otros Activos', 'Motor, Motor sumergible, Bomba de agua', 13900.00, 'Motor sumergible 10.0HP 230 voltios, tanque de agua potable Santa Elena Exp. 6554', '../uploads/noimage.jpg', '2020-08-05', '05-04-1237.0-32-003'),
(341, '5', 'ENCARGADO DE BOMBAS DE AGUA MUNICIPAL', 'Otros Activos', 'Motor, Motor sumergible, Bomba de agua', 13900.00, 'Motor sumergible 10.0 HP 230 voltios, Bomba de Agua Potable Exp. 6586', '../uploads/noimage.jpg', '2020-08-14', '05-03-1237.0-32-004'),
(342, '5', 'ENCARGADO DE BOMBA DE AGUA EL SOCORRO', 'Otros Activos', 'Motor, Motor sumergible, Bomba de agua', 12750.00, 'Motor sumergible 7.5 HP 230 voltios 1 fase, agua potable en Aldea El Socorro Exp. 6607', '../uploads/noimage.jpg', '2020-09-08', '05-07-1237.0-32-005'),
(343, '5', 'ENCARGADO DE BOMBAS DE AGUA MUNICIPAL', 'Otros Activos', 'Motor, Motor sumergible, Bomba de agua', 10460.00, 'Bomba sumergible 4\", 5.0HP AT80-9, Motor sumergible 5.0HP 1F 230 V, tanque de agua potable del cruce Exp. 6680', '../uploads/noimage.jpg', '2020-10-30', '05-03-1237.0-32-006'),
(344, '5', 'ENCARGADO DE BOMBA DE AGUA EL RETIRO', 'Otros Activos', 'Motor, Motor sumergible, Bomba de agua', 13750.00, 'Motor sumergible Franklin 7.5 HP, 230 Voltios, Aldea El Retiro Exp. 6688', '../uploads/noimage.jpg', '2020-11-06', '05-08-1237.0-32-007'),
(345, '3', 'DIRECTOR FINANCIERO', 'Otros Activos', 'Equipo de Aire Acondicionado', 7000.00, 'Aire acondicionado de 24000 BTU 220V Marca INNOVAIR, color blanco, Serie W24C2DB2, Dafim Exp. 6359', '../uploads/noimage.jpg', '2020-04-20', '03-01-1237.0-31-008'),
(346, '1', 'ALCALDE MUNICIPAL', 'Otros Activos', 'Equipo de Aire Acondicionado', 4750.00, 'Aire acondicionado Marca CONFORSTAR de 12000 BTU, 220V, Color blanco, Serie CSA18CD, Alcald?a Exp. 6335', '../uploads/noimage.jpg', '2020-03-25', '01-01-1237.0-31-009'),
(347, '16', 'DIRECTORA OMM', 'Otros Activos', 'Equipo de Aire Acondicionado', 6000.00, 'Aire acondicionado tipo Minisplit de 18000 BTU, 220V Marca CONFORTSTAR R-410, Color blanco, Serie CSA12CD, DMM, Exp. 6358', '../uploads/noimage.jpg', '2020-04-20', '16-01-1237.0-31-010'),
(348, '2', 'SECRETARIO MUNICIPAL', 'Otros Activos', 'Equipo de Aire Acondicionado', 5000.00, 'Aire acondicionado Marca INNOVAIR de 18000 BTU, V220, Color blanco, Serie W018CZDB2, Secretar?a, Exp. 6546', '../uploads/noimage.jpg', '2020-07-22', '02-01-1237.0-31-011'),
(349, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 2631000.00, 'CONSTRUCCION SISTEMA DE AGUA POTABLE CASER?O LAS FLORES Y COLONIA LA SOLOLATECA R?O, SMIP: 208 seg?n Acta No. 002-2020 de fecha 25/09/2020', '../uploads/noimage.jpg', '2020-12-21', '12-00-1238.0-01-053'),
(350, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1563707.75, 'CONSTRUCCION SISTEMA DE AGUA POTABLE ALDEA LA ESPERANZA, RIO BRAVO SUCHITEPEQUEZ, SMIP: 173 seg?n Acta No. 001-2020 de fecha 25/09/2020', '../uploads/noimage.jpg', '2020-12-21', '12-00-1238.0-01-054'),
(351, '11', 'Bienes Inmuebles', 'Bienes de uso Comun', 'Bienes de uso Com?n', 2159878.00, 'CONSTRUCCION SISTEMA DE AGUA POTABLE CON PERFORACION DE POZO MECANICO ALDEA SAN ANTONIO LAS FLORES, RIO BRAVO SUCHITEPEQUEZ, SMIP: 266 seg?n Acta No. 003-2020 de fecha 28/09/2020', '../uploads/noimage.jpg', '2020-12-22', '11-00-1238.0-01-055'),
(352, '15', 'ENCARGADO DEL MANTENIMIENTO DEL ESTADIO', 'Otros Activos', 'Tractor C/Grama', 24200.00, 'TRACTOR JARDINERO MARCA JOHN DEERE MODELO E140, COLOR VERDE CON AMARILLO, COMBUSTIBLE GASOLINA,TRANSMISION HIDROSTATICA AUTOMATICA, NEUMATICOS DELANTEROS 15X6-6, NEUMATICOS TRASEROS 20X10-8, SERIE 1GXE140AAKL200060, PARA USO EN ESTADIO MUNICIPAL, EXP. 6322', '../uploads/noimage.jpg', '2020-03-10', '15-01-1237.0-10-002'),
(353, '9', 'ENCARGADO DE PERSONAL DE CAMPO', 'Otros Activos', 'Vibro Compactadora', 19900.00, 'VIBRO COMPACTADORA TIPO BAILARINA HUSQVARNA LT6005 C/MOTOR HONDA GXR120 NS: 20200500615, PARA USO EN TRABAJOS DE CAMPO, EXP. 6709', '../uploads/noimage.jpg', '2020-11-23', '09-01-1237.0-33-001'),
(354, '9', 'ENCARGADO DE PERSONAL DE CAMPO', 'Otros Activos', 'Mezcladora de cemento', 11990.00, 'MEZCLADORA DE CEMENTO MARCA JOPER CON MOTOR HONDA DE 5.5 HP SERIE B 53872, PARA USO EN TRABAJOS DE CAMPO, EXP. 6708', '../uploads/noimage.jpg', '2020-11-23', '09-01-1237.0-34-001'),
(355, '21', 'DIRECTOR DE RECURSOS HUMANOS', 'Otros Activos', 'Control de Asistencia de Personal (CAP)', 5693.22, 'Control de acceso con reconocimiento facial, pantalla touch, para toma de asistencia del personal municipal, RRHH, Exp. 6324', '../uploads/noimage.jpg', '2020-03-13', '21-01-1237.0-21-002'),
(356, '9', 'ENCARGADO DE PERSONAL DE CAMPO', 'Otros Activos', 'Desbrozadoras (Chapeadoras)', 4200.00, 'Desbrozadora Marca HUSQVARNA, para mantenimiento de areas verdes, 21020194474882, Exp. 6454', '../uploads/noimage.jpg', '2020-06-08', '09-01-1237.0-11-001'),
(357, '9', 'ENCARGADO DE PERSONAL DE CAMPO', 'Otros Activos', 'Desbrozadoras (Chapeadoras)', 4200.00, 'Desbrozadora Marca HUSQVARNA, para mantenimiento de areas verdes, 21020194474883 Exp. 6454', '../uploads/noimage.jpg', '2020-06-08', '09-01-1237.0-11-002'),
(358, '9', 'ENCARGADO DE PERSONAL DE CAMPO', 'Otros Activos', 'Motosierra', 5800.00, 'Motosierra Marca HUSQVARNA, para mantenimiento de areas verdes, EXP. 6455', '../uploads/noimage.jpg', '2020-06-08', '09-01-1237.0-19-002'),
(359, '3', 'DIRECTOR FINANCIERO', 'Otros Activos', 'Otros activos', 385.00, 'Router para uso en DAFIM, Exp. 6506', '../uploads/noimage.jpg', '2020-07-08', '03-01-1237.0-22-006'),
(360, '3', 'ENCARGADO DE GUARDA ALMACEN', 'Otros Activos', 'Bomba para Fumigar', 5500.00, 'Bomba para fumigar con motor, para sanitizaci?n, Exp. 6525', '../uploads/noimage.jpg', '2020-07-13', '03-11-1237.0-35-001'),
(361, '4', 'SECRETARIA DE DMP', 'De Oficina y Muebles', 'Equipo de c?mputo', 5450.00, 'COMPUTADORA DE ESCRITORIO, PROCESADOR PENTIUM GOLD 8GB DE RAM, 100GB DE DISCO DURO, MONITOR DE 22 PULGADAS, TECLADO Y MOUSE, SERIE 601-7C09-00 B2004029758, AUX DMP, EXP. 6768', '../uploads/noimage.jpg', '2020-12-29', '04-05-1232.3-12-031'),
(362, '3', 'AUXILIAR I DE LA DAFIM', 'De Oficina y Muebles', 'Impresoras', 1945.00, 'Impresora Multifuncional Marca EPSON L3150, Color negro, Serie X7GP165332, Receptor?a Exp. 6735', '../uploads/noimage.jpg', '2020-12-14', '03-06-1232.3-20-052'),
(363, '21', 'AUXILIAR DE LA DIRECCION DE RECURSOS HUMANOS', 'De Oficina y Muebles', 'Impresoras', 1825.00, 'Impresora Marca EPSON L3110, Color negro, Serie X5DN161894, RR.HH Exp. 6735', '../uploads/noimage.jpg', '2020-12-14', '21-02-1232.3-20-053'),
(364, '3', 'ENCARGADO DE CONTABILIDAD', 'De Oficina y Muebles', 'Esc?neres', 3985.00, 'ESCANER MARCA EPSON DS-530, SERIE X2HJ163286, MODELO J381A', '../uploads/noimage.jpg', '2021-02-11', '03-02-1232.3-52-002'),
(365, '3', 'RECAUDADOR MUNICIPAL', 'De Oficina y Muebles', 'Tablet, IPAD ', 3999.00, 'Tablet electronica marca IPAD APPLE, Modelo OCTABA GENERACION, Serie H98FQ2M9Q1KM, Color GRIS, Dimensiones 10.2, Memoria Interna 32 GB, S.O. 14.8, O.C. 7079.', '../uploads/noimage.jpg', '2021-08-31', '03-08-1232.3-60-001'),
(366, '3', 'ENCARGADO DE CONTABILIDAD', 'De Oficina y Muebles', 'Archivos de metal', 2655.00, 'Archivo Lateral de 4 Gavetas, fabricado en estructura de lamina de acero 0.6MM, Medidas 0.89*0.51*1.32MTS, Color BEIGE, 2 Juegos de llaves centrales. O.C. 6810', '../uploads/noimage.jpg', '2021-02-16', '03-02-1232.3-02-021'),
(367, '3', 'ENCARGADO DE PLANILLAS', 'De Oficina y Muebles', 'Escritorios de metal', 1365.00, 'Escritorio Secretarial de 3 Gavetas, Fabricado con Lamina De acero de 7MM, Tablero Aglormerado de 1\" Forrado de Formica y Protegido en los bordes con Tapacanto, sistema de llaves con chapa, 1 gaveta utilitaria y una para archivo, Medidas; 1.20 Largo 0.75 Fondo, Color Negro, O.C. 6811', '../uploads/noimage.jpg', '2021-02-16', '03-04-1232.3-13-021'),
(368, '21', 'DIRECTOR DE RECURSOS HUMANOS', 'De Oficina y Muebles', 'Impresoras', 1825.00, 'Impresora Marca EPSON Modelo L311O, Sistema Continuo, Color Negro, Serie X644553290. O.C. 6816', '../uploads/noimage.jpg', '2021-02-18', '21-01-1232.3-20-054'),
(369, '3', 'AUXILIAR II DE LA DAFIM', 'De Oficina y Muebles', 'Equipo de c?mputo', 5450.00, 'Computadora de Escritorio Pentitum Gold,  Procesador INTEL PENTIUM GOLD G5400 CPU, Memoria Ram de 4 GB, Sistema Operativo de 64 bits,  Quemador De CD,Tarjeta WIFI Monitor de 22\",  Teclado y Mause, Serie S/N, Color NEGRO, O.C.6818', '../uploads/noimage.jpg', '2021-03-11', '03-07-1232.3-12-032');
INSERT INTO `ingreso_prod` (`id`, `dependencia`, `unidad_admin`, `cuenta_mayor`, `subcuenta`, `precio`, `descripcion`, `foto`, `fecha`, `nomenclatura`) VALUES
(370, '4', 'AUXILIAR DMP I', 'De Oficina y Muebles', 'Lap-top', 9585.00, 'Computadora Portatil, Marca HP, Modelo 14-cf2074la, Serie No. 5CG0418DZ6 Memoria Ram 8GB, Disco Duro 256 GB, Color GRIS. O.C. 6859. ', '../uploads/noimage.jpg', '2021-03-23', '04-02-1232.3-21-018'),
(371, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Sillas Secretariales', 765.00, 'Silla Secretarial Respaldo De Malla y Asiento De Tela, Color Negra,  Importada con brazos, Base Con 5 Rodos Dobles Giratorios, Base Reforzada de Nylon y Fibra de Vidrio, Graduci?n de Altura. O.C. 6899', '../uploads/noimage.jpg', '2021-04-21', '20-02-1232.3-39-042'),
(372, '3', 'ENCARGADO DE PRESUPUESTO', 'De Oficina y Muebles', 'Sillas Secretariales', 765.00, 'Silla Secretarial Respaldo De Malla y Asiento De Tela, Color Negra,  Importada con brazos, Base Con 5 Rodos Dobles Giratorios, Base Reforzada de Nylon y Fibra de Vidrio, Graduci?n de Altura. O.C. 6899', '../uploads/noimage.jpg', '2021-04-21', '03-03-1232.3-39-043'),
(373, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Impresoras', 1785.00, 'Impresora Multifuncional Marca Epson L3150, Sistema Continuo,Color negro,  Serie X7GP294095. O.C. 6899.', '../uploads/noimage.jpg', '2021-04-21', '04-01-1232.3-20-055'),
(374, '4', 'AUXILIAR DMP II', 'De Oficina y Muebles', 'Impresoras', 1785.00, 'Impresora Multifuncional Marca Epson L3150, Sistema Continuo, Serie X7GP294090, Color Negro. O.C. 6899.', '../uploads/noimage.jpg', '2021-04-21', '04-03-1232.3-20-056'),
(375, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'De Oficina y Muebles', 'Sillas Secretariales', 765.00, 'Silla Secretarial Respaldo de Malla y Asiento de Tela, importada con Brazos, Base con 5 Rodos dobles giratorios, Base Reforzada de Nylon y Fibra de Vidrio, Graduaci?n de Altura. O.C. 6899', '../uploads/noimage.jpg', '2021-04-21', '04-01-1232.3-39-044'),
(376, '3', 'ENCARGADO DE IUSI', 'De Oficina y Muebles', 'Archivos de metal', 3195.00, 'Archivo Lateral de 4 Gavetas fabricado de Lamina de Acero, Medidas; 0.89*0.51*1.32MTS, Color Negro. O.C. 6986.', '../uploads/noimage.jpg', '2021-07-08', '03-09-1232.3-02-022'),
(377, '3', 'ENCARGADO DE IUSI', 'De Oficina y Muebles', 'Sillas Secretariales', 765.00, 'Silla Secretarial Giratoria Con Respaldo de Malla y Asiento de Tela, con Brazos, Base de 5 Rodos Dobles, Respaldo de MESH, Asiento y Respaldo con Concha Pl?stica, Color negro, S/N O.C. 6988', '../uploads/noimage.jpg', '2021-07-08', '03-09-1232.3-39-045'),
(378, '3', 'CAJERA GENERAL/OFICIAL I DE TESORERIA', 'De Oficina y Muebles', 'Sillas Secretariales', 765.00, 'Silla Secretarial Giratoria Con Respaldo de Malla y Asiento de Tela, con Brazos, Base de 5 Rodos Dobles, Respaldo de MESH, Asiento y Respaldo con Concha Pl?stica, Color negro, S/N O.C. 6988', '../uploads/noimage.jpg', '2021-07-08', '03-05-1232.3-39-046'),
(379, '3', 'ENCARGADO DE GUARDA ALMACEN', 'De Oficina y Muebles', 'Lap-top', 3796.00, 'Computadora Portatil HP CORE I3 HEWLET, Serie; 5CG1132QWB, Memoria Ram 4GB, Dimenci?n 14.0, Color Negro. O.C. 7016.', '../uploads/noimage.jpg', '2021-07-21', '03-11-1232.3-21-019'),
(380, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Archivos de metal', 965.00, 'Archivo tipo Robot de 3 Gavetas y Llaves, con 4 rodos, Medidas; 0.53*0.39*0.66 MTS, Color Negro. O.C. 7018', '../uploads/noimage.jpg', '2021-07-27', '01-01-1232.3-02-023'),
(381, '16', 'SECRETARIA DE LA DIRECCION MUNICIPAL DE LA MUJER', 'De Oficina y Muebles', 'Impresoras', 1785.00, 'Impresora Multifuncional Marca Epson L3150 Sistema Continuo, Serie X7GP254185,  Color Negro. O.C. 6913', '../uploads/noimage.jpg', '2021-05-05', '16-02-1232.3-20-057'),
(382, '11', 'Bienes Inmuebles', 'Tierras y Terrenos', 'Tierras y Terrenos', 15000.00, 'Compra de Bien Inmueble Otorgado por, Maria Del Rosario Pol Guajam De Siguan a favor de Juan Francisco Lopez Diaz, En Representacion de la Municipalidad De Rio Bravo, Departamento De Suchitepequez, Segumm Escritura No. 96 De fecha 05/03/2021. O.C.7950.', '../uploads/noimage.jpg', '2021-03-16', '11-00-1233.0-01-019'),
(383, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Impresoras', 1400.00, 'Impresora Epson L1110 Ecotank, serie X5NA053047,  Color negro. O.C. 7035', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-20-058'),
(384, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Escritorios de metal', 1500.00, 'Escritorio Secretarial Metalico, de 3 Gavetas, Con base de Formica, Color Negro.', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-13-022'),
(385, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Mesas de dibujo/plegables', 490.00, 'Mesa Plegable de 1.80MTS De Largo, Marca America Dragon, Color Blanco. O.C. 7035', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-27-001'),
(386, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Mesas de dibujo/plegables', 490.00, 'Mesa Plegable de 1.80MTS De Largo, Marca America Dragon, Color Blanco. O.C. 7035', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-27-002'),
(387, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Mesas de dibujo/plegables', 490.00, 'Mesa Plegable de 1.80MTS De Largo, Marca America Dragon, Color Blanco. O.C. 7035', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-27-003'),
(388, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Mesas de dibujo/plegables', 490.00, 'Mesa Plegable de 1.80MTS de Largo, Marca America Dagron, Color Blanco. O.C. 7035', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-27-004'),
(389, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Mesas de dibujo/plegables', 490.00, 'Mesa Pegable de 1.80MTS de largo, Marca America Dragon, Color Blanco. O.C. 7035', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-27-005'),
(390, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Term?metros', 985.00, 'Termometro Infrarrojo Con Dispensador de Gel y Pedestal, Color Blanco y Negro, O.C. 7035', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-61-001'),
(391, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Term?metros', 985.00, 'Termometro Infrarrojo con Dispensador de Gel y Pedestal, Color Blanco y Negro. O.C. 7035', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-61-002'),
(392, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Lectores de huella', 600.00, 'Lector de Huella Digital Persona. O.C. 7035', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-63-001'),
(393, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Lectores de huella', 600.00, 'Lector de Huella Digital Persona, O.C.7035', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-63-002'),
(394, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Equipo de c?mputo', 4810.00, 'Computadora de Escritorio Pentium Dual Core Marca Brocs, Modelo M306, Memoria Ram 4GB, Unidad de Estado Solido de 120GB, Tarjeta WIFI PCI Express, Monitor de 19\", Marca HACER, Teclado y Mouse, Color Negro.O.C.7055', '../uploads/noimage.jpg', '2021-08-17', '20-02-1232.3-12-033'),
(395, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Separadores de filas', 425.00, 'Separador de Fila Color Negro Con Cinta Roja. O.C.7035', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-62-001'),
(396, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Separadores de filas', 425.00, 'Separador de Fila, Color Negro con Cinta Roja. O.C. 7035', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-62-002'),
(397, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Separadores de filas', 425.00, 'Separador de Fila Color Negro con Cinta Roja. O.C. 7035', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-62-003'),
(398, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Separadores de filas', 425.00, 'Separador de Fila Color Negro con Cinta Roja. O.C.7035', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-62-004'),
(399, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Separadores de filas', 425.00, 'Separador de Fila, Color Negro con Cinta Roja. O.C.7035', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-62-005'),
(400, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Separadores de filas', 425.00, 'Separador de Fila, Color Negro con Cinta Roja. O.C. 7035', '../uploads/noimage.jpg', '2021-08-05', '20-02-1232.3-62-006'),
(401, '1', 'ALCALDE MUNICIPAL', 'Otros Activos', '#N/D', 3798.00, 'Refrigeradora Marca Samsung, Con Dispensador de Agua, Serie No. 0ANH4BANA00374E, Modelo RT29K5730S8, Color Gris, De 2 Puertas, Medida 1.60*60*24 O.C. 6879 ', '../uploads/noimage.jpg', '2021-04-13', '01-01-1237.0-36-002'),
(402, '1', 'ALCALDE MUNICIPAL', 'Otros Activos', 'Dispensador de Agua', 999.00, 'Dispensador de Agua, Marca FRIGIDAIRE, Serie No. 10103111, Modelo FS10W, Color Blanco. 0.C.6879', '../uploads/noimage.jpg', '2021-04-13', '01-01-1237.0-18-001'),
(403, '21', 'DIRECTOR DE RECURSOS HUMANOS', 'De Oficina y Muebles', 'Archivos de metal', 1585.00, 'Archivo de Metal de 4 Gavetas, Fabricado con Estructura de Lamina de ACERO, Pintura en Polvo a Base de Resina, Medidas 0.46*0.59*1.32Mts. O.C. 7069.', '../uploads/noimage.jpg', '2021-08-25', '21-01-1232.3-02-024'),
(404, '5', 'ENCARGADO DE BOMBAS DE AGUA MUNICIPAL', 'Otros Activos', 'Bomba de Agua', 7200.00, 'Bomba Sumergible de Acero Inoxidable Serie 150 10HP. O.C.6926', '../uploads/noimage.jpg', '2021-05-13', '05-03-1237.0-29-009'),
(405, '5', 'ENCARGADO DE BOMBAS DE AGUA MUNICIPAL', 'Otros Activos', 'Motor, Motor sumergible, Bomba de agua', 13000.00, 'Motor Sumergible Marca FRANKLIN, Electric 10HP 230V IPH, O.C. 6926', '../uploads/noimage.jpg', '2021-05-13', '05-03-1237.0-32-008'),
(406, '5', 'ENCARGADO DE BOMBAS DE AGUA MUNICIPAL', 'Otros Activos', 'Motor, Motor sumergible, Bomba de agua', 15000.00, 'Motor Sumergible de 10HP,  1FASE 230 VOLTIOS FRANKLIN ELECTRIC. O.C.7045', '../uploads/noimage.jpg', '2021-08-09', '05-03-1237.0-32-009'),
(407, '3', 'ENCARGADA DE COMPRAS', 'De Oficina y Muebles', 'Sillas Ejecutivas', 885.00, 'Silla Ejecutiva Con Brazos Fijos, Respaldo de Malla, Asiento de Tela, Reclinable con Altura Ajustable, Color Negro con brazos fijos Blancos. O.C. 7052', '../uploads/noimage.jpg', '2021-08-16', '03-10-1232.3-37-004'),
(408, '11', 'Bienes Inmuebles', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 270000.00, 'Ampliacion Escuela Primeria Oficial Rural Mixta Comunidad San Basilio, Rio Bravo Suchitepequez, SMIP:229 Seg?n acta No. ACTA No. 006-2021 de Fecha 15/03/2021. NO. Exp. 31. ', '../uploads/noimage.jpg', '2021-08-19', '11-00-1231.1-01-017'),
(409, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 5084840.54, 'Mejoramiento Parque Municipal Rio Bravo, Suchitepequez, SMIP:296 Seg?n Acta No. Acta Numero 011-2021 de fecha 10/09/2021. No. Exp. 43', '../uploads/noimage.jpg', '2021-09-24', '12-00-1238.0-01-056'),
(410, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 80992.10, 'Mejoramiento Calle 4 Avenida Final Zona 1 Rio Bravo, Suchitepequez, Proyecto Por Administracion Seg?n Acta de Recepcion de Obras 001-2021 de fecha 06/01/21. No. Exp. 170.', '../uploads/noimage.jpg', '2021-02-26', '12-00-1238.0-01-056'),
(411, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 2299109.00, 'Mejoramiento Calle Rural Santo Tomas I R?o Bravo, Suchitep?quez, SMIP: 287, seg?n Acta No. ACTA 001-2021 de fecha 25/02/2021. Exp. No. 41', '../uploads/noimage.jpg', '2021-03-15', '12-00-1238.0-01-057'),
(412, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 898000.00, 'Mejoramiento Calle 5A. Calle Entre 2A. Y 5A. Avenida Zona 2 Rio Bravo, Suchitepequez, SMIP: 295 Seg?n Acta No. Acta 002-2021 de fecha 26/02/2021. No. Exp. 44', '../uploads/noimage.jpg', '2021-03-15', '12-00-1238.0-01-058'),
(413, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1999000.00, 'Mejoramiento Calle Rural 1A Calle Santo Tomas 1 Rio Bravo, Suchitepequez, SMIP: 294 Seg?n Acta No. Acta Numero 005-2021 de fecha 11/03/2021. No. Exp. 45.', '../uploads/noimage.jpg', '2021-06-11', '12-00-1238.0-01-059'),
(414, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 2371360.00, 'Mejoramiento Calle Rural Aldea La Campesina Rio Bravo, Suchitepequez, SMIP: 286 Seg?n Acta No. Acta Numero 004-2021 de fecha 11/03/2021. No. Exp. 42', '../uploads/noimage.jpg', '2021-06-11', '12-00-1238.0-01-060'),
(415, '5', 'OPERADOR', 'Maquinaria y Equipo de construcci?n', 'Retroexcavadora', 635000.00, 'Retroexcabadora Con Brazo Extensible Marca JONH DEERE, Modelo 310L, Serie 1BZ310LAKLC003759, Color Amarillo con Negro. No. Exp. 7854, 7905, 7955. ', '../uploads/noimage.jpg', '2021-03-19', '05-09-1232.2-01-001'),
(416, '3', 'AUXILIAR I DE LA DAFIM', 'De Oficina y Muebles', 'Sillas Secretariales', 715.00, 'Silla semi Ejecutiva con apoyabrazos, Respaldo de malla, y asiento de tela, Reclinable, Soporte Lumbar, Base con 5 Rodos Dobles Resistencias  de 200LBS. O.C. 7171', '../uploads/noimage.jpg', '2021-11-25', '03-06-1232.3-39-047'),
(417, '3', 'AUXILIAR II DE LA DAFIM', 'De Oficina y Muebles', 'Sillas Secretariales', 715.00, 'Silla Semi Ejecutiva con Apoyabrazos Respaldo de malla y asiento de tela, Reclinable, Soporte Lumbar, Base con 5 rodos dobles, Resistencia de 200LBS. O.C. 7171', '../uploads/noimage.jpg', '2021-11-25', '03-07-1232.3-39-048'),
(418, '2', 'AUXILIAR DE SECRETARIA MUNICIPAL', 'De Oficina y Muebles', 'Sillas Secretariales', 715.00, 'Silla semi ejecutiva con apoyabrazos, respaldo de malla y asiento de tela, reclinable, soporte lumbar, base con 5 rodos dobles, resistencia de 200LBS. O.c.7171', '../uploads/noimage.jpg', '2021-11-25', '02-05-1232.3-39-049'),
(419, '3', 'ENCARGADO DE IUSI', 'De Oficina y Muebles', 'Lap-top', 4790.00, 'Laptop HP Procesador Core I3, 4GB DE Memoria Ram, Unidad de Estado Solido de 256GB, Color Negro. O.c. 7178', '../uploads/noimage.jpg', '2021-11-30', '03-09-1232.3-21-020'),
(420, '3', 'ENCARGADO DE CONTABILIDAD', 'De Oficina y Muebles', 'Rotuladora de etiquetas', 1809.00, 'Impresora marca BROTHER, Modelo PT-D600, Serie No. U63942F1Z381057, COLOR NEGRA, Para Impresi?n De Etiquetas Adhesivas para codigos de inventario. Caja 43, Exp. 17', '../uploads/noimage.jpg', '2021-12-01', '03-02-1232.3-59-002'),
(421, '3', 'AUXILIAR DE GUARDA ALMACEN', 'De Oficina y Muebles', 'Sillas Secretariales', 715.00, 'Silla semiejecutiva con apoyabrazos, Respaldo de malla y Asiento de Tela, Reclinable, Soporte Lumbar, Base con 5 Rodos dobles, Color Negra. O.c. 7193', '../uploads/noimage.jpg', '2021-12-14', '03-12-1232.3-39-050'),
(422, '4', 'AUXILIAR DMP III', 'De Oficina y Muebles', 'Impresoras', 1895.00, 'Impresora Epson Multifuncional Ecotank L3210, Serie No. X8HJ023593, Color Negro. O.c. 7193', '../uploads/noimage.jpg', '2021-12-14', '04-04-1232.3-20-059'),
(423, '4', 'AUXILIAR DMP III', 'De Oficina y Muebles', 'Sillas Secretariales', 715.00, 'Silla semiejecutiva con apoyabrazos, Respaldo de malla y Asiento de Tela, Reclinable, Soporte Lumbar, Base con 5 Rodos dobles, Color Negra. O.c. 7193', '../uploads/noimage.jpg', '2021-12-14', '04-04-1232.3-39-051'),
(424, '5', 'ENCARGADO DE BOMBAS DE AGUA MUNICIPAL', 'Otros Activos', 'Motor, Motor sumergible, Bomba de agua', 15150.00, 'Motor Sumergible de 10HP 230 Voltios Franklin Electric, en tanque de agua potable No. 1, O.C. 7153 ', '../uploads/noimage.jpg', '2021-11-15', '05-03-1237.0-32-010'),
(425, '4', 'DIRECTOR MUNICIPAL DE PLANIFICACION', 'Otros Activos', 'Equipo de Aire Acondicionado', 5500.00, 'Aire Acondicionado 18,000BTU, Marca AIRE ONE, 220V, Dimensi?n 930mm*360mm*285mm, Color Blanco, S/S. O.C. 7160.', '../uploads/noimage.jpg', '2021-11-16', '04-01-1237.0-31-012'),
(426, '1', 'ALCALDE MUNICIPAL', 'Educacional Cultural y Recreativo', 'Televisores', 3899.00, 'Televisor Led, Smart UHD-4K, marca LG de 43\", Color Negro, Serie No.  108MXMT3T275, Caja 42, Exp. 17', '../uploads/noimage.jpg', '2021-11-24', '01-01-1232.5-05-001'),
(427, '20', 'AUXILIAR DE LA UGAM', 'De Oficina y Muebles', 'Equipo de c?mputo', 5550.00, 'Computadora De Escritorio, Procesador Dual Core, Memoria Ram De 4GB, Unidad De Estado Solido de 120GB, WIFI, Monitor de 18.5\", BROCS, Serie No. 0190012103004367, Color negra, Teclado y Mouse Imice, O.C. 7217', '../uploads/noimage.jpg', '2021-12-23', '20-02-1232.3-12-034'),
(428, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 48552.50, 'MEJORAMIENTO CALLE 4TA AVENIDA ENTRE 3RA Y 4TA CALLE, ZONA 1 RIO BRAVO, SUCHITEPEQUEZ. SMIP 315', '../uploads/noimage.jpg', '2021-12-28', '12-00-1238.0-01-061'),
(429, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 98076.50, 'MEJORAMIENTO CALLE 4TA AVENIDA FINAL ZONA 1 ZONA 1 RIO BRAVO, SUCHITEPEQUEZ. SMIP 318', '../uploads/noimage.jpg', '2021-12-02', '12-00-1238.0-01-062'),
(430, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 94451.50, 'MEJORAMIENTO CALLE 3RA AVENIDA ENTRE 1RA Y 2DA CALLE, ZONA 1 RIO BRAVO, SUCHITEPEQUEZ. SMIP 317', '../uploads/noimage.jpg', '2021-12-28', '12-00-1238.0-01-063'),
(431, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1198954.00, 'MEJORAMIENTO CALLE RURAL SANTO TOMAS II, RIO BRAVO SUCHITEPEQUEZ RIO BRAVO, SUCHITEPEQUEZ, SMIP: 288 seg?n Acta No. ACTA NUMERO 013-2021 de fecha 23/12/2021', '../uploads/noimage.jpg', '2021-12-30', '12-00-1238.0-01-064'),
(432, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 2212000.00, 'AMPLIACION SISTEMA DE AGUA POTABLE, CON PERFORACION DE POZO MECANICO CABECERA MUNICIPAL, RIO BRAVO, SUCHITEPEQUEZ, SMIP:290', '../uploads/noimage.jpg', '2022-03-17', '12-00-1238.0-01-066'),
(433, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 336808.00, 'PROYECTO DE MEJORAMIENTO CAMINO ALDEA GUATALON FASE I, RIO BRAVO SUCHITEPEQUEZ; APROVADO EN ACTA 005-2021, PUNTO 9 DE FECHA 28-01-2021 SESION EXTRAORDINARIA.', '../uploads/noimage.jpg', '2022-04-06', '12-00-1238.0-01-067'),
(434, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 898250.00, 'MEJORAMIENTO CAMINO RURAL HACIA COLONIA LA SOLOLATECA, RIO BRAVO SUCHITEPEQUEZ. SMIP:319', '../uploads/noimage.jpg', '2022-05-16', '12-00-1238.0-01-068'),
(435, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 2215176.00, 'AMPLIACION DE SISTEMA DE AGUA POTABLE CON PERFORACION DE POZO MECANICO, ALDEA GUATALON, RIO BRAVO SUCHITEPEQUEZ. SMIP:289', '../uploads/noimage.jpg', '2022-05-16', '12-00-1238.0-01-069'),
(436, '5', 'ENCARGADO DE BOMBAS DE AGUA MUNICIPAL', 'Otros Activos', 'Motor, Motor sumergible, Bomba de agua', 9200.00, 'Motor Sumergible Franklin Electric 5HP 230V. Seg?n O.E.7245', '../uploads/noimage.jpg', '2022-01-19', '05-03-1237.0-32-011'),
(437, '5', 'ENCARGADO DE BOMBAS DE AGUA MUNICIPAL', 'Otros Activos', 'Bomba de Agua', 4500.00, 'BOMBA SUMERGIBLE DE 5HP AMERICANA SERIE 90 GPM. No. Exp.7245 ', '../uploads/noimage.jpg', '2022-01-19', '05-03-1237.0-29-010'),
(438, '5', 'ENCARGADO DE BOMBAS DE AGUA MUNICIPAL', 'Otros Activos', 'Motor, Motor sumergible, Bomba de agua', 15492.00, 'Motor Sumergible de 10HP, Franklin Electric 230V, Monofasico Americano, para tanque de agua potable ubicado en Parcelamiento Santa Elena 2. No. Exp. 7338', '../uploads/noimage.jpg', '2022-03-10', '05-03-1237.0-32-012'),
(439, '5', 'ENCARGADO DE BOMBAS DE AGUA MUNICIPAL', 'Otros Activos', 'Bomba de Agua', 10362.00, 'Bomba Sumergible de 10HP, SERIE 150 GPM Franklin Electric America, para tanque de agua potable ubicado en parcelamiento Santa Elena 2 . No. Exp. 7339', '../uploads/noimage.jpg', '2022-03-10', '05-03-1237.0-29-011'),
(440, '2', 'SECRETARIO MUNICIPAL', 'Otros Activos', 'Equipo de Aire Acondicionado', 4500.00, 'Aire Acondicionado de 18,000 BTU, 220V. Tipo Minisplit, Maca Air One, para oficina de Secretaria. No. Exp. 7359', '../uploads/noimage.jpg', '2022-03-24', '02-01-1237.0-31-013'),
(441, '3', 'AUXILIAR II DE LA DAFIM', 'Otros Activos', 'Equipo de Aire Acondicionado', 4500.00, 'Aire Acondicionado marca Confor Star de 18,000BTU, 220V. Para Colocacion en oficina de Receptoria. No. Exp. 7427', '../uploads/noimage.jpg', '2022-05-04', '03-07-1237.0-31-014'),
(442, '3', 'ENCARGADO DE GUARDA ALMACEN', 'Otros Activos', 'Equipo de Aire Acondicionado', 4000.00, 'Aire Acondicionado de 12,000BTU, Marca Conforstar, con Bomba de Condensados, para oficina de Guarda Almac?n. No. Exp. 7489', '../uploads/noimage.jpg', '2022-06-10', '03-11-1237.0-31-015'),
(443, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Sillas Secretariales', 795.00, 'Silla Semi Ejecutiva con Apoyabrazos, asiento de tela, respaldo de malla, base con 5 rodos, Color Negro. No. Exp. 7357', '../uploads/noimage.jpg', '2022-02-25', '01-01-1232.3-39-052'),
(444, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Escritorios de metal', 1849.00, 'Escritorio Secretarial Frabricado con tubo cuadrado de 1\" tablero de formica con gavetas, color negro, medidas 1.20*0.75 Mts. No. Exp.', '../uploads/noimage.jpg', '2022-02-25', '01-01-1232.3-13-023'),
(445, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Impresoras', 4659.00, 'Impresora Multifuncional Epson Ecotank L6171 (Copiadora, impresora y Scaner Oficio) color Negro. No. Exp. 7357', '../uploads/noimage.jpg', '2022-02-25', '01-01-1232.3-20-060'),
(446, '16', 'DIRECTORA OMM', 'De Oficina y Muebles', 'Archivos de metal', 3719.00, 'ARCHIVO LATERAL DE 4 GAVETAS, MEDIDAS DEL ARCHIVO: 0.80*0.51*1.32MTS, COLOR NEGRO MARCA CONTINENTAL. EXP. 7356', '../uploads/noimage.jpg', '2022-03-23', '16-01-1232.3-02-025'),
(447, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Escritorios de metal', 5975.00, 'Escritorio Gerencial; Fabricado con acero y Formica, Pedestal de 2 Gavetas Lapiceras y 1 gaveta de Archivo con llave, Color Negro. No. Exp: 7390', '../uploads/noimage.jpg', '2022-04-08', '01-01-1232.3-13-024'),
(448, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Sillas Secretariales', 2219.00, 'Silla Gerencial con Apoyabrazos, Respaldo y asiento de cuero; base con 5 rodos dobles, soporte 300Lbs, color negro. No. EXP: 7390', '../uploads/noimage.jpg', '2022-04-08', '01-01-1232.3-39-053'),
(449, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Amueblado de Sala, sof?', 6698.10, 'Juego de sala seccional Mobhel Stambul color caf?. No. Exp. 7437', '../uploads/noimage.jpg', '2022-05-06', '01-01-1232.3-49-002'),
(450, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Lap-top', 4270.00, 'Computadora Lapto HP 15-DW150ILA, CELERON N4020, 4GB DE RAM DDR4, UNIDAD DE ESTADO SOLIDO DE 240GB, PANTALLA 15.6\" WINDOWS10. No. Exp. 7391', '../uploads/noimage.jpg', '2022-04-08', '01-01-1232.3-21-021'),
(451, '2', 'AUXILIAR DE SECRETARIA .MUNICIPAL', 'De Oficina y Muebles', 'Impresoras', 2045.00, 'IMPRESORA MULTIFUNCIONAL MARCA EPSON L3210, SERIE No. XAGB213822, Color Negro, No. Exp. 7519', '../uploads/noimage.jpg', '2022-08-05', '02-08-1232.3-20-061'),
(452, '2', 'AUXILIAR DE SECRETARIA .MUNICIPAL', 'De Oficina y Muebles', 'Equipo de c?mputo', 4985.00, 'COMPUTADORA DE ESCRITORIO MARCA BOCS PROCESADOR PENTIUM GOLD, 8GB DE MEMORIA RAM, UNIDAD DE ESTADO SOLIDO DE 12OFG, MONITOR 18.5\", COLOR NEGRO, SERIE No. 0190012110005118, TECLADO, MAUSE Y BOCINAS. No. Exp. 7492', '../uploads/noimage.jpg', '2022-06-13', '02-08-1232.3-12-061'),
(453, '2', 'AUXILIAR DE SECRETARIA MUNICIPAL', 'De Oficina y Muebles', 'Impresoras', 2045.00, 'IMPRESORA MULTIFUNCIONAL EPSON L3210, SERIE No. XAGB205333, COLOR NEGRO, No. Exp. 7544', '../uploads/noimage.jpg', '2022-07-08', '02-06-1232.3-20-062'),
(454, '3', 'INSPECTOR DE ARBITRIOS MUNICIPALES', 'De Oficina y Muebles', 'Impresoras', 3600.00, 'IMPRESORA TERMICA PORTATIL 3\" BLUETOOTH TSC, ALPHA 3RB, COLOR GRIS, SERIE No. D4821520858. No. Exp. 7607', '../uploads/noimage.jpg', '2022-08-05', '03-13-1232.3-20-063'),
(455, '3', 'AUXILIAR DE COMPRAS', 'De Oficina y Muebles', 'Lap-top', 6635.00, 'COMPUTADORA TIPO LAPTOP CORE I5, UNIDAD DE ESTADO SOLIDO DE 256GB, 8GB DE MEMORIA RAM LECTOR BIOMETRICO, TECLADO NUMERICO, COLOR GRIS, MODELO 15-DW1514LA, MARCA HP,SERIE S/N. No. Exp. 7493', '../uploads/noimage.jpg', '2022-06-13', '03-14-1232.3-21-022'),
(456, '22', 'ENCARGADO DE OMAS', 'De Oficina y Muebles', 'Lap-top', 4445.00, 'COMPUTADORA TIPO LAPTOP HP, CELERON 15DW1514LA, UNIDAD DE ESTADO SOLIDO 120GB, TECLADO NUMERICO,SERIE No. CND15180CV, MODELO: RT8821CE, COLOR NEGRO. No. Exp: 7482', '../uploads/noimage.jpg', '2022-06-01', '22-01-1232.3-21-023'),
(457, '23', 'TECNICO DE OMGIRD', 'De Oficina y Muebles', 'Archivos de metal', 1549.00, 'ARCHIVO DE METAL DE 3 GAVETAS MEDIDAS 0.46*0.59*1.02MTS, COLOR NEGRO. No. Exp:7464.', '../uploads/noimage.jpg', '2022-05-24', '23-01-1232.3-02-026'),
(458, '23', 'TECNICO DE OMGIRD', 'De Oficina y Muebles', 'Lap-top', 4290.00, 'LAPTO DELL INSPIRON 15, INTEL CELERON PROCESADOR N4020, 4GB MEMORIA RAM, 128 GB SSD, WINDOWS 10, COLOR NEGRO. No. Exp:7358', '../uploads/noimage.jpg', '2022-03-24', '23-01-1232.3-21-024'),
(459, '23', 'TECNICO DE OMGIRD', 'De Oficina y Muebles', 'Impresoras', 2169.00, 'IMPRESORA MULTIFUNCIONAL EPSON ECO TANK L3210, MODELO C634J, SERIE XAGB083041, COLOR NEGRO. No. Exp: 7356', '../uploads/noimage.jpg', '2022-03-24', '23-01-1232.3-20-064'),
(460, '23', 'TECNICO DE OMGIRD', 'De Oficina y Muebles', 'Escritorios de metal', 1849.00, 'ESCRITORIO SECRETARIAL, MARCA CONTINENTAL, MEDIDAS: 1.20 MTS LARGO, 75 ANCHO, 77CM ALTO, METAL Y FORMICA, FABRICADO CON TUBO CUADRADO DE 1\", MODULOS DE 3 GAVETAS,  COLOR NEGRO. No. Exp: 7291', '../uploads/noimage.jpg', '2022-02-11', '23-01-1232.3-13-025'),
(461, '23', 'TECNICO DE OMGIRD', 'De Oficina y Muebles', 'Sillas Secretariales', 735.00, 'SILLA SEMI EJECUTIVA CON APOYABRAZOS, RESPALDO DE MALLA Y ASIENTO DE TELA IMPORTADA, 5 RODOS, SOPORTE 200 LIBRAS. No. Exp: 7291', '../uploads/noimage.jpg', '2022-02-11', '23-01-1232.3-39-054'),
(462, '22', 'ENCARGADO DE OMAS', 'De Oficina y Muebles', 'Escritorios de metal', 1849.00, 'ESCRITORIO SECRETARIAL, MARCA CONTINENTAL, METAL Y FORMICA, FABRICADO CON TUBO CUADRADO DE 1\", MEDIDAS 1.20MTS LARGO, 75 CM ANCHO, 77 CM ALTO, MODULOS DE 3 GAVETAS COLOR NEGRO. No. Exp: 7291', '../uploads/noimage.jpg', '2022-02-11', '22-01-1232.3-13-026'),
(463, '22', 'ENCARGADO DE OMAS', 'De Oficina y Muebles', 'Sillas Secretariales', 735.00, 'SILLA SEMI EJECUTIVA CON APOYABRAZOS, RESPALDO DE MALLA Y ASIENTO DE TELA IMPORTADA, 5 RODOS  SOPORTE DE 200 LIBRAS. No. Exp: 7291', '../uploads/noimage.jpg', '2022-02-11', '22-01-1232.3-39-055'),
(464, '22', 'ENCARGADO DE OMAS', 'De Oficina y Muebles', 'Archivos de metal', 1559.00, 'ARCHIVO DE 3 GAVETAS, FABRICADO CON ESTRUCTURA DE LAMINA DE ACERO SISTEMA DE LLAVES, MEDIDAS; 0.4*0.59*1.02 MTS, COLOR NEGRO. No. Exp: 7651', '../uploads/noimage.jpg', '2022-08-29', '22-01-1232.3-02-027'),
(465, '4', 'AUXILIAR DMP II', 'De Oficina y Muebles', 'Sillas Secretariales', 795.00, 'SILLA SEMI-EJECUTIVA CON APOYABRAZOS, RESPALDO DE MALLA Y ASIENTO DE TELA IMPORTADA, BASE CON 5 RODOS DOBLES, SOPORTA 200 LIBRAS. No. Exp: 7651', '../uploads/noimage.jpg', '2022-08-29', '04-03-1232.3-39-056'),
(466, '20', 'DIRECTOR UGAM', 'De Oficina y Muebles', 'Impresoras', 1695.00, 'IMPRESORA EPSON L121, SERIE No. X9LM032938, COLOR NEGRO. No. Exp: 7642', '../uploads/noimage.jpg', '2022-08-30', '20-01-1232.3-20-065'),
(467, '3', 'CAJERA GENERAL/OFICIAL I DE TESORERIA', 'De Oficina y Muebles', 'Equipo de c?mputo', 6400.00, 'COMPUTADORA DE ESCRITORIO MARCA LENOVO CORE I5, 4GB DE MEMORIA RAM, UNIDAD DE ESTADO SOLIDO DE 120GB, MONITOR BROCS 18.5\" No. SERIE: 0190012110002834, MAUSE, TECLADO, COLOR NEGRO. No. Exp: 7649 ', '../uploads/noimage.jpg', '2022-08-29', '03-05-1232.3-12-062'),
(468, '22', 'ENCARGADO DE OMAS', 'De Oficina y Muebles', 'Ventiladores de piso', 394.95, 'VENTILADOR DE PISO, DE 6 ASPAS, COLOR NEGRO, MARCAR TAURUS, MODELO RUSH. OMAS.', '../uploads/noimage.jpg', '2022-08-05', '22-01-1232.3-41-020'),
(469, '23', 'TECNICO DE OMGIRD', 'De Oficina y Muebles', 'Ventiladores de piso', 394.95, 'VENTILADOR DE PISO, DE 6 ASPAS, MARCA TAURUS, MODELO RUSH, COLOR NEGRO, OMGIRD.', '../uploads/noimage.jpg', '2022-08-05', '23-01-1232.3-41-021'),
(470, '1', 'HISTORIAL', 'De Oficina y Muebles', 'Sillas Secretariales', 735.00, 'BIB.(29/12/2022)-SILLA SEMI-EJECUTIVA CON APOYABRAZO, RESPALDO DE MALLA Y ASIENTO DE TELA IMPORTADA, SOPORTE 200 LBS, 5 RODOS, COLOR NEGRA. No. Exp: 7315 ', '../uploads/noimage.jpg', '2022-02-25', '01-01-1232.3-39-057'),
(471, '1', 'HISTORIAL', 'De Oficina y Muebles', 'Escritorios de metal', 1849.00, 'BIB.(29/12/2022)-ESCRITORIO SECRETARIAL DE 3 GABETAS COLOR NEGRO EN METAL Y FORMICA, COLOR NEGRO. EXP. No. 7315', '../uploads/noimage.jpg', '2022-02-25', '01-01-1232.3-13-027'),
(472, '2', 'REGISTRADOR MUNICIPAL DE PERSONAS JURIDICAS', 'De Oficina y Muebles', 'Impresoras', 2190.00, 'IMPRESORA SISTEMA CONTINUO, MARCA EPSON L3250 SERIE No. XAGZ135208, COLOR NEGRO. No. Exp: 7707', '../uploads/noimage.jpg', '2022-10-04', '02-03-1232.3-20-066'),
(473, '5', 'ENCARGADO DE BOMBAS DE AGUA MUNICIPAL', 'Otros Activos', 'Motor, Motor sumergible, Bomba de agua', 9797.00, 'MOTOR SUMERGIBLE FRANKLIN ELECTRIC DE 5HP EN 230VOL 1 FASE. No. Exp: 7698', '../uploads/noimage.jpg', '2022-09-28', '05-03-1237.0-32-013'),
(474, '5', 'ENCARGADO DE BOMBAS DE AGUA MUNICIPAL', 'Otros Activos', 'Bomba de Agua', 2084.00, 'BOMBA APEC DE 5HP, PARA MANTENIMIENTO DE TANQUE DE AGUA POTABLE, DE COLONIA MARGARITA 1, RIO BRAVO SUCH. No. Exp: 7698', '../uploads/noimage.jpg', '2022-09-28', '05-03-1237.0-29-012'),
(475, '5', 'ENCARGADO DE BOMBAS DE AGUA MUNICIPAL', 'Otros Activos', 'Motor, Motor sumergible, Bomba de agua', 17660.00, 'MOTOR SUMERGIBLE FRANKLIN ELECTRIC DE 7.5 HP.  Exp. No. 7722', '../uploads/noimage.jpg', '2022-10-18', '05-03-1237.0-32-014'),
(476, '5', 'ENCARGADO DE BOMBAS DE AGUA MUNICIPAL', 'Otros Activos', 'Bomba de Agua', 5925.00, 'BOMBA SUMERGIBLE APEC DE 7.5HP. Exp. No. 7722', '../uploads/noimage.jpg', '2022-10-18', '05-03-1237.0-29-013'),
(477, '5', 'ENCARGADO DE PUBLICIDAD MUNICIPAL', 'Educacional Cultural y Recreativo', 'Amplificador de Audio', 3695.01, 'PODER GEMINI DE 5000 WATTS, MODELO XGA-5000, COLOR: NEGRO, SERIE No. 2134L05827. Factura No. 1919042220 de SUPERBOCINAS, S.A.', '../uploads/noimage.jpg', '2022-10-18', '05-02-1232.5-08-001'),
(478, '8', 'ELECTRICISTA MUNICIPAL I', 'De Oficina y Muebles', 'Estantes de metal', 949.99, 'ESTANTE ACERO HD, NEGRO 182*, COLOR NEGRO, MEDIDAS 87 CM DE ANCHO, 1.80 DE LARGO. Serie No. 886EF879, Factura No. 1999327052, CEMACO S.A. Fondo Avance Rotativo Caja No. 62, Expediente No. 18', '../uploads/noimage.jpg', '2022-10-18', '08-01-1232.3-15-001'),
(479, '2', 'INFORMACION PUBLICA', 'De Oficina y Muebles', 'Mesa de Estaci?n', 725.00, 'Escritorio Secretarial 2 niveles de Melamina, color beige. O.C. 38958942', '../uploads/noimage.jpg', '2022-11-10', '02-07-1232.3-44-007'),
(480, '2', 'INFORMACION PUBLICA', 'De Oficina y Muebles', 'Sillas Secretariales', 795.00, 'Silla Secretarial Marca Kanguro Mesh, color Negro con respaldo Azul. O.C.38958942', '../uploads/noimage.jpg', '2022-11-10', '02-07-1232.3-39-058'),
(481, '9', 'ENCARGADO DE PERSONAL DE CAMPO', 'Maquinaria y Equipo de construcci?n', 'Demoledor', 4180.00, 'Demoledor de 20 KG, 1600 W, Color Negro con gris. Caja Numero 70, Exp. 18', '../uploads/noimage.jpg', '2022-11-17', '09-01-1232.2-02-001'),
(482, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 67874.86, 'Construci?n de muro de contenci?n, para protecci?n del camino, parte alta Caserio Rio Seco Rio Bravo, Suchitepequez. ', '../uploads/noimage.jpg', '2022-12-27', '12-00-1238.0-01-070'),
(483, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 157894.86, 'Construccion muro de contenci?n gaviones para mitigaci?n y proteccion de viviendas expuestas en colonia Naranjales, Rio Bravo, Suchitepequez.', '../uploads/noimage.jpg', '2022-12-27', '12-00-1238.0-01-071'),
(484, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 126479.86, 'MEJORAMIENTO CALLE 6TA AVENIDA 3RA Y 4TA CALLE ZONA 3 RIO BRAVO, SUCHITEPEQUEZ.', '../uploads/noimage.jpg', '2022-12-27', '12-00-1238.0-01-072'),
(485, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 122649.86, 'MEJORAMIENTO CALLE 6TA AVENIDA 2DA Y 3RA CALLE ZONA 3, RIO BRAVO SUCHITPEQUEZ.', '../uploads/noimage.jpg', '2022-12-27', '12-00-1238.0-01-073'),
(486, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Sillas Secretariales', 0.00, 'BIB -SILLA SEMI-EJECUTIVA CON APOYABRAZO, RESPALDO DE MALLA Y ASIENTO DE TELA IMPORTADA, SOPORTE 200 LBS, 5 RODOS, COLOR NEGRA. No. Exp: 7315 ', '../uploads/noimage.jpg', '2022-12-29', '01-01-1232.3-39-057'),
(487, '1', 'ALCALDE MUNICIPAL', 'De Oficina y Muebles', 'Escritorios de metal', 0.00, 'BIB -ESCRITORIO SECRETARIAL DE 3 GABETAS COLOR NEGRO EN METAL Y FORMICA, COLOR NEGRO. EXP. No. 7315', '../uploads/noimage.jpg', '2022-12-29', '01-01-1232.3-13-027'),
(488, '10', 'BIBLIOTECARIA MUNICIPAL', 'De Oficina y Muebles', 'Equipo de c?mputo', 4975.00, 'COMPUTADORA DE ESCRITORIO MINI, PC GREEN G3 CELERON, 16GB RAM, 500GB UNIDAD DE ESTADO SOLIDO, WIFI, MONITOR DE 19\" MARCA BROCS, NO. SERIE: 185202204140094, COLOR NEGRO, No. Exp. 7866', '../uploads/noimage.jpg', '2023-01-18', '10-01-1232.3-12-063'),
(489, '10', 'BIBLIOTECARIA MUNICIPAL', 'De Oficina y Muebles', 'Impresoras', 1975.00, 'IMPRESORA EPSON L3210, COLOR NEGRA, No. Serie: XAGB290639, No. Exp. 7866', '../uploads/noimage.jpg', '2023-01-18', '10-01-1232.3-20-067'),
(490, '3', 'ENCARGADO DE CONTABILIDAD', 'De Oficina y Muebles', 'Lap-top', 12999.00, 'COMPUTADORA PORTATIL, MACBOOK PRO 13 CHIP M2, RAM 8GB, 256GB SSD SPACE GRAY, COLOR GRIS, No. Serie: G74HPGFXYW, No. Exp: 7896', '../uploads/noimage.jpg', '2023-02-09', '03-02-1232.3-21-025'),
(491, '9', 'ENCARGADO DE PERSONAL DE CAMPO', 'Otros Activos', 'Desbrozadoras (Chapeadoras)', 5200.00, 'DESBROZADORA HUSQVARNA MODELO 143.RII, No. Serie:21020222782246, No. Exp: 7865', '../uploads/noimage.jpg', '2023-01-18', '09-01-1237.0-11-003'),
(492, '9', 'ENCARGADO DE PERSONAL DE CAMPO', 'Otros Activos', 'Desbrozadoras (Chapeadoras)', 5200.00, 'DESBROZADODRA HUSQVARNA MODELO 143.R II, No. Serie: 21020222782250, No. Exp: 7865', '../uploads/noimage.jpg', '2023-01-18', '09-01-1237.0-11-004'),
(493, '12', 'Bienes de Uso P?blico', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 395524.00, 'AMPLIACION ESCUELA PRIMARIA OFICIAL URBANA DE VARONES SANTO TOMAS 1 RIO BRAVO, SUCHITEPEQUEZ, SMIP:347 SEG?N ACTA No. ACTA 003-2023 DE FECHA 13/03/2023, No. Exp: 54', '../uploads/noimage.jpg', '2023-07-12', '12-00-1231.1-01-018'),
(494, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 1149500.00, 'MEJORAMIENTO CAMINO RURAL LOS NARANJALES HACIA SANTA ELENA RIO BRAVO, SUCHITEPEQUEZ, SMIP:355 SEG?N ACTA No.  ACTA 006-2023 DE FECHA 12/04/2023 No. EXP:59', '../uploads/noimage.jpg', '2023-07-12', '12-00-1238.0-01-074'),
(495, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 2028000.00, 'AMPLIACION SISTEMA DE ALCANTARILLADO SANITARIO CABECERA MUNICIPAL RIO BRAVO, SUCHITEPEQUEZ, SMIP: 325 SEG?N ACTA No. ACTA 005-2023 DE FECHA 11/04/2023 No. EXP:58', '../uploads/noimage.jpg', '2023-07-12', '12-00-1238.0-01-075'),
(496, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 4534974.20, 'MEJORAMIENTO CAMINO RURAL CASERIO RIO SECO HACIA SAN ANTONIO LAS FLORES RIO BRAVO, SUCHITEPEQUEZ, SMIP:326 SEG?N ACTA No. ACTA 008-2023 DE FECHA 09/06/2023, No. EXP: 51', '../uploads/noimage.jpg', '2023-08-09', '12-00-1238.0-01-076'),
(497, '12', 'Bienes de Uso P?blico', 'Bienes de uso Comun', 'Bienes de uso Com?n', 2004245.50, 'CONSTRUCCI?N SISTEMA DE AGUA POTABLE, LOTIFICACION NARANJALES, RIO BRAVO SUCHITEP?QUEZ., SMIP:255 SEG?N ACTA, No. ACTA 009-2023 DE FECHA 20/10/2023.', '../uploads/noimage.jpg', '2023-10-23', '12-00-1238.0-01-077'),
(498, '11', 'Bienes Inmuebles', 'Propiedad y Planta en Operacion', 'Edificios e Instalaciones', 399500.00, 'MEJORAMIENTO ESCUELA PRIMARIA OFICIAL RURAL MIXTA, ALDEA MORAZAN, RIO BRAVO, SUCHITEPEQUEZ, SMIP: 348 seg?n Acta No. 002-2023 de fecha 07/03/2023', '../uploads/noimage.jpg', '2023-12-29', '11-00-1231.1-01-019');

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
-- Indices de la tabla `casas`
--
ALTER TABLE `casas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evento_id` (`evento_id`);

--
-- Indices de la tabla `comunidades`
--
ALTER TABLE `comunidades`
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
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
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
-- AUTO_INCREMENT de la tabla `casas`
--
ALTER TABLE `casas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `comunidades`
--
ALTER TABLE `comunidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `ingreso_prod`
--
ALTER TABLE `ingreso_prod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

--
-- AUTO_INCREMENT de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `casas`
--
ALTER TABLE `casas`
  ADD CONSTRAINT `casas_ibfk_1` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`id`) ON DELETE CASCADE;

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
