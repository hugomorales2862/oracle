unload to /finanzas/finanzas/tropa_sin_cuen005.txt
select
dep_desc_md, hfa_catalogo, per_nom1, per_nom2, per_ape1,
 per_ape2,per_plaza,hfa_liquido
from hfasig,  mdep, mper
where hfa_catalogo = per_catalogo
and hfa_depen = dep_llave
and hfa_clase = 6

and year(hfa_fecha) = year(TODAY)
and month (hfa_fecha) = month(TODAY)
and hfa_catalogo not in ( select cta_catalogo from cuentas )
order by 1 asc;


unload to /finanzas/finanzas/oficiales_sin_cuen005.txt
select
dep_desc_md, hfa_catalogo, per_nom1, per_nom2, per_ape1,
per_ape2,per_plaza, hfa_liquido
from hfasig,  mdep, mper
where hfa_catalogo = per_catalogo
and hfa_depen = dep_llave
and hfa_clase in (1,2,3)

and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY)
and hfa_catalogo not in ( select cta_catalogo from cuentas )
order by 1 asc;


unload to /finanzas/finanzas/cadetes_sin_cuen005.txt
select
dep_desc_md, hfa_catalogo, per_nom1, per_nom2, per_ape1,
 per_ape2,per_plaza, hfa_liquido
from hfasig,  mdep, mper
where hfa_catalogo = per_catalogo
and hfa_depen = dep_llave
and hfa_clase = 5

and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY)
and hfa_catalogo not in ( select cta_catalogo from cuentas )
order by 1 asc;


unload to /finanzas/finanzas/esp_sin_cuen005.txt
select
dep_desc_md, hfa_catalogo, per_nom1, per_nom2, per_ape1,
 per_ape2,per_plaza, hfa_liquido
from hfasig,  mdep, mper
where hfa_catalogo = per_catalogo
and hfa_depen = dep_llave
and hfa_clase = 4

and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY)
and hfa_catalogo not in ( select cta_catalogo from cuentas )
order by 1 asc;

================================================SIN CUENTA BONO 14
----unload to /finanzas/finanzas/tropa_sin_cuen005.txt
select
dep_desc_md, hfa_catalogo, per_nom1, per_nom2, per_ape1,
 per_ape2,per_plaza,hfa_bono_14
from hfasig,  mdep, mper 
where hfa_catalogo = per_catalogo
 
and hfa_depen = dep_llave
and hfa_clase = 6

and year(hfa_fecha) = year(TODAY)
and month (hfa_fecha) = month(TODAY)
and hfa_catalogo not in ( select cta_catalogo from cuentas )
order by 1 asc;
################################3

unload to /finanzas/finanzas/oficiales_sin_cuen005.txt
select
dep_desc_md, hfa_catalogo, per_nom1, per_nom2, per_ape1,
per_ape2,per_plaza, hfa_bono_14
from hfasig,  mdep, mper 
where hfa_catalogo = per_catalogo
 
and hfa_depen = dep_llave
and hfa_clase in (1,2,3)

and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY)
and hfa_catalogo not in ( select cta_catalogo from cuentas )
order by 1 asc;

#########################################################
unload to /finanzas/finanzas/cadetes_sin_cuen005.txt
select
dep_desc_md, hfa_catalogo, per_nom1, per_nom2, per_ape1,
 per_ape2,per_plaza, hfa_bono_14
from hfasig,  mdep, mper 
where hfa_catalogo = per_catalogo
 
and hfa_depen = dep_llave
and hfa_clase = 5

and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY)
and hfa_catalogo not in ( select cta_catalogo from cuentas )
order by 1 asc;

#######################
unload to /finanzas/finanzas/esp_sin_cuen005.txt
select
dep_desc_md, hfa_catalogo, per_nom1, per_nom2, per_ape1,
 per_ape2,per_plaza, hfa_bono_14
from hfasig,  mdep, mper
where hfa_catalogo = per_catalogo
and hfa_depen = dep_llave
and hfa_clase = 4
and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY)
and hfa_catalogo not in ( select cta_catalogo from cuentas )
order by 1 asc;
