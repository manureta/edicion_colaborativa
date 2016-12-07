--
--FUNCION QUE CAMBIA DONDE SE GUARDA, prueba dos
--

CREATE OR REPLACE FUNCTION aportes_plantaciones()
  RETURNS trigger AS
$BODY$
DECLARE
user_in_group text ='';
var_match text='';
BEGIN

	 IF true FROM pg_auth_members
	 WHERE roleid=( SELECT oid FROM pg_authid WHERE rolname='tecnicos_regional')
	 AND member=( SELECT oid FROM pg_authid WHERE rolname=user) THEN
		RAISE NOTICE 'El Usuario esta en el grupo "Tecnico Regional", sus aportes estan sujetos a aprobacion, %', NEW;
		
		INSERT INTO plantaciones_aportes 
			SELECT NEW.* , user, TG_OP, now();
		RETURN OLD;
	 ELSE
		RAISE NOTICE 'El Usuario NO esta en el grupo "Tecnico Regional", puede editar la tabla';	
		RETURN NEW;
	 END IF;
-- END LOOP;
  
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER aportes_plantaciones BEFORE INSERT OR UPDATE ON plantaciones
    FOR EACH ROW EXECUTE PROCEDURE aportes_plantaciones();
