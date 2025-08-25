create view vdpue7 (pue_catalogo, fecha1) as
select pue_catalogo, min(pue_fec_nomb)
from dpue 
where pue_catalogo in 
  (select per_catalogo 
     from mper 
     where per_plaza not in (9999,99999)) --solo los de alta
group by pue_catalogo 


create view vnombramientos7 (nombre1, nombre2, apellido1, apellido2, fechaNombra, fechaAlta, dependencia)as
--primer query son los antiguos, porque tienen ocurrencia en el dpue
select per_nom1, per_nom2, per_ape1, per_ape2, per_fec_nomb,fecha1, org_dependencia 
from mper, vdpue7, morg
where per_plaza not in (9999,99999)
and per_plaza = org_plaza
and per_catalogo = pue_catalogo 
union all
---segundo query son los nuevos, los que no tienen ocurrencia en dpue
select per_nom1, per_nom2, per_ape1, per_ape2, per_fec_nomb, per_fec_nomb, org_dependencia 
from mper, morg
where per_plaza not in (9999,99999)
and per_plaza = org_plaza
and per_catalogo not in (select pue_catalogo from vdpue7) 

select *
from vnombramientos7 
where fechaAlta > '2016-01-13'
and dependencia in (1660,2010,2070,2050,2040,2030,2060,2140,2110)
order by fechaalta asc, apellido1