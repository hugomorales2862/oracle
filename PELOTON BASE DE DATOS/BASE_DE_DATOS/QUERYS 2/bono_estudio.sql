UNLOAD TO /finanzas/finanzas/bono_estudio005.txt
SELECT dfa_catalogo, gra_desc_ct, per_nom1,
per_nom2, per_ape1, per_ape2, dep_desc_md,
dfa_cantidad, (
   CASE
      WHEN cta_banco = 1 THEN  "CHN"
      WHEN cta_banco = 2 THEN  "BANRURAL"
      WHEN cta_banco = 3 THEN  "G&T"
   END
	  ), cta_numero
FROM  dfasig, mper, mdep, cuentas, grados,morg
WHERE dfa_catalogo = per_catalogo
AND   per_plaza = org_plaza
AND   org_dependencia = dep_llave
AND   per_grado = gra_codigo
AND   dfa_catalogo = cta_catalogo
AND   dfa_codigo in (32,33,34,35,17,18,19)
AND   dfa_cantidad > 0
