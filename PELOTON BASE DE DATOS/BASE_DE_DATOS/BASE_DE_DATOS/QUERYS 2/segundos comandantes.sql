select per_catalogo, gra_desc_lg, arm_desc_lg, per_nom1, per_nom2, per_ape1, per_ape2, jef_plaza, jef_puesto, jef_categoria, dep_desc_lg,
per_promocion, per_fec_nac
from jefes,mper,grados,armas,mdep,morg
where per_arma = arm_codigo
and per_grado = gra_codigo
and per_plaza = org_plaza
and org_dependencia = dep_llave
and per_plaza = jef_plaza
and jef_categoria in ("0201","0202","0203","0301")
--and jef_plaza not in (7762156,7762883,6886435,6887820,6899209,6899598)
order by jef_categoria