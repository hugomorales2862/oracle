//anular licencia con seleccionar


 select * from rnb_licencia
where lic_situacion = "A"
112 clslicencia

ahora cambiar para generar
update rnb_licencia set lic_situacion = "I"
        where lic_codigo = "0372-2017"
and lic_embarcacion = 307