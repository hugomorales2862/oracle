select org_plaza_desc, count(*) as numero, org_situacion
from morg, mper
where org_ceom in ("E64C10","E64C20","E64C30","E64C40","E64C50", "E64C60","E64C70","E64C80","E64D20")
and org_situacion = "A"
and org_plaza not in (999,9999,99999)
and org_plaza = per_plaza
group by org_plaza_desc, org_situacion