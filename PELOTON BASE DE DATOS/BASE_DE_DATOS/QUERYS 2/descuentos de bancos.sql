select hfd_varios, hfd_catalogo, gra_desc_ct, arm_desc_ct, per_nom1,  per_nom2, per_ape1,  per_ape2, per_ape3,  hfd_mensual
FROM armas, grados, morg, mdep, mper, hfdes
WHERE hfd_catalogo = per_Catalogo
AND per_arma = arm_codigo 
AND per_grado = gra_codigo 
AND per_plaza = org_plaza
AND org_dependencia = dep_llave
			--and hfd_codigo = 80 --//D.A.CORR  | DESCOMENTAREAR CUALQUIERA DE LOS CUATRO
			--and hfd_codigo = 81 //D.A.C.S.
			--and hfd_codigo = 84 //  "D.M.CORR"
			--and hfd_codigo = 87 // "D.M.C.S."
and year(hfd_fecha)= 2017
--and per_promocion = 107
and month(hfd_fecha) = 09