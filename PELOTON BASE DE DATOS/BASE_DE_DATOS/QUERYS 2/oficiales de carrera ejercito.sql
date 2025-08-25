QUERY PARA SACAR EL PERSONAL DE OFICIALES DE CARRERA DE ALTA EN EL EJERCITO DE GUATEMALA

SELECT per_ catalogo, gra_desc_lg, arm_desc_lg, per_nom1, per_nom2,
      per_ape1, per_ape2, per_promocion, per_desc_empleo,dep_desc_lg
FROM   mper,grados,armas,mdep,morg
WHERE  per_grado = gra_codigo
and    per_arma = arm_codigo 
and    per_situacion = 11
and    org_dependencia=dep_llave
and    per_plaza =org_plaza
and    gra_clase in (1,2) 
and    per_plaza NOT IN (999,9999,99999)
--and    per_grado in (97,96,93,92,89,88)      
order by gra_codigo desc, org_jerarquia asc