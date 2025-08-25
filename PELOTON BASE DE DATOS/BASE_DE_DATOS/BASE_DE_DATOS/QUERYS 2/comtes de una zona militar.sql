SELECT gra_desc_lg, arm_desc_lg, per_nom1, per_nom2, per_ape1, per_ape2, pue_desc, pue_fec_nomb,
		pue_fec_cese, pue_ord_gral, pue_punto_og,dep_desc_md
		FROM dpue, grados, mper, armas, situaciones,mdep
		WHERE pue_grado = gra_codigo
		AND pue_catalogo = per_catalogo
		AND pue_arma = arm_codigo
		AND pue_situacion = sit_codigo
		AND pue_dependencia = dep_llave
		AND pue_dependencia = 162
		AND pue_plaza = 522276
		ORDER BY pue_fec_nomb DESC

