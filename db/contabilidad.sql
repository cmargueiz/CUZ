-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2023 a las 15:44:04
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `contabilidad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `id` int(11) NOT NULL,
  `usuario` varchar(25) DEFAULT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat001`
--

CREATE TABLE `cat001` (
  `codigo` varchar(2) NOT NULL,
  `valores` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat001`
--

INSERT INTO `cat001` (`codigo`, `valores`) VALUES
('00', 'Modo prueba '),
('01', 'Modo producción');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat002`
--

CREATE TABLE `cat002` (
  `codigo` varchar(2) NOT NULL,
  `valores` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat002`
--

INSERT INTO `cat002` (`codigo`, `valores`) VALUES
('01', 'Factura'),
('03', 'Comprobante de crédito fiscal'),
('04', 'Nota de remisión'),
('05', 'Nota de crédito'),
('06', 'Nota de débito'),
('07', 'Comprobante de retención'),
('08', 'Comprobante de liquidación'),
('09', 'Documento contable de liquidación'),
('11', 'Facturas de exportación'),
('14', 'Factura de sujeto excluido'),
('15', 'Comprobante de donación '),
('01', 'Factura'),
('03', 'Comprobante de crédito fiscal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat003`
--

CREATE TABLE `cat003` (
  `codigo` varchar(2) NOT NULL,
  `valores` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat004`
--

CREATE TABLE `cat004` (
  `codigo` varchar(2) NOT NULL,
  `valores` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat004`
--

INSERT INTO `cat004` (`codigo`, `valores`) VALUES
('01', 'Transmisión normal'),
('02', 'Transmisión por contingencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat005`
--

CREATE TABLE `cat005` (
  `codigo` varchar(1) NOT NULL,
  `valores` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat005`
--

INSERT INTO `cat005` (`codigo`, `valores`) VALUES
('1', 'No disponibilidad de sistema del MH'),
('3', 'No disponibilidad de sistema del emisor'),
('4', 'Falla en el suministro de servicio de Internet del Emisor'),
('5', 'Falla en el suministro de servicio de energía eléctrica del emisor\r\nque impida la transmisión de los DTE'),
('6', 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat006`
--

CREATE TABLE `cat006` (
  `codigo` varchar(2) NOT NULL,
  `valores` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat006`
--

INSERT INTO `cat006` (`codigo`, `valores`) VALUES
('22', 'Retención IVA 1%'),
('C4', 'Retención IVA 13%'),
('C9', 'Otras retenciones IVA casos especiales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat007`
--

CREATE TABLE `cat007` (
  `codigo` varchar(1) NOT NULL,
  `valores` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat007`
--

INSERT INTO `cat007` (`codigo`, `valores`) VALUES
('1', 'Físico '),
('2', 'Retención IVA 13%');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat009`
--

CREATE TABLE `cat009` (
  `codigo` varchar(2) NOT NULL,
  `valores` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat009`
--

INSERT INTO `cat009` (`codigo`, `valores`) VALUES
('01', 'Sucursal / Agencia'),
('02', 'Casa matriz '),
('04', 'Bodega'),
('07', 'Predio y/o patio'),
('20', 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat010`
--

CREATE TABLE `cat010` (
  `codigo` varchar(2) NOT NULL,
  `valores` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat010`
--

INSERT INTO `cat010` (`codigo`, `valores`) VALUES
('1', 'Cirugía'),
('2', 'Operación'),
('3', 'Tratamiento médico'),
('4', 'Cirugía instituto salvadoreño de Bienestar Magisterial'),
('5', 'Operación Instituto Salvadoreño de Bienestar Magisterial'),
('6', 'Tratamiento médico Instituto Salvadoreño de Bienestar Magisterial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat011`
--

CREATE TABLE `cat011` (
  `codigo` varchar(2) NOT NULL,
  `valores` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat011`
--

INSERT INTO `cat011` (`codigo`, `valores`) VALUES
('1', 'Bienes'),
('2', 'Servicios'),
('3', 'Ambos (Bienes y Servicios)'),
('4', 'Otros tributos por ítem');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat012`
--

CREATE TABLE `cat012` (
  `codigo` varchar(2) NOT NULL,
  `valores` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cat012`
--

INSERT INTO `cat012` (`codigo`, `valores`) VALUES
('01', 'Ahuachapán'),
('02', 'Santa Ana'),
('03', 'Sonsonate'),
('04', 'Chalatenango'),
('05', 'La Libertad'),
('06', 'San Salvador '),
('07', 'Cuscatlán'),
('08', 'La Paz '),
('09', 'Cabañas'),
('10', 'San Vicente'),
('11', 'Usulután'),
('12', 'San Miguel'),
('13', 'Morazán'),
('14', 'La Unión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuerpodocumento`
--

CREATE TABLE `cuerpodocumento` (
  `numeroControl` int(11) NOT NULL,
  `codigoGeneracion` int(11) NOT NULL,
  `item` varchar(4) NOT NULL,
  `tipoItem` varchar(4) NOT NULL,
  `tipoDonacion` varchar(1) NOT NULL,
  `depreciacion` varchar(14) NOT NULL,
  `tipDTRelacionado` varchar(2) NOT NULL,
  `tipGenDoc` varchar(1) NOT NULL,
  `numDocRelacionado` varchar(36) NOT NULL,
  `fechaGendoc` date NOT NULL,
  `cantidad` varchar(14) NOT NULL,
  `codigo` varchar(25) NOT NULL,
  `codTributo` varchar(2) NOT NULL,
  `unidadMedida` varchar(2) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `precioUnitario` varchar(14) NOT NULL,
  `valorUnitario` varchar(14) NOT NULL,
  `descuentos` varchar(14) NOT NULL,
  `ventasNSujetas` varchar(14) NOT NULL,
  `ventasExentas` varchar(14) NOT NULL,
  `ventasGravadas` varchar(14) NOT NULL,
  `exportaciones` varchar(14) NOT NULL,
  `valorDonado` varchar(14) NOT NULL,
  `ventas` varchar(11) NOT NULL,
  `codigoTributo` varchar(2) NOT NULL,
  `precSugVenta` varchar(14) NOT NULL,
  `CargosAbono` varchar(14) NOT NULL,
  `ivaItem` varchar(14) NOT NULL,
  `montoretencion` varchar(14) NOT NULL,
  `codRetencion` varchar(2) NOT NULL,
  `ivaRetenido` varchar(14) NOT NULL,
  `fechaIni` date NOT NULL,
  `fechaFin` date NOT NULL,
  `codLiquidacion` varchar(30) NOT NULL,
  `canDocumentos` varchar(9) NOT NULL,
  `valorOpLiq` varchar(14) NOT NULL,
  `valNoPercepcion` varchar(14) NOT NULL,
  `descNoPercepcion` varchar(100) NOT NULL,
  `observacionesItem` varchar(3000) NOT NULL,
  `observacionesItems` varchar(200) NOT NULL,
  `subtotal` varchar(14) NOT NULL,
  `ivaOpLiq` varchar(14) NOT NULL,
  `montoSinIva` varchar(14) NOT NULL,
  `ivaPercibido` varchar(14) NOT NULL,
  `comision` varchar(14) NOT NULL,
  `porcComision` varchar(100) NOT NULL,
  `IvaComision` varchar(14) NOT NULL,
  `ValorLiqPagar` varchar(14) NOT NULL,
  `valorLetras` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docrelacionados`
--

CREATE TABLE `docrelacionados` (
  `numeroControl` varchar(36) NOT NULL,
  `codigoGeneracion` varchar(36) NOT NULL,
  `tipoDoc` varchar(2) NOT NULL,
  `tipoGenera` int(11) NOT NULL,
  `numDocRelacion` varchar(36) NOT NULL,
  `fechaGeneracion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emisor`
--

CREATE TABLE `emisor` (
  `numeroControl` varchar(31) NOT NULL,
  `codigoGeneracion` varchar(36) NOT NULL,
  `nit` varchar(14) NOT NULL,
  `tipoDoc` varchar(2) NOT NULL,
  `numdoc` varchar(14) NOT NULL,
  `ncr` varchar(8) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `codactEco` varchar(6) NOT NULL,
  `desactEco` varchar(150) NOT NULL,
  `nomComercial` varchar(150) NOT NULL,
  `tipEstablecimiento` varchar(2) NOT NULL,
  `Departamento` varchar(2) NOT NULL,
  `Municipio` varchar(2) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `codEstableMH` varchar(4) NOT NULL,
  `codEstable` varchar(10) NOT NULL,
  `codPuntoVentaMH` varchar(4) NOT NULL,
  `codPuntoVenta` varchar(15) NOT NULL,
  `tipoItem` int(11) NOT NULL,
  `recintoFiscal` varchar(2) NOT NULL,
  `regExportacion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificacion`
--

CREATE TABLE `identificacion` (
  `version` int(11) NOT NULL,
  `ambDestino` varchar(2) NOT NULL,
  `tipoDoc` int(11) NOT NULL,
  `numeroControl` varchar(36) NOT NULL,
  `codigoGeneracion` varchar(36) NOT NULL,
  `modFacturacion` int(11) NOT NULL,
  `tipTransmicion` int(11) NOT NULL,
  `tipContingencia` int(11) NOT NULL,
  `motContingencia` varchar(500) NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(8) NOT NULL,
  `tipMoneda` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otrosdocumentos`
--

CREATE TABLE `otrosdocumentos` (
  `numeroControl` varchar(36) NOT NULL,
  `codigoGeneracion` int(36) NOT NULL,
  `docAsociado` int(1) NOT NULL,
  `identificacionDoc` varchar(100) NOT NULL,
  `desDocumento` varchar(300) NOT NULL,
  `nomMedico` varchar(100) NOT NULL,
  `nitMedico` varchar(14) NOT NULL,
  `docIdenNoDom` varchar(25) NOT NULL,
  `codServicio` varchar(1) NOT NULL,
  `modTransporte` varchar(11) NOT NULL,
  `numIdentificacion` varchar(70) NOT NULL,
  `numDocIdenti` varchar(100) NOT NULL,
  `nomConductor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receptor`
--

CREATE TABLE `receptor` (
  `numeroControl` varchar(36) NOT NULL,
  `codigoGeneracion` varchar(36) NOT NULL,
  `tipDoc` varchar(25) NOT NULL,
  `numDoc` varchar(30) NOT NULL,
  `nit` varchar(14) NOT NULL,
  `ncr` varchar(8) NOT NULL,
  `NomDenominacion` varchar(250) NOT NULL,
  `codActEco` varchar(6) NOT NULL,
  `actEco` varchar(150) NOT NULL,
  `nomComercial` varchar(150) NOT NULL,
  `tipEstablecimiento` varchar(2) NOT NULL,
  `Departamento` varchar(2) NOT NULL,
  `Municipio` varchar(2) NOT NULL,
  `dirComplemento` varchar(200) NOT NULL,
  `codPais` varchar(4) NOT NULL,
  `paisDestino` varchar(50) NOT NULL,
  `domFiscal` varchar(1) NOT NULL,
  `codEstable` varchar(4) NOT NULL,
  `codPuntoVenta` varchar(4) NOT NULL,
  `bienesRemitidos` varchar(2) NOT NULL,
  `tipoReceptor` int(1) NOT NULL,
  `telReceptor` varchar(30) NOT NULL,
  `correoReceptor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcatalogocuentas`
--

CREATE TABLE `tblcatalogocuentas` (
  `cNombreCuenta` varchar(200) DEFAULT NULL,
  `cNivelCuenta` int(11) DEFAULT NULL,
  `cTipoCuenta` int(11) DEFAULT NULL,
  `cClasificacionCuenta` int(11) DEFAULT NULL,
  `cCargoSumaResta` varchar(10) DEFAULT NULL,
  `cCodigoCuenta` int(11) NOT NULL,
  `cEstado` varchar(1) DEFAULT NULL,
  `cCuentaPadre` int(11) DEFAULT NULL,
  `cNumCuenta` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tblcatalogocuentas`
--

INSERT INTO `tblcatalogocuentas` (`cNombreCuenta`, `cNivelCuenta`, `cTipoCuenta`, `cClasificacionCuenta`, `cCargoSumaResta`, `cCodigoCuenta`, `cEstado`, `cCuentaPadre`, `cNumCuenta`) VALUES
('ACTIVO CORRIENTE', 0, 0, 0, 'cargo', 1, '1', NULL, ''),
('EFECTIVO Y EQUIVALENTES', NULL, 0, 0, 'cargo', 2, '1', NULL, ''),
('CAJA GENERAL', NULL, 0, 0, 'cargo', 3, '1', NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblclasificacioncuenta`
--

CREATE TABLE `tblclasificacioncuenta` (
  `cCodigo` int(11) NOT NULL,
  `cClasificacion` varchar(50) DEFAULT NULL,
  `cOrden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tblclasificacioncuenta`
--

INSERT INTO `tblclasificacioncuenta` (`cCodigo`, `cClasificacion`, `cOrden`) VALUES
(1, 'ACTIVO', 1),
(2, 'PASIVO', 2),
(3, 'PATRIMONIO SOCIAL', 3),
(4, 'CUENTAS DE RESULTADO DEUDORAS', 4),
(5, 'CUENTAS DE RESULTADO ACREEDORAS', 5),
(6, 'CUENTAS LIQUIDADORAS', 6),
(7, 'CUENTAS DE ORDEN', 7),
(8, 'CUENTAS DE ORDEN POR CONTRA', 8),
(15, 'MI ACTIVO', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcuentas`
--

CREATE TABLE `tblcuentas` (
  `cCuenta` int(11) NOT NULL,
  `cEne` decimal(10,2) DEFAULT NULL,
  `cFeb` decimal(10,2) DEFAULT NULL,
  `cMar` decimal(10,2) DEFAULT NULL,
  `cAbr` decimal(10,2) DEFAULT NULL,
  `cMay` decimal(10,2) DEFAULT NULL,
  `cJun` decimal(10,2) DEFAULT NULL,
  `cJul` decimal(10,2) DEFAULT NULL,
  `cAgo` decimal(10,2) DEFAULT NULL,
  `cSep` decimal(10,2) DEFAULT NULL,
  `cOct` decimal(10,2) DEFAULT NULL,
  `cNov` decimal(10,2) DEFAULT NULL,
  `cDic` decimal(10,2) DEFAULT NULL,
  `cDebeAcum` decimal(10,2) DEFAULT NULL,
  `cHaberAcum` decimal(10,2) DEFAULT NULL,
  `cSaldoFinal` decimal(10,2) DEFAULT NULL,
  `cSaldoPerExt` decimal(10,2) DEFAULT NULL,
  `cPeriodo` int(11) DEFAULT NULL,
  `cCodigoCuenta` int(11) DEFAULT NULL,
  `cFechaCrea` datetime DEFAULT NULL,
  `cFechaMod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblnivelcuenta`
--

CREATE TABLE `tblnivelcuenta` (
  `cNivelCuenta` int(11) NOT NULL,
  `cNnivelCuenta` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tblnivelcuenta`
--

INSERT INTO `tblnivelcuenta` (`cNivelCuenta`, `cNnivelCuenta`) VALUES
(1, '1'),
(2, '2'),
(6, '3'),
(7, '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblperiodo`
--

CREATE TABLE `tblperiodo` (
  `cPeriodo` int(11) NOT NULL,
  `cAnio` varchar(5) DEFAULT NULL,
  `cFechaIni` date DEFAULT NULL,
  `cFechaFin` date DEFAULT NULL,
  `cEstado` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tblperiodo`
--

INSERT INTO `tblperiodo` (`cPeriodo`, `cAnio`, `cFechaIni`, `cFechaFin`, `cEstado`) VALUES
(6, '2023', '2023-01-01', '2023-12-31', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltipocuenta`
--

CREATE TABLE `tbltipocuenta` (
  `cTipoCuenta` int(11) NOT NULL,
  `cNtipoCuenta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusuario`
--

CREATE TABLE `tblusuario` (
  `cUsuario` int(11) NOT NULL,
  `cNombre` varchar(100) DEFAULT NULL,
  `cClave` varchar(1000) DEFAULT NULL,
  `cUname` varchar(25) DEFAULT NULL,
  `cEstatus` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tblusuario`
--

INSERT INTO `tblusuario` (`cUsuario`, `cNombre`, `cClave`, `cUname`, `cEstatus`) VALUES
(1, 'David Garcia', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'dgarcia', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventatercero`
--

CREATE TABLE `ventatercero` (
  `numeroControl` varchar(36) NOT NULL,
  `codigoGeneracion` varchar(36) NOT NULL,
  `nitPorCuenta` varchar(14) NOT NULL,
  `nomDenominacion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `identificacion`
--
ALTER TABLE `identificacion`
  ADD PRIMARY KEY (`codigoGeneracion`);

--
-- Indices de la tabla `tblcatalogocuentas`
--
ALTER TABLE `tblcatalogocuentas`
  ADD PRIMARY KEY (`cCodigoCuenta`);

--
-- Indices de la tabla `tblclasificacioncuenta`
--
ALTER TABLE `tblclasificacioncuenta`
  ADD PRIMARY KEY (`cCodigo`);

--
-- Indices de la tabla `tblcuentas`
--
ALTER TABLE `tblcuentas`
  ADD PRIMARY KEY (`cCuenta`);

--
-- Indices de la tabla `tblnivelcuenta`
--
ALTER TABLE `tblnivelcuenta`
  ADD PRIMARY KEY (`cNivelCuenta`);

--
-- Indices de la tabla `tblperiodo`
--
ALTER TABLE `tblperiodo`
  ADD PRIMARY KEY (`cPeriodo`);

--
-- Indices de la tabla `tbltipocuenta`
--
ALTER TABLE `tbltipocuenta`
  ADD PRIMARY KEY (`cTipoCuenta`);

--
-- Indices de la tabla `tblusuario`
--
ALTER TABLE `tblusuario`
  ADD PRIMARY KEY (`cUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblcatalogocuentas`
--
ALTER TABLE `tblcatalogocuentas`
  MODIFY `cCodigoCuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblclasificacioncuenta`
--
ALTER TABLE `tblclasificacioncuenta`
  MODIFY `cCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tblcuentas`
--
ALTER TABLE `tblcuentas`
  MODIFY `cCuenta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblnivelcuenta`
--
ALTER TABLE `tblnivelcuenta`
  MODIFY `cNivelCuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tblperiodo`
--
ALTER TABLE `tblperiodo`
  MODIFY `cPeriodo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbltipocuenta`
--
ALTER TABLE `tbltipocuenta`
  MODIFY `cTipoCuenta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblusuario`
--
ALTER TABLE `tblusuario`
  MODIFY `cUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
