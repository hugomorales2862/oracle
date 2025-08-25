
select    unique(d.pue_catalogo ), 
(select   MIN(p.pue_fec_nomb)  from dpue p
  where p.pue_catalogo = d.pue_catalogo ) as alta,
(select   MAX(c.pue_fec_cese)  from dpue c
  where c.pue_catalogo = d.pue_catalogo ) as baja
from dpue d
where d.pue_Catalogo  in (589127,  638163, 590810) 
order by 1,  2 asc 
