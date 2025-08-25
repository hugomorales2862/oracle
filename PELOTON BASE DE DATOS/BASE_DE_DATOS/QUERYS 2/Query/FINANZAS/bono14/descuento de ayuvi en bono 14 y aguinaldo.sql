 SELECT hfa_grupo,hfa_depen, hfa_catalogo,gra_desc_md,arm_desc_md,
per_ape1,per_ape2,per_nom1, per_nom2, (
   CASE
      WHEN cta_banco = 1 THEN  "CHN"
      WHEN cta_banco = 2 THEN  "BANRURAL"
      WHEN cta_banco = 3 THEN  "G&T"
   END
          ),cta_numero, hfa_montepio AS descuento, dep_desc_md
 
FROM hfasig,cuentas,mdep,mper,grados,armas
WHERE hfa_catalogo = cta_catalogo
AND hfa_catalogo = per_catalogo
 
AND hfa_grado = gra_Codigo
AND hfa_arma = arm_codigo
AND hfa_depen = dep_llave

AND YEAR(hfa_fecha) = 2017
AND MONTH(hfa_fecha)= 7
order by hfa_grupo,hfa_depen asc