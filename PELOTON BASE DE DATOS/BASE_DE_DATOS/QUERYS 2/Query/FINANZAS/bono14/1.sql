select hfa_bono_vac, hfa_fecha
  from hfasig
  where hfa_fecha between "2000/07/01" and "2000/12/31"
    and hfa_catalogo = 328294;

select sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp+
             hfa_gastos_rep+hfa_bono_trans+hfa_prima_ing+
             hfa_prima_esp+hfa_bono_ali+hfa_bon_emerg+hfa_prima_prof+
             hfa_dividendos+hfa_complemento+hfa_prima_ext) juldic2000
  from hfasig
  where hfa_fecha between "2000/07/01" and "2000/12/31"
    and hfa_catalogo = 328294;

  select sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp+
             hfa_gastos_rep+hfa_bono_trans+hfa_prima_ing+
             hfa_prima_esp+hfa_bono_ali+hfa_bon_emerg+hfa_prima_prof+
             hfa_dividendos+hfa_complemento+hfa_prima_ext) enejun2001
  from hfasig
  where hfa_fecha between "2001/01/01" and "2001/06/30"
    and hfa_catalogo = 328294;

  select sum(hfa_sueldo+hfa_bono_vac+hfa_bon_bienal+hfa_prima_resp+
             hfa_gastos_rep+hfa_bono_trans+hfa_prima_ing+
             hfa_prima_esp+hfa_bono_ali+hfa_bon_emerg+hfa_prima_prof +
             hfa_dividendos+hfa_complemento+hfa_prima_ext)* 2 sueldoproy 
  from hfasig
  where hfa_fecha between "2001/04/01" and "2001/04/30"
        and hfa_catalogo = 328294;

  select hfa_bono_14 
  from hfasig
  where hfa_fecha between "2000/07/01" and "2000/07/31"
        and hfa_catalogo = 328294;

  select sum(hfa_aguinaldo) aguinaldo
  from hfasig
  where hfa_fecha between "2000/12/01" and "2001/01/31"
        and hfa_catalogo = 328294;

  select sum(hfa_mensual) asigc 
  from hfasigc
  where hfa_codigo in (22,23,24,25,27,29)
        and hfa_catalogo = 328294
        and hfa_fecha between "2000/07/01" and "2001/04/30";

  select sum(hfa_mensual) * 2 proyasigc
      from hfasigc
  where hfa_codigo in (22,23,24,25,27,29)
        and hfa_fecha between "2001/04/01" and "2001/04/30"
        and hfa_catalogo = 328294;

  select sum(hfa_mensual) b662000 
  from hfasigc
  where hfa_codigo = 26
        and hfa_catalogo = 328294
        and hfa_fecha between "2000/07/01" and "2001/04/30";

  select sum(hfa_mensual) * 2 p662000
  from hfasigc
  where hfa_codigo = 26
        and hfa_fecha between "2001/04/01" and "2001/04/30"
        and hfa_catalogo = 328294


