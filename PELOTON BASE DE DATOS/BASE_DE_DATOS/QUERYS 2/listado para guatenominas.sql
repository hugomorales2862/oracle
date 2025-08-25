select per_nom1, per_nom2, per_ape1, per_ape2, per_ape3, per_direccion, dm_mun_dep, per_dir_lugar, per_zona, per_ced_ord, per_ced_reg,
per_dpi, per_ext_ced_lugar, per_sexo, per_fec_nac, per_nac_lugar, per_afil_ipm, per_telefono, per_sangre, per_est_civil, hfa_cuenta
from mper, morg, depmun, hfasig
where per_plaza = org_plaza
and hfa_catalogo = per_catalogo
and year (hfa_fecha)=2017
and month(hfa_fecha)=10
--and per_ext_ced_lugar = dm_codigo
--and per_nac_lugar = dm_codigo
and per_dir_lugar = dm_codigo
and org_dependencia = 2300
ORDER BY org_jerarquia




2300 COSEDE
2360 HALL CENTRAL
2340 ESCUELA NAVAL DE GUATEMALA
2330 ESCUELA TECNICA MILITAR DE AVIACION