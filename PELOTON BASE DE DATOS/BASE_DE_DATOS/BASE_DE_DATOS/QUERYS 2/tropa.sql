QUERY PARA SACAR EL PERSONAL DE TROPA DE ALTA EN EL EJERCITO DE GUATEMALA

SELECT gra_desc_lg, arm_desc_lg, TRIM(per_nom1)||' '||TRIM(per_nom2)||' '||
      TRIM(per_ape1)||' '|| TRIM(per_ape2) AS NOMBRE, per_desc_empleo,dep_desc_lg
FROM   mper,grados,armas,mdep,morg
WHERE  per_grado = gra_codigo
and    per_arma = arm_codigo 
AND    org_situacion = "A"
and    org_dependencia=dep_llave
and    per_plaza =org_plaza
and    gra_clase = 6    
order by gra_codigo desc, org_jerarquia asc