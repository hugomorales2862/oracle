//========================== LISTADOS ACTUALES
SELECT unique hfa_plaza,hfa_catalogo,gra_desc_ct,
per_ape1,per_ape2,per_nom1,per_nom2,
hfa_desc_empleo,hfa_ceom
FROM hfasig,mper,grados
WHERE hfa_catalogo = per_catalogo
AND hfa_grado = gra_codigo
AND hfa_depen = 172
--and gra_clase=6
AND YEAR(hfa_fecha)=1990
AND MONTH(hfa_fecha) between 08 and 10
//==================BUSCAR ALTAS Y BAJAS CON FECHAS Y TODO
SELECT unique d.pue_catalogo, gra_desc_md, arm_desc_md, pue_desc,(per_nom1||per_nom2||per_ape1||per_ape2) as nombre,
(select   MIN(p.pue_fec_nomb)  from dpue p
  where p.pue_catalogo = d.pue_catalogo ) as alta,
(select   MAX(c.pue_fec_cese)  from dpue c
  where c.pue_catalogo = d.pue_catalogo ) as baja
FROM mper, dpue d, grados, armas, mdep 
	WHERE per_grado = gra_codigo 
	AND per_arma = arm_codigo
    AND d. pue_catalogo = per_catalogo
    AND pue_dependencia = dep_llave
    AND dep_llave = 132
   -- AND PER_catalogo = 589127
    and YEAR(pue_fec_nomb) between 1982 and 1985
    AND MONTH(pue_fec_nomb) between 01 and 12
ORDER BY 1,2,3,4 
//==============================================

SELECT gra_desc_md, arm_desc_md, dep_desc_md,(per_nom1||per_nom2||per_ape1||per_ape2) as nombre,
  FROM mper, dpue, grados, armas, mdep 
	WHERE per_grado = gra_codigo 
	AND per_arma = arm_codigo
    AND pue_catalogo = per_catalogo
    AND dep_llave = pue_dependencia
    AND pue_dependencia = 160
    and YEAR(pue_fec_nomb) = 1990 
   AND MONTH(pue_fec_nomb) between 08 and 10
ORDER BY per_grado DESC,per_catalogo

///////////////////////ESTE QUERY SI FUNCIONA AL 100% EL DE ABAJO
 
SELECT unique d.pue_catalogo, gra_desc_md, arm_desc_md, pue_desc,(per_nom1||per_nom2||per_ape1||per_ape2) as nombre,
 pue_fec_nomb   as alta,
pue_fec_cese as baja
FROM mper, dpue d, grados, armas, mdep 
	WHERE per_grado = gra_codigo 
	AND per_arma = arm_codigo
    AND d. pue_catalogo = per_catalogo
    AND pue_dependencia = dep_llave
    AND dep_llave = 132
   -- AND PER_catalogo = 589127
    and YEAR(pue_fec_nomb) between 1982 and 1985
    AND MONTH(pue_fec_nomb) between 01 and 12
ORDER BY 1,2,3,4 

//////////////// de acuero al puesta salen los datos========
SELECT unique d.pue_catalogo, gra_desc_md, arm_desc_md, pue_desc,(per_nom1||per_nom2||per_ape1||per_ape2) as nombre,
 pue_fec_nomb   as alta,
pue_fec_cese as baja
FROM mper, dpue d, grados, armas, mdep 
	WHERE pue_Grado = gra_codigo 
	AND per_arma = arm_codigo
    AND d. pue_catalogo = per_catalogo
    AND pue_dependencia = dep_llave
    AND dep_llave = 132
   -- AND PER_catalogo = 589127
    and YEAR(pue_fec_nomb) between 1982 and 1985
    AND MONTH(pue_fec_nomb) between 01 and 12
ORDER BY 1,2,3,4 

SELECT * FROM mdep
where pue_Catalogo = 589127 