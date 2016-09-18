--ROL DE TECNICOS REGIONALES
--Creación del Rol
/*
CREATE ROLE tecnicos_regional
   VALID UNTIL 'infinity';
COMMENT ON ROLE tecnicos_regional
  IS 'Tecncio Regional, Editor colaborativo auditado, propone cambios en tablas de contribuciones. (aportes)';
*/
-- Permisos de lectura de indice y tabla. Permiso de escritura a tabla plantaciones
GRANT SELECT, INSERT ON TABLE plantaciones TO GROUP tecnicos_regional;

GRANT SELECT ON TABLE public.plantaciones_id_seq TO GROUP tecnicos_regional;


