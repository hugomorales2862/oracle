
		SELECT per_catalogo,gra_desc_ct,arm_desc_ct,per_ape1,per_ape2,per_nom1,per_nom2,per_desc_empleo,dep_desc_ct,t_prox_asc,per_promocion
			FROM mper,grados,armas,morg,mdep,tiempos
			WHERE t_catalogo = per_catalogo
			AND per_grado = gra_codigo
			AND per_arma = arm_codigo
			AND per_plaza = org_plaza
			AND org_dependencia = dep_llave
			AND per_plaza NOT IN (999,9999,99999)
			AND gra_clase IN (1,2)
			AND gra_codigo NOT IN (99,97,96,93,92,89,88)
			AND t_prox_asc[7,10] = '2018'
			AND t_prox_asc[4,5] =  '07'
		ORDER BY gra_codigo DESC
			