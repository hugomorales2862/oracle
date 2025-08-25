
SELECT dfa_catalogo, gra_desc_md, arm_desc_md, per_ape1 || per_ape2 || per_nom1 || per_nom2, dep_desc_md,per_desc_empleo,
(   CASE
      WHEN dfa_codigo = 17 THEN  "B.EST.DEM."
      WHEN dfa_codigo = 18 THEN  "B.EST.AVAN"
      WHEN dfa_codigo = 19 THEN  "B.EST.BASI"
      WHEN dfa_codigo = 32 THEN  "B.EST.S.G."
      WHEN dfa_codigo = 33 THEN  "B.E.A.E.E."
      WHEN dfa_codigo = 35 THEN  "B.EST.INTE"
   END
  ), dfa_cantidad  from mper,mdep,grados,dfasig,armas,morg
WHERE per_catalogo = dfa_catalogo
AND   gra_codigo = per_grado
AND  arm_codigo = per_arma 
AND org_plaza = per_plaza
AND org_grado = gra_codigo
AND dep_llave= org_dependencia
AND dfa_codigo in (17,18,19,32,33,35)


=================================================

SELECT dfa_catalogo, 
(   CASE
      WHEN dfa_codigo = 17 THEN  "B.EST.DEM."
      WHEN dfa_codigo = 18 THEN  "B.EST.AVAN"
      WHEN dfa_codigo = 19 THEN  "B.EST.BASI"
      WHEN dfa_codigo = 32 THEN  "B.EST.S.G."
      WHEN dfa_codigo = 33 THEN  "B.E.A.E.E."
      WHEN dfa_codigo = 35 THEN  "B.EST.INTE"
   END
  ), dfa_cantidad  from   dfasig

WHERE dfa_codigo in (17,18,19,32,33,35)


========================================================


SELECT dfa_catalogo,  per_ape1 || per_ape2 || per_nom1 || per_nom2, dep_desc_md, per_desc_empleo, 
(   CASE
      WHEN dfa_codigo = 17 THEN  "B.EST.DEM."
      WHEN dfa_codigo = 18 THEN  "B.EST.AVAN"
      WHEN dfa_codigo = 19 THEN  "B.EST.BASI"
      WHEN dfa_codigo = 32 THEN  "B.EST.S.G."
      WHEN dfa_codigo = 33 THEN  "B.E.A.E.E."
      WHEN dfa_codigo = 35 THEN  "B.EST.INTE"
   END
  ), dfa_cantidad  from mper,dfasig,morg,mdep
WHERE per_catalogo = dfa_catalogo
AND per_plaza = org_plaza
AND org_dependencia = dep_llave
AND dfa_codigo in (17,18,19,32,33,35)
and per_situacion in (11)
AND dfa_cantidad >0
ORDER BY dep_desc_md, dfa_codigo




SELECT * FROM dfasig
where dfa_codigo in (17,18,19,32,33,35)