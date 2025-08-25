 SELECT hfa_grupo,hfd_varios, hfa_catalogo,gra_desc_md,arm_desc_md,
per_ape1,per_ape2,per_nom1, per_nom2, (
   CASE
      WHEN cta_banco = 1 THEN  "CHN"
      WHEN cta_banco = 2 THEN  "BANRURAL"
      WHEN cta_banco = 3 THEN  "G&T"
   END
          ),cta_numero, hfd_mensual AS descuento,
(
   CASE
      WHEN hfd_codigo = 80 THEN  "D.A.CORR"
      WHEN hfd_codigo = 81 THEN  "D.A.C.S."
      WHEN hfd_codigo = 84 THEN  "D.M.CORR"
      WHEN hfd_codigo = 87 THEN  "D.M.C.S."
   END
          )
FROM hfasig,cuentas,mdep,mper,grados,armas, hfdes
WHERE hfa_catalogo = cta_catalogo
AND hfa_catalogo = per_catalogo
AND cta_catalogo = hfd_catalogo
AND hfa_grado = gra_Codigo
AND hfa_arma = arm_codigo
AND hfa_depen = dep_llave
AND hfa_fecha = hfd_fecha
AND hfd_codigo in (80,81,84,87)
AND YEAR(hfa_fecha) = year(TODAY)
AND MONTH(hfa_fecha)= 5
order by hfa_grupo, hfd_codigo, hfd_varios asc

---------------------ESTE FUE PARA DESCUENTOS DE CHN
   SELECT (
   CASE
   WHEN hfd_codigo = 80 THEN  "D.A.CORR"
      WHEN hfd_codigo = 81 THEN  "D.A.C.S."
      WHEN hfd_codigo = 84 THEN  "D.M.CORR"
      WHEN hfd_codigo = 87 THEN  "D.M.C.S."
   END
          ), * FROM mper,hfdes
WHERE per_catalogo = hfd_catalogo 
AND hfd_codigo in (80,81,84,87)
and year(hfd_fecha)  = 2017
AND MONTH(hfd_fecha) = 05
------------
SELECT * FROM dfdes
where year(dfd_fecha)  = 2017
AND MONTH(dfd_fecha) = 05

SELECT * from descuentos
