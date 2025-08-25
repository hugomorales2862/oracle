------------QUERY PARA SACAR NOMINA DE PERSONA DE ALTA EN UNA DEP. ESPECIFICANDO SU EMPLEO-----

UNLOAD TO listadoGH81.txt
select pue_catalogo, pue_ord_gral, pue_punto_og,
 pue_fec_nomb, 
org_plaza_desc, gra_desc_lg, per_nom1 || per_nom2 ||
per_ape1 || per_ape2, pue_fec_cese
from dpue, grados, mper, morg, mdep     
where pue_catalogo = per_catalogo
AND pue_grado = gra_codigo
AND org_plaza = pue_plaza
//AND pue_dependencia = 80 
//AND dep_llave = 80 
AND org_plaza = 7762883
AND pue_fec_nomb BETWEEN "1981/01/01" AND "2017/06/30"
AND pue_fec_cese BETWEEN "1981/01/02" AND "2017/06/30"

----------------------------------------------