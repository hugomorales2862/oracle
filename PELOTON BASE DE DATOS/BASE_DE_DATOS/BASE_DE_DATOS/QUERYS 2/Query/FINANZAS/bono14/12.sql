  drop table t1;
  drop table t2;
  drop table t3;
  drop table t4;
  drop table t5;
  drop table t6;
  drop table t7;
  select sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp+
	     hfa_gastos_rep+hfa_bono_trans+hfa_prima_ing+
	     hfa_prima_esp+hfa_bono_ali+hfa_bon_emerg+hfa_prima_prof) renta,
	 sum(hfa_ipm+hfa_montepio+hfa_hos_mil+hfa_fianza) deduc 
  from hfasig
  where month(hfa_fecha) > 06
    and year(hfa_fecha) = 1999 
    and hfa_catalogo = 119446
    into temp t1;

  select sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp+
	     hfa_gastos_rep+hfa_bono_trans+hfa_prima_ing+
	     hfa_prima_esp+hfa_bono_ali+hfa_bon_emerg+hfa_prima_prof) renta1,
	 sum(hfa_ipm+hfa_montepio+hfa_hos_mil+hfa_fianza) deduc1 
  from hfasig
  where month(hfa_fecha) < 07
    and year(hfa_fecha) = year(today) 
    and hfa_catalogo = 119446
    into temp t2;

  select sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp+
	     hfa_gastos_rep+hfa_bono_trans+hfa_prima_ing+
	     hfa_prima_esp+hfa_bono_ali+hfa_bon_emerg+hfa_prima_prof) 
	     * 3 renproy,
	 sum(hfa_ipm+hfa_montepio+hfa_hos_mil+hfa_fianza) * 3 deducproy 
  from hfasig
  where month(hfa_fecha) = 03
    and year(hfa_fecha) = year(today) 
    and hfa_catalogo = 119446
    into temp t3;

  select hfa_bono_14 bono 
  from hfasig
  where month(hfa_fecha) = 07
    and year(hfa_fecha) =  1999  
    and hfa_catalogo = 119446
    into temp t4;

  select sum(hfa_aguinaldo) agui 
  from hfasig
  where hfa_fecha between "1999/12/01" and "2000/01/31"
    and hfa_catalogo = 119446
    into temp t5;

  select sum(hfa_mensual) nfasigc 
      from hfasigc
  where hfa_codigo in (22,23,24,25,26,27)
     and hfa_catalogo = 119446
     into temp t6;

  select (sum(hfa_mensual) * 3) proyasigc
      from hfasigc
  where hfa_codigo in (22,23,24,25,26,27)
     and month(hfa_fecha) = 3 
     and year(hfa_fecha) = 2000
     and hfa_catalogo = 119446
     into temp t7;


  select renta , renta1 , renproy , bono , agui , nfasigc , proyasigc 
    from t1, t2, t3, t4, t5, t6, t7
    ;
  select (deduc + deduc1 + deducproy) 
    from t1, t2, t3, t4, t5
    ;

