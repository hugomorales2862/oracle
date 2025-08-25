SELECT * FROM mdep 2160
SELECT * FROM menuautocom
SELECT  per_catalogo,gra_desc_ct,arm_desc_ct,per_nom1,per_nom2,
        per_ape1,per_ape2,
per_desc_empleo,dep_desc_ct,menu_descr
FROM mper,morg,mdep,grados,armas,niveles_autocom,menuautocom
WHERE per_plaza = org_plaza AND org_dependencia = dep_llave
AND per_grado = gra_codigo  AND per_arma = arm_codigo
AND per_plaza = aut_plaza   AND aut_permiso = menu_codigo
AND menu_codigo IN (6, 58, 59)
and dep_llave = 2160
order by dep_llave asc