  select sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp+
	     hfa_gastos_rep+hfa_bono_trans+hfa_prima_ing+
	     hfa_prima_esp+hfa_bono_ali) s98,
	 sum(hfa_ipm+hfa_montepio+hfa_hos_mil) d98 
  from hfasig
  where hfa_catalogo = 337667
    and month(hfa_fecha) > 06
    and year(hfa_fecha) = year(today)-1 
    into temp t1;

  select sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp+
	     hfa_gastos_rep+hfa_bono_trans+hfa_prima_ing+
	     hfa_prima_esp+hfa_bono_ali) s99,
	 sum(hfa_ipm+hfa_montepio+hfa_hos_mil) d99 
  from hfasig
  where hfa_catalogo = 337667
    and month(hfa_fecha) < 05
    and year(hfa_fecha) = year(today) 
    into temp t2;

  select (sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp+
	     hfa_gastos_rep+hfa_bono_trans+hfa_prima_ing+
	     hfa_prima_esp+hfa_bono_ali) * 2) sp99,
	 (sum(hfa_ipm+hfa_montepio+hfa_hos_mil) * 2) dp99 
  from hfasig
  where hfa_catalogo = 337667
    and month(hfa_fecha) = 04
    and year(hfa_fecha) = year(today) 
    into temp t3;

  select hfa_bono_14 b14
  from hfasig
  where month(hfa_fecha) = 07
    and year(hfa_fecha) = year(today)-1
    and hfa_catalogo = 337667 
    into temp t4;

  select sum(hfa_aguinaldo) ag 
  from hfasig
  where hfa_fecha between "01/12/1998" and "31/01/1999"
    and hfa_catalogo = 337667 
    into temp t5;

  select (s98+s99+sp99+b14+ag) - (d98+d99+dp99) 
    from t1, t2, t3, t4, t5
