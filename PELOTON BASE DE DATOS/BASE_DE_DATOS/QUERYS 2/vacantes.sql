select org_plaza,org_plaza_desc,dep_desc_md,org_cod_pago
from morg,mdep,grados
where dep_llave = org_dependencia
  and org_cod_pago = 1
  and org_situacion = "A"
  and org_ceom <> "TITULO"
  and org_grado = gra_codigo
  and gra_clase = 4
  and org_plaza not in(select per_plaza from mper);
