
PARA SACAR LISTADOS DEL ALTO MANDO

select per_catalogo, gra_desc_lg, arm_desc_lg, per_nom1, per_nom2, per_ape1, per_ape2, jef_plaza, jef_puesto, jef_categoria, dep_desc_lg,
per_promocion, per_fec_nac
from jefes,mper,grados,armas,mdep,morg
where per_arma = arm_codigo
and per_grado = gra_codigo
and per_plaza = org_plaza
and org_dependencia = dep_llave
and per_plaza = jef_plaza
and jef_categoria in ("0100","0101","0102","0103","0104")
and jef_plaza not in (7762156,7762883,6886435,6887820,6899209,6899598)
order by jef_categoria


SELECT per_grado, jef_categoria, per_ape1, per_ape2, org_dependencia
FROM mper, grados, armas, morg, mdep, jefes
WHEN  per_arma = arm_codigo
AND per_grado = gra_codigo
AND per_plaza = org_plaza
AND org_dependencia = dep_llave
AND jef_plaza = per_plaza
AND org_situacion = "A"
AND per_situacion in ("11","1T","12","13","1I","1L","1M","1N","1O","1P","1Q","1R","1S","1U")
AND gra_clase in (1,2)
AND jefes.jef_categoria in #("0101","0102","0103","0104","0105")
	("0101","0102","0103","0104","0105","0201","0202","0203")
	ORDER BY per_grado DESC, jef_categoria, per_ape1, per_ape2


	
SELECT gra_desc_lg, arm_desc_lg, per_nom1, per_nom2, per_ape1, per_ape2, jef_puesto
FROM jefes, mper, grados, armas, mdep, morg
WHERE per_arma = arm_codigo
AND per_grado = gra_codigo
AND per_plaza = org_plaza
AND org_dependencia = dep_llave
AND per_plaza = jef_plaza
AND jef_categoria in ("0100","0101","0102","0103","0104")
AND jef_plaza not in (7762156,7762883,6886435,6887820,6899209,6899598)
ORDER BY jef_categoria
