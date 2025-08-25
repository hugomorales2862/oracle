QUERY PARA SACAR EL PERSONAL DE OFICIALES DE RESERVAS EN EL EJERCITO DE GUATEMALA

SELECT gra_desc_lg, arm_desc_lg, TRIM(per_nom1)||' '||TRIM(per_nom2)||' '||
      TRIM(per_ape1)||' '|| TRIM(per_ape2) AS NOMBRE, per_desc_empleo,dep_desc_lg
FROM   mper,grados,armas,mdep,morg
WHERE  per_grado = gra_codigo
and    per_arma = arm_codigo 
and    per_situacion = 11
and    org_dependencia=dep_llave
and    per_plaza =org_plaza
and    gra_clase = 2    
order by gra_codigo desc, org_jerarquia asc