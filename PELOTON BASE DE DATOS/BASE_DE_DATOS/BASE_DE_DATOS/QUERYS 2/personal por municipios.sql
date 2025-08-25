select per_catalogo, gra_desc_lg, arm_desc_lg,per_nom1, per_nom2, per_ape1, per_ape2, per_ape3, per_fec_nac, per_nac_lugar, dm_mun_dep, dep_desc_ct
from mper, morg, depmun, mdep, armas, grados
where per_plaza = org_plaza
and org_dependencia = dep_llave
and per_nac_lugar = dm_codigo
and per_arma = arm_codigo
and per_grado = gra_codigo
and dm_codigo in (1305,1307,1316,1318,1312,1331,1324,1308,1302,1317,1326,1327,1310,1313,1304,1322, 1209,1223,
1217, 0920,0900,0901,0909, 1021,1001, 1107, 1419, 1610, 0114,0115,0116, 1710, 1801,1804, 2208, 2005,2003)
and per_situacion in  ("11","T0")
and per_plaza NOT IN (999,9999,99999)
--and org_dependencia = 2710
ORDER BY per_nac_lugar, per_grado desc