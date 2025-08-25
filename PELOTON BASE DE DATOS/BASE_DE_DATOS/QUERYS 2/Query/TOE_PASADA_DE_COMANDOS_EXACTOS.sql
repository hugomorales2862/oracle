SELECT pue_catalogo,gra_codigo, gra_desc_lg, per_nom1, per_nom2, per_ape1, per_ape2, pue_ord_gral, pue_punto_og, pue_fec_nomb,
  pue_fec_cese,pue_desc,  org_plaza_desc
FROM dpue, grados, mper, morg, mdep	
	WHERE pue_catalogo = per_catalogo 
	AND pue_grado = gra_codigo 
	AND org_plaza = pue_plaza
	AND dep_llave = pue_dependencia  
	--AND pue_dependencia = 100 
	--AND pue_situacion = "TD"
	AND pue_plaza = 6899139
	AND pue_fec_nomb >= '2007/01/1' 
	AND pue_fec_nomb <= '2017/12/31' 
or 
pue_catalogo = per_catalogo 
AND pue_grado = gra_codigo 
AND org_plaza = pue_plaza
AND dep_llave = pue_dependencia  
--AND pue_dependencia = 100 
--AND pue_situacion = "TD"
AND pue_plaza = 6899139
AND pue_fec_cese >= '2007/01/1' 
AND pue_fec_cese <= '2017/12/31' 
or 
pue_catalogo = per_catalogo 
AND pue_grado = gra_codigo 
AND org_plaza = pue_plaza
AND dep_llave = pue_dependencia  
--AND pue_dependencia = 100 
--AND pue_situacion = "TD"
AND pue_plaza = 6899139
AND pue_fec_nomb < '2007/01/1'  
AND pue_fec_cese > '2017/12/31' 
union
SELECT per_catalogo,gra_codigo, gra_desc_lg, per_nom1, per_nom2, per_ape1, per_ape2, per_ord_gral, per_punto_og, per_fec_nomb,
 today as pue_fec_cese, dep_desc_md, org_plaza_desc
FROM grados, mper, morg, mdep	
	WHERE  per_grado = gra_codigo 
	AND org_plaza = per_plaza
AND dep_llave = org_dependencia  
--AND dep_llave = 100 
--AND per_situacion = "TD"
AND per_plaza = 6899139
AND per_fec_nomb >= '2007/01/1' 
AND per_fec_nomb <= '2017/12/31' 
or
per_grado = gra_codigo 
AND org_plaza = per_plaza
AND dep_llave = org_dependencia  
--AND dep_llave = 100 
--AND per_situacion = "TD"
AND per_plaza = 6899139
AND per_fec_nomb < '2007/01/1'

order by pue_fec_nomb asc