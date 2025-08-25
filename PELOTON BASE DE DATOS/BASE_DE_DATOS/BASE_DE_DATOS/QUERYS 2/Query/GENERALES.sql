SELECT per_Catalogo, gra_codigo,gra_desc_ct, arm_desc_ct, per_nom1,  
per_nom2, per_ape1,  per_ape2, per_ape3,  
per_desc_empleo, dep_desc_md, dep_llave, per_plaza
FROM armas, grados, morg, mdep, mper
WHERE per_arma = arm_codigo 
AND per_grado = gra_codigo 
AND per_plaza = org_plaza
AND org_dependencia = dep_llave
AND PER_PLAZA NOT IN (999,9999,99999)
AND PER_SITUACION IN ("11", "T0", "TH")
AND per_Catalogo IN
(264945, 282061, 288514, 289041, 289264, 289280, 300483, 325530, 326223, 332866, 
340422, 341057, 341073, 341289, 341305, 341347, 341420, 341586, 351635, 361584, 
387407, 388330, 388629, 388694, 388710, 388736, 433458, 459685, 486647, 521583, 
523159, 533042, 631192, 637462)
ORDER BY gra_codigo DESC
