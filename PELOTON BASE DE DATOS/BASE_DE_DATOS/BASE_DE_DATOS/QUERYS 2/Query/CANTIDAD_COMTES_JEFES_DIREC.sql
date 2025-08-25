SELECT
(CASE
	WHEN jef_categoria = '0100' THEN	"MINISTRO,JEFEMAYDN,SUBJEFE,INSPECTOR,VICE             "
	WHEN jef_categoria = '0101' THEN	"COMANDANTES             "
	WHEN jef_categoria = '0102' THEN	"JEFES             "
	WHEN jef_categoria = '0103' THEN	"DIRECTORES             "
	WHEN jef_categoria = '0104' THEN	"COMANDANTES  RRMM           "
END
), COUNT(gra_codigo)
from jefes,mper,grados,armas,mdep,morg
where per_arma =arm_codigo
and   per_grado =gra_codigo
and   per_plaza=org_plaza
and   org_dependencia=dep_llave
and   per_plaza =jef_plaza
and   jef_categoria in("0100", "0101","0102","0103","0104")

GROUP BY 1 