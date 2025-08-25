QUERY PARA SACAR OFICIALES GRADUADOS EN DETERMINADO PAIS Y DETERMINADA ESCUELA

select per_catalogo, gra_desc_lg, arm_desc_lg, per_nom1, per_nom2, per_ape1, per_ape2, cur_fec_inicio, cur_fec_fin
from mper, grados, dcur, armas
where per_grado = gra_codigo and
	  per_arma = arm_codigo and
      cur_catalogo = per_catalogo and
      cur_curso = 1 and
      cur_pais = 56 and 
      cur_escuela = 221 and
      cur_fec_inicio BETWEEN "1956/01/01" AND "2017/05/16"
      order by cur_fec_inicio asc;
