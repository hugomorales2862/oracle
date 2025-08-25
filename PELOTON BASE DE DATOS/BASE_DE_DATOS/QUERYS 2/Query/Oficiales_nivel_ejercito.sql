--- ESTE ES EL ESTADO DE FUERZA ACTUAL (DISPONIBLE) -----    
select dep_llave, gra_codigo,gra_desc_md, (per_nom1||per_nom2||per_ape1||per_ape2) as nombre, per_catalogo, dep_desc_md 
from morg, grados, mper, mdep
where per_grado = gra_codigo
and per_plaza = org_plaza
AND org_dependencia = dep_llave
AND gra_clase in (1,2,3)
AND per_situacion IN('11','1T','12','13','1I','1L','1M','1N','1O','1P','1Q','1R','1S','1U','T0', 'A')
AND dep_llave NOT IN(0,999) 
and org_grado <> 0
GROUP BY gra_desc_md,  nombre, per_catalogo, dep_desc_md, dep_llave, gra_codigo
ORDER by gra_codigo DESC, dep_llave ASC;