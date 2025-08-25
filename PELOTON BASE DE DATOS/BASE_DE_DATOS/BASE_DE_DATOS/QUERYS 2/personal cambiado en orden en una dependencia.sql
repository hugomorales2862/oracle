select pue_catalogo, gra_desc_lg, pue_grado, arm_desc_lg, per_nom1, per_nom2, per_ape1, per_ape2, pue_fec_nomb, pue_desc,
dep_desc_ct, gra_clase from mper, dpue, grados, armas, mdep
where per_catalogo = pue_catalogo 
and pue_dependencia = dep_llave
and pue_grado = gra_codigo
and pue_arma = arm_codigo
and pue_ord_gral = "9-2009"
and pue_dependencia = 2640
and gra_clase IN (1,2)
and pue_plaza NOT IN (999,9999,99999)
order by pue_grado desc