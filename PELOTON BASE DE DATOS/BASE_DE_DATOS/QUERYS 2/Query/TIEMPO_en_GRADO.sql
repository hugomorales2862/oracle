SELECT per_Catalogo, gra_codigo,gra_desc_ct, arm_desc_ct, per_nom1,  
per_nom2, per_ape1,  per_ape2, per_ape3,  
per_desc_empleo, dep_desc_md, dep_llave, per_plaza, t_grado
FROM armas, grados, morg, mdep, mper, tiempos
WHERE t_catalogo = per_catalogo 
AND per_arma = arm_codigo 
AND per_grado = gra_codigo 
AND per_plaza = org_plaza
AND org_dependencia = dep_llave
AND PER_PLAZA NOT IN (999,9999,99999)
AND PER_SITUACION IN ("11", "T0", "TH")
 AND gra_codigo >=85 AND gra_codigo < 99
AND t_grado >= 50000
ORDER BY gra_codigo DESC


