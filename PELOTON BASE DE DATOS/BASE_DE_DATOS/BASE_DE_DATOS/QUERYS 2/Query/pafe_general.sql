SELECT unique gra_desc_ct, arm_codigo, arm_desc_ct, per_catalogo, per_ape1, per_ape2,
    per_nom1, per_nom2,dep_desc_ct,dep_desc_lg, not_promedio, not_fecha, 
    (year(not_fecha) - year(per_fec_nac)) as edad_pafe,
    (year(today) - year(per_fec_nac)) as edad_actual
    from grados, mper, morg, mdep, armas, opaf_notas
    where 1=1 and not_catalogo=per_catalogo 
 
	and year(not_fecha)>0
    and per_situacion in
       ('11','1T','12','13','1I','1L','1M',
        '1N','1O','1P','1Q','1R','1S','1U','T0','1A','1W') 
	and per_grado=gra_codigo and per_arma=arm_codigo
	and per_plaza=org_plaza and org_dependencia=dep_llave
	and gra_clase in(1,2,3,4)
	and per_catalogo = 583534