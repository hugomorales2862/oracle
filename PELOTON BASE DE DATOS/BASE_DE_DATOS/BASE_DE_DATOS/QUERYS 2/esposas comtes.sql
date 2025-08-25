SELECT gra_desc_lg, arm_desc_lg, per_nom1, per_nom2, per_ape1, per_ape2, jef_puesto, fam_nom1, fam_nom2, fam_ape1, fam_ape2, par_desc_md
FROM jefes, mper, grados, armas, mdep, morg, dfam, parentescos
WHERE per_arma = arm_codigo
AND per_grado = gra_codigo
AND per_plaza = org_plaza
AND org_dependencia = dep_llave
AND per_plaza = jef_plaza
AND per_catalogo = fam_cat_militar
AND fam_parentesco = par_codigo
AND par_codigo in (4,2)
AND jef_categoria in ("0100","0101","0102","0103","0104")
AND jef_plaza not in (7762156,7762883,6886435,6887820,6899209,6899598)
ORDER BY jef_categoria