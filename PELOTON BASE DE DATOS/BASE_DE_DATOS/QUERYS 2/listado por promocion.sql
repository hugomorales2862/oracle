QUERY PARA SACAR UN LISTADO POR PROMOCION
UNLOAD TO listado_promo.txt
select gra_desc_md, arm_desc_md, per_nom1, per_nom2, per_ape1, per_ape2, dep_desc_md, per_promocion    
from mper, grados, armas, morg, mdep
where per_arma = arm_codigo and
per_grado = gra_codigo and
per_plaza = org_plaza and
org_dependencia = dep_llave and
per_promocion in (148, 149, 150, 151) and
per_situacion = 11 
order by per_promocion, per_arma asc