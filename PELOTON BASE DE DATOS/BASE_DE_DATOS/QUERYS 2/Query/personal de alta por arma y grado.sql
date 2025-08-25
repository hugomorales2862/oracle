SELECT unique  per_catalogo,GRA_CODIGO,  gra_desc_md, arm_desc_md, per_nom1, per_nom2, per_ape1, per_ape2,  
 per_desc_empleo, dep_desc_md ---, org_ord_gral
FROM mper, morg, mdep, grados, armas
WHERE per_plaza = org_plaza
AND dep_llave = org_dependencia
AND per_grado = gra_codigo
AND per_arma = arm_codigo
--AND org_cod_pago = "2"
and PER_PLAZA NOT IN (999,9999,99999)
AND PER_SITUACION IN ("11", "T0", "TH")
--AND gra_clase in (1,2,3,4,5)
and per_Arma = 28
AND PER_GRADO > 55
ORDER BY GRA_cODIGO  ASC
--11 = ACTIVO T0 = ACTIVO, TH = RENGANCHADO