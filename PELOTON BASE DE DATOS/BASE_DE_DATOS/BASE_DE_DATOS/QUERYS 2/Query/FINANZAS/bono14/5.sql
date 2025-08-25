set lock mode to wait;
select hfa_catalogo,
 	(( hfa_sueldo  + hfa_bon_bienal + hfa_prima_resp  + hfa_prima_esp 
       + hfa_gastos_rep + hfa_bon_emerg + hfa_dividendos + hfa_aguinaldo 
    + hfa_bono_vac + hfa_bono_14 + hfa_bono_trans + hfa_prima_ing 
    + hfa_prima_prof + hfa_complemento + hfa_prima_ext + hfa_bono_ali ) - 
       (hfa_ipm + hfa_montepio + hfa_fianza + hfa_hos_mil + hfa_club_ofi 
    + hfa_club_esp) ) asig,hfa_liquido
from hfasig
where hfa_fecha between "2001/03/01" and "2001/03/28"
  and hfa_catalogo in 
(
	select hfd_catalogo from hfdes
	where hfd_fecha between "2001/03/01" and "2001/03/28"
          and hfd_codigo = 60
)
into temp asigna1;
{------------------------------------------------------}
select hfa_catalogo hfac_catalogo, sum(hfa_mensual) asig1
  from hfasigc
where hfa_fecha between "2001/03/01" and "2001/03/28"
  and hfa_catalogo in
(
	select hfd_catalogo from hfdes
	where hfd_fecha between "2001/03/01" and "2001/03/28"
          and hfd_codigo = 60
)
group by 1
into temp asigna2;
{------------------------------------------------------}
select hfa_catalogo, hfa_liquido, (asig1 + asig) asignacion
from asigna1, asigna2
where hfa_catalogo = hfac_catalogo
into temp asigna3;
{------------------------------------------------------}
select hfd_catalogo,sum(hfd_mensual) descuen
  from hfdes
where hfd_fecha between "2001/03/01" and "2001/03/28"
  and hfd_catalogo in
(
	select hfd_catalogo from hfdes
	where hfd_fecha between "2001/03/01" and "2001/03/28"
          and hfd_codigo = 60
)
into temp descue1;
{------------------------------------------------------}
unload to clavoipm60.unl
select hfa_catalogo,hfa_liquido, asignacion, descuen
from  descue1, asigna3
where hfd_catalogo = hfa_catalogo
  and (asignacion - descuen) <> hfa_liquido
