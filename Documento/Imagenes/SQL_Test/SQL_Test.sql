--
-- Estructura de tabla para la tabla `evalova_pregunta`
--

CREATE TABLE IF NOT EXISTS `evalova_pregunta` (
  `pre_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pre_tes_id` int(10) unsigned NOT NULL,
  `pre_texto` text NOT NULL,
  `pre_tema` int(11) NOT NULL,
  `pre_cantidad_respuestas_visibles` int(11) DEFAULT NULL,
  `pre_peso` int(11) DEFAULT NULL,
  PRIMARY KEY (`pre_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evalova_respuesta`
--

CREATE TABLE IF NOT EXISTS `evalova_respuesta` (
  `res_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `res_pre_id` int(10) unsigned DEFAULT NULL,
  `res_texto` text NOT NULL,
  `res_orden` int(11) DEFAULT NULL,
  `res_puntuacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evalova_test`
--

CREATE TABLE IF NOT EXISTS `evalova_test` (
  `tes_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tes_nombre` text NOT NULL,
  PRIMARY KEY (`tes_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------


ALTER TABLE `evalova_pregunta`
  ADD CONSTRAINT `evalova_pregunta_ibfk_1` FOREIGN KEY (`pre_tes_id`) REFERENCES `evalova_test` (`tes_id`);

ALTER TABLE `evalova_respuesta`
  ADD CONSTRAINT `evalova_respuesta_ibfk_1` FOREIGN KEY (`res_pre_id`) REFERENCES `evalova_pregunta` (`pre_id`);
