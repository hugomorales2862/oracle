select gra_desc_md, arm_desc_md, dep_desc_md, TRIM(per_nom1)||' '||TRIM(per_nom2)||' '||
TRIM(per_ape1)||' '|| TRIM(per_ape2) AS NOMBRE, pue_desc, pue_fec_nomb, pue_fec_cese 
from mper, dpue, grados, armas, mdep, morg
where pue_grado = gra_codigo
and per_arma = arm_codigo
and pue_catalogo = per_catalogo
and dep_llave = pue_dependencia
and per_plaza = org_plaza
and pue_plaza = 7762883
and YEAR(pue_fec_nomb) between "1990" AND "2017"
and MONTH(pue_fec_nomb) between 01 and 12
ORDER BY per_fec_nomb desc