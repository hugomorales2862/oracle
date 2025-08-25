unload to /finanzas/finanzas/CHEQUERA_ESP008.txt
select dep_desc_md, hfa_catalogo, cta_numero,
hfa_liquido, cta_banco
from hfasig, cuentas, mdep
where hfa_catalogo = cta_catalogo
and hfa_depen = dep_llave
and hfa_clase = 4
and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY);

unload to /finanzas/finanzas/CHEQUERA_OFS008.txt
select dep_desc_md, hfa_catalogo, cta_numero,
hfa_liquido, cta_banco
from hfasig, cuentas, mdep
where hfa_catalogo = cta_catalogo
and hfa_depen = dep_llave
and hfa_clase in (1,2,3)
and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY);

unload to /finanzas/finanzas/CHEQUERA_TRO008.txt
select dep_desc_md, hfa_catalogo, cta_numero, hfa_liquido, cta_banco
from hfasig, cuentas, mdep
where hfa_catalogo = cta_catalogo
and hfa_depen = dep_llave
and hfa_clase = 6
and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY);

unload to /finanzas/finanzas/CHEQUERA_CAD008.txt
select dep_desc_md, hfa_catalogo, cta_numero, hfa_liquido, cta_banco
from hfasig, cuentas, mdep
where hfa_catalogo = cta_catalogo
and hfa_depen = dep_llave
and hfa_clase = 5
and year(hfa_fecha) = YEAR(TODAY)
and month (hfa_fecha) = MONTH(TODAY);


UNLOAD TO  /finanzas/finanzas/general008.txt
SELECT hfa_grupo,hfa_catalogo,gra_desc_md,arm_desc_md,
per_ape1,per_ape2,per_nom1,hfa_liquido,dep_desc_md, (
   CASE
      WHEN cta_banco = 1 THEN  "CHN"
      WHEN cta_banco = 2 THEN  "BANRURAL"
      WHEN cta_banco = 3 THEN  "G&T"
   END
          ),cta_numero
FROM hfasig,cuentas,mdep,mper,grados,armas
WHERE hfa_catalogo = cta_catalogo
AND hfa_catalogo = per_catalogo
AND hfa_grado = gra_Codigo
AND hfa_arma = arm_codigo
AND hfa_depen = dep_llave
AND YEAR(hfa_fecha) = year(TODAY)
AND MONTH(hfa_fecha)= month(TODAY)
order by hfa_grupo,dep_desc_md,cta_banco asc;



unload to /finanzas/finanzas/tropa_sin_cuenta008.txt
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


unload to /finanzas/finanzas/oficiales_sin_cuenta008.txt
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


unload to /finanzas/finanzas/cadetes_sin_cuenta008.txt
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


unload to /finanzas/finanzas/esp_sin_cuenta008.txt
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


UNLOAD TO /finanzas/finanzas/bono_estudio008.txt
SELECT dfa_catalogo, gra_desc_ct, per_nom1,
per_nom2, per_ape1, per_ape2, dep_desc_md,
dfa_cantidad, (
   CASE
      WHEN cta_banco = 1 THEN  "CHN"
      WHEN cta_banco = 2 THEN  "BANRURAL"
      WHEN cta_banco = 3 THEN  "G&T"
   END
	  ), cta_numero
FROM  dfasig, mper, mdep, cuentas, grados,morg
WHERE dfa_catalogo = per_catalogo
AND   per_plaza = org_plaza
AND   org_dependencia = dep_llave
AND   per_grado = gra_codigo
AND   dfa_catalogo = cta_catalogo
AND   dfa_codigo in (32,33,34,35,17,18,19)
AND   dfa_cantidad > 0;
