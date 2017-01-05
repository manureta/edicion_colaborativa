--ROL DE TECNICOS REGIONALES
--Creación del Rol
/*
CREATE ROLE tecnicos_regional
   VALID UNTIL 'infinity';
COMMENT ON ROLE tecnicos_regional
  IS 'Tecnico Regional, Editor colaborativo auditado, propone cambios en tablas de contribuciones. (aportes)';
*/
-- Permisos de lectura de indice y tabla. Permiso de escritura a tabla plantaciones aportes.
GRANT SELECT, INSERT, UPDATE ON TABLE plantaciones TO tecnicos_regional;

GRANT USAGE, SELECT, UPDATE  ON TABLE public.plantaciones_id_seq TO GROUP tecnicos_regional;




