SELECT * FROM hfasigc
WHERE hfa_catalogo = 455923
AND YEAR(hfa_Fecha) = 2017
AND MONTH(hfa_fecha) = 10

SELECT hfd_Catalogo FROM hfdes
WHERE hfd_codigo = 80
--hfd_catalogo =558205
AND YEAR(hfd_Fecha) = 2017
AND MONTH(hfd_fecha) = 10
--and hfd_codigo = 80
AND hfd_varios = "101130005554"  
--AND hfd_fecha BETWEEN '2016-10-1' AND '2017-10-13'
group by hfd_catalogo

===================================aqui esta==============
SELECT per_Catalogo, gra_codigo, gra_desc_ct, arm_desc_ct, per_nom1,  
per_nom2, per_ape1,  per_ape2, 
per_desc_empleo, dep_desc_md,  hfd_mensual,  per_plaza
FROM hfdes, descuentos, mper, morg, mdep, armas, grados
WHERE per_catalogo = hfd_catalogo
AND hfd_codigo = desc_codigo
AND per_arma = arm_codigo 
AND per_grado = gra_codigo 
AND per_plaza = org_plaza
AND org_dependencia = dep_llave
AND YEAR(hfd_fecha) = 2017
AND MONTH(hfd_fecha) = 11
AND hfd_varios = "101130005554"  
GROUP BY  per_Catalogo, gra_codigo, gra_desc_ct, arm_desc_ct, per_nom1,  
per_nom2, per_ape1,  per_ape2, 
per_desc_empleo, dep_desc_md,  hfd_mensual,  per_plaza