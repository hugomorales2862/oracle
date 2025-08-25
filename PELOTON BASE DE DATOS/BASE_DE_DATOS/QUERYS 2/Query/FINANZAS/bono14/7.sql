  drop table tab1;
  drop table tab2;
  drop table tab3;
  drop table tab4;
  drop table tab5;
  select sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp) s98,
	 sum(hfa_ipm+hfa_montepio+hfa_hos_mil) d98 
  from hfasig
  where hfa_catalogo = 390138
    and month(hfa_fecha) > 06
    and year(hfa_fecha) = year(today)-1 
    into temp tab1;

  select sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp) s99,
	 sum(hfa_ipm+hfa_montepio+hfa_hos_mil) d99 
  from hfasig
  where hfa_catalogo = 390138
    and month(hfa_fecha) < 07
    and year(hfa_fecha) = year(today) 
    into temp tab2;

  select (sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp)*2) sp99,
	 (sum(hfa_ipm+hfa_montepio+hfa_hos_mil) * 2) dp99 
  from hfasig
  where hfa_catalogo = 390138
    and month(hfa_fecha) = 04
    and year(hfa_fecha) = year(today) 
    into temp tab3;

  select hfa_bono_14 b14
  from hfasig
  where month(hfa_fecha) = 07
    and year(hfa_fecha) = year(today)-1
    and hfa_catalogo = 390138
    into temp tab4;

  select sum(hfa_aguinaldo) ag 
  from hfasig
  where hfa_fecha between "01/12/1998" and "31/01/1999"
    and hfa_catalogo = 390138
    into temp tab5;

  select (s98+s99+sp99+b14+ag) - (d98+d99+dp99) 
    from tab1, tab2, tab3, tab4, tab5
