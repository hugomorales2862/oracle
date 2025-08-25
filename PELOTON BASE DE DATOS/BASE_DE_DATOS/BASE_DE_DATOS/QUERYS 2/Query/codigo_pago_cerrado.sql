SELECT unique org_plaza, per_catalogo, gra_desc_md, per_nom1, per_nom2, per_ape1, per_ape2,  org_cod_pago, per_situacion, dep_desc_md
FROM mper, morg, mdep, grados
WHERE per_plaza = org_plaza
AND dep_llave = org_dependencia
AND per_grado = gra_codigo
AND org_cod_pago = "2"
and PER_PLAZA NOT IN (999,999,99999)