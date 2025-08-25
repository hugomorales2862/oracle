unload to presupuesto.xls
select pue_catalogo,gra_desc_lg,arm_desc_lg,per_nom1,per_nom2,per_ape1,per_ape2,
       pue_desc,pue_fec_nomb,pue_fec_cese
  from dpue,mper,grados,armas
 where ((pue_plaza in(6418560,6520937) and per_catalogo = pue_catalogo
   and pue_grado = gra_codigo and per_arma=arm_codigo)
   and (Year(pue_fec_nomb) between 1990 and 2004
    or Year(pue_fec_cese) between 1990 and 2004))
order by pue_fec_nomb
