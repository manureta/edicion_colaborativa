# Edición colaborativa
## Aportes de tecnicos forestales sobre plantaciones, a partir de consulta de datos actualizados en la Dirección.

### Creación de Rol Tecnicos Forestales, permisos para realizar los aportes
``` 
psql base -f creacion_rol_permisos.sql
```

## Tabla donde se reciben los aportes.
 Se registra usuario, fecha y modificaciones realizadas.
```
  psql base -f tabla_plantaciones_aporte.sql
```

### Disparador y funcion que capturas las modificaciones o inserciones en la tabla plantaciones y lo registra en aportes.
```
  psql base -f trigger_aportes_plantaciones.sql
```
