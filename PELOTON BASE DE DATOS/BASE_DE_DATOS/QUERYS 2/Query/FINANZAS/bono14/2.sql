  select sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp) ,
	 sum(hfa_ipm+hfa_montepio+hfa_hos_mil) into renta, deducible
  from hfasig
  where hfa_catalogo = catalogo
    and month(hfa_fecha) > 06
    and year(hfa_fecha) = year(today)-1 

  select sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp) ,
	 sum(hfa_ipm+hfa_montepio+hfa_hos_mil) into renta1, deducible1
  from hfasig
  where hfa_catalogo = catalogo
    and month(hfa_fecha) < 07
    and year(hfa_fecha) = year(today) 

  select sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp) ,
	 sum(hfa_ipm+hfa_montepio+hfa_hos_mil) into renproy, deducproy
  from hfasig
  where hfa_catalogo = catalogo
    and month(hfa_fecha) = 03 #fue el ultimo mes generado
    and year(hfa_fecha) = year(today) 
  let renproy = renproy * 2
  let deducproy = deducproy * 2

  select hfa_bono_14 into bono14
  from hfasig
  where month(hfa_fecha) = 07
    and year(hfa_fecha) = year(today)-1
    and hfa_catalogo = catalogo

  select sum(hfa_aguinaldo) into aguinal
  from hfasig
  where hfa_fecha between "01/12/1998" and "31/01/1999"
    and hfa_catalogo = catalogo

  let rep.rentaneta = rep.rentaneta + renta + renta1 + renproy + 
      bono14 + aguinal
  let rep.deducible = rep.deducible + deducible + deducible1 + deducproy
