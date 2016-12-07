--
-- TABLA DE APORTES DE TECNICOS REGIONALES
--
-- Table: plantaciones_aportes

-- DROP TABLE plantaciones_aportes;

CREATE TABLE plantaciones_aportes
(
  id_orig integer,
  error_id integer,
  estado_plantacion_id integer,
  estrato_desarrollo_id integer,
  fuente_imagen_id integer,
  fuente_informacion_id integer,
  objetivo_plantacion_id integer,
  tipo_plantacion_id integer,
  titular_id integer,
  uso_anterior_id integer,
  uso_forestal_id integer,
  provincia_id integer,
  departamento_id integer,
  anio_plantacion character varying(255) DEFAULT NULL::character varying,
  nomenclatura_catastral character varying(255) DEFAULT NULL::character varying,
  distancia_plantas numeric(10,0) DEFAULT NULL::numeric,
  cantidad_filas integer,
  distancia_filas numeric(10,0) DEFAULT NULL::numeric,
  densidad character varying(255) DEFAULT NULL::character varying,
  anio_informacion integer,
  fecha_imagen date,
  activo boolean,
  comentarios text,
  mpf_id integer,
  unificado_id integer,
  created_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
  updated_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
  geom geometry, -- (DC2Type:geometry)
  base_geometrica_id integer,
  usuario text,
  accion text,
  modificacion timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
  id serial,
   CONSTRAINT plantaciones_aportes_pkey PRIMARY KEY (id),
  CONSTRAINT fk_40c678f4133de38e FOREIGN KEY (objetivo_plantacion_id)
      REFERENCES objetivos_plantacion (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_40c678f4483f9a18 FOREIGN KEY (fuente_informacion_id)
      REFERENCES fuentes_informacion (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_40c678f44e7121af FOREIGN KEY (provincia_id)
      REFERENCES provincias (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_40c678f45a91c08d FOREIGN KEY (departamento_id)
      REFERENCES departamentos (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_40c678f46f02714c FOREIGN KEY (uso_anterior_id)
      REFERENCES usos_anteriores (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_40c678f4836088d7 FOREIGN KEY (error_id)
      REFERENCES errores (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_40c678f4913e3f86 FOREIGN KEY (fuente_imagen_id)
      REFERENCES fuentes_imagen (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_40c678f4b973ea68 FOREIGN KEY (estrato_desarrollo_id)
      REFERENCES estratos_desarrollo (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_40c678f4bb2f7372 FOREIGN KEY (tipo_plantacion_id)
      REFERENCES tipos_plantacion (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_40c678f4cc28f247 FOREIGN KEY (uso_forestal_id)
      REFERENCES usos_forestales (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_40c678f4d8f11da8 FOREIGN KEY (estado_plantacion_id)
      REFERENCES estados_plantacion (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_40c678f4f9f0ff64 FOREIGN KEY (titular_id)
      REFERENCES titulares (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE plantaciones_aportes
  OWNER TO forestal;
COMMENT ON COLUMN plantaciones_aportes.geom IS '(DC2Type:geometry)';


-- Index: index_plantaciones_aportes_on_activo

-- DROP INDEX index_plantaciones_aportes_on_activo;

CREATE INDEX index_plantaciones_aportes_on_activo
  ON plantaciones_aportes
  USING btree
  (activo);

-- Index: index_plantaciones_aportes_on_base_geometrica_id

-- DROP INDEX index_plantaciones_aportes_on_base_geometrica_id;

CREATE INDEX index_plantaciones_aportes_on_base_geometrica_id
  ON plantaciones_aportes
  USING btree
  (base_geometrica_id);

-- Index: index_plantaciones_aportes_on_departamento_id

-- DROP INDEX index_plantaciones_aportes_on_departamento_id;

CREATE INDEX index_plantaciones_aportes_on_departamento_id
  ON plantaciones_aportes
  USING btree
  (departamento_id);

-- Index: index_plantaciones_aportes_on_error_id

-- DROP INDEX index_plantaciones_aportes_on_error_id;

CREATE INDEX index_plantaciones_aportes_on_error_id
  ON plantaciones_aportes
  USING btree
  (error_id);

-- Index: index_plantaciones_aportes_on_estado_plantacion_id

-- DROP INDEX index_plantaciones_aportes_on_estado_plantacion_id;

CREATE INDEX index_plantaciones_aportes_on_estado_plantacion_id
  ON plantaciones_aportes
  USING btree
  (estado_plantacion_id);

-- Index: index_plantaciones_aportes_on_estrato_desarrollo_id

-- DROP INDEX index_plantaciones_aportes_on_estrato_desarrollo_id;

CREATE INDEX index_plantaciones_aportes_on_estrato_desarrollo_id
  ON plantaciones_aportes
  USING btree
  (estrato_desarrollo_id);

-- Index: index_plantaciones_aportes_on_fuente_imagen_id

-- DROP INDEX index_plantaciones_aportes_on_fuente_imagen_id;

CREATE INDEX index_plantaciones_aportes_on_fuente_imagen_id
  ON plantaciones_aportes
  USING btree
  (fuente_imagen_id);

-- Index: index_plantaciones_aportes_on_fuente_informacion_id

-- DROP INDEX index_plantaciones_aportes_on_fuente_informacion_id;

CREATE INDEX index_plantaciones_aportes_on_fuente_informacion_id
  ON plantaciones_aportes
  USING btree
  (fuente_informacion_id);

-- Index: index_plantaciones_aportes_on_geom

-- DROP INDEX index_plantaciones_aportes_on_geom;
/*
CREATE INDEX index_plantaciones_aportes_on_geom
  ON plantaciones_aportes
  USING btree
  (geom);
*/
-- Index: index_plantaciones_aportes_on_objetivo_plantacion_id

-- DROP INDEX index_plantaciones_aportes_on_objetivo_plantacion_id;

CREATE INDEX index_plantaciones_aportes_on_objetivo_plantacion_id
  ON plantaciones_aportes
  USING btree
  (objetivo_plantacion_id);

-- Index: index_plantaciones_aportes_on_provincia_id

-- DROP INDEX index_plantaciones_aportes_on_provincia_id;

CREATE INDEX index_plantaciones_aportes_on_provincia_id
  ON plantaciones_aportes
  USING btree
  (provincia_id);

-- Index: index_plantaciones_aportes_on_tipo_plantacion_id

-- DROP INDEX index_plantaciones_aportes_on_tipo_plantacion_id;

CREATE INDEX index_plantaciones_aportes_on_tipo_plantacion_id
  ON plantaciones_aportes
  USING btree
  (tipo_plantacion_id);

-- Index: index_plantaciones_aportes_on_titular_id

-- DROP INDEX index_plantaciones_aportes_on_titular_id;

CREATE INDEX index_plantaciones_aportes_on_titular_id
  ON plantaciones_aportes
  USING btree
  (titular_id);

-- Index: index_plantaciones_aportes_on_uso_anterior_id

-- DROP INDEX index_plantaciones_aportes_on_uso_anterior_id;

CREATE INDEX index_plantaciones_aportes_on_uso_anterior_id
  ON plantaciones_aportes
  USING btree
  (uso_anterior_id);

-- Index: index_plantaciones_aportes_on_uso_forestal_id

-- DROP INDEX index_plantaciones_aportes_on_uso_forestal_id;

CREATE INDEX index_plantaciones_aportes_on_uso_forestal_id
  ON plantaciones_aportes
  USING btree
  (uso_forestal_id);

--
--PERMISOS
--
GRANT SELECT,INSERT ON TABLE plantaciones_aportes TO GROUP tecnicos_regional;
--GRANT SELECT ON TABLE public.plantaciones_aportes_id_seq TO GROUP tecnicos_regional;
GRANT SELECT on pg_roles, pg_authid , pg_auth_members TO GROUP tecnicos_regional;

