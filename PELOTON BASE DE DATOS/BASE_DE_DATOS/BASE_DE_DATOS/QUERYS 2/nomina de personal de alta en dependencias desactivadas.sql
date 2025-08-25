
------------QUERY PARA SACAR NOMINA DE PERSONA DE ALTA EN UNA DEP. EN UN LAPSO DE TIEMPO-----
UNLOAD TO listadoZM_21.txt
select pue_catalogo, pue_ord_gral, pue_punto_og,
pue_fec_nomb, dep_desc_md,
org_plaza_desc, gra_desc_lg, per_nom1 || per_nom2 ||
per_ape1 || per_ape2, pue_fec_cese
from dpue, grados, mper, morg, mdep     
where pue_catalogo = per_catalogo
AND pue_grado = gra_codigo
AND org_plaza = pue_plaza
AND pue_dependencia = 170
AND dep_llave = 170 
AND pue_fec_nomb BETWEEN "1980/01/01" AND "1989/12/31"
AND pue_fec_cese BETWEEN "1980/01/01" AND "1989/12/31"

----------------------------------------------

------------QUERY PARA SACAR NOMINA DE PERSONA DE ALTA EN SANTA LUCIA CONTZ-----
UNLOAD TO listadoZM_SANTA.txt
select pue_catalogo, org_jerarquia, pue_plaza, pue_ord_gral, pue_punto_og,
pue_fec_nomb, dep_desc_md,
org_plaza_desc, pue_desc, gra_desc_lg, per_nom1 || per_nom2 ||
per_ape1 || per_ape2, pue_fec_cese
from dpue, grados, mper, morg, mdep     
where pue_catalogo = per_catalogo
AND pue_grado = gra_codigo
AND org_plaza = pue_plaza
AND pue_dependencia = 150
AND dep_llave = 150
AND pue_fec_nomb BETWEEN "1974/01/01" AND "1987/12/31"
AND pue_fec_cese BETWEEN "1974/01/01" AND "1987/12/31"
Order by org_jerarquia asc, pue_fec_nomb asc

