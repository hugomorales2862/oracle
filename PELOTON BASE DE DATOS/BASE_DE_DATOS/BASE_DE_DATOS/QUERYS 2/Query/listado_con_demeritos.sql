
 
SELECT mper.*, arm_codigo, arm_desc_lg, gra_desc_lg, gra_clase, gra_codigo,
org_plaza_desc, sit_desc_md, t_alta, t_prox_asc,
t_depen, t_esp_ofi, t_total, t_puesto, sit_desc_lg,
dep_desc_lg, dep_llave,dep_desc_md,est_demeritos,gra_clase
FROM armas, grados, morg, mdep, situaciones,psan_estadistica, mper, 
OUTER tiempos
 WHERE per_arma = arm_codigo
 AND per_grado = gra_codigo
 AND per_plaza = org_plaza
AND org_dependencia = dep_llave
AND per_plaza = org_plaza
AND per_situacion = sit_codigo
AND per_catalogo = t_catalogo
AND per_promocion in (149,150,151)
AND est_catalogo  = per_Catalogo
 AND gra_codigo = est_grado
and est_demeritos < 40
and per_situacion = 11


