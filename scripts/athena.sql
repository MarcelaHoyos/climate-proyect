--- Athena ---
SELECT * FROM climate limit 10
SELECT fecha, autoridad_ambiental,tecnolog_a FROM climate limit 10
SELECT DISTINCT tecnolog_a FROM climate limit 10	
SELECT DISTINCT tecnolog_a, nombre_del_municipio FROM climate limit 10	
SELECT DISTINCT tecnolog_a, nombre_del_municipio FROM climate ORDER BY nombre_del_municipio ASC	
SELECT DISTINCT nombre_de_la_estaci_n FROM climate WHERE tecnolog_a='Manual'	
SELECT DISTINCT variable FROM climate	
SELECT nombre_del_municipio, MAX(concentraci_n) FROM climate GROUP BY nombre_del_municipio	
SELECT nombre_del_municipio, MAX(concentraci_n) FROM climate WHERE variable='Radiación UVB' GROUP BY nombre_del_municipio	
CREATE TABLE "climate_db"."tb_radicionuvb" WITH ( format='TEXTFILE', external_location='s3://bkprojectarj/trusted/' ) AS SELECT nombre_del_municipio, MAX(concentraci_n) AS max_concentracion FROM climate WHERE variable='Radiación UVB' GROUP BY nombre_del_municipio	