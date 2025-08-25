SELECT unique gra_clase, org_plaza, per_catalogo, gra_desc_md, per_nom1, per_nom2, per_ape1, per_ape2,  org_cod_pago, per_situacion, 
per_desc_empleo, dep_desc_md, org_ord_gral
FROM mper, morg, mdep, grados
WHERE per_plaza = org_plaza
AND dep_llave = org_dependencia
AND per_grado = gra_codigo
--AND org_cod_pago = "2"
and per_ord_gral = "10-2017"
and PER_PLAZA NOT IN (999,9999,99999)
AND PER_SITUACION IN ("11", "T0", "TH")
AND gra_clase in (1,2,3,4,5)
ORDER BY gra_clase, dep_desc_md ASC