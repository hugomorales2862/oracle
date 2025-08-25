select per_catalogo,gra_desc_lg,arm_desc_lg,per_nom1,per_nom2,
per_ape1,per_ape2,jef_plaza,jef_puesto,jef_categoria,dep_desc_lg,
per_promocion,per_fec_nac
from jefes,mper,grados,armas,mdep,morg
where per_arma =arm_codigo
and   per_grado =gra_codigo
and   per_plaza=org_plaza
and   org_dependencia=dep_llave
and   per_plaza =jef_plaza
and   jef_categoria in("0100", "0101","0102","0103","0104")
and   jef_plaza   in (7762156,7762883,6886435,6887820,6899209,6899598,6888738, 7867062)
order by jef_categoria as