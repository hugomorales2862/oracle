grados, cursos, dcur, paises, escuelas
 WHERE cur_grado = gra_codigo
 AND cur_codigo = cur_curso
 AND cur_pais = pai_codigo
 AND cur_escuela = esc_codigo
--	//$sql.= " AND cur_tipo = 'M'
 AND  cur_codigo = 3066
 ORDER BY cur_fec_inicio DESC


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
(545020, 545129, 497602, 496919, 509612, 478065, 497404, 496943, 287524, 434308, 359901, 575605, 576017, 571406, 
558205, 566901, 566349, 558205, 566646, 565390, 566901, 567198, 542365, 553487, 535419, 535500, 497438, 497412, 
503870, 489450, 486597, 487462, 487033, 398883, 569905, 569905, 496984)
ORDER BY gra_codigo DESC