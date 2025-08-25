  select sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp+
	     hfa_gastos_rep+hfa_bono_trans+hfa_prima_ing+
	     hfa_prima_esp+hfa_bono_ali+hfa_bon_emerg+hfa_prima_prof) ,
	 sum(hfa_ipm+hfa_montepio+hfa_hos_mil+hfa_fianza) 
  from hfasig
  where hfa_fecha between "2000/07/01" and "2000/12/31"
	 into renta, deducible;

  select sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp+
	     hfa_gastos_rep+hfa_bono_trans+hfa_prima_ing+
	     hfa_prima_esp+hfa_bono_ali+hfa_bon_emerg+hfa_prima_prof) ,
	 sum(hfa_ipm+hfa_montepio+hfa_hos_mil+hfa_fianza) 
  from hfasig
  where hfa_fecha between "2001/01/01" and "2001/06/30"
    and hfa_catalogo = 486597 
	 into renta1, deducible1;

  select sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp+
	     hfa_gastos_rep+hfa_bono_trans+hfa_prima_ing+
	     hfa_prima_esp+hfa_bono_ali+hfa_bon_emerg+hfa_prima_prof) * 3 ,
	 sum(hfa_ipm+hfa_montepio+hfa_hos_mil+hfa_fianza) * 3 
  from hfasig
  where hfa_fecha between "2001/03/01" and "2001/03/31"
    and hfa_catalogo = 486597
	 into renproy, deducproy;

  select hfa_bono_14 into rep.bono14
  from hfasig
  where hfa_fecha between "2000/07/01" and "2000/07/31"
    and hfa_catalogo = 486597;

  select sum(hfa_aguinaldo)  
  from hfasig
  where hfa_fecha between "2000/12/01" and "2001/01/31"
    and hfa_catalogo = 486597
    into aguinaldo;

  select sum(hfa_mensual) 
      from hfasigc
     where hfa_catalogo = 486597
      into nfasigc;

  select (sum(hfa_mensual) * 3) 
      from hfasigc
  where 
     hfa_fecha between "2001/03/01" and "2001/03/31"
     and hfa_catalogo = 486597
     into proyasigc;

