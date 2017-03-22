# Edición colaborativa
## Aportes de tecnicos forestales sobre plantaciones, a partir de consulta de datos actualizados en la Dirección.
Los usuarios registrado con el rol de Tecnicos Forestales, podrán conectasre a la BD PostgreSQL de la Dirección y consultar los datos via Qgis, y realizar las modificaciones que crean necesarias. Al momento de guardar estas modificaciones serán tomadas como aportes sujetos a revisión para su incorporación por personal de la Dirección.

### Creación de Rol Tecnicos Forestales, con permisos para realizar los aportes.
``` 
psql base -f creacion_rol_permisos.sql
```

## Tabla donde se reciben los aportes.
 Se registra usuario, fecha y modificaciones realizadas.
```
  psql base -f tabla_plantaciones_aporte.sql
```

### Disparador y funcion que captura las modificaciones o inserciones en la tabla plantaciones y lo registra en aportes.
```
  psql base -f trigger_aportes_plantaciones.sql
```
