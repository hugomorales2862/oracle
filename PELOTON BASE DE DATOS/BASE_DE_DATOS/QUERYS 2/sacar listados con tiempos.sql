select per_catalogo, gra_desc_lg, arm_desc_lg, per_nom1, per_nom2, per_ape1, per_ape2, 
pue_desc, pue_fec_nomb, pue_fec_cese,per_situacion
from mper, grados, dpue, armas, 
where per_grado = gra_codigo and
	  per_arma = arm_codigo and
      pue_catalogo = per_catalogo and
      pue_fec_cese BETWEEN "2013/12/31" AND "2016/12/31"
      and pue_catalogo = 594119
      order by pue_fec_nomb asc;