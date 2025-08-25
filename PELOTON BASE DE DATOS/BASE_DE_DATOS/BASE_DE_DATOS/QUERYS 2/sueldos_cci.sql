unload to cci.txt
SELECT per_catalogo,gra_desc_ct,per_nom1,per_nom2,
per_ape1,per_ape2,per_plaza,hfa_sueldo,hfa_bon_bienal,
hfa_prima_resp,org_ceom,meom_desc_lg,
(
   select gra_desc_ct from grados,morg
   WHERE gra_codigo = org_grado
   AND org_plaza = mper.per_plaza
)as grado_rec,
(
   SELECT sum(hfa_mensual)
   FROM hfasigc WHERE YEAR(hfa_fecha) = 2017
   					  AND MONTH(hfa_fecha) = 09
   AND hfa_catalogo = mper.per_catalogo
) otras_asi
FROM mper,grados,morg,meom,hfasig
WHERE per_grado = gra_codigo
AND per_plaza = org_plaza
AND per_catalogo  = hfa_catalogo
AND org_ceom = meom_ceom
AND YEAR(hfa_fecha) = 2017
AND MONTH(hfa_fecha) = 09
AND org_dependencia = 2710
AND gra_clase = 1
ORDER BY gra_codigo DESC
