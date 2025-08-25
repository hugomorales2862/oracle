select per_catalogo, gra_desc_ct, per_nom1, per_nom2, per_ape1, per_ape2, per_plaza, org_ceom, org_plaza_desc, dep_desc_lg
from mper, morg, mdep, grados
where per_grado = gra_codigo
and per_plaza = org_plaza
and org_dependencia = dep_llave
and per_plaza not in (999,9999,99999)
--and org_dependencia = 2710
and org_ceom in ("E64C10","E64C20","E64C30","E64C40","E64C50", "E64C60","E64C70","E64C80","E64D20")
order by org_ceom desc