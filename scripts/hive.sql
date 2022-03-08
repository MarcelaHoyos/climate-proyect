--- Hive ----
SELECT * FROM climate LIMIT 10
SELECT cast(concat_ws("-",substr(fecha,7,4),substr(fecha,4,2),substr(fecha,0,2))as date) FROM climate LIMIT 10
SELECT cast(concat_ws("-",substr(fecha,7,4),substr(fecha,4,2),substr(fecha,0,2))as date)as fecha FROM climate LIMIT 10 
SELECT cast(concat_ws("-",substr(fecha,7,4),substr(fecha,4,2),substr(fecha,0,2))as date)as fecha, autoridad_ambiental,nombre_de_la_estaci_n,tecnolog_a,latitud,longitud,c_digo_del_departamento,c_digo_del_municipio,tipo_de_estaci_n,tiempo_de_exposici_n,variable,unidades,concentraci_n FROM climate LIMIT 10
SELECT cast(concat_ws("-",substr(fecha,7,4),substr(fecha,4,2),substr(fecha,0,2))as date)as fecha, autoridad_ambiental,nombre_de_la_estaci_n,tecnolog_a,latitud,longitud,c_digo_del_departamento,c_digo_del_municipio,tipo_de_estaci_n,tiempo_de_exposici_n,variable,unidades,concentraci_n FROM climate 