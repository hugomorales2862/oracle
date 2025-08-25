-----TOE CON SUELDOS Y VACANTES-------------------------

select org_jerarquia, org_plaza, per_catalogo, gra_desc_md,TRIM(per_nom1) ||" "||TRIM(per_nom2) ||" "|| TRIM(per_ape1) ||" "||
TRIM(per_ape2) as nombres, org_plaza, org_plaza_desc, (select (gra_desc_md) from grados
where org_grado = gra_codigo) as grado_recomendado,
(hfa_sueldo + hfa_bon_bienal + hfa_prima_resp) as sueldosg,(select sum(hfa_mensual) from hfasigc 
where hfa_catalogo = per_catalogo and year(hfa_fecha) = 2017 and month(hfa_fecha) = 06)
as ot_asignaciones,hfa_ipm,
hfa_montepio, hfa_hos_mil, hfa_fianza, (select sum(hfd_mensual) from hfdes 
where per_catalogo = hfd_catalogo and year(hfd_fecha) = 2017 
and month(hfd_fecha) = 06 ) as ISR, (select (b14_cantidad) from bono14
where b14_catalogo = hfa_catalogo) as bono14,hfa_bono_vac, hfa_aguinaldo
from grados, morg, hfasig, mper
where per_grado = gra_codigo and 
per_plaza = org_plaza and   
per_catalogo = hfa_catalogo
--and per_catalogo = 594119     
and year(hfa_fecha) = 2017 
and month(hfa_fecha) = 06
and org_dependencia = 2710
union
select  org_jerarquia, org_plaza, 0 as per_catalogo, "vacio" as gra_desc_md, "vacante" as nombres, org_plaza, 
		org_plaza_desc,(select (gra_desc_md) from grados
        where org_grado = gra_codigo) as grado_recomendado,
        0 as sueldosg, 0 as ot_asignaciones, 0 as hfa_ipm, 0 as hfa_montepio, 
        0 as hfa_hos_mil, 0 as hfa_fianza, 0 as isr,
        0 as bono14, 0 as hfa_bono_vac, 0 as hfa_aguinaldo
FROM    morg, grados, outer mper
where   org_plaza =  per_plaza and
        org_grado =  gra_codigo and
        org_situacion = "A" and
        org_plaza not in (select per_plaza from mper) and
		org_dependencia =2710
order by org_jerarquia





select per_catalogo, gra_desc_md, per_nom1, per_nom2, per_ape1,
per_ape2, per_plaza, org_plaza_desc, (select (gra_desc_md) from grados 
where org_grado = gra_codigo) as grado_recomendado
from mper, grados, morg
where per_grado = gra_codigo and
per_plaza = org_plaza and 
per_catalogo = 594119  



select (hfa_sueldo + hfa_bon_bienal + hfa_prima_resp) as sueldosg, hfa_ipm, 
hfa_montepio, hfa_hos_mil, hfa_fianza, (select (b14_cantidad) from bono14 
where b14_catalogo = hfa_catalogo) as bono14 hfa_bono_vac, hfa_aguinaldo
from hfasig
WHERE year(hfa_fecha) = 2017
AND month(hfa_fecha) = 06
AND hfa_catalogo = 594119


select * from bono14

select * from descuentos



select * from hfasigc
where hfa_catalogo = 594119




select per_catalogo, gra_desc_md, per_nom1, per_nom2, per_ape1,
per_ape2, per_plaza, org_plaza_desc, (select (gra_desc_md) from grados
where org_grado = gra_codigo) as grado_recomendado,
(hfa_sueldo + hfa_bon_bienal + hfa_prima_resp) as sueldosg, hfa_ipm,
hfa_montepio, hfa_hos_mil, hfa_fianza, (select (b14_cantidad) from bono14
where b14_catalogo = hfa_catalogo) as bono14,hfa_bono_vac, hfa_aguinaldo
from mper, grados, morg, hfasig
where per_grado = gra_codigo and
per_plaza = org_plaza and
per_catalogo = hfa_catalogo
and year(hfa_fecha) = 2017
and month(hfa_fecha) = 06


select per_catalogo, gra_desc_md, per_nom1, per_nom2, per_ape1,
per_ape2, per_plaza, org_plaza_desc, (select (gra_desc_md) from grados
where org_grado = gra_codigo) as grado_recomendado,
(hfa_sueldo + hfa_bon_bienal + hfa_prima_resp) as sueldosg,(select sum(hfa_mensual) from hfasigc 
where hfa_catalogo = per_catalogo and year(hfa_fecha) = 2017 and month(hfa_fecha) = 06)
as ot_asignaciones,hfa_ipm,
hfa_montepio, hfa_hos_mil, hfa_fianza, (select sum(hfd_mensual) from hfdes 
where per_catalogo = hfd_catalogo and year(hfd_fecha) = 2017 
and month(hfd_fecha) = 06 ) as ISR, (select (b14_cantidad) from bono14
where b14_catalogo = hfa_catalogo) as bono14,hfa_bono_vac, hfa_aguinaldo
from mper, grados, morg, hfasig 
where per_grado = gra_codigo and 
per_plaza = org_plaza and   
per_catalogo = hfa_catalogo
and per_catalogo = 594119     
and year(hfa_fecha) = 2017 
and month(hfa_fecha) = 06 
and org_dependencia = 2710



select (hfa_mensual) as otras_asiganciones
from hfasigc
where hfa_catalogo = 594119
and year(hfa_fecha) = 2017 
and month(hfa_fecha) = 06


SELECT desc_desc_ct,hfd_mensual,hfd_saldo
				FROM hfdes,descuentos
				WHERE hfd_codigo = desc_codigo
				AND hfd_catalogo = 594119
				AND YEAR(hfd_fecha) = 2017
				AND MONTH(hfd_fecha) = 06
				ORDER BY 1 ASC

				select * from hfdes
				where hfd_codigo = 33
				hfd_catalogo = 594119
				AND YEAR(hfd_fecha) = 2017
				AND MONTH(hfd_fecha) = 06



select per_catalogo, gra_desc_md, TRIM(per_nom1) ||" "||TRIM(per_nom2) ||" "|| TRIM(per_ape1) ||" "||
TRIM(per_ape2) as nombres, org_plaza, org_plaza_desc, (select (gra_desc_md) from grados
where org_grado = gra_codigo) as grado_recomendado,
(hfa_sueldo + hfa_bon_bienal + hfa_prima_resp) as sueldosg,(select sum(hfa_mensual) from hfasigc 
where hfa_catalogo = per_catalogo and year(hfa_fecha) = 2017 and month(hfa_fecha) = 06)
as ot_asignaciones,hfa_ipm,
hfa_montepio, hfa_hos_mil, hfa_fianza, (select sum(hfd_mensual) from hfdes 
where per_catalogo = hfd_catalogo and year(hfd_fecha) = 2017 
and month(hfd_fecha) = 06 ) as ISR, (select (b14_cantidad) from bono14
where b14_catalogo = hfa_catalogo) as bono14, hfa_bono_vac, hfa_aguinaldo  
from grados, morg, hfasig, mper
where per_grado = gra_codigo and 
per_plaza = org_plaza and   
per_catalogo = hfa_catalogo and
per_catalogo = 594119
and year(hfa_fecha) = 2017 
and month(hfa_fecha) = 06
and org_dependencia = 2710



select dep_desc_ct, org_plaza, org_ceom, org_plaza_desc
from morg, grados
where org_grado = gra_codigo
and org_plaza not in (select per_plaza from mper)
and org_plaza ont in (9999, 99999)
and org_dependiencia = 2710


------TOE CON SUELDOS----

select per_catalogo, gra_desc_md, TRIM(per_nom1) ||" "||TRIM(per_nom2) ||" "|| TRIM(per_ape1) ||" "||
TRIM(per_ape2) as nombres, org_plaza, org_plaza_desc, (select (gra_desc_md) from grados
where org_grado = gra_codigo) as grado_recomendado,
(hfa_sueldo + hfa_bon_bienal + hfa_prima_resp) as sueldosg,(select sum(hfa_mensual) from hfasigc 
where hfa_catalogo = per_catalogo and year(hfa_fecha) = 2017 and month(hfa_fecha) = 06)
as ot_asignaciones,hfa_ipm,
hfa_montepio, hfa_hos_mil, hfa_fianza, (select sum(hfd_mensual) from hfdes 
where per_catalogo = hfd_catalogo and year(hfd_fecha) = 2017 
and month(hfd_fecha) = 06 ) as ISR, (select (b14_cantidad) from bono14
where b14_catalogo = hfa_catalogo) as bono14, hfa_bono_vac, hfa_aguinaldo  
from grados, morg, hfasig, mper
where per_grado = gra_codigo and 
per_plaza = org_plaza and   
per_catalogo = hfa_catalogo
and year(hfa_fecha) = 2017 
and month(hfa_fecha) = 06 
and org_dependencia = 2270 and
org_situacion = "A" 
order by org_jerarquia 



--------TOE NORMAL-------------


select per_catalogo, per_grado, per_nom1, per_nom2, per_ape1, per_ape2,
	org_plaza, org_plaza_desc, org_dependencia, gra_desc_ct, org_jerarquia,
	org_ceom, org_grado
from morg, grados, outer mper
where org_plaza = per_plaza and
	  org_grado = gra_codigo and
	  org_situacion = "A" and
	  org_dependencia = 2010
	  order by org_dependencia, org_jerarquia


-----QUERY PARA SACAR PLAZAS VACANTES

select dep_desc_ct, org_plaza, org_ceom, org_plaza_desc
FROM morg, mdep, grados
where dep_llave = org_dependencia
and org_grado = gra_codigo
and org_plaza NOT IN (select per_plaza from mper)
and org_plaza NOT IN (9999, 99999)
and org_situacion = "A"
and dep_llave = 2140



	TOE CON JERARQUIA
select per_catalogo, gra_desc_ct, per_nom1, per_nom2, per_ape1, per_ape2,
	org_plaza, org_plaza_desc, org_dependencia, (select (gra_desc_md) from grados
where org_grado = gra_codigo) as grado_recomendado, org_jerarquia,
	org_ceom, org_grado
from morg, grados, outer mper
where org_plaza = per_plaza and
	  org_jerarquia[1,2] = "04" and
	  per_grado = gra_codigo and
	  org_situacion = "A" and
	  org_dependencia = 2010
	  order by org_dependencia, org_jerarquia



TOE DEL EJERCITO CON SUELDO QUE PIDIO NINETH MONTENEGRO

select per_catalogo, gra_desc_md, TRIM(per_nom1) ||" "||TRIM(per_nom2) ||" "|| TRIM(per_ape1) ||" "||
TRIM(per_ape2) as nombres, hfa_sueldo, hfa_bon_bienal, hfa_prima_resp, hfa_prima_esp, hfa_gastos_rep, hfa_bon org_plaza, org_plaza_desc, (select (gra_desc_md) from grados
where org_grado = gra_codigo) as grado_recomendado, (select sum(hfa_mensual) from hfasigc
where hfa_catalogo = per_catalogo and year(hfa_fecha) = 2017 and month(hfa_fecha) = 06)
as ot_asignaciones,hfa_ipm,
hfa_montepio, hfa_hos_mil, hfa_fianza, (select sum(hfd_mensual) from hfdes 
where per_catalogo = hfd_catalogo and year(hfd_fecha) = 2017 
and month(hfd_fecha) = 06 ) as ISR, (select (b14_cantidad) from bono14
where b14_catalogo = hfa_catalogo) as bono14, hfa_bono_vac, hfa_aguinaldo  
from grados, morg, hfasig, mper
where per_grado = gra_codigo and 
per_plaza = org_plaza and   
per_catalogo = hfa_catalogo and
per_catalogo = 589127
and year(hfa_fecha) = 2017 
and month(hfa_fecha) = 06




select hfa_codigo, asig_desc_lg, hfa_mensual from hfasigc, asignaciones 
where hfa_catalogo = 594119
and hfa_codigo = asig_codigo
and year(hfa_fecha) = 2017 
and month(hfa_fecha) = 06
