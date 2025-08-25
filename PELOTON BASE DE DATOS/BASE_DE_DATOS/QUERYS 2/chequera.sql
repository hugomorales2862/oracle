unload to /finanzas/finanzas/CHEQUERA_ESP007.txt
select dep_desc_md, hfa_catalogo, cta_numero,
hfa_liquido, cta_banco
from hfasig, cuentas, mdep, 
where hfa_catalogo = cta_catalogo
and hfa_depen = dep_llave
and hfa_clase = 4
and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY);

unload to /finanzas/finanzas/CHEQUERA_OFS007.txt
select dep_desc_md, hfa_catalogo, cta_numero,
hfa_liquido, cta_banco
from hfasig, cuentas, mdep
where hfa_catalogo = cta_catalogo
and hfa_depen = dep_llave
and hfa_clase in (1,2,3)
and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY);

unload to /finanzas/finanzas/CHEQUERA_TRO007.txt
select dep_desc_md, hfa_catalogo, cta_numero, hfa_liquido, cta_banco
from hfasig, cuentas, mdep
where hfa_catalogo = cta_catalogo
and hfa_depen = dep_llave
and hfa_clase = 6
and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY);

unload to /finanzas/finanzas/CHEQUERA_CAD007.txt
select dep_desc_md, hfa_catalogo, cta_numero, hfa_liquido, cta_banco
from hfasig, cuentas, mdep
where hfa_catalogo = cta_catalogo
and hfa_depen = dep_llave
and hfa_clase = 5
and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY);

==================================CON ISR============
unload to /finanzas/finanzas/CHEQUERA_ESPVEIS04q.txt
select dep_desc_md, hfa_catalogo, cta_numero,
hfa_liquido, cta_banco
from hfasig, cuentas, mdep
where hfa_catalogo = cta_catalogo
and hfa_depen = dep_llave
and hfa_clase = 4
and year(hfa_fecha) = 2017
and month (hfa_fecha) = 04
 group by dep_desc_md, hfa_catalogo, hfa_liquido, cta_numero, cta_banco; 

unload to /finanzas/finanzas/CHEQUERA_OFSDEVIS04q.txt
select dep_desc_md, hfa_catalogo, cta_numero,
hfa_liquido, cta_banco
from hfasig, cuentas, mdep
where hfa_catalogo = cta_catalogo
and hfa_depen = dep_llave
and hfa_clase in (1,2,3)
and year(hfa_fecha) = 2017
and month (hfa_fecha) = 04
 group by dep_desc_md, hfa_catalogo, hfa_liquido, cta_numero, cta_banco; 

unload to /finanzas/finanzas/CHEQUERA_TRODEVIS04q.txt
select dep_desc_md, hfa_catalogo, cta_numero, hfa_liquido, cta_banco
from hfasig, cuentas, mdep
where hfa_catalogo = cta_catalogo
and hfa_depen = dep_llave
and hfa_clase = 6
and year(hfa_fecha) = 2017
and month (hfa_fecha) = 04
 group by dep_desc_md, hfa_catalogo, hfa_liquido, cta_numero, cta_banco; 

unload to /finanzas/finanzas/CHEQUERA_CADEVIS04q.txt
select dep_desc_md, hfa_catalogo, cta_numero, hfa_liquido, cta_banco
from hfasig, cuentas, mdep
where hfa_catalogo = cta_catalogo
and hfa_depen = dep_llave
and hfa_clase = 5
and year(hfa_fecha) = 2017
and month (hfa_fecha) = 04
 group by dep_desc_md, hfa_catalogo, hfa_liquido, cta_numero, cta_banco; 

 ===========================BONO 14 % =======
## unload to /finanzas/finanzas/CHEQUERA_ESP007.txt
select dep_desc_md, hfa_catalogo, cta_numero,
hfa_bono_14, cta_banco
from hfasig, cuentas, mdep 
where hfa_catalogo = cta_catalogo
 
and hfa_depen = dep_llave
and hfa_clase = 4
and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY);
    ############################
----unload to /finanzas/finanzas/CHEQUERA_OFS007.txt
select dep_desc_md, hfa_catalogo, cta_numero,
hfa_bono_14, cta_banco
from hfasig, cuentas, mdep 
where hfa_catalogo = cta_catalogo
 
and hfa_depen = dep_llave
and hfa_clase in (1,2,3)
and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY);
      ####################################
--unload to /finanzas/finanzas/CHEQUERA_TRO007.txt
select dep_desc_md, hfa_catalogo, cta_numero, hfa_bono_14, cta_banco
from hfasig, cuentas, mdep 
where hfa_catalogo = cta_catalogo
 
and hfa_depen = dep_llave
and hfa_clase = 6
and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY);
#############################
--unload to /finanzas/finanzas/CHEQUERA_CAD007.txt
select dep_desc_md, hfa_catalogo, cta_numero, hfa_bono_14, cta_banco
from hfasig, cuentas, mdep 
where hfa_catalogo = cta_catalogo
 
and hfa_depen = dep_llave
and hfa_clase = 5
and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY);
