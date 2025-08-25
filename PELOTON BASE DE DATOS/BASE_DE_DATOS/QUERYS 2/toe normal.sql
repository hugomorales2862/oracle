select per_catalogo, per_grado, per_nom1, per_nom2, per_ape1, per_ape2,
	org_plaza, org_plaza_desc, org_dependencia, gra_desc_ct, org_jerarquia,
	org_ceom, org_grado
from morg, grados, outer mper
where org_plaza = per_plaza and
	  org_grado = gra_codigo and
	  org_situacion = "A" and
	  org_dependencia = 2110
	  order by org_dependencia, org_jerarquia