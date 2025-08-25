UNLOAD TO  /finanzas/finanzas/general005.txt
SELECT hfa_grupo,hfa_catalogo,gra_desc_md,arm_desc_md,
per_ape1,per_ape2,per_nom1,hfa_liquido,dep_desc_md, (
   CASE
      WHEN cta_banco = 1 THEN  "CHN"
      WHEN cta_banco = 2 THEN  "BANRURAL"
      WHEN cta_banco = 3 THEN  "G&T"
   END
          ),cta_numero
FROM hfasig,cuentas,mdep,mper,grados,armas
WHERE hfa_catalogo = cta_catalogo
AND hfa_catalogo = per_catalogo
AND hfa_grado = gra_Codigo
AND hfa_arma = arm_codigo
AND hfa_depen = dep_llave
AND YEAR(hfa_fecha) = year(TODAY)
AND MONTH(hfa_fecha)= month(TODAY)
order by hfa_grupo,dep_desc_md,cta_banco asc

==================== PARA BONO 14%==========
SELECT hfa_grupo,hfa_catalogo,gra_desc_md,arm_desc_md,
per_ape1,per_ape2,per_nom1,hfa_bono_14,dep_desc_md, (
   CASE
      WHEN cta_banco = 1 THEN  "CHN"
      WHEN cta_banco = 2 THEN  "BANRURAL"
      WHEN cta_banco = 3 THEN  "G&T"
   END
          ),cta_numero
FROM hfasig,cuentas,mdep,mper,grados,armas 
WHERE hfa_catalogo = cta_catalogo
AND hfa_catalogo = per_catalogo
 
AND hfa_grado = gra_Codigo
AND hfa_arma = arm_codigo
AND hfa_depen = dep_llave
AND YEAR(hfa_fecha) = year(TODAY)
AND MONTH(hfa_fecha)= month(TODAY)
order by hfa_grupo,dep_desc_md,cta_banco asc
