select per_catalogo, per_nom1, per_nom2, per_ape1, per_ape2, per_promocion from mper, dcur
where per_catalogo = cur_catalogo
and per_plaza not in (9999,99999)
and per_situacion = 11
and cur_curso in (25, 2107, 3047)
and per_promocion = 109 